alias bus="curl 'http://www.nextbus.com/predictor/fancyNewPredictionLayer.jsp?a=emery&r=Hollis&d=hollis_inbound&s=ho53_i&ts=ho45_i' -s | grep 'window.top.document.title' | cut  -c 42-50"

