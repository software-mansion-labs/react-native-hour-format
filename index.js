import { NativeModules } from 'react-native';
const { RNHourFormat } = NativeModules;

export default class HourFormat {

    static getLocale() {
        return RNHourFormat.getLocale
    }

    static getHourFormat() {
        RNHourFormat.getHourFormat(locale);
    };
}
