
package xyz.miron.reactnativehourformat;

import android.content.Context;
import android.content.SharedPreferences;

import android.text.format.DateFormat;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import java.util.Map;
import java.util.HashMap;

public class RNHourFormatModule extends ReactContextBaseJavaModule {

  private static final String LOCALE = "LOCALE";
  private static final String HOUR_FORMAT = "HOUR_FORMAT";


  public RNHourFormatModule(ReactApplicationContext reactContext) {
    super(reactContext);
  }

  @Override
  public String getName() {
    return "RNHourFormat";
  }

  @Override
  public Map<String, Object> getConstants() {
    final Map<String, Object> constants = new HashMap<>();
    constants.put(LOCALE, this.getLocale());
    constants.put(HOUR_FORMAT, this.getHourFormat());
    return constants;
  }

  private String getLocale() {
    SharedPreferences preferences = getReactApplicationContext().getSharedPreferences("react-native", Context.MODE_PRIVATE);
    return preferences.getString("locale_override", null);
  }

  private String getHourFormat() {
    return DateFormat.is24HourFormat(getReactApplicationContext()) ? "24" : "12";
  }
}