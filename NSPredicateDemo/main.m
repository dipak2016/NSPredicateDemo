//
//  main.m
//  NSPredicateDemo
//
//  Created by Tops on 3/14/16.
//  Copyright (c) 2016 Tops. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        NSArray *arr=[NSArray arrayWithObjects:@"ashok",@"ashish",@"bhavik",@"bhavesh",@"chirag",@"dipak",@"keval", nil];
        
        NSPredicate *prd=[NSPredicate predicateWithFormat:@"SELF CONTAINS[cd] %@",@"a"];
        
        NSLog(@"%@",[arr filteredArrayUsingPredicate:prd]);
        
        ///////PIZZA
        NSMutableDictionary *dict_mute;
        NSMutableArray *arr_mute;
        
        dict_mute=[[NSMutableDictionary alloc]init];
        arr_mute=[[NSMutableArray alloc]init];
        
        
        [dict_mute setObject:@"Margherita" forKey:@"menu_title"];
        [dict_mute setObject:@"mar.jpg" forKey:@"menu_img"];
        [dict_mute setObject:@"125" forKey:@"menu_priz"];
        [dict_mute setObject:@"2" forKey:@"menu_unit"];
        [dict_mute setObject:@"0" forKey:@"menu_total"];
        [arr_mute addObject:[dict_mute copy]];//0
        
        [dict_mute setObject:@"Country Special" forKey:@"menu_title"];
        [dict_mute setObject:@"country.jpg" forKey:@"menu_img"];
        [dict_mute setObject:@"350" forKey:@"menu_priz"];
        [dict_mute setObject:@"0" forKey:@"menu_unit"];
        [dict_mute setObject:@"0" forKey:@"menu_total"];
        [arr_mute addObject:[dict_mute copy]];//1
        
        [dict_mute setObject:@"Farm House" forKey:@"menu_title"];
        [dict_mute setObject:@"farm.jpg" forKey:@"menu_img"];
        [dict_mute setObject:@"250" forKey:@"menu_priz"];
        [dict_mute setObject:@"3" forKey:@"menu_unit"];
        [dict_mute setObject:@"0" forKey:@"menu_total"];
        [arr_mute addObject:[dict_mute copy]];
        
        [dict_mute setObject:@"chef's Veg Wonder" forKey:@"menu_title"];
        [dict_mute setObject:@"chef.jpg" forKey:@"menu_img"];
        [dict_mute setObject:@"450" forKey:@"menu_priz"];
        [dict_mute setObject:@"0" forKey:@"menu_unit"];
        [dict_mute setObject:@"0" forKey:@"menu_total"];
        [arr_mute addObject:[dict_mute copy]];
        
        [dict_mute setObject:@"5 Paper" forKey:@"menu_title"];
        [dict_mute setObject:@"5paper.jpg" forKey:@"menu_img"];
        [dict_mute setObject:@"150" forKey:@"menu_priz"];
        [dict_mute setObject:@"1" forKey:@"menu_unit"];
        [dict_mute setObject:@"0" forKey:@"menu_total"];
        [arr_mute addObject:[dict_mute copy]];
        
        [dict_mute setObject:@"Spicy" forKey:@"menu_title"];
        [dict_mute setObject:@"spicy.jpg" forKey:@"menu_img"];
        [dict_mute setObject:@"550" forKey:@"menu_priz"];
        [dict_mute setObject:@"0" forKey:@"menu_unit"];
        [dict_mute setObject:@"0" forKey:@"menu_total"];
        [arr_mute addObject:[dict_mute copy]];
        
        
        NSPredicate *prd_piz=[NSPredicate predicateWithFormat:@"menu_unit > %@",@"0"];
        
        NSLog(@"==========");
        NSLog(@"%@",[arr_mute filteredArrayUsingPredicate:prd_piz]);
    }
    return 0;
}
