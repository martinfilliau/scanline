#import "AppDelegate.h"
#import "DDLog.h"
#import "DDTTYLogger.h"

// The LumberjackUser header file is automatically generated by the LumberjackUser.bash script.
// This script has been added as a build phase to the target.
// The script gets executed before the files are compiled.
// 
// When you compile it on your system, it will replace the line:
//     "#define robbie_hanson 1"
// with
//     "#define your_name 1"
//
// This makes it easier to manage debug log levels while working in a team.
// After all, everyone is working on different parts of the app.
// So now everyone can just checkin their log levels, without affecting the debug output of others.
#import "LumberjackUser.h"


// Log levels: off, error, warn, info, verbose
#if DEBUG && robbie_hanson
  static const int ddLogLevel = LOG_LEVEL_VERBOSE; // Log level for robbie (debug)
#elif DEBUG
  static const int ddLogLevel = LOG_LEVEL_INFO;    // Log level for other team members (debug)
#else
  static const int ddLogLevel = LOG_LEVEL_WARN;    // Log level for release build
#endif


@implementation AppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	[DDLog addLogger:[DDTTYLogger sharedInstance]];
	
	DDLogVerbose(@"Invoking machine_init_cold");
	DDLogInfo(@"Waiting for machine to warm up...");
	DDLogWarn(@"Toner is low");
}

@end
