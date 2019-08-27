# mydevice_info

A new flutter plugin project.

## Getting Started


memulai dengan `` flutter create --template=plugin -i swift -a java mydevice_info ``

output:


menambahkan informasi android tambahan ke file mydeviceinfoplugin.java
```java
s += "\n OS Version: " + System.getProperty("os.version") + "(" + android.os.Build.VERSION.INCREMENTAL + ")";
s += "\n OS API Level: " + android.os.Build.VERSION.SDK_INT;
s += "\n Device: " + android.os.Build.DEVICE;
s += "\n Model (and Product): " + android.os.Build.MODEL + " ("+ android.os.Build.PRODUCT + ")";

```
file mydeviceinfo.java

```java
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

```


This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
