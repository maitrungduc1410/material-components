#import <React/RCTViewManager.h>
#import <React/RCTConvert.h>
#import "MaterialButtons.h"
#import "MaterialButtons+Theming.h"
#import "MDButton.h"

@interface MDTextButtonManager : RCTViewManager

@end

@implementation MDTextButtonManager

static NSString * const DEFAULT_TEXT = @"My button";

RCT_EXPORT_MODULE()

RCT_EXPORT_VIEW_PROPERTY(onPress, RCTBubblingEventBlock)

RCT_CUSTOM_VIEW_PROPERTY(title, NSString, MDCButton)
{
  [view setTitle:json forState:UIControlStateNormal];
}

RCT_CUSTOM_VIEW_PROPERTY(enabled, BOOL, MDCButton)
{
  [view setEnabled:[RCTConvert BOOL:json] animated:true];
}

RCT_CUSTOM_VIEW_PROPERTY(elevation, NSInteger, MDCButton)
{
  MDCShadowElevation elevation = [RCTConvert NSInteger:json];
  [view setElevation:elevation forState:UIControlStateNormal];
}

RCT_CUSTOM_VIEW_PROPERTY(textColor, NSString, MDCButton)
{
  [view setTitleColor:[RCTConvert UIColor:json] forState:UIControlStateNormal];
}

RCT_CUSTOM_VIEW_PROPERTY(backgroundColor, NSString, MDCButton)
{
  [view setBackgroundColor:[RCTConvert UIColor:json] forState:UIControlStateNormal];
}

RCT_CUSTOM_VIEW_PROPERTY(borderWidth, NSInteger, MDCButton)
{
  [view setBorderWidth:[RCTConvert CGFloat:json] forState:UIControlStateNormal];
}

RCT_CUSTOM_VIEW_PROPERTY(borderColor, NSString, MDCButton)
{
  [view setBorderColor:[RCTConvert UIColor:json] forState:UIControlStateNormal];
}

RCT_CUSTOM_VIEW_PROPERTY(borderRadius, NSInteger, MDCButton)
{
    view.layer.cornerRadius = [RCTConvert CGFloat:json];
    view.layer.masksToBounds = true;
}

RCT_CUSTOM_VIEW_PROPERTY(textSize, NSInteger, MDCButton)
{
    view.titleLabel.font = [UIFont systemFontOfSize:[RCTConvert CGFloat:json]];
}

RCT_CUSTOM_VIEW_PROPERTY(rippleColor, NSInteger, MDCButton)
{
    [view setInkColor:[RCTConvert UIColor:json]];
}

- (UIView *)view
{
    MDCContainerScheme *containerScheme = [[MDCContainerScheme alloc] init];
    MDButton *button = [MDButton new];
    [button applyTextThemeWithScheme:containerScheme];
    [button setTitle:DEFAULT_TEXT forState:UIControlStateNormal];
    [button addTarget:self action:@selector(onPress:) forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}

- (void)onPress:(id)sender {
    if (((MDButton *)sender).onPress && [sender isKindOfClass:[MDButton class]]) {
       ((MDButton *)sender).onPress(@{});
    }
}

@end
