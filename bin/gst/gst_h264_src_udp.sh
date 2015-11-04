raspivid -t 0 -w 864 -h 480 -fps 30 -b 2000000 -p 0,0,864,480 -o - | gst-launch-1.0 -v fdsrc ! h264parse ! rtph264pay ! udpsink host=192.168.1.23 port=9000 sync=false
