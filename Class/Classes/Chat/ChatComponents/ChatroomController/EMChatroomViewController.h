//
//  EMChatroomViewController.h
//  EaseIM
//
//  Created by 娜塔莎 on 2020/7/9.
//  Copyright © 2020 娜塔莎. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EaseChatViewController.h"
#import "EaseChatViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface EMChatroomViewController : EaseChatViewController

- (instancetype)initChatRoomViewControllerWithCoversationid:(NSString *)conversationId
                                              chatViewModel:(EaseChatViewModel *)viewModel;

@end

NS_ASSUME_NONNULL_END
