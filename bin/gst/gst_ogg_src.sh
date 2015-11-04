gst-launch-1.0 jackaudiosrc connect=2 ! audio/x-raw, channels=1 \
 ! audioconvert ! vorbisenc quality=0.4 \
 ! oggmux ! tee name=t ! queue ! filesink location=$1 \
 t. ! queue ! shout2send ip=127.0.0.1 port=8000 password=source2parisson mount=live.ogg
