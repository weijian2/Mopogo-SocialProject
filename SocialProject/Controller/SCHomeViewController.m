//
//  SCHomeViewController.m
//  SocialProject
//
//  Created by WEIJIAN LI on 8/21/17.
//  Copyright © 2017 WEIJIAN LI. All rights reserved.
//

#import "SCHomeViewController.h"
#import "SCPost.h"
#import "SCHomeTableViewCell.h"

static NSString * const SCHomeCellIdentifier = @"SCHomeCell";

// UITableViewDataSource and UITableViewDelegate are protocols we want to implement
@interface SCHomeViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSArray<SCPost *> *posts;

@end

@implementation SCHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTableView];
    [self setupNavigationBar];
    [self loadPosts];
}



#pragma mark - setup UI
// setup setupTableView
- (void) setupTableView {
    self.tableView.dataSource = self; // self contains data, nib file (self) strong reference to self.tableview, self.tableview weak reference to self.tableView.dataSource;
    self.tableView.delegate = self;
    // ??????????????????????????????????????????????????????????
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([SCHomeTableViewCell class]) bundle:nil] forCellReuseIdentifier:SCHomeCellIdentifier];
}
// setup navigationBar why not setup navigationbar in SCTabBarController??????????????????????????
- (void)setupNavigationBar
{
    self.title = NSLocalizedString(@"Home", nil);
    
    UIImage *image = [UIImage imageNamed:@"PostEvent"];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(showCreatePostPage)];
}

#pragma mark -- Action
- (void)showCreatePostPage
{
    
}



#pragma mark - load data
- (void) loadPosts {
    SCPost *post1 = [[SCPost alloc] init];
    post1.name = @"Daniel";
    post1.message = @"Hi, I am Daniel, I love ios.";
    
    SCPost *post2 = [[SCPost alloc] init];
    post2.name = @"Kobe";
    post2.message = @"Hi, I am Kobe Bryant, I love lakers.";
    
    SCPost *post3 = [[SCPost alloc] init];
    post3.name = @"Stephen";
    post3.message = @"Hi, I am Stephen Curry, I love warriors.";
    
    self.posts = @[post1, post2, post3];
    // reloads everything from scratch. redisplays visible rows. because we only keep info about visible rows, this is cheap. will adjust offset if table shrinks
    [self.tableView reloadData];
}

#pragma mark - UITableViewDataSource

// how many sections?
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
// how mant cells in each section?
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.posts.count;
}
// what is the cell style?
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SCHomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SCHomeCellIdentifier forIndexPath:indexPath];
    // customize cell indexPath is an two-d array, 1-d(indexPath.section) is sections, 2-d(indexPath.row) is row
    [cell loadCellWithPost:self.posts[indexPath.row]];
    return cell;
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [SCHomeTableViewCell cellHeight];
}
@end
