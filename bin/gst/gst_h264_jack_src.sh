raspivid -t 0 -w 864 -h 480 -fps 30 -b 2000000 -p 0,0,864,480 -o - | gst-launch-1.0 -v fdsrc \
 ! h264parse ! queue ! mux. \
 jackaudiosrc connect=2 ! audio/x-raw, channels=2 \
 ! queue ! audioconvert ! audioresample ! audio/x-raw, rate=48000 !  voaacenc bitrate=64000 ! queue ! mux. \
 mux. matroskamux name=mux streamable=true \
 ! tcpserversink host=127.0.0.1 port=10001


