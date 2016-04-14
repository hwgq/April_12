//
//  HHViewController.m
//  April_13_LoadingAnimation
//
//  Created by HuangGuoQing on 16/4/13.
//  Copyright © 2016年 HJL. All rights reserved.
//

#define SCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height

#import "HHViewController.h"
#import "ViewController.h"

@interface HHViewController ()

@property (nonatomic)NSArray *imageArr;

@end

@implementation HHViewController

- (NSArray *)imageArr {
    if (!_imageArr) {
        _imageArr = @[[UIImage imageNamed:@"spring.jpg"], [UIImage imageNamed:@"summer.jpg"], [UIImage imageNamed:@"autumn.jpg"], [UIImage imageNamed:@"winter.jpg"]];
    }
    return _imageArr;
}

- (UIScrollView *)scrollView_ {
    if (!_scrollView_) {
        _scrollView_ = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT)];
        _scrollView_.contentSize = CGSizeMake(SCREENWIDTH * 4, SCREENHEIGHT);
        _scrollView_.pagingEnabled = YES;
        _scrollView_.bounces = NO;
        NSInteger n = 0;
        for (UIImage *image in self.imageArr) {
            CGRect frame = CGRectMake(SCREENWIDTH * n, 0, SCREENWIDTH, SCREENHEIGHT);
            UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
            imageView.image = image;
            [_scrollView_ addSubview:imageView];
            if (n == 3) {
                imageView.userInteractionEnabled = YES;
                UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
                [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
                button.backgroundColor = [UIColor blueColor];
                [imageView addSubview:button];
            }
            n ++;
        }
    }
    return _scrollView_;
}

- (void)buttonAction {
    ViewController *viewVC = [[ViewController alloc] init];
    viewVC.view.backgroundColor = [UIColor orangeColor];
    [self presentViewController:viewVC animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.scrollView_];
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
