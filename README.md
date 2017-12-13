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

There are two approaches: synchronous and asynchronous
Sync version read values on app loading and then cache it in app.
Async version read values each time it is invoked.

### API Sync
```js
import { HourFormat } from 'react-native-hour-format';

HourFormat.is24HourFormat() // bool
HourFormat.getLocale() // string
```
### API Async
```js
import { HourFormatAsync } from 'react-native-hour-format';

HourFormatAsync.is24HourFormatAsync() // Promise<bool>
HourFormatAsync.getLocaleAsync() // Promise<string>
```

### NOTE
If you want to read time format value when app starts, you have to use async version. Sync version might return default values in such case.

## Integration with `momentjs`

```js
import { HourFormatAsync } from 'react-native-hour-format';
import moment from 'moment';

HourFormatAsync.is24HourFormatAsync().then(is24HourFormat => {
	moment.updateLocale('en', {
		longDateFormat : {
			LT : is24HourFormat ? 'HH:mm' : 'hh:mm a',
			LTS : is24HourFormat ? 'HH:mm:ss' : 'hh:mm:ss a',
		}
	})
});
```
