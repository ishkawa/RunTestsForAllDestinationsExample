#import "XMPObject.h"

@implementation XMPObject

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        _identifier = [dictionary objectForKey:@"id"];
        _name = [dictionary objectForKey:@"name"];
    }
    return self;
}

@end
