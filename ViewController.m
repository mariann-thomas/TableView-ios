//
//  ViewController.m
//  Ex_3
//
//  Created by Mariann Thomas on 8/5/19.
//  Copyright © 2019 Mariann Thomas. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"
#import "headerView.h"
@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (strong,nonatomic) UITableView *table;
@property (strong,nonatomic) NSArray     *content1, *content2, *content3;
@property (nonatomic, weak) IBOutlet UIImageView *image;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /*self.content1 = @[@"K.V.Thomas", @"Thankachi", @"Wynn", @"Mariann"];
    self.content2 = @[@"Jibin", @"Mariann", @"Nathan"];
    self.content3 = @[@"Appa", @"Amma"];*/
    UINib *cellNib = [UINib nibWithNibName:@"CustomTableViewCell" bundle:[NSBundle bundleForClass:[CustomTableViewCell class]]];
    UINib *headerNib = [UINib nibWithNibName:@"headerView" bundle:[NSBundle bundleForClass:[CustomTableViewCell class]]];
    [self.tableTab registerNib:cellNib forCellReuseIdentifier:@"customCell"];
    [self.tableTab registerNib:headerNib forCellReuseIdentifier:@"headerCell"];
    //[self.tableTab registerNib:<#(nullable UINib *)#> forHeaderFooterViewReuseIdentifier:<#(nonnull NSString *)#>]
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    headerView *tableHeader = [tableView dequeueReusableCellWithIdentifier:@"headerCell"];
    tableHeader.headerLabel.text = @"My Profile Information";
    return tableHeader;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
    /*if (section == 0) {
        return self.content1.count;
    }
    else if (section == 1) {
        return self.content2.count;
    }
    else {
        return self.content3.count;
    }*/
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomTableViewCell *customCell = [tableView dequeueReusableCellWithIdentifier:@"customCell"];
    
    return customCell;
   /* UITableViewCell *testCell = [UITableViewCell new];
    if (indexPath.section == 0) {
        testCell.textLabel.text = [self.content1 objectAtIndex:indexPath.row];
    }
    else if (indexPath.section == 1) {
        testCell.textLabel.text = [self.content2 objectAtIndex:indexPath.row];
    }
    else {
        testCell.textLabel.text = [self.content3 objectAtIndex:indexPath.row];
    }
    return testCell;*/
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 200;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 100;
}

/*-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
    
}*/

/*- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 20;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 22)];
    headerView.backgroundColor = [UIColor colorWithWhite:0.5f alpha:1.0f];
    headerView.layer.borderColor = [UIColor colorWithWhite:0.5 alpha:1.0].CGColor;
    headerView.layer.borderWidth = 1.0;
    UILabel *headerLabel =[[UILabel alloc]init];
    headerLabel.frame = CGRectMake(5, 2, tableView.frame.size.width - 5, 18);
    headerLabel.backgroundColor = [UIColor clearColor];
    headerLabel.textColor = [UIColor whiteColor];
    headerLabel.font = [UIFont boldSystemFontOfSize:16.0];
    headerLabel.text = @"Header";
    headerLabel.textAlignment = NSTextAlignmentLeft;
    [headerView addSubview:headerLabel];
    return headerView;
}*/

@end
