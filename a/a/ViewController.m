//
//  ViewController.m
//  a
//
//  Created by Romi_Khan on 25/09/2016.
//  Copyright © 2016 SoftBrain. All rights reserved.
//

#import "ViewController.h"
#import "Toast.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *counterLabel;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    
    NSLog(@"viewcontrollerererere");
    NSMutableArray *a = [[NSMutableArray alloc]initWithObjects:@"1",@"2", nil];
    [[NSUserDefaults standardUserDefaults] setObject:a forKey:@"key"];
    
    
    NSArray *arr = [NSArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"key"]];
    for (int i=0; i<[arr count]; i++) {
        NSLog(@"%@", [arr objectAtIndex:i]);
    }
    
    secondViewController *vc = [[secondViewController alloc]init];
    [vc setDelegate:self];
    int number = vc.method;
   // NSLog(@"the number is %d", number);
    //[self.activityIndicator startAnimating];
    NSTimer *timer;
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(countDownTime) userInfo:nil repeats:YES];
   // UIImage *image = [UIImage imageNamed:@"like.png"];
   // [self.button setImage:image forState:UIControlStateNormal];
    //self.button.tintColor = [UIColor redColor];
   // NSDate *now = [NSDate date];
    //NSLog(@"%@", now);
   /* UIUserNotificationType type = UIUserNotificationTypeBadge | UIUserNotificationTypeSound | UIUserNotificationTypeAlert;
    UIUserNotificationSettings *userSetting = [UIUserNotificationSettings settingsForTypes:type categories:nil];
    [[UIApplication sharedApplication] registerUserNotificationSettings:userSetting];
    UILocalNotification *localNotification = [[UILocalNotification alloc]init];
    localNotification.fireDate = [[NSDate date] dateByAddingTimeInterval:10];
    localNotification.alertBody = @"your reservation is expire in 15 minute";
    localNotification.soundName = @"Electro.caf";
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];*/
    /*
    NSDate *today = [NSDate date];
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy-MM-dd"];
    NSString* dateString = [df stringFromDate:today];
    NSLog(@"%@", dateString);*/
    NSString *dateString = @"2011-11-21 11:20";
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    NSDate * date = [dateFormatter dateFromString:dateString];
   // NSLog(@"%@",date);
    float f = 0.5000;
   // NSLog(@"%ld", lroundf(f));
    
    [Toast showToastWithMessage:@"i'm toast i will disappear soon" forDuration:3];
    NSString *str = [self string];
   // NSLog(@"%@", str);
    

    //color = [[NSMutableArray alloc]init];
    
       
    
}
-(void)countDownTime{
    static int second = 7200;
    --second;
    int seconds = second % 60;
    int minutes = (second / 60) % 60;
    int hours = second / 3600;
    NSString *string = [NSString stringWithFormat:@"%02d:%02d:%02d",hours, minutes, seconds];
    self.counterLabel.text = [NSString stringWithFormat:@"%@",string];
    if ([string isEqualToString:@"01:58:10"]) {
       // NSLog(@"time is almost over");
    }
}

-(NSString *)string{
    int i = 10;
    switch (i) {
        case 10:
            return @"this is string 1";
            break;
        case 20:
            return @"this is string 2";
        default:
            break;
    }
    return nil;
}
-(void)sendTextToViewController:(NSString *)string{
    //NSLog(@"%@", string);
}
- (IBAction)button1Pressed:(id)sender {
    UIButton *button = (UIButton *)sender;
    static int number = 0;
    number++;
    [button setTitle:[NSString stringWithFormat:@"%i", number] forState:UIControlStateSelected];
}
@end
