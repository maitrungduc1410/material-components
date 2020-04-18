#import <React/RCTComponent.h>
#import "MaterialButtons.h"

@interface MDButton: MDCButton

@property (nonatomic, copy) RCTBubblingEventBlock onPress;

@end