# Elephone P8000 - Unofficial LineageOS 13.0
==============

This device tree is made for building LineageOS 13.0.

---

# About Device

![Elephone P8000](http://www.elephonestore.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/e/l/elephone_p8000_grey_1.jpg)

### Specifications

Component Type | Details
-------:|:-------------------------
CPU     | 1.3GHz Octa-Core MT6753
GPU     | Mali-T720
Memory  | 3GB RAM
Shipped Android Version | 5.1.1
Storage | 16GB
Battery | 4150 mAh
Display | 5.5" 1920 x 1080 px DPI 480
Rear Camera | 13MP
Front Camera | 5MP


# Thanks to :
Cyanogenmod  
Xen0n
fire855
Moyster  
Team MAD  
Deepflex  
Visi0nary  
Elexogic  
walter79

And everyone who contributed :) !

Building TWRP !

edit product/twrp.mk

change # RECOVERY_VARIANT := twrp to RECOVERY_VARIANT := twrp

and add this to you local_manifest

<project path="external/busybox" name="omnirom/android_external_busybox" revision="android-7.1" />
<project path="bootable/recovery-twrp" name="omnirom/android_bootable_recovery" revision="android-7.1"/>

t
