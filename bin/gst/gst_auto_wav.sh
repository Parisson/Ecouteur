gst-launch-1.0 alsasrc device=hw1 ! audio/x-raw, channels=1 \
 ! queue ! audioconvert ! audio/x-raw,format=S16LE,channels=1 \
 ! queue ! wavenc ! filesink location=$1
