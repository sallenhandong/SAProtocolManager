//
//  SAProtocolManager.m
//  SAProtocolManager
//
//  Created by jefactoria on 2017/4/17.
//  Copyright © 2017年 sallen. All rights reserved.
//

#import "SAProtocolManager.h"

@interface SAProtocolManager ()
@property (nonatomic, strong) NSMutableDictionary *serviceProvideSource;


@end

@implementation SAProtocolManager
+ (SAProtocolManager *)sharedInstance
{
    static SAProtocolManager * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _serviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol
{
    if (provide == nil || protocol == nil)
        return;
    [[self sharedInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}

+ (id)serviceProvideForProtocol:(Protocol *)protocol
{
    return [[self sharedInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}








@end
