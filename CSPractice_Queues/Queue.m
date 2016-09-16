//
//  Queue.m
//  CSPractice_Queues
//
//  Created by Jesse Sahli on 8/23/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import "Queue.h"

@implementation Queue

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rear = [[Node alloc]init];
    }
    return self;
}



-(void)enqueue: (id) data {
    
    Node *newNode = [[Node alloc]init];
    newNode.data = data;
    newNode.link = self.rear.link;
    self.rear.link = newNode;
    
}



- (void)dequeue {
    
    //node counter is only here for the sake of knowing how many elements are in the link list, it does not serve a purpose in dequeue-ing
    
    Node *myNode = self.rear;
    int nodeCounter = 0;
    
    while (myNode.link.link != NULL) {
        myNode = myNode.link;
        nodeCounter++;
    }
    myNode.link = nil;
}


@end
