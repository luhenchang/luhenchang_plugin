#import "LuhenchangPlugin.h"
#if __has_include(<luhenchang_plugin/luhenchang_plugin-Swift.h>)
#import <luhenchang_plugin/luhenchang_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "luhenchang_plugin-Swift.h"
#endif

@implementation LuhenchangPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLuhenchangPlugin registerWithRegistrar:registrar];
}
@end
