import { NativeModules } from 'react-native';
const { RNHourFormat } = NativeModules;

export class HourFormat {
	static getLocale() {
		return RNHourFormat.LOCALE;
	}

  static getHourFormat() {
		return RNHourFormat.HOUR_FORMAT;
	}

	static is24HourFormat() {
		return RNHourFormat.HOUR_FORMAT === '24';
	}
}
