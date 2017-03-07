//
//  ViewController.h
//  json5
//
//  Created by MAC on 19/02/17.
//  Copyright © 2017 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>{
    
    
    NSArray *arrayloans;
    NSDictionary *dict;
   
    
}
@property (weak, nonatomic) IBOutlet UITableView *tablemain;


@end

