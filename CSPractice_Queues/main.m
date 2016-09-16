//
//  main.m
//  CSPractice_Queues
//
//  Created by Jesse Sahli on 8/23/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Queue.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        Queue *myQueue = [[Queue alloc]init];
        [myQueue enqueue:@"First"];
        [myQueue enqueue:@"Second"];
        [myQueue dequeue];
        
        //Shoud log "Second" because it was added last
        
        NSLog(@"%@", myQueue.rear.link.data);
    }
    return 0;
}
