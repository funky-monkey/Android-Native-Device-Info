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
		}
	}
}
