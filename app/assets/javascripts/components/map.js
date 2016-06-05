$(function () {
  var $map = $('#map');

  var initMap = function () {
    new window.google.maps.Map(document.getElementById('map'), {
      center: { lat: -34.397, lng: 150.644 },
      zoom: 8,
    });
  };

  if ($map[0]) {
    window._initMap = initMap;
    $('body').append('<script src="https://maps.googleapis.com/maps/api/js?key=' +
        'AIzaSyB1hayeRyd0HQlhbYDls122orgOu_5WqNg' +
        '&callback=_initMap" async defer></script');
  }
});
