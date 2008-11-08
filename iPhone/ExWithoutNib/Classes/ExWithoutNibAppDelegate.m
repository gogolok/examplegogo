#import "ExWithoutNibAppDelegate.h"

@implementation ExWithoutNibAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
    NSLog(@"CALL [UIApplicationDelegate::applicationDidFinishLaunching]");
    
    window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [window setBackgroundColor:[UIColor grayColor]];
    
    [[UIApplication sharedApplication] setStatusBarHidden:true];
    
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"CALL [UIApplicationDelegate::applicationWillResignActive]");
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"CALL [UIApplicationDelegate::applicationDidBecomeActive]");
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"CALL [UIApplicationDelegate::applicationWillTerminate]");    
}

@end