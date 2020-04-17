#import <React/RCTViewManager.h>
#import "MaterialButtons.h"
#import <React/RCTConvert.h>

// MDButton Header
@interface MDButton: MDCButton

@property (nonatomic, copy) RCTBubblingEventBlock onPress;

@end
// End header

// MDButton class
@implementation MDButton

@end
// End class

// MDButton Manager
@interface MDButtonManager : RCTViewManager

@property (nonatomic, copy) MDButton *button;

@end

@implementation MDButtonManager

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

- (UIView *)view
{

  _button = [MDButton new];
  [_button setTitle:DEFAULT_TEXT forState:UIControlStateNormal];
  [_button addTarget:self action:@selector(onPress:) forControlEvents:UIControlEventTouchUpInside];
    
  return _button;
}

- (void)onPress:(id)sender {
    if (!_button.onPress) {
        return;
    }
    
    _button.onPress(@{});
}

@end
