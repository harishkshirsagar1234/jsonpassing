//
//  SecondViewController.h
//  json5
//
//  Created by MAC on 19/02/17.
//  Copyright © 2017 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>{
    
    NSDictionary *seconddict;
    
    
    
}
@property (weak, nonatomic) IBOutlet UITableView *secondtable;
@property (nonatomic) NSDictionary *seconddictionary;


@end
