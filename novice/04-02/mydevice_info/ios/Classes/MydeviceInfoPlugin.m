#import "MydeviceInfoPlugin.h"
#import <mydevice_info/mydevice_info-Swift.h>

@implementation MydeviceInfoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMydeviceInfoPlugin registerWithRegistrar:registrar];
}
@end
