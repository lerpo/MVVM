//
//  PublicDetailViewController.h
//  MVVMTest
//


#import <UIKit/UIKit.h>
@class PublicWeiboViewModel ;
@class PublicModel;
@interface PublicDetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *headImageView;
@property (strong, nonatomic) IBOutlet UILabel *userNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UITextView *textLable;


@property (strong, nonatomic) PublicWeiboViewModel *publicModel;
@property (strong, nonatomic) PublicModel *model;

@end
