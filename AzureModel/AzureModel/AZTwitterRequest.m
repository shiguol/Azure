//
//  AZTwitterRequest.m
//  AzureModel
//
//  Created by Alex on 13-10-16.
//  Copyright (c) 2013年 Non Inc. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>
#import "AZTwitterRequest.h"

@implementation AZTwitterRequest

- (void)requestTwitterPublic:(void (^)(NSDictionary *response))successGlobal
{
  NSURL *url = [NSURL URLWithString:@"http://api.twitter.com/1/statuses/public_timeline.json"];
  
  NSURLRequest *request = [NSURLRequest requestWithURL:url];
  
  AFJSONRequestOperation *operation = nil;
  operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request
                                                              success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
                                                                if (successGlobal) {
                                                                  successGlobal(JSON);
                                                                }
                                                              }
                                                              failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
                                                                if (successGlobal) {
                                                                  successGlobal(JSON);
                                                                }
                                                              }];
  [operation start];
  
}

@end
