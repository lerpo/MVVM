
/*!
 *  @author mlxu
 *
 *  此处需要考虑viewmodel的边界问题，及它要负责给哪些view传递数据
 *
 */

#import "ViewModelClass.h"
#import "PublicModel.h"
@class PublicCell;
@class PublicDetailViewController;
@interface PublicWeiboViewModel : ViewModelClass

@property (strong, nonatomic) NSArray *publicModelArray;
/*!
 *  @author mlxu
 *
 *  获取微博列表
 */

-(void) fetchPublicWeiBo;




/*!
 *  @author mlxu
 *
 *  跳转到微博详细页
 *
 *  @param indexPath       数据位置
 *  @param superController 视图控制器
 */
-(void) weiboDetailWithPublicModelIndex: (NSIndexPath *) indexPath WithViewController: (UIViewController *)superController;



/*!
 *  @author mlxu
 *
 *  给PublicCell 填充数据
 *
 *  @param indexPath 数据
 *  @param cell      publicCell实体
 */
-(void) setValueWithindexPath:(NSIndexPath *)indexPath withCell:(PublicCell *)cell;




/*!
 *  @author mlxu
 *
 *  给详细页填充数据
 *
 *  @param controller 详细页视图控制器
 *  @param model      数据实体
 */
-(void) initpublicdeTailViewController:(PublicDetailViewController *)controller withModel:(PublicModel *)model;
@end
