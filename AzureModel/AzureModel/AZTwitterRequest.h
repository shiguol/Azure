//
//  AZTwitterRequest.h
//  AzureModel
//
//  Created by Alex on 13-10-16.
//  Copyright (c) 2013年 Non Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// 指定完成后的回调方法
typedef void (^successGlobal)(NSDictionary *ret);

@interface AZTwitterRequest : NSObject

// 请求 twitter
- (void)requestTwitterPublic:(void (^)(NSDictionary *))successGlobal;

@end
