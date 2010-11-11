package nl.funkymonkey.android.analytics {

	import flash.events.EventDispatcher;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;

	/*
	 * Copyright (c) 2010 Funky Monkey Studio, All Rights Reserved 
	 * 
	 * author   Sidney de Koning
	 * contact  sidney@funky-monkey.nl
	 * 
	 * DeviceTracking:
	 * This class is used to grab a system file, parse it and store its values. 
	 * This information is mainly used for analytics 
	 * 
	 * Usage:
	 * var deviceInfo : NativeDeviceInfo = new NativeDeviceInfo();
	 * deviceInfo.addEventListener(NativeDeviceInfoEvent.PROPERTIES_PARSED, handleDevicePropertiesParsed);
	 * deviceInfo.debug = false;
	 * deviceInfo.parse();
	 * 
	 * private function handleDevicePropertiesParsed(event : NativeDeviceInfoEvent) : void {
	 * 		NativeDeviceInfo(event.target).removeEventListener(NativeDeviceInfoEvent.PROPERTIES_PARSED, handleDevicePropertiesParsed);
	 * 			
	 * 		trace(PropertyVO(NativeDeviceProperties.OS_NAME).label + " - " + PropertyVO(NativeDeviceProperties.OS_NAME).value);
	 * 		trace(PropertyVO(NativeDeviceProperties.OS_VERSION).label + " - " + PropertyVO(NativeDeviceProperties.OS_VERSION).value);
	 * 		trace(PropertyVO(NativeDeviceProperties.OS_BUILD).label + " - " + PropertyVO(NativeDeviceProperties.OS_BUILD).value);
	 * 		trace(PropertyVO(NativeDeviceProperties.OS_SDK_VERSION).label + " - " + PropertyVO(NativeDeviceProperties.OS_SDK_VERSION).value);
	 * 		trace(PropertyVO(NativeDeviceProperties.OS_SDK_DESCRIPTION).label + " - " + PropertyVO(NativeDeviceProperties.OS_SDK_DESCRIPTION).value);
	 * 		trace(PropertyVO(NativeDeviceProperties.PRODUCT_MODEL).label + " - " + PropertyVO(NativeDeviceProperties.PRODUCT_MODEL).value);
	 * 		trace(PropertyVO(NativeDeviceProperties.PRODUCT_BRAND).label + " - " + PropertyVO(NativeDeviceProperties.PRODUCT_BRAND).value);
	 * 		trace(PropertyVO(NativeDeviceProperties.PRODUCT_NAME).label + " - " + PropertyVO(NativeDeviceProperties.PRODUCT_NAME).value);
	 * 		trace(PropertyVO(NativeDeviceProperties.PRODUCT_VERSION).label + " - " + PropertyVO(NativeDeviceProperties.PRODUCT_VERSION).value);
	 * 		trace(PropertyVO(NativeDeviceProperties.PRODUCT_BOARD).label + " - " + PropertyVO(NativeDeviceProperties.PRODUCT_BOARD).value);
	 * 		trace(PropertyVO(NativeDeviceProperties.PRODUCT_CPU).label + " - " + PropertyVO(NativeDeviceProperties.PRODUCT_CPU).value);
	 * 		trace(PropertyVO(NativeDeviceProperties.PRODUCT_MANUFACTURER).label + " - " + PropertyVO(NativeDeviceProperties.PRODUCT_MANUFACTURER).value);
	 * 		trace(PropertyVO(NativeDeviceProperties.OPENGLES_VERSION).label + " - " + PropertyVO(NativeDeviceProperties.OPENGLES_VERSION).value);
	 * 		trace(PropertyVO(NativeDeviceProperties.LCD_DENSITY).label + " - " + PropertyVO(NativeDeviceProperties.LCD_DENSITY).value);
	 * 		trace(PropertyVO(NativeDeviceProperties.DALVIK_HEAPSIZE).label + " - " + PropertyVO(NativeDeviceProperties.DALVIK_HEAPSIZE).value);
	 * }
	 * 
	 */
	public class NativeDeviceInfo extends EventDispatcher {

		private static const PROP_FILE_ON_DEVICE : String = "/system/build.prop";
		private var _debug : Boolean;

		public function NativeDeviceInfo(debug : Boolean = false) {
			_debug = debug;
		}

		public function parse() : void {
			var propFile : File = new File();
			propFile.nativePath = PROP_FILE_ON_DEVICE;

			var fs : FileStream = new FileStream();
			fs.open(propFile, FileMode.READ);

			var fileContents : String = fs.readUTFBytes(fs.bytesAvailable);
			fileContents = fileContents.replace(File.lineEnding, "\n");
			fs.close();

			var pattern : RegExp = /\r?\n/;
			var lines : Array = fileContents.split(pattern);

			for (var i : int = 0; i < lines.length; i++) {
				if ( lines[i] != "") {
					if (lines[i].search("#") == -1) {
						for (var j : int = 0; j < NativeDeviceProperties.DEVICE_PROPERTIES.length; j++) {
							if ( lines[i].search(PropertyVO(NativeDeviceProperties.DEVICE_PROPERTIES[j]).configKey) != -1) {
								PropertyVO(NativeDeviceProperties.DEVICE_PROPERTIES[j]).value = lines[i].split("=")[1];
								if ( debug ) {
									trace(PropertyVO(NativeDeviceProperties.DEVICE_PROPERTIES[j]).label + " - " + PropertyVO(NativeDeviceProperties.DEVICE_PROPERTIES[j]).value);
									trace(PropertyVO(NativeDeviceProperties.OS_BUILD).label + " - " + PropertyVO(NativeDeviceProperties.OS_BUILD).value);
								}
								break;
							}
						}
					}
				}
			}
			dispatchEvent(new NativeDeviceInfoEvent(NativeDeviceInfoEvent.PROPERTIES_PARSED));
		}

		public function get debug() : Boolean {
			return _debug;
		}

		public function set debug(value : Boolean) : void {
			_debug = value;
		}
	}
}
