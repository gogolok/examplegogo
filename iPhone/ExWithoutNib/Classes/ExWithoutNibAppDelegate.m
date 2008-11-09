#import "ExWithoutNibAppDelegate.h"

@implementation ExWithoutNibAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
    NSLog(@"CALL [UIApplicationDelegate::applicationDidFinishLaunching]");
    
    // !!!: create main window
    window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // !!!: set window background color
    [window setBackgroundColor:[UIColor grayColor]];
    
    // !!!: hide status bar
    // Info.plist hides already the status bar
    //[[UIApplication sharedApplication] setStatusBarHidden:true];
    
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