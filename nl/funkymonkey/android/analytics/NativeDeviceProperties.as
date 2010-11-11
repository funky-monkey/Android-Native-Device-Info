package nl.funkymonkey.android.analytics {
	/*
	 * Copyright (c) 2010 Funky Monkey Studio, All Rights Reserved 
	 * 
	 * author   Sidney de Koning
	 * contact  sidney@funky-monkey.nl
	 * 
	 */
	public class NativeDeviceProperties {
		
		public static var OS_NAME : PropertyVO 			= new PropertyVO("net.bt.name", "OS_NAME");
		public static var OS_VERSION : PropertyVO 		= new PropertyVO("ro.build.version.release", "OS_VERSION");
		public static var OS_BUILD : PropertyVO 		= new PropertyVO("ro.build.display.id", "OS_BUILD");
		public static var OS_SDK_VERSION : PropertyVO 		= new PropertyVO("ro.build.version.sdk", "OS_SDK_VERSION");
		public static var OS_SDK_DESCRIPTION : PropertyVO 	= new PropertyVO("ro.build.description", "OS_SDK_DESCRIPTION");
		public static var PRODUCT_MODEL : PropertyVO 		= new PropertyVO("ro.product.model", "PRODUCT_MODEL");
		public static var PRODUCT_BRAND : PropertyVO 		= new PropertyVO("ro.product.brand", "PRODUCT_BRAND");
		public static var PRODUCT_NAME : PropertyVO 		= new PropertyVO("ro.product.name", "PRODUCT_NAME");
		public static var PRODUCT_VERSION : PropertyVO 		= new PropertyVO("ro.product.version", "PRODUCT_VERSION");
		public static var PRODUCT_BOARD : PropertyVO 		= new PropertyVO("ro.product.board", "PRODUCT_BOARD");
		public static var PRODUCT_CPU : PropertyVO 		= new PropertyVO("ro.product.cpu.abi", "PRODUCT_CPU");
		public static var PRODUCT_MANUFACTURER : PropertyVO 	= new PropertyVO("ro.product.manufacturer", "PRODUCT_MANUFACTURER");
		public static var OPENGLES_VERSION : PropertyVO 	= new PropertyVO("ro.opengles.version", "OPENGLES_VERSION");
		public static var LCD_DENSITY : PropertyVO 		= new PropertyVO("ro.sf.lcd_density", "LCD_DENSITY");
		public static var DALVIK_HEAPSIZE : PropertyVO 		= new PropertyVO("dalvik.vm.heapsize", "DALVIK_HEAPSIZE");
		
		public static var DEVICE_PROPERTIES:Array = new Array(OS_NAME, OS_VERSION, OS_BUILD, OS_SDK_VERSION,OS_SDK_DESCRIPTION, PRODUCT_MODEL, PRODUCT_BRAND, PRODUCT_NAME, PRODUCT_VERSION, PRODUCT_BOARD, PRODUCT_CPU, PRODUCT_MANUFACTURER, OPENGLES_VERSION, LCD_DENSITY, DALVIK_HEAPSIZE );
	}
}
