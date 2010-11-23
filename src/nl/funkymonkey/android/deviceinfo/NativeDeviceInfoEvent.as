package nl.funkymonkey.android.deviceinfo {

	import flash.events.Event;

	/*
	 * Copyright (c) 2010 Funky Monkey Studio, All Rights Reserved 
	 * 
	 * author   Sidney de Koning
	 * contact  sidney@funky-monkey.nl
	 * 
	 */
	public class NativeDeviceInfoEvent extends Event {
		
		public static const PROPERTIES_PARSED:String = "NativeDeviceInfoEvent.PROPERTIES_PARSED";

		public function NativeDeviceInfoEvent(type : String, bubbles : Boolean = false, cancelable : Boolean = false) {
			super(type, bubbles, cancelable);
		}

		override public function clone() : Event {
			return super.clone();
		}
	}
}
