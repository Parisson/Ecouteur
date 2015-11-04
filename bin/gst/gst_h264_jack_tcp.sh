gst-launch-1.0 tcpclientsrc host=192.168.1.23 port=10000 \
 ! gdpdepay ! rtph264depay ! h264parse ! queue ! mux. \
 jackaudiosrc connect=2 ! audio/x-raw, channels=2 \
 ! audioconvert ! lamemp3enc quality=4.0 ! queue ! mux. \
 matroskamux streamable=true name=mux  \
 ! queue ! filesink location=test.mkv

# ! queue ! tcpserversink host=192.168.1.23 port=10001


