#!/bin/sh

gst-launch-1.0 uridecodebin uri="file://$1" ! queue ! audioconvert ! alsasink

