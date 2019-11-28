//
//  WBViewController.m
//  VoiceConverter
//
//  Created by ryan on 11/27/2019.
//  Copyright (c) 2019 ryan. All rights reserved.
//

#import "WBViewController.h"
#import <WAConverter.h>

@interface WBViewController ()
@end

@implementation WBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *wavPath = [[NSBundle mainBundle] pathForResource:@"voice" ofType:@"wav"];
    NSString *homeDir = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true).firstObject;
    NSString *targetPath = [homeDir stringByAppendingPathComponent:@"hhh.amr"];
    NSLog(@"amr音频保存目录：%@", targetPath);
    BOOL success = [WAConverter convertWAV:wavPath toAMR:targetPath];
    if(success) {
        NSLog(@"转换成功……");
        return;
    }
    NSLog(@"转换失败……");
}

///Users/ryan/workspace/Ryan's Pods/VoiceConverter/Example/Pods/Headers/Public/VoiceConverter/wav.h:24:1: Unknown type name 'class'; did you mean 'Class'?

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
