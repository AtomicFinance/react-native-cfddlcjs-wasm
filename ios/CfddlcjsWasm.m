#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(CfddlcjsWasm, NSObject)

RCT_EXTERN_METHOD(initCfddlc:(NSString *)modId resolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(callCfddlc:(NSString *)modId funcName:(NSString *)name arguments:(NSString *)args resolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)

@end
