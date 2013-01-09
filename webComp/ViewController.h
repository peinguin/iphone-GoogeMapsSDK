//
//  ViewController.h
//  webComp
//
//  Created by Peinguin on 08.01.13.
//  Copyright (c) 2013 Peinguin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    UITextField *from;
    UITextField *to;
    UIWebView *map;
}

@property (nonatomic, retain) IBOutlet UITextField *from;
@property (nonatomic, retain) IBOutlet UITextField *to;
@property (nonatomic, retain) IBOutlet UIWebView *map;

- (IBAction) findOnMap: (id)sender;
- (IBAction) backgroundTouchedHideKeyboard:(id)sender;
- (IBAction) createMap:(id)sender;

-(NSString *)readFile:(NSString *)fileName;

@end
