//
//  SecondViewController.m
//  json5
//
//  Created by MAC on 19/02/17.
//  Copyright © 2017 MAC. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize seconddictionary;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _secondtable.backgroundColor =[UIColor grayColor];
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 6;
    

}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *str =@"MyCell";
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:str];
    cell.backgroundColor =[UIColor lightGrayColor];
    

   
    if (cell == nil) {
        cell =[[UITableViewCell alloc]initWithFrame:CGRectZero];
        
    }
    
     if (indexPath.row == 0) {
         cell.textLabel.text = [NSString stringWithFormat:@"ID : %li",[[seconddictionary objectForKey:@"id"]integerValue]];
        
    }
    else if (indexPath.row == 1) {
        cell.textLabel.text =[NSString stringWithFormat:@"NAME: %@",[seconddictionary objectForKey:@"name"]];
        
    }
    else if (indexPath.row == 2) {
        cell.textLabel.text =[NSString stringWithFormat:@"STATUS: %@", [seconddictionary objectForKey:@"status"]];
        
    }
    else if (indexPath.row == 3) {
        cell.textLabel.text =[NSString stringWithFormat:@"ACTIVITY: %@", [seconddictionary objectForKey:@"activity"]];
        
    }
    else if (indexPath.row == 4) {
        
       // NSArray *arrayuse =[seconddictionary objectForKey:@"themes"];
        cell.textLabel.text =[NSString stringWithFormat:@"USE: %@",[seconddictionary objectForKey:@"use"]];
                              
        
        
        
    }
    else if (indexPath.row == 5) {
        
        NSDictionary *dictloaction =[seconddictionary objectForKey:@"location"];
        cell.textLabel.text =[NSString stringWithFormat:@"LOCATION: %@", [dictloaction objectForKey:@"country"]];
                              
    }
    

    return cell;
    
    
}




- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
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
