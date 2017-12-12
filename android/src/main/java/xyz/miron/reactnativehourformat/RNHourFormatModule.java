
package xyz.miron.reactnativehourformat;

import android.content.Context;
import android.content.SharedPreferences;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Promise;
import android.text.format.DateFormat;

public class RNHourFormatModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNHourFormatModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNHourFormat";
  }

  @ReactMethod
  public void getLocale(Promise promise) {
    promise.resolve(getPreferences().getString("locale_override", null));
  }

  @ReactMethod
  public void getHourFormat(Promise promise) {
    promise.resolve(DateFormat.is24HourFormat(getReactApplicationContext()) ? "24" : "12");
  }

  private SharedPreferences getPreferences() {
    return getReactApplicationContext().getSharedPreferences("react-native", Context.MODE_PRIVATE);
  }
}