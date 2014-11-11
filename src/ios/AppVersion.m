#import "AppVersion.h"
#import <Cordova/CDVPluginResult.h>

@implementation AppVersion

- (void)getVersionNumber:(CDVInvokedUrlCommand*)command
{

      NSDictionary *currentDate =[self getversionDetails];
    
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:currentDate];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}


- (NSDictionary *) getversionDetails{
    
    
    
    NSString* version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    
    NSString* build = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
    NSMutableDictionary* dict = [NSMutableDictionary dictionaryWithCapacity:3];
    

      [dict setObject:[NSString stringWithString:version] forKey:@"version"];
    [dict setObject:[NSString stringWithString:build] forKey:@"build"];
   
    
    
    NSDictionary* devReturn = [NSDictionary dictionaryWithDictionary:dict];
    return devReturn;
}

@end
