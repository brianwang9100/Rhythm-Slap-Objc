//
//  ComboBar.h
//  RhythmSlapObjc
//
//  Created by Brian Wang on 9/20/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"

@interface ComboBar : CCNode
@property (assign, nonatomic) int totalSize;
@property (assign, nonatomic) int currentSize;
@property (strong, nonatomic) CCNodeColor *comboSize;
@end
