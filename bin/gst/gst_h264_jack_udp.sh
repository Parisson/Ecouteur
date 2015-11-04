gst-launch-1.0 udpsrc uri=udp://192.168.1.23:9000 ! 'application/x-rtp,payload=96,encoding-name=H264' \
 ! rtph264depay ! queue ! mux. \
 jackaudiosrc connect=2 ! audio/x-raw, channels=2 \
 ! audioconvert ! lamemp3enc quality=4.0 ! queue ! mux. \
 matroskamux streamable=true name=mux  \
 ! queue ! filesink location=test.mkv sync=false

# ! queue ! tcpserversink host=192.168.1.23 port=10001


