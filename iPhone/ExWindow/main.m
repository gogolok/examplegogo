#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    // !!!: specify delegate explicitly
    int retVal = UIApplicationMain(argc, argv, nil, @"DemoAppDelegate");
    
    [pool release];
    return retVal;
}
