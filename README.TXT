Explanation:
Android Native Device Info:
Grab native device info ike OS, Model, Brand, SDK Version and CPU. These AS3 classes uses Adobe AIR for Android to grab an Android system file named /system/build.prop, parse it and store its values in an nice value object for you to use. This parsed information is mainly used for analytics.

Usage:
var deviceInfo : NativeDeviceInfo = new NativeDeviceInfo();
deviceInfo.addEventListener(NativeDeviceInfoEvent.PROPERTIES_PARSED, handleDevicePropertiesParsed);
deviceInfo.debug = false;
deviceInfo.parse();
 
private function handleDevicePropertiesParsed(event : NativeDeviceInfoEvent) : void {
	NativeDeviceInfo(event.target).removeEventListener(NativeDeviceInfoEvent.PROPERTIES_PARSED, handleDevicePropertiesParsed);
			
	trace(PropertyVO(NativeDeviceProperties.OS_NAME).label + " - " + PropertyVO(NativeDeviceProperties.OS_NAME).value);
	trace(PropertyVO(NativeDeviceProperties.OS_VERSION).label + " - " + PropertyVO(NativeDeviceProperties.OS_VERSION).value);
	trace(PropertyVO(NativeDeviceProperties.OS_BUILD).label + " - " + PropertyVO(NativeDeviceProperties.OS_BUILD).value);
	trace(PropertyVO(NativeDeviceProperties.OS_SDK_VERSION).label + " - " + PropertyVO(NativeDeviceProperties.OS_SDK_VERSION).value);
	trace(PropertyVO(NativeDeviceProperties.OS_SDK_DESCRIPTION).label + " - " + PropertyVO(NativeDeviceProperties.OS_SDK_DESCRIPTION).value);
	trace(PropertyVO(NativeDeviceProperties.PRODUCT_MODEL).label + " - " + PropertyVO(NativeDeviceProperties.PRODUCT_MODEL).value);
	trace(PropertyVO(NativeDeviceProperties.PRODUCT_BRAND).label + " - " + PropertyVO(NativeDeviceProperties.PRODUCT_BRAND).value);
	trace(PropertyVO(NativeDeviceProperties.PRODUCT_NAME).label + " - " + PropertyVO(NativeDeviceProperties.PRODUCT_NAME).value);
	trace(PropertyVO(NativeDeviceProperties.PRODUCT_VERSION).label + " - " + PropertyVO(NativeDeviceProperties.PRODUCT_VERSION).value);
	trace(PropertyVO(NativeDeviceProperties.PRODUCT_BOARD).label + " - " + PropertyVO(NativeDeviceProperties.PRODUCT_BOARD).value);
	trace(PropertyVO(NativeDeviceProperties.PRODUCT_CPU).label + " - " + PropertyVO(NativeDeviceProperties.PRODUCT_CPU).value);
	trace(PropertyVO(NativeDeviceProperties.PRODUCT_MANUFACTURER).label + " - " + PropertyVO(NativeDeviceProperties.PRODUCT_MANUFACTURER).value);
	trace(PropertyVO(NativeDeviceProperties.OPENGLES_VERSION).label + " - " + PropertyVO(NativeDeviceProperties.OPENGLES_VERSION).value);
	trace(PropertyVO(NativeDeviceProperties.LCD_DENSITY).label + " - " + PropertyVO(NativeDeviceProperties.LCD_DENSITY).value);
	trace(PropertyVO(NativeDeviceProperties.DALVIK_HEAPSIZE).label + " - " + PropertyVO(NativeDeviceProperties.DALVIK_HEAPSIZE).value);
}


For more information on the use of this Class, take a look at: http://www.funky-monkey.nl/blog/?p=675

Author:
Sidney de Koning, 10-11-2010
sidney@funky-monkey.nl