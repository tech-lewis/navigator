#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
  // self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  /*
  UINavigationController *nav = [[UINavigationController alloc] init];
  [nav setNavigationBarHidden:true];
  self.window.rootViewController = nav;
  */
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
