//
//  ViewController.m
//  Calculator02
//
//  Created by James O'Connor on 6/15/16.
//  Copyright © 2016 James O'Connor. All rights reserved.
//

#import "CalculatorViewController.h"

@interface ViewController ()
{
    IBOutlet UITextField*firstEntry;
    IBOutlet UITextField*secondEntry;
    IBOutlet UILabel*outcome;
//    double _addValue;
    double firstValue;
    double secondValue;
//    double _add;
//    double _subtract;
//    double _multiply;
//    double _divide;
}

@end

@implementation ViewController

//NSString *outcome.text =

//-(int) add:(int) a b:(int) b {
//    return a+b;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //refactor to call from Calculator object
}

-(void)makeDouble {
    firstValue = [firstEntry.text doubleValue];
    secondValue = [secondEntry.text doubleValue];
}


-(IBAction) plusButtonClicked {
    //call self makeDouble
    [self makeDouble];
    Calculator *calculator = [[Calculator alloc] init];
    double result= [calculator add: firstValue b: secondValue];
    outcome.text =[NSString stringWithFormat: @"%f", result];
    NSLog(@"%f", result);
}

-(IBAction) minusButtonClicked {
    [self makeDouble];
    Calculator *calculator = [[Calculator alloc] init];
    double result = [calculator subtract: firstValue b:secondValue];
    outcome.text = [NSString stringWithFormat: @"%f", result];
}

//-(IBAction) minusButtonClicked{
//    //call self makeDouble
//    [Calculator makeDouble];
//    double result = [ _subtract: _firstValue b: _secondValue];
//    outcome.text =[NSString stringWithFormat: @"%f", result];
//}
//

-(IBAction) multiplyButtonClicked {
    [self makeDouble];
    Calculator *calculator = [[Calculator alloc] init];
    double result = [calculator multiply: firstValue b: secondValue];
    outcome.text = [NSString stringWithFormat: @"%f", result];
}

//-(IBAction) multiplyButtonClicked{
//    //call self makeDouble
//    [self makeDouble];
//    double result = [self _multiply: _firstValue b: _secondValue];
//    outcome.text =[NSString stringWithFormat: @"%f", result];
//    
//}
//

-(IBAction) divideButtonClicked {
    [self makeDouble];
    Calculator *calculator = [[Calculator alloc] init];
    double result = [calculator divide: firstValue b: secondValue];
    outcome.text = [NSString stringWithFormat: @"%f", result];
}

//-(IBAction) divideButtonClicked{
//    //call self makeDouble
//    [self makeDouble];
//    double result = [self _divide: _firstValue b: _secondValue];
//    outcome.text =[NSString stringWithFormat: @"%f", result];
//    
//}
//
-(IBAction) cButtonClicked{
    //return "double 0" outcome.text
    outcome.text = @"0.0";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
}

@end
