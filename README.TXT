Explanation:
Android Native Device Info:
Grab native device info like OS, Model, Brand, SDK Version and CPU. These AS3 classes uses Adobe AIR for Android to grab an Android system file named /system/build.prop, parse it and store its values in an nice value object for you to use. This parsed information is mainly used for analytics.

Usage:
var deviceInfo : NativeDeviceInfo = new NativeDeviceInfo();
deviceInfo.addEventListener(NativeDeviceInfoEvent.PROPERTIES_PARSED, handleDevicePropertiesParsed);
deviceInfo.setDebug(false);
deviceInfo.parse();
 
private function handleDevicePropertiesParsed(event : NativeDeviceInfoEvent) : void {
	NativeDeviceInfo(event.target).removeEventListener(NativeDeviceInfoEvent.PROPERTIES_PARSED, handleDevicePropertiesParsed);
			
	trace(NativeDevicePropertiesData(NativeDeviceProperties.OS_NAME).label + " - " + NativeDevicePropertiesData(NativeDeviceProperties.OS_NAME).value);
	trace(NativeDevicePropertiesData(NativeDeviceProperties.OS_VERSION).label + " - " + NativeDevicePropertiesData(NativeDeviceProperties.OS_VERSION).value);
	trace(NativeDevicePropertiesData(NativeDeviceProperties.OS_BUILD).label + " - " + NativeDevicePropertiesData(NativeDeviceProperties.OS_BUILD).value);
	trace(NativeDevicePropertiesData(NativeDeviceProperties.OS_SDK_VERSION).label + " - " + NativeDevicePropertiesData(NativeDeviceProperties.OS_SDK_VERSION).value);
	trace(NativeDevicePropertiesData(NativeDeviceProperties.OS_SDK_DESCRIPTION).label + " - " + NativeDevicePropertiesData(NativeDeviceProperties.OS_SDK_DESCRIPTION).value);
	trace(NativeDevicePropertiesData(NativeDeviceProperties.PRODUCT_MODEL).label + " - " + NativeDevicePropertiesData(NativeDeviceProperties.PRODUCT_MODEL).value);
	trace(NativeDevicePropertiesData(NativeDeviceProperties.PRODUCT_BRAND).label + " - " + NativeDevicePropertiesData(NativeDeviceProperties.PRODUCT_BRAND).value);
	trace(NativeDevicePropertiesData(NativeDeviceProperties.PRODUCT_NAME).label + " - " + NativeDevicePropertiesData(NativeDeviceProperties.PRODUCT_NAME).value);
	trace(NativeDevicePropertiesData(NativeDeviceProperties.PRODUCT_VERSION).label + " - " + NativeDevicePropertiesData(NativeDeviceProperties.PRODUCT_VERSION).value);
	trace(NativeDevicePropertiesData(NativeDeviceProperties.PRODUCT_BOARD).label + " - " + NativeDevicePropertiesData(NativeDeviceProperties.PRODUCT_BOARD).value);
	trace(NativeDevicePropertiesData(NativeDeviceProperties.PRODUCT_CPU).label + " - " + NativeDevicePropertiesData(NativeDeviceProperties.PRODUCT_CPU).value);
	trace(NativeDevicePropertiesData(NativeDeviceProperties.PRODUCT_MANUFACTURER).label + " - " + NativeDevicePropertiesData(NativeDeviceProperties.PRODUCT_MANUFACTURER).value);
	trace(NativeDevicePropertiesData(NativeDeviceProperties.OPENGLES_VERSION).label + " - " + NativeDevicePropertiesData(NativeDeviceProperties.OPENGLES_VERSION).value);
	trace(NativeDevicePropertiesData(NativeDeviceProperties.LCD_DENSITY).label + " - " + NativeDevicePropertiesData(NativeDeviceProperties.LCD_DENSITY).value);
	trace(NativeDevicePropertiesData(NativeDeviceProperties.DALVIK_HEAPSIZE).label + " - " + NativeDevicePropertiesData(NativeDeviceProperties.DALVIK_HEAPSIZE).value);
}


For more information on the use of this Class, take a look at: http://www.funky-monkey.nl/blog/?p=675

Author:
Sidney de Koning, 10-11-2010
sidney@funky-monkey.nl