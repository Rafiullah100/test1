//
//  secondViewController.h
//  a
//
//  Created by Romi_Khan on 27/04/2017.
//  Copyright © 2017 SoftBrain. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol CakeDelegate<NSObject>
-(void)sendTextToViewController:(NSString *)string;
@end
@interface secondViewController : UIViewController<UITextFieldDelegate>
-(int)method;
@property (weak, nonatomic) id<CakeDelegate>delegate;
@end
