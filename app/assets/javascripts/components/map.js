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
        'API_KEY_GOES_HERE' +
        '&callback=_initMap" async defer></script');
  }
});
