//
//  VCRootViewController.m
//  XIBLoginInterface
//
//  Created by Civet on 2019/5/22.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "VCRootViewController.h"

@interface VCRootViewController ()

@end

@implementation VCRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)pressLogin:(UIButton *)sender {
    NSLog(@"name=====%@,password======%@",_tfUserName,_tfUserPassword);
    NSString *userName = @"jack";
    NSString *userPassword = @"123";
    if ([userName isEqual:_tfUserName.text] && [userPassword isEqual:_tfUserPassword.text]){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"用户登录成功" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:@"取消",nil];
        [alert show];
    }else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"用户名或密码错误" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:@"取消", nil];
        [alert show];
    }
}

- (IBAction)pressRegister:(id)sender {
    
}
//点击屏幕空白处回收键盘
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_tfUserName resignFirstResponder];
    [_tfUserPassword resignFirstResponder];
}
@end
