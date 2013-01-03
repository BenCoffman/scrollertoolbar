//
//  C1ViewController.m
//  scrollertoolbartest
//
//  Created by Coffman, Ben on 9/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "C1ViewController.h"

@interface C1ViewController ()

@end

@implementation C1ViewController
@synthesize scroller = _scroller;
@synthesize toolbar = _toolbar;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.scroller.contentSize = CGSizeMake(self.scroller.frame.size.width, self.scroller.frame.size.height + 100);
    self.toolbar.hidden = TRUE;
    _y.y = [self.scroller contentOffset].y;
    NSLog(@"offest is: %f", [self.scroller contentOffset].y);
}

- (void)viewDidUnload
{
    [self setScroller:nil];
    [self setToolbar:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"You are in %f", _y.y);
    NSLog(@"content offset %f", self.scroller.contentOffset);
    if(_y.y < 0){
        _y.y = 0;
    }
    
    if (_y.y < [self.scroller contentOffset].y){
        self.toolbar.hidden = TRUE;
        _y.y = [self.scroller contentOffset].y;
       // _y.y = _y.y + 10;
    
    } 
    else {
        self.toolbar.hidden = FALSE;
        _y.y = [self.scroller contentOffset].y;
        
    }
}

@end
