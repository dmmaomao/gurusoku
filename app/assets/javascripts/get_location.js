<script type="text/javascript">
  $(".location").on("click", function(){
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
      // success callback
      function(position) {
        location = ( "latitude: " + position.coords.latitude + "\nlongitude: " + position.coords.longitude );
      },
      // error callback
      function(position) {
        alert( "位置情報が取得できません。" );
      })
    }
  });
</script>
