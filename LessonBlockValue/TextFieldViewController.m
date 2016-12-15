//
//  TextFieldViewController.m
//  LessonBlockValue
//
//  Created by lanou3g on 14-7-14.
//  Copyright (c) 2014年 Winann. All rights reserved.
//

#import "TextFieldViewController.h"

@interface TextFieldViewController ()

@property (retain, nonatomic) IBOutlet UITextField *inputTF;
@property (retain, nonatomic) IBOutlet UITextField *inputTf2;

@end

@implementation TextFieldViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.inputTF resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)returnText:(ReturnTextBlock)block
{
    self.returnTextBlock = block;
}

- (void)viewWillDisappear:(BOOL)animated
{
    if (self.returnTextBlock != nil)
    {
        NSString *str1 = self.inputTF.text;
        NSString *str2 = self.inputTf2.text;
        
        NSMutableString *str3 = [NSMutableString stringWithCapacity:100];
        [str3 appendString:str1];
        [str3 appendString:str2];
        
        NSInteger a = [str1 integerValue] + [str2 integerValue];
        
        self.returnTextBlock([NSString stringWithFormat:@"%ld",a]);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)dealloc
{
    [_inputTF release];
    [_inputTf2 release];
    [super dealloc];
}
@end
