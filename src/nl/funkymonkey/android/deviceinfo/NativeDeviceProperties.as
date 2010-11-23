package nl.funkymonkey.android.deviceinfo {
	/*
	 * Copyright (c) 2010 Funky Monkey Studio, All Rights Reserved 
	 * 
	 * author   Sidney de Koning
	 * contact  sidney@funky-monkey.nl
	 * 
	 */
	public class NativeDeviceProperties {
		
		public static var OS_NAME : NativeDevicePropertiesData 			= new NativeDevicePropertiesData("net.bt.name", "OS_NAME");
		public static var OS_VERSION : NativeDevicePropertiesData 		= new NativeDevicePropertiesData("ro.build.version.release", "OS_VERSION");
		public static var OS_BUILD : NativeDevicePropertiesData 		= new NativeDevicePropertiesData("ro.build.display.id", "OS_BUILD");
		public static var OS_SDK_VERSION : NativeDevicePropertiesData 		= new NativeDevicePropertiesData("ro.build.version.sdk", "OS_SDK_VERSION");
		public static var OS_SDK_DESCRIPTION : NativeDevicePropertiesData 	= new NativeDevicePropertiesData("ro.build.description", "OS_SDK_DESCRIPTION");
		public static var PRODUCT_MODEL : NativeDevicePropertiesData 		= new NativeDevicePropertiesData("ro.product.model", "PRODUCT_MODEL");
		public static var PRODUCT_BRAND : NativeDevicePropertiesData 		= new NativeDevicePropertiesData("ro.product.brand", "PRODUCT_BRAND");
		public static var PRODUCT_NAME : NativeDevicePropertiesData 		= new NativeDevicePropertiesData("ro.product.name", "PRODUCT_NAME");
		public static var PRODUCT_VERSION : NativeDevicePropertiesData 		= new NativeDevicePropertiesData("ro.product.version", "PRODUCT_VERSION");
		public static var PRODUCT_BOARD : NativeDevicePropertiesData 		= new NativeDevicePropertiesData("ro.product.board", "PRODUCT_BOARD");
		public static var PRODUCT_CPU : NativeDevicePropertiesData 		= new NativeDevicePropertiesData("ro.product.cpu.abi", "PRODUCT_CPU");
		public static var PRODUCT_MANUFACTURER : NativeDevicePropertiesData 	= new NativeDevicePropertiesData("ro.product.manufacturer", "PRODUCT_MANUFACTURER");
		public static var OPENGLES_VERSION : NativeDevicePropertiesData 	= new NativeDevicePropertiesData("ro.opengles.version", "OPENGLES_VERSION");
		public static var LCD_DENSITY : NativeDevicePropertiesData 		= new NativeDevicePropertiesData("ro.sf.lcd_density", "LCD_DENSITY");
		public static var DALVIK_HEAPSIZE : NativeDevicePropertiesData 		= new NativeDevicePropertiesData("dalvik.vm.heapsize", "DALVIK_HEAPSIZE");
		
		public static var DEVICE_PROPERTIES:Array = new Array(OS_NAME, OS_VERSION, OS_BUILD, OS_SDK_VERSION,OS_SDK_DESCRIPTION, PRODUCT_MODEL, PRODUCT_BRAND, PRODUCT_NAME, PRODUCT_VERSION, PRODUCT_BOARD, PRODUCT_CPU, PRODUCT_MANUFACTURER, OPENGLES_VERSION, LCD_DENSITY, DALVIK_HEAPSIZE );
	}
}
