#import <SenTestingKit/SenTestingKit.h>
#import "XMPObject.h"

@interface XMPObjectTests : SenTestCase {
    NSDictionary *dictionary;
    XMPObject *object;
}

@end

@implementation XMPObjectTests

- (void)setUp
{
    [super setUp];
    
    dictionary = @{@"id": @73, @"name": @"ishkawa"};
    object = [[XMPObject alloc] initWithDictionary:dictionary];
}

- (void)tearDown
{
    object = nil;
    dictionary = nil;
    
    [super tearDown];
}

- (void)testImportedValues
{
    STAssertEqualObjects(object.identifier, [dictionary objectForKey:@"id"], @"id does not match.");
    STAssertEqualObjects(object.name, [dictionary objectForKey:@"name"], @"name does not match.");
}

@end
