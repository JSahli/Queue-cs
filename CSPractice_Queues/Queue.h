//
//  Queue.h
//  CSPractice_Queues
//
//  Created by Jesse Sahli on 8/23/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface Queue : NSObject

@property (strong, nonatomic) Node *rear;

-(void)enqueue: (id) data;
- (void)dequeue;

@end
