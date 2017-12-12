import { NativeModules } from "react-native";
const { RNHourFormat } = NativeModules;

export default class HourFormat {
  static getLocale() {
    return RNHourFormat.getLocale();
  }

  static is24HourFormat() {
    return RNHourFormat.getHourFormat().then(result => result === "24");
  }
}
