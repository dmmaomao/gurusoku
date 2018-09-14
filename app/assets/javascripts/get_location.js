<script type="text/javascript">
  $(".location").on("click", function(){
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
      // success callback
      function(position) {
      var latitude  = position.coords.latitude;//緯度
      var longitude = position.coords.longitude;//経度
      var location = ( "latitude: " + position.coords.latitude + "\nlongitude: " + position.coords.longitude );
      postdata(){
        $.ajax({
          url: "/reserve/map",
          data: var location
        });
      };
    }
    // error callback
    function (error) {
           //エラー情報を配列として定義
           var errorInfo = [
           "原因不明のエラーが発生しました…。" ,
           "位置情報の取得が許可されませんでした…。" ,
           "電波状況などで位置情報が取得できませんでした…。" ,
           "位置情報の取得に時間がかかり過ぎてタイムアウトしました…。"
           ] ;
           //エラーコードを変数に代入（エラーコードはgetCurrentPositionの引数として受け取っている）
           var errorNo = error.code ;
           //エラーメッセージに、先に定義したエラーコードと、エラー番号に対応した情報をalert表示させる
           var errorMessage = "[エラー番号: " + errorNo + "]\n" + errorInfo[ errorNo ] ;
           alert( errorMessage ) ;
         }
       }
       else {
        var errorMessage = "お使いの端末は、GeoLacation APIに対応していません。" ;
        alert( errorMessage ) ;
     };
</script>
