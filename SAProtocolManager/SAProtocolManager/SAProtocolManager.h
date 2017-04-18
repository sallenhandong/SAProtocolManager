//
//  SAProtocolManager.h
//  SAProtocolManager
//
//  Created by jefactoria on 2017/4/17.
//  Copyright © 2017年 sallen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SAProtocolManager : NSObject
+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;
@end
