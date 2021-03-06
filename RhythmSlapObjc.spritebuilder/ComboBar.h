//
//  ComboBar.h
//  RhythmSlapObjc
//
//  Created by Brian Wang on 9/20/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"

@interface ComboBar : CCNode
@property (assign, nonatomic) float totalSize;
@property (assign, nonatomic) float currentSize;
@property (strong, nonatomic) CCNodeColor *comboSize;
@property (strong, nonatomic) CCNodeColor *comboGlowNode;
@property (strong, nonatomic) CCNodeGradient *comboBarGradient;
-(void)loadParticleExplosionWithColor: (CCColor*) color;
@end
