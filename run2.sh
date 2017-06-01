#!/bin/bash

if [ ! -d /config ]; then
	mkdir -p /config
fi

# Copy default config if config empty
if [ ! -d  /config/etc ]; then
	mkdir -p /config/etc
fi

if [ ! "$(ls -A /config/etc/)"]; then
	cp -rf /etc/netdata/* /config/etc/
fi

# Check for logs directory
if [ ! -d /config/logs ]; then
	mkdir -p /config/logs
fi


# Link to the config in the 
rm -rf /etc/netdata
ln -s /config/etc /etc/netdata

/run.sh