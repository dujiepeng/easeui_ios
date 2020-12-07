//
//  EaseChatViewModel.h
//  EaseIMKit
//
//  Created by 娜塔莎 on 2020/11/17.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "EaseEnums.h"

/*!
 *  输入区类型
 */
typedef NS_ENUM(NSInteger, EaseInputBarStyle) {
    EaseInputBarStyleAll = 1,          //全部功能
    EaseInputBarStyleNoAudio,          //无语音
    EaseInputBarStyleNoEmoji,          //无表情
    EaseInputBarStyleNoAudioAndEmoji,  //无表情和语音
    EaseInputBarStyleOnlyText,         //纯文本
};

/*!
 *  群聊消息排列方式
 */
typedef enum {
    EaseAlignmentNormal = 1,     //左右排列
    EaseAlignmentlLeft,          //居左排列
} EaseAlignmentStyle;

NS_ASSUME_NONNULL_BEGIN

@interface EaseChatViewModel : NSObject

@property (nonatomic) BOOL isFetchHistoryMessagesFromServer; //是否从服务器获取历史消息
@property (nonatomic, strong) UIColor *chatViewBgColor; //聊天页背景色
@property (nonatomic, strong) UIColor *chatBarBgColor; //输入区背景色
@property (nonatomic, strong) UIColor *msgTimeItemBgColor; //时间线背景色
@property (nonatomic, strong) UIColor *msgTimeItemFontColor; //时间线字体颜色
@property (nonatomic, strong) UIImage *receiveBubbleBgPicture; //所接收信息的气泡
@property (nonatomic, strong) UIImage *sendBubbleBgPicture; //所发送信息的气泡
@property (nonatomic) CGFloat contentFontSize; //消息字体大小
@property (nonatomic) EaseInputBarStyle inputBarStyle; //输入区类型：(全部功能，无语音，无表情，无表情和语音，纯文本)
@property (nonatomic) EaseAvatarStyle avatarStyle; //头像风格
@property (nonatomic) CGFloat avatarCornerRadius; //头像圆角大小 默认：0 (只有头像类型是圆角生效)
//仅群聊可设置
@property (nonatomic) EaseAlignmentStyle msgAlignmentStyle; //聊天区域消息排列方式

@end

NS_ASSUME_NONNULL_END
