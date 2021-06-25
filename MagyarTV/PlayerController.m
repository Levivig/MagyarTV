//
//  PlayerController.m
//  MagyarTV
//
//  Created by GK on 2016.07.09..
//  Copyright © 2016. GKSoftware. All rights reserved.
//

#import "PlayerController.h"

@implementation PlayerController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.allowsPictureInPicturePlayback = true;
    self.delegate = self;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.player play];
}

- (void)playerViewController:(AVPlayerViewController *)playerViewController restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(void (^)(BOOL))completionHandler {
#if TARGET_OS_IOS && !TARGET_OS_UIKITFORMAC
    [_parentVC presentViewController:playerViewController animated:true completion:nil];
#endif
}

@end
