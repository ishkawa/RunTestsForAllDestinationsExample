#import <Foundation/Foundation.h>

@interface XMPObject : NSObject

@property (nonatomic, readonly) NSNumber *identifier;
@property (nonatomic, readonly) NSString *name;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
