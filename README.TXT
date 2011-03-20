Explanation:
Android Native Device Info:
Grab native device info like OS, Model, Brand, SDK Version and CPU. These AS3 classes uses Adobe AIR for Android to grab an Android system file named /system/build.prop, parse it and store its values in an nice value object for you to use. This parsed information is mainly used for analytics.

Usage:
NativeDeviceInfo.parse();

trace(NativeDeviceProperties.OS_NAME.label + " - " + NativeDeviceProperties.OS_NAME.value);
trace(NativeDeviceProperties.OS_VERSION.label + " - " + NativeDeviceProperties.OS_VERSION.value);
trace(NativeDeviceProperties.OS_BUILD.label + " - " + NativeDeviceProperties.OS_BUILD.value);
trace(NativeDeviceProperties.OS_SDK_VERSION.label + " - " + NativeDeviceProperties.OS_SDK_VERSION.value);
trace(NativeDeviceProperties.OS_SDK_DESCRIPTION.label + " - " + NativeDeviceProperties.OS_SDK_DESCRIPTION.value);
trace(NativeDeviceProperties.PRODUCT_MODEL.label + " - " + NativeDeviceProperties.PRODUCT_MODEL.value);
trace(NativeDeviceProperties.PRODUCT_BRAND.label + " - " + NativeDeviceProperties.PRODUCT_BRAND.value);
trace(NativeDeviceProperties.PRODUCT_NAME.label + " - " + NativeDeviceProperties.PRODUCT_NAME.value);
trace(NativeDeviceProperties.PRODUCT_VERSION.label + " - " + NativeDeviceProperties.PRODUCT_VERSION.value);
trace(NativeDeviceProperties.PRODUCT_BOARD.label + " - " + NativeDeviceProperties.PRODUCT_BOARD.value);
trace(NativeDeviceProperties.PRODUCT_CPU.label + " - " + NativeDeviceProperties.PRODUCT_CPU.value);
trace(NativeDeviceProperties.PRODUCT_MANUFACTURER.label + " - " + NativeDeviceProperties.PRODUCT_MANUFACTURER.value);
trace(NativeDeviceProperties.OPENGLES_VERSION.label + " - " + NativeDeviceProperties.OPENGLES_VERSION.value);
trace(NativeDeviceProperties.LCD_DENSITY.label + " - " + NativeDeviceProperties.LCD_DENSITY.value);
trace(NativeDeviceProperties.DALVIK_HEAPSIZE.label + " - " + NativeDeviceProperties.DALVIK_HEAPSIZE.value); 


For more information on the use of this Class, take a look at: http://www.funky-monkey.nl/blog/?p=675

Author:
Sidney de Koning, 10-11-2010
sidney@funky-monkey.nl