raspivid -t 0 -w 864 -h 480 -fps 30 -b 2000000 -p 0,0,864,480 -o - | gst-launch-1.0 -v fdsrc ! h264parse ! rtph264pay config-interval=1 pt=96 ! gdppay ! tcpserversink host=$1 port=$2
