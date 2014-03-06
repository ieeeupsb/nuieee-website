window.onload = function() {
  var mapOptions = {
    center: new google.maps.LatLng(41.1782642,-8.5956336),
    zoom: 17,
    scrollwheel: false
  };
  var map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
};