//
//  PlayerController.h
//  MagyarTV
//
//  Created by GK on 2016.07.09..
//  Copyright © 2016. GKSoftware. All rights reserved.
//

#import <UIKit/UIKit.h>

@import AVKit;

@interface PlayerController : AVPlayerViewController<AVPlayerViewControllerDelegate>

@property (nonatomic, weak) UIViewController *parentVC;

@end
