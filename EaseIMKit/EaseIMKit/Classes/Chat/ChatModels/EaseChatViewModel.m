//
//  EaseChatViewModel.m
//  EaseIMKit
//
//  Created by 娜塔莎 on 2020/11/17.
//

#import "EaseChatViewModel.h"
#import "UIImage+EaseUI.h"
#import "UIColor+EaseUI.h"

@implementation EaseChatViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _isFetchHistoryMessagesFromServer = NO;
        _chatViewBgColor = [UIColor colorWithHexString:@"#F2F2F2"];
        _chatBarBgColor = [UIColor colorWithHexString:@"#F2F2F2"];
        _msgTimeItemBgColor = [UIColor colorWithHexString:@"#F2F2F2"];
        _msgTimeItemFontColor = [UIColor colorWithHexString:@"#ADADAD"];
        _receiveBubbleBgPicture = [UIImage easeUIImageNamed:@"msg_bg_recv"];
        _sendBubbleBgPicture = [UIImage easeUIImageNamed:@"msg_bg_send"];
        _contentFontSize = 18.f;
        _inputBarStyle = EaseInputBarStyleAll;
        _avatarStyle = RoundedCorner;
        _avatarCornerRadius = 0;
    }
    return self;
}

- (void)setIsFetchHistoryMessagesFromServer:(BOOL)isFetchHistoryMessagesFromServer
{
    _isFetchHistoryMessagesFromServer = isFetchHistoryMessagesFromServer;
}

- (void)setChatViewBgColor:(UIColor *)chatViewBgColor
{
    if (chatViewBgColor) {
        _chatViewBgColor = chatViewBgColor;
    }
}

- (void)setChatBarBgColor:(UIColor *)chatBarBgColor
{
    if (chatBarBgColor) {
        _chatBarBgColor = chatBarBgColor;
    }
}

- (void)setMsgTimeItemBgColor:(UIColor *)msgTimeItemBgColor
{
    if (msgTimeItemBgColor) {
        _msgTimeItemBgColor = msgTimeItemBgColor;
    }
}

- (void)setMsgTimeItemFontColor:(UIColor *)msgTimeItemFontColor
{
    if (msgTimeItemFontColor) {
        _msgTimeItemFontColor = msgTimeItemFontColor;
    }
}

- (void)setReceiveBubbleBgPicture:(UIImage *)receiveBubbleBgPicture
{
    if (receiveBubbleBgPicture) {
        _receiveBubbleBgPicture = receiveBubbleBgPicture;
    }
}

- (void)setSendBubbleBgPicture:(UIImage *)sendBubbleBgPicture
{
    if (sendBubbleBgPicture) {
        _sendBubbleBgPicture = sendBubbleBgPicture;
    }
}

- (void)setContentFontSize:(CGFloat)contentFontSize
{
    if (contentFontSize > 0) {
        _contentFontSize = contentFontSize;
    }
}

- (void)setInputBarStyle:(EaseInputBarStyle)inputBarStyle
{
    if (inputBarStyle >= 1 && inputBarStyle <= 5) {
        _inputBarStyle = inputBarStyle;
    }
}

- (void)setAvatarStyle:(EaseAvatarStyle)avatarStyle
{
    if (avatarStyle >= 1 && avatarStyle <= 3) {
        _avatarStyle = avatarStyle;
    }
}

- (void)setAvatarCornerRadius:(CGFloat)avatarCornerRadius
{
    if (avatarCornerRadius > 0) {
        _avatarCornerRadius = avatarCornerRadius;
    }
}

@end
