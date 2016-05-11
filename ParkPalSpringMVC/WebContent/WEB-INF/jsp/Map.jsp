<!DOCTYPE html>
<html>
  <head>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCwqjTNOS5v9GbfsLSkA_6Dvl04XX3EGGU&libraries=places"> </script>
    <title>Simple Map</title>
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 100%;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 42.331, lng: -83.046},
          zoom: 11
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCwqjTNOS5v9GbfsLSkA_6Dvl04XX3EGGU&callback=initMap"
    async defer></script>
  </body>
</html>