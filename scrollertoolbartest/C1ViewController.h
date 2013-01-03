//
//  C1ViewController.h
//  scrollertoolbartest
//
//  Created by Coffman, Ben on 9/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface C1ViewController : UIViewController
{
    CGPoint _y;
}
@property (weak, nonatomic) IBOutlet UIScrollView *scroller;
@property (weak, nonatomic) IBOutlet UIToolbar *toolbar;

@end
