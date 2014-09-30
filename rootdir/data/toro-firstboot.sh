#!/system/bin/sh
#

while [ ! `getprop sys.boot_completed` ]
do
  sleep 5
done

#force mobile data to restart
sleep 20
svc data disable
sleep 2
svc data enable

# clean up
rm -f /data/toro-firstboot.sh
