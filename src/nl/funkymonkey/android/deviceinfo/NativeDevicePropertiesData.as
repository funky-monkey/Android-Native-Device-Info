package nl.funkymonkey.android.deviceinfo {
	/*
	 * Copyright (c) 2010 Funky Monkey Studio, All Rights Reserved 
	 * 
	 * author   Sidney de Koning
	 * contact  sidney@funky-monkey.nl
	 * 
	 */
	public class NativeDevicePropertiesData {

		private var _configKey : String;
		private var _value : String;		private var _label : String;

		public function NativeDevicePropertiesData(ck : String, label:String) {
			_configKey = ck;			_label = label;
		}

		public function get configKey() : String {
			return _configKey;
		}

		public function set configKey(value : String) : void {
			_configKey = value;
		}

		public function get value() : String {
			return _value;
		}

		public function set value(v : String) : void {
			_value = v;
		}

		public function get label() : String {
			return _label;
		}

		public function set label(value : String) : void {
			_label = value;
		}
	}
}
