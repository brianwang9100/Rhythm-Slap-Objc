//
//  GameEndPopUp.m
//  RhythmSlapObjc
//
//  Created by Brian Wang on 9/20/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "GameEndPopUp.h"

@implementation GameEndPopUp
{
    CCNodeColor *_gameOverColor;
    CCLabelTTF *_gameOverText;
    CCLabelTTF *_yourScoreTitle;
    CCLabelTTF *_yourScoreNum;
    CCLabelTTF *_highScoreTitle;
    CCLabelTTF *_highScoreNum;
    CCButton *_tryAgain;
    CCButton *_mainMenu;
}

-(void) didLoadFromCCB
{
    _gameOverText.position = ccp(0, -200);
    id gameOverDropDown = [CCActionMoveTo actionWithDuration:1 position:ccp(.5, 90)];
    id gameOverElasticDown = [CCActionEaseElasticInOut actionWithAction:gameOverDropDown period:.4];
    [_gameOverText runAction:gameOverElasticDown];
    
    _yourScoreTitle.position = ccp(0, -200);
    id yourScoreDropDown = [CCActionMoveTo actionWithDuration:1.2 position:ccp(.5, 182.6)];
    id yourScoreElasticDown = [CCActionEaseElasticInOut actionWithAction:yourScoreDropDown period:.4];
    [_gameOverText runAction:yourScoreElasticDown];
    
    _yourScoreNum.position = ccp(0, -200);
    id scoreNumDropDown = [CCActionMoveTo actionWithDuration:1.2 position:ccp(.5, 232)];
    id scoreNumElasticDown = [CCActionEaseElasticInOut actionWithAction:scoreNumDropDown period:.4];
    [_gameOverText runAction:scoreNumElasticDown];
    
    _highScoreTitle.position = ccp(0, -200);
    id highScoreDropDown = [CCActionMoveTo actionWithDuration:1.4 position:ccp(.5, 284)];
    id highScoreElasticDown = [CCActionEaseElasticInOut actionWithAction:highScoreDropDown period:.4];
    [_gameOverText runAction:highScoreElasticDown];
    
    _highScoreNum.position = ccp(0, -200);
    id highNumDropDown = [CCActionMoveTo actionWithDuration:1.4 position:ccp(.5, 355.4)];
    id highNumElasticDown = [CCActionEaseElasticInOut actionWithAction:highNumDropDown period:.4];
    [_gameOverText runAction:highNumElasticDown];
    
    _tryAgain.position = ccp(0, -200);
    id tryAgainDropDown = [CCActionMoveTo actionWithDuration:1.4 position:ccp(.5, 130)];
    id tryAgainElasticDown = [CCActionEaseElasticInOut actionWithAction:tryAgainDropDown period:.4];
    [_gameOverText runAction:tryAgainElasticDown];
    
    _mainMenu.position = ccp(0, -200);
    id mainMenuDropDown = [CCActionMoveTo actionWithDuration:1.4 position:ccp(.5, 70)];
    id mainMenuElasticDown = [CCActionEaseElasticInOut actionWithAction:mainMenuDropDown period:.4];
    [_gameOverText runAction:mainMenuElasticDown];
}

-(void) retry
{
    CCScene *mainScene = [CCBReader loadAsScene:@"MainScene"];
    [[CCDirector sharedDirector] replaceScene: mainScene];
}

-(void) mainMenu
{
    CCScene *startScene = [CCBReader loadAsScene:@"StartScene"];
    [[CCDirector sharedDirector] replaceScene: startScene];
}
@end
