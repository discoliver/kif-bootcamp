//
//  MyFristEGTest.m
//  KIFBootcamp
//
//  Created by Pivotal on 2016-03-30.
//  Copyright © 2016 PIvotal Labs. All rights reserved.
//

@import EarlGrey;
#import <XCTest/XCTest.h>

@interface MyFirstEarlGreyTest : XCTestCase
@end

@implementation MyFirstEarlGreyTest

- (void)test01functions {
    
    //Selection and Action
    //[[EarlGrey selectElementWithMatcher:grey_accessibilityLabel(@"Gordon Krull")] performAction:grey_tap()];
    
    //Selection and assertion
    //[[EarlGrey selectElementWithMatcher:grey_accessibilityLabel(@"Gordon Krull")] assertWithMatcher:grey_sufficientlyVisible()];
     
    //Selection, action and assertion
    [[[EarlGrey selectElementWithMatcher:grey_accessibilityLabel(@"Gordon Krull")] performAction:grey_tap()] assertWithMatcher:grey_sufficientlyVisible()];

}

- (void)test02selection {

    //[EarlGrey selectElementWithMatcher:grey_accessibilityID(<#NSString *accessibilityID#>)];
    //[EarlGrey selectElementWithMatcher:grey_accessibilityLabel(<#NSString *label#>)];
    //[EarlGrey selectElementWithMatcher:grey_accessibilityTrait(<#UIAccessibilityTraits traits#>)];
    
    //[[EarlGrey selectElementWithMatcher:grey_accessibilityLabel(@"Gordon Krull")] performAction:grey_tap()];
    
    id<GREYMatcher> nameOfMatcher =
    grey_allOf(grey_accessibilityLabel(@"Gordon Krull"), grey_sufficientlyVisible(), nil);
    
    [[EarlGrey selectElementWithMatcher:nameOfMatcher]
     performAction:grey_tap()];
    
    /* Custom Matcher
    (id<GREYMatcher>)matcherForElementWithoutChildren {
        MatchesBlock matches = ^BOOL(id element) {
            if ([element isKindOfClass:[UIView class]]) {
                return ((UIView *)element).subviews.count == 0;
            }
            // Handle accessibility elements here.
            return ...;
        };
        DescribeToBlock describe = ^void(id<GREYDescription> description) {
            [description appendText:@"UI element without children"];
        };
        return [[GREYElementMatcherBlock alloc] initWithMatchesBlock:matches
                                                    descriptionBlock:describe];
    }
     
     [[EarlGrey selectElementWithMatcher:[CustomMatchers matcherForElementWithoutChildren]]
     performAction:grey_doubleTap()];  */
    
    // off screen
//    [[[EarlGrey selectElementWithMatcher:aButtonMatcher]
//      usingSearchAction:grey_scrollInDirection(kGREYDirectionDown, 50)
//      onElementWithMatcher:aScrollViewMatcher]
//     performAction:grey_tap()];
}

- (void)test03Action {
   
    [[EarlGrey selectElementWithMatcher:grey_accessibilityLabel(@"Gordon Krull")] performAction:grey_tap()];
    
    id<GREYMatcher> nameOfMatcher =
    grey_allOf(grey_accessibilityLabel(@"ETT Pivots"), grey_sufficientlyVisible(), nil);
    
//    [[EarlGrey selectElementWithMatcher:nameOfMatcher]
//     performAction:grey_tap()];
//    
    
    NSError *error;
    [[EarlGrey selectElementWithMatcher:nameOfMatcher]
     performAction:grey_tap()
     error:&error];

}

- (void)test05Assertion {
   
}

    

@end