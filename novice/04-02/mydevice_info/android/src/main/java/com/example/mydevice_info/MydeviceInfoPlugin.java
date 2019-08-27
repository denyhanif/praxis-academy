package com.example.mydevice_info;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** MydeviceInfoPlugin */
public class MydeviceInfoPlugin implements MethodCallHandler {
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "mydevice_info");
    channel.setMethodCallHandler(new MydeviceInfoPlugin());
  }

   @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("getPlatformVersion")) {
      result.success("Android " + android.os.Build.VERSION.RELEASE +  "\n OS Version: " + System.getProperty("os.version") + "(" + android.os.Build.VERSION.INCREMENTAL + ")"+"\n OS API Level: " + android.os.Build.VERSION.SDK_INT + "\n Device: " + android.os.Build.DEVICE+"\n Model (and Product): " + android.os.Build.MODEL + " ("+ android.os.Build.PRODUCT + ")");
    } else {
      result.notImplemented();
    }
  }
}
