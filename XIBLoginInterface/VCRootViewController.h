//
//  VCRootViewController.h
//  XIBLoginInterface
//
//  Created by Civet on 2019/5/22.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCRootViewController : UIViewController
//使用XIB创建UILabel属性
//IBOutlet表示属性是通过XIB创建的
@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UIView *userPassword;
@property (weak, nonatomic) IBOutlet UITextField *tfUserName;
@property (weak, nonatomic) IBOutlet UITextField *tfUserPassword;
@property (weak, nonatomic) IBOutlet UIButton *btnLogin;
@property (weak, nonatomic) IBOutlet UIButton *btnRegister;
- (IBAction)pressLogin:(UIButton *)sender;
- (IBAction)pressRegister:(id)sender;

@end
