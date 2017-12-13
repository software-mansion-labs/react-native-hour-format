import { NativeModules } from 'react-native';
const { RNHourFormat } = NativeModules;

let locale = 'en-US';
RNHourFormat.getLocale().then(result => (locale = result));

let is24hourformat = false;
RNHourFormat.getHourFormat().then(result => (is24hourformat = result === '24'));

export class HourFormat {
	static getLocale() {
		return locale;
	}

	static is24HourFormat() {
		return is24hourformat;
	}
}

export class HourFormatAsync {
  static getLocaleAsync() {
    return RNHourFormat.getLocale();
  }

  static is24HourFormatAsync() {
    return RNHourFormat.getHourFormat().then(result => result === "24");
  }
}
