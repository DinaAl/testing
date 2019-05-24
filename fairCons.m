//
//  fairCons.m
//  mybackayrd15
//
//  Created by Dina Al-Yaseen on 2015-05-15.
//  Copyright (c) 2015 Dina Alyaseen. All rights reserved.
//

#import <Foundation/Foundation.h>

//
//  fairCons.m
//  test3d
//
//  Created by Dina Alyaseen on 2014-11-21.
//  Copyright (c) 2014 Dina Alyaseen. All rights reserved.
//

#import "fairCons.h"

@implementation fairCons




SKSpriteNode *applesIcon;
SKSpriteNode *flowersIcon;
BOOL applesAdd;
BOOL yellowShrubsAdd;
BOOL purplePinkAdd;
BOOL highGrassAdd;
BOOL colouredFlowersAdd;
BOOL purlePinkFlowersAdd;
BOOL blueflowersAdd;
BOOL redflowersAdd;
BOOL yellowFlowersAdd;
BOOL treeAdd;

-(id)initWithSize:(CGSize)size {
    
    if (self = [super initWithSize:size]) {
        
        SKSpriteNode *fair=[SKSpriteNode spriteNodeWithImageNamed:@"4-fair_level-apple.png"];
        fair.position = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMidY(self.frame));
        
        fair.size=self.frame.size;
        highGrassAdd=NO;
        yellowFlowersAdd=NO;
        colouredFlowersAdd=NO;
        blueflowersAdd=NO;
        redflowersAdd=NO;
        purlePinkFlowersAdd=NO;
        applesAdd=NO;
        
        [self addChild:fair];
        
        
        [self addChild:[self applesOnTreeNode]];
        
        [self addChild:[self flowersNode]];
        
        
        
        
    }
    return  self;
}

-(void)addApples{
    
    SKSpriteNode *apples =[SKSpriteNode spriteNodeWithImageNamed:@"tree_apples.png"];
    
    
    
    float push_back = 0.7 * self.frame.size.width;
    float push_down = 0.33 * self.frame.size.height;
    apples.position=CGPointMake(CGRectGetMaxX(self.frame)-push_back,self.frame.size.height-push_down);
    
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
    {
        CGSize result =[[UIScreen mainScreen] bounds].size;
        {   if (result.height==480)
            
        {
            apples.size=CGSizeMake(150,150);
            
            
        }
            
            if (result.height==568)
                
            {
                apples.size=CGSizeMake(150,150);
                
                
            }
            
            else apples.size=CGSizeMake(150,150);
            
        }
        
    }
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        apples.size=CGSizeMake(250,250);
    }
    
    
    [self addChild:apples];
    
}

-(SKSpriteNode*)applesOnTreeNode
{
    applesIcon =[SKSpriteNode spriteNodeWithImageNamed:@"apple-icon.png"];
    
    
    float push_back = 0.05 * self.frame.size.width;
    float push_down = 0.70 * self.frame.size.height;
    applesIcon.position=CGPointMake(CGRectGetMaxX(self.frame)-push_back,self.frame.size.height-push_down);
    applesIcon.zPosition=1.2;
    applesIcon.size=CGSizeMake(50,50);
    
    
    return applesIcon;
}


-(SKSpriteNode*)flowersNode
{
    flowersIcon =[SKSpriteNode spriteNodeWithImageNamed:@"flowers_icon.png"];
    float push_back = 0.05 * self.frame.size.width;
    float push_down = 0.90 * self.frame.size.height;
    flowersIcon.position=CGPointMake(CGRectGetMaxX(self.frame)-push_back,self.frame.size.height-push_down);
    
    flowersIcon.color = [SKColor grayColor];
    
    flowersIcon.colorBlendFactor = 1.5;
    
    flowersIcon.zPosition=1.2;
    flowersIcon.size=CGSizeMake(50,50);
    return flowersIcon;
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event

{
    UITouch *touch =[touches anyObject];
    CGPoint location =[touch locationInNode:self];
    
    
    //trigger the action upon pressing the icon
    if ([applesIcon containsPoint:location])
    {  if (applesAdd== NO)
    {  [self addApples];
        
        applesAdd= YES;
        
        NSLog(@" I am in add apples inside touchesBegan");
    }
    }
    
    
}




@end
