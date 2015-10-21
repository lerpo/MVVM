//
//  PublicWeiboViewModel.h
//  MVVMTest
//


#import "ViewModelClass.h"
#import "PublicModel.h"
@class PublicCell;
@class PublicDetailViewController;
@interface PublicWeiboViewModel : ViewModelClass

@property (strong, nonatomic) NSArray *publicModelArray;
//获取微博列表
-(void) fetchPublicWeiBo;

//跳转到微博详情页
-(void) weiboDetailWithPublicModelIndex: (NSIndexPath *) indexPath WithViewController: (UIViewController *)superController;


-(void) setValueWithindexPath:(NSIndexPath *)indexPath withCell:(PublicCell *)cell;

-(void) initpublicdeTailViewController:(PublicDetailViewController *)controller withModel:(PublicModel *)model;
@end
