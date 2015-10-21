//
//  PublicCell.h
//  MVVMTest
//


#import <UIKit/UIKit.h>
#import "PublicModel.h"

@interface PublicCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *userName;
@property (strong, nonatomic) IBOutlet UILabel *date;
@property (strong, nonatomic) IBOutlet UIImageView *headImageView;
@property (strong, nonatomic) IBOutlet UITextView *weiboText;



@end
