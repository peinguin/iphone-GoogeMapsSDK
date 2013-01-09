//
//  ViewController.m
//  webComp
//
//  Created by Peinguin on 08.01.13.
//  Copyright (c) 2013 Peinguin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize from, to, map;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self createMap:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)backgroundTouchedHideKeyboard:(id)sender{
    /*UIAlertView *alert = [[UIAlertView alloc] initWithTitle: nil message:@"Lalala" delegate:self cancelButtonTitle:@"OK!" otherButtonTitles:nil];
    [alert show];*/
}

-(NSString *)readFile:(NSString *)fileName
{
    NSFileManager *fileManager=[NSFileManager defaultManager];
    if ([fileManager fileExistsAtPath:fileName])
    {
        NSError *error= NULL;
        id resultData=[NSString stringWithContentsOfFile:fileName encoding:NSUTF8StringEncoding error:&error];
        if (error == NULL)
        {
            return resultData;
        }
    }
    return NULL;
}

- (void) createMap:(id)sender{
    [map loadHTMLString:[self readFile:[[NSBundle mainBundle] pathForResource:@"map" ofType:@"html"]] baseURL:[NSURL URLWithString:@"google.com"]];
}

- (void) findOnMap:(id)sender{
    [map stringByEvaluatingJavaScriptFromString:
     [
      [
       [
        [
         @"calcRoute('" stringByAppendingString: from.text
        ] stringByAppendingString: @"', '"
       ] stringByAppendingString: to.text
      ] stringByAppendingString: @"');"
     ]
    ];
}

@end
