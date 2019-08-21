//
//  ViewController.m
//  VHYunSDKDemo_OPS
//
//  Created by vhall on 2019/7/23.
//  Copyright © 2019 vhall. All rights reserved.
//

#import "ViewController.h"
#import "ViewController+vhall.h"
#import <VHDoc/VHDocument.h>
#import <VHDoc/VHDocUpload.h>
#import "NewDocumentDemoViewController.h"
#import "DocUploadViewController.h"


#define VHScreenHeight          ([UIScreen mainScreen].bounds.size.height)
#define VHScreenWidth           ([UIScreen mainScreen].bounds.size.width)
#define VH_SH                   ((VHScreenWidth<VHScreenHeight) ? VHScreenHeight : VHScreenWidth)
#define VH_SW                   ((VHScreenWidth<VHScreenHeight) ? VHScreenWidth  : VHScreenHeight)


@interface ViewController ()
{
    UITextField *_businessIDTextField;
    UITextField *_accessTokenTextField;
    UITextField *_roomIDTextField;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initSDKView];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self showInitSDKVC];
}

- (void)documentBtnClicked:(UIButton*)btn
{
    if(_businessIDTextField.text.length == 0 || _accessTokenTextField.text.length == 0)
    {
        [self showMsg:@"参数不能为空" afterDelay:1.5];
        return;
    }
    
    DEMO_Setting.docChannelID = _businessIDTextField.text;
    DEMO_Setting.accessToken  = _accessTokenTextField.text;
    DEMO_Setting.docRoomID    = _roomIDTextField.text;

    NewDocumentDemoViewController * vc = [[NewDocumentDemoViewController alloc] init];
    vc.channelID    = DEMO_Setting.docChannelID;
    vc.accessToken  = DEMO_Setting.accessToken;
    vc.roomID       = DEMO_Setting.docRoomID;
    
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)uploadBtnClicked:(UIButton*)btn
{
    DEMO_Setting.accessToken  = _accessTokenTextField.text;
    if(_accessTokenTextField.text.length == 0)
    {
        [self showMsg:@"accessToken为空" afterDelay:1.5];
        return;
    }
    
    DocUploadViewController * vc = [[DocUploadViewController alloc] init];
    vc.accessToken = DEMO_Setting.accessToken;
    [self presentViewController:vc animated:YES completion:nil];
}


- (void)initSDKView
{
    
    UITextField *businessIDTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 60, VHScreenWidth-40, 30)];
    businessIDTextField.placeholder = @"请输入channelID ch_xxxx";
    businessIDTextField.text = DEMO_Setting.docChannelID;
    businessIDTextField.borderStyle = UITextBorderStyleRoundedRect;
    businessIDTextField.clearButtonMode=UITextFieldViewModeWhileEditing;
    businessIDTextField.delegate  = self;
    _businessIDTextField = businessIDTextField;
    
    [self.view addSubview:businessIDTextField];
    
    UITextField *accessTokenTextField = [[UITextField alloc] initWithFrame:CGRectMake(businessIDTextField.left, businessIDTextField.bottom+10, businessIDTextField.width, businessIDTextField.height)];
    accessTokenTextField.placeholder = @"请输入 accessToken";
    accessTokenTextField.text = DEMO_Setting.accessToken;
    accessTokenTextField.borderStyle = UITextBorderStyleRoundedRect;
    accessTokenTextField.clearButtonMode=UITextFieldViewModeWhileEditing;
    accessTokenTextField.delegate  = self;
    _accessTokenTextField = accessTokenTextField;
    [self.view addSubview:accessTokenTextField];
    
    UITextField *roomIDTextField = [[UITextField alloc] initWithFrame:CGRectMake(businessIDTextField.left, accessTokenTextField.bottom+10, businessIDTextField.width, businessIDTextField.height)];
    roomIDTextField.placeholder = @"请输入roomID lss_xxxx（可选）";
    roomIDTextField.text = DEMO_Setting.docRoomID;
    roomIDTextField.borderStyle = UITextBorderStyleRoundedRect;
    roomIDTextField.clearButtonMode=UITextFieldViewModeWhileEditing;
    roomIDTextField.delegate  = self;
    _roomIDTextField = roomIDTextField;
    [self.view addSubview:roomIDTextField];
    
    UIButton *nextBtn = [[UIButton alloc] initWithFrame:CGRectMake(accessTokenTextField.left, roomIDTextField.bottom+10, accessTokenTextField.width, accessTokenTextField.height)];
    [nextBtn setTitle:@"演示文档" forState:UIControlStateNormal];
    [nextBtn addTarget:self action:@selector(documentBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    nextBtn.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:nextBtn];
    
    UIButton *nextBtn1 = [[UIButton alloc] initWithFrame:CGRectMake(accessTokenTextField.left, nextBtn.bottom+10, accessTokenTextField.width, accessTokenTextField.height)];
    [nextBtn1 setTitle:@"上传文档" forState:UIControlStateNormal];
    [nextBtn1 addTarget:self action:@selector(uploadBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    nextBtn1.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:nextBtn1];
    
    UILabel * label= [[UILabel alloc] initWithFrame:CGRectMake(0, VHScreenHeight - 100, VHScreenWidth, 20)];
    label.font = [UIFont systemFontOfSize:12];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor grayColor];
    label.text = [NSString stringWithFormat:@"微吼云 OPS SDK v%@",[VHDocument getSDKVersion]];
    [self.view addSubview:label];
}

@end
