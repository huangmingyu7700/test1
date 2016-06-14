//
//  MyController.m
//  爱购街
//
//  Created by Chrismith on 16/5/19.
//  Copyright © 2016年 01. All rights reserved.
//

#import "MyController.h"
#import "SellerView.h"
#import "BuyerView.h"

@interface MyController ()

@end

@implementation MyController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"个人中心";
    
    [self loadChildView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - veiw 
- (void)loadChildView {
    SellerView *sellerView = [[SellerView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight / 3)];
    [self.view addSubview:sellerView];
    
    BuyerView *buyerView = [[BuyerView alloc] initWithFrame:CGRectMake(0, kScreenHeight / 3, kScreenWidth, kScreenHeight * 2 / 3)];
    [self.view addSubview:buyerView];
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
