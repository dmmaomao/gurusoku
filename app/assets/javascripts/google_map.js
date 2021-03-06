
<script type="text/javascript">
function initMap() {
  var location ={lat: <%= @latitude %>, lng: <%= @longitude %>};
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 15,
    center: location
  });
  var transitLayer = new google.maps.TransitLayer();
  transitLayer.setMap(map);

  var contentString = '住所：<%= @address %>';
  var infowindow = new google.maps.InfoWindow({
    content: contentString
  });

        var marker = new google.maps.Marker({
            position:location,
            map: map,
            title: contentString
        });

        marker.addListener('click', function() {
            infowindow.open(map, marker);
        });
    }
</script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyBiKAJR9OHYaiIgqc2Fb1MdU-yGaWKlsio&callback=initMap">
</script>
