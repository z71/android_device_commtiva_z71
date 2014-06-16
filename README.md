Commtiva Z71
===========================

This branch is for building CM9 (or other AOSP-based ROMs).

To initialize your local repository using the CyanogenMod trees, use a command like this:

    repo init -u git://github.com/olivieer/android-3.git -b ics-plus

Then to sync up:

    repo sync

Please see the [CyanogenMod Wiki](http://wiki.cyanogenmod.org/) for building instructions.

You should also use a local manifest to fetch the device's dependencies, so put the following snippet in `.repo/local_manifests/commtiva_z71.xml`

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="z71/android_device_commtiva_z71" path="device/commtiva/z71" />
  <project name="z71/android_kernel_commtiva_z71" path="kernel/commtiva/z71" />
  <project name="z71/proprietary_vendor_commtiva" path="vendor/commtiva" />
</manifest>
```
