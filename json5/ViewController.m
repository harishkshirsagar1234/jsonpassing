//
//  ViewController.m
//  json5
//
//  Created by MAC on 19/02/17.
//  Copyright © 2017 MAC. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tablemain.backgroundColor =[UIColor darkGrayColor];
    
    NSString *str = @"http://api.kivaws.org/v1/loans/search.json?status=fundraising";
    
    NSURL *url =[NSURL URLWithString:str];
    NSError *error;
    
    
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    NSDictionary *dictobject =[NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    
    
    if (error != nil) {
        [self showAlertwithMessage:@"FAILED TO GET DATA" andTitle:@"ERROR"];
        
    }
    
    else{
        
        arrayloans = [dictobject objectForKey:@"loans"];
        
        
        
        
    }

}

-(void)showAlertwithMessage:(NSString *)message andTitle:(NSString *)title{
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:message message:title preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:ok];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    
    return arrayloans.count;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *str =@"MyCell";
    UITableViewCell *tablecell =[tableView dequeueReusableCellWithIdentifier:str];
    tablecell.backgroundColor =[UIColor lightGrayColor];
    
    dict =[arrayloans objectAtIndex:indexPath.row];
    if (tablecell == nil) {
        
        tablecell =[[UITableViewCell alloc]initWithFrame:CGRectZero];
        
    }
    
    
    tablecell.textLabel.text =[dict objectForKey:@"name"];
   // tablecell.textLabel.text =[dict objectForKey:@"id"];
    tablecell.accessoryType =UITableViewCellAccessoryDisclosureIndicator;
    tablecell.accessoryType =UITableViewCellAccessoryDetailButton;
    
    
    
    return tablecell;
}

    
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    [self performSegueWithIdentifier:@"secondvc" sender:nil];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
   SecondViewController *dtvc = [segue destinationViewController];
    dtvc.seconddictionary=[arrayloans objectAtIndex:[_tablemain indexPathForSelectedRow].row];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
