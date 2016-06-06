$(function () {
  var $map = $('#map');
  var _ = window._;

  var initMap = function () {
    var map = new window.google.maps.Map($map[0], {
      center: { lat: 36.7783, lng: -119.4179 },
      mapTypeId: window.google.maps.MapTypeId.ROADMAP,
      zoom: 6,
    });

    $('.map-finder').on('submit', function (e) {
      e.preventDefault();
      $.get('/api/facilities.json?' + $(e.target).serialize())
        .done(function (results) {
          var bounds = new window.google.maps.LatLngBounds();
          var infoWindow = new window.google.maps.InfoWindow();
          var infoTemplate = _.template($('.template-marker-info').html());
          var facilityTemplate = _.template($('.template-facility-row').html());
          var $facilitiesContainer = $('.facilities-container');

          _.first(results, 10).forEach(function (facility) {
            var md = facility.location.match(/POINT \((-?\d+.\d+)\s(-?\d+.\d+)/);

            var marker = new window.google.maps.Marker({
              position: new window.google.maps.LatLng(
                parseFloat(md[2]),
                parseFloat(md[1])
              ),
              map: map,
              title: facility.name,
            });

            bounds.extend(marker.getPosition());

            $facilitiesContainer.append($(facilityTemplate(facility)));

            marker.addListener('click', function () {
              infoWindow.close();
              infoWindow.setContent(infoTemplate(facility));
              infoWindow.open(map, marker);
            });
          });

          map.fitBounds(bounds);
        });
    });
  };

  if ($map[0]) {
    window._initMap = initMap;
    $('body').append('<script src="https://maps.googleapis.com/maps/api/js?key=' +
        'AIzaSyB1hayeRyd0HQlhbYDls122orgOu_5WqNg' +
        '&callback=_initMap" async defer></script');
  }
});
