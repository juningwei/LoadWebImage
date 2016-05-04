//
//  ViewController.m
//  LoadWebImageTest
//
//  Created by 鞠凝玮 on 16/1/25.
//  Copyright © 2016年 hzdracom. All rights reserved.
//

#import "ViewController.h"
#import "AppModel.h"
#import "DownloadImageOperation.h"
#import "DownloadImageManager.h"
#import "AppCell.h"
#import "UIImageView+WebImage.h"
#import "DownloadImageManager.h"
@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong)NSOperationQueue *operationQueue;
@property (nonatomic, strong)NSMutableDictionary *operationCache;
@property (nonatomic, copy)NSArray *appList;
@property (nonatomic, copy)NSString *currentUrl;
@end


@implementation ViewController

-(NSOperationQueue *)operationQueue{
    if (!_operationQueue){
        _operationQueue = [[NSOperationQueue alloc]init];
    }
    return _operationQueue;
}

-(NSMutableDictionary *)operationCache{
    if (!_operationCache){
        _operationCache = [NSMutableDictionary new];
    }
    return _operationCache;
}

-(NSArray *)appList{
    if (!_appList){
        _appList = [AppModel modelArray];
    }
    return _appList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.tableView registerClass:[AppCell class] forCellReuseIdentifier:NSStringFromClass([AppCell class])];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.appList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AppCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([AppCell class])];
    AppModel *app = self.appList[indexPath.row];
    
    cell.nameLabel.text = app.name;
    cell.downloadLabel.text = app.download;
    
    [cell.iconImageView setImageWithUrlString:app.icon];
    return cell;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    for (AppModel *model in self.appList){
        NSLog(@"%@ %@",[[DownloadImageManager sharedManager].imageCache objectForKey:model.icon],model.name);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
