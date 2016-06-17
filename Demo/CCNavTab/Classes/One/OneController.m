//
//  OneController.m
//  XCNavTabDemo
//
//  Created by bear on 16/3/29.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "OneController.h"
#import "ThreeController.h"

@interface OneController ()

@property (nonatomic, strong) NSMutableArray *arrayM;

@end

@implementation OneController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@-----",[self uuid]);
    self.view.backgroundColor=[UIColor whiteColor];


    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.frame=CGRectMake(0, 0, 200, 60);
    button.center=self.view.center;
    
    button.backgroundColor=[UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1];


    [button setTitle:@"点击跳转" forState:UIControlStateNormal];
    [self.view addSubview:button];

    [button addTarget:self action:@selector(jumpToThree) forControlEvents:UIControlEventTouchUpInside];


}

-(NSString*) uuid {
    CFUUIDRef puuid = CFUUIDCreate( nil );
    CFStringRef uuidString = CFUUIDCreateString( nil, puuid );
    NSString * result = (NSString *)CFBridgingRelease(CFStringCreateCopy( NULL, uuidString));
    CFRelease(puuid);
    CFRelease(uuidString);
    return result ;
}

-(void)jumpToThree{
    [self.navigationController pushViewController:[[ThreeController alloc]init] animated:YES];
}



//
//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    return 10;
//}
//

//
//-(NSMutableArray *)arrayM{
//    
//    
//    if (!_arrayM) {
//        
//        _arrayM = [NSMutableArray array];
//        
//        
//        _arrayM= (NSMutableArray *)@[
//                                     @{
//                                         @"VC":@"",
//                                         @"title":@"UI"
//                                         },
//                                     @{
//                                         @"VC":@"",
//                                         @"title":@"title"
//                                         
//                                         },
//                                     @{
//                                         @"VC":@"",
//                                         @"title":@"title"
//                                         
//                                         },
//                                     @{
//                                         @"VC":@"",
//                                         @"title":@"title"
//                                         },
//                                     @{
//                                         @"VC":@"",
//                                         @"title":@"title"
//                                         },
//                   
//                   ];
//        
//    }
//    
//    
//    return _arrayM;
//}



@end
