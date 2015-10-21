//
//  PublicTableViewController.m
//  MVVMTest
//


#import "PublicTableViewController.h"
#import "PublicWeiboViewModel.h"
#import "PublicCell.h"

@interface PublicTableViewController ()

@property(nonatomic,strong) PublicWeiboViewModel *publicViewModel;

@end


@implementation PublicTableViewController

-(PublicWeiboViewModel *)publicViewModel
{
    if(_publicViewModel == nil)
    {
        _publicViewModel = [PublicWeiboViewModel new];
    }
    return _publicViewModel;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    __weak typeof(self) weakSelf = self;
    [self.publicViewModel setBlockWithReturnBlock:^(id returnValue) {
        
        [SVProgressHUD dismiss];
         weakSelf.publicViewModel.publicModelArray = returnValue;
        [weakSelf.tableView reloadData];
        DDLog(@"%@",weakSelf.publicViewModel.publicModelArray);
        
    } WithErrorBlock:^(id errorCode) {
        
        [SVProgressHUD dismiss];
        
    } WithFailureBlock:^{
        
        [SVProgressHUD dismiss];
        
    }];
    
    [self.publicViewModel fetchPublicWeiBo];
    
    [SVProgressHUD showWithStatus:@"正在获取用户信息……" maskType:SVProgressHUDMaskTypeBlack];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.publicViewModel.publicModelArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PublicCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PublicCell" forIndexPath:indexPath];
    
    [self.publicViewModel setValueWithindexPath:indexPath withCell:cell];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [self.publicViewModel weiboDetailWithPublicModelIndex:indexPath WithViewController:self];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
