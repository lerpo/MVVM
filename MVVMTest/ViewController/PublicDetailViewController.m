//
//  PublicDetailViewController.m
//  MVVMTest
//


#import "PublicDetailViewController.h"
#import "PublicWeiboViewModel.h"
#import "PublicModel.h"
@interface PublicDetailViewController ()


@end

@implementation PublicDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.publicModel initpublicdeTailViewController:self withModel:self.model];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
