successCallback = (position) ->
# 位置情報が渡っってくるので、ajaxでおくるなど、距離計算につかうなどすえ

errorCallback = (errors) ->
# エラー処理

navigator.geolocation.getCurrentPosition(successCallback,errorCallback)
