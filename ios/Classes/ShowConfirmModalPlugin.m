#import "ShowConfirmModalPlugin.h"
#if __has_include(<show_confirm_modal/show_confirm_modal-Swift.h>)
#import <show_confirm_modal/show_confirm_modal-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "show_confirm_modal-Swift.h"
#endif

@implementation ShowConfirmModalPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftShowConfirmModalPlugin registerWithRegistrar:registrar];
}
@end
