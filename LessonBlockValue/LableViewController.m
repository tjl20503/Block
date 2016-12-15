//
//  LableViewController.m
//  LessonBlockValue
//
//  Created by lanou3g on 14-7-14.
//  Copyright (c) 2014年 Winann. All rights reserved.
//

#import "LableViewController.h"
#import "TextFieldViewController.h"

@interface LableViewController ()
@property (retain, nonatomic) IBOutlet UILabel *showLabel;

@end

@implementation LableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)pushToNextPage:(UIButton *)sender {
    [self performSegueWithIdentifier:@"push" sender:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    TextFieldViewController *tfVC = segue.destinationViewController;
    
    
//    tfVC.returnTextBlock = ^(NSString *showText) {
//        
//    };
//    __block UILabel *label = self.showLabel;
    [tfVC returnText:^(NSString *showText) {
        self.showLabel.text = showText;         //代码块中没有第二个视图控制器，所以不会造成循环引用
    }];
    
    
}


- (void)dealloc {
    [_showLabel release];
    [super dealloc];
}
@end
