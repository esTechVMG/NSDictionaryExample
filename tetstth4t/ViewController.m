//
//  ViewController.m
//  tetstth4t
//
//  Created by A4-iMAC01 on 26/10/2020.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *dict = @{@"key1": @"Manuel",@"key2" :@"juana"};
    // Do any additional setup after loading the view.
    NSLog(@"%@",dict);
    NSDictionary<NSString *,NSString *> *dictt;
    NSDictionary <NSString*,NSNumber *> *dictNumber;
    NSString * str = dict[@"key1"];
    NSLog(@"%@",str);
    NSDictionary * dict2 = [NSDictionary dictionary];
    NSLog(@"%@",dict2);
    NSString *file = [[NSBundle mainBundle]pathForResource:@"Property List" ofType:@"plist"];
    NSDictionary * dict4 = [NSDictionary dictionaryWithContentsOfFile:file];
    NSLog(@"%@",dict4);
    NSMutableDictionary *dict5 = [NSMutableDictionary dictionary];
    [dict5 setObject:@"Laura" forKey:@"key1"];
    NSLog(@"%@",dict5);
    
    NSURL * url = [NSURL URLWithString:@"https://qastusoft.es/test/estech/Ejemplo/ejemplo-dictionary.plist"];
    NSDictionary * dict6 = [NSDictionary dictionaryWithContentsOfURL:url];
    NSLog(@"%@",dict6);
    
    NSDictionary *dict7=[NSDictionary dictionaryWithDictionary:dict4];
    NSLog(@"%@",dict7);
    NSDictionary *dic8 = [NSDictionary dictionaryWithObject:@"Jaime" forKey:@"key1"];
    NSLog(@"%@",dic8);
    NSDictionary *dic9 = [NSDictionary dictionaryWithObjects:@[@"Andres",@"Javier"] forKeys:@[@"key1",@"key2"]];
    NSLog(@"%@",dic9);
    
    NSString * keys[3];
    NSString * values[3];
    keys[0]=@"key1";
    keys[1]=@"key2";
    keys[2]=@"key3";
    values[0]=@"Juan";
    values[1]=@"Monica";
    values[2]=@"Juan";
    NSDictionary *dic10 = [NSDictionary dictionaryWithObjects:values forKeys:keys count:3];
    NSLog(@"%@",dic10);
    NSInteger count = [dict count];
    NSLog(@"%ld",(long)count);
    NSArray * allKeys = [dic10 allKeys];
    NSLog(@"%@",allKeys);
    NSArray * allValues = [dic10 allValues];
    NSLog(@"%@",allValues);
    
    NSArray  * allKeys2 = [dic10 allKeysForObject:@"Juan"];
    NSLog(@"%@",allKeys2);
    NSString * obj = [dic10 objectForKey:@"key1"];
    NSLog(@"%@",obj);
    
    NSEnumerator * enumerator = [dic10 keyEnumerator];
    id key;
    while (key = [enumerator nextObject]) {
        NSLog(@"%@",[dic10 objectForKey:key]);
    }
    
    
    id obj2;
    NSEnumerator * enumerator2 = [dic10 objectEnumerator];
    while (obj2 = [enumerator2 nextObject]){
        NSLog(@"%@",obj2);
    }
    
    [dic10 enumerateKeysAndObjectsUsingBlock:^(id key,id obj,BOOL *stop){
        NSLog(@"%@: %@",key,obj);
    }];
    
    NSDictionary * dict11 = @{@"key2":@"Romeo",@"key1":@"Alejandroid",@"key3":@"Elia"};
    NSArray * key3 = [dict11 keysSortedByValueUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    NSLog(@"%@",key3);
    
    
    NSArray * keys4= [dic10 keysSortedByValueUsingComparator:^NSComparisonResult(id obj1, id obj2){
        return [obj1 isEqualToString:obj2];
    }];
    
    NSLog(@"%@",keys4);
    
    
    
    NSSet *resultSet =[dic10 keysOfEntriesPassingTest:^BOOL(id key, id obj, BOOL *stop){
        if([key isEqualToString:@"key3"]){
            return YES;
        }else{
            return NO;
        }
    }];
    NSLog(@"%@",resultSet);
}


@end
