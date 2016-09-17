//
//  UVViewController.m
//  UVDemo
//
//  Created by Donny Davis on 9/16/16.
//  Copyright © 2016 UserVoice. All rights reserved.
//

#import "UVViewController.h"
#import "UserVoice.h"

@interface UVViewController ()

@end

@implementation UVViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UVConfig *config = [UVConfig configWithSite:@"uservoice.us.com:3000"];
    UVConfig *config = [UVConfig configWithSite:@"demo.uservoice.com"];
    [UserVoice initialize:config];
}

- (IBAction)launchUserVoice:(id)sender {
    [UserVoice presentUserVoiceInterfaceForParentViewController:self];
}

- (IBAction)launchForum:(id)sender {
    [UserVoice presentUserVoiceForumForParentViewController:self];
}

- (IBAction)launchIdeaForm:(id)sender {
    [UserVoice presentUserVoiceNewIdeaFormForParentViewController:self];
}

- (IBAction)launchTicketForm:(id)sender {
    [UserVoice presentUserVoiceContactUsFormForParentViewController:self];
}

@end
