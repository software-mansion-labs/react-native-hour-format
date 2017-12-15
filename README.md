# react-native-hour-format
Get hour format from OS settings.

## Installation
Add as dependency:

```
npm i --save react-native-hour-format
```

Link with react-native:

```
react-native link react-native-hour-format
```

## Usage

There are three methods you can call:

```js
import { HourFormat } from 'react-native-hour-format';

HourFormat.is24HourFormat() // bool
HourFormat.getHourFormat() // 12 or 24
HourFormat.getLocale() // string with system locale
```


## Integration with `momentjs`

Use below snippet so `moment().format('LT')` will return correctly formated values.

```js
import { HourFormat } from 'react-native-hour-format';
import moment from 'moment';

const is24HourFormat = HourFormat.is24HourFormat();
moment.updateLocale('en', {
  longDateFormat: {
    LT: is24HourFormat ? 'HH:mm' : 'hh:mm a',
    LTS: is24HourFormat ? 'HH:mm:ss' : 'hh:mm:ss a'
	}
});
```
