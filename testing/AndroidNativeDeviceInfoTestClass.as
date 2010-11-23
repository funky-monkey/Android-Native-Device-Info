package {
	import nl.funkymonkey.android.deviceinfo.NativeDeviceInfo;
	import nl.funkymonkey.android.deviceinfo.NativeDeviceInfoEvent;
	import nl.funkymonkey.android.deviceinfo.NativeDeviceProperties;
	import nl.funkymonkey.android.deviceinfo.NativeDevicePropertiesData;

	import flash.display.Sprite;
	import flash.filesystem.File;

	public class AndroidNativeDeviceInfoTestClass extends Sprite {
		public function AndroidNativeDeviceInfoTestClass() {
			var deviceInfo : NativeDeviceInfo = new NativeDeviceInfo(File.applicationDirectory.nativePath + File.separator + "build.prop_htc_desire");
			deviceInfo.addEventListener(NativeDeviceInfoEvent.PROPERTIES_PARSED, handleDevicePropertiesParsed);
			deviceInfo.setDebug(false);
			deviceInfo.parse();
		}

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
	}
}
