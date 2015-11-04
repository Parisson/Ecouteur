gst-launch-1.0 tcpclientsrc host=192.168.1.23 port=10000 \
 ! gdpdepay ! rtph264depay ! h264parse ! queue ! mux. \
 jackaudiosrc connect=2 ! audio/x-raw, channels=2 \
 ! queue ! audioconvert ! audioresample ! audio/x-raw, rate=48000 !  voaacenc bitrate=64000 ! queue ! mux. \
 mux. matroskamux name=mux streamable=true \
 ! tcpserversink host=127.0.0.1 port=10001


