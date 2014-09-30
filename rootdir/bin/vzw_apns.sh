#!/sbin/sh
#
# Use Verizon apns-conf.xml
#

# Move in Verizon apns
busybox rm /system/etc/apns-conf.xml
busybox mv /system/etc/apns-conf_vzw.xml /system/etc/apns-conf.xml

# Set preferred apn
busybox mkdir -p /data/data/com.android.providers.telephony/shared_prefs
busybox cp /system/preferred-apn.xml /data/data/com.android.providers.telephony/shared_prefs/preferred-apn.xml
busybox rm /system/preferred-apn.xml

# Add firstboot script
busybox cp /system/toro-firstboot.sh /data/toro-firstboot.sh
busybox rm /system/toro-firstboot.sh
