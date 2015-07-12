//
//  RandomizerVC.m
//  RayenJuneTest
//
//  Created by Rayen Kamta on 7/12/15.
//  Copyright (c) 2015 Geeksdobyte. All rights reserved.
//

#import "RandomizerVC.h"
#define arrayCount 5              // Created a constant if array size needs to be increased later
int intArray[arrayCount];
NSString *strArray[arrayCount];
NSString *finalArray[arrayCount];
NSString *strLabel;
NSString *sortLabel;
NSArray *sortingArray;


@implementation RandomizerVC



-(IBAction) pressSort{
    
    //init
    
     sortingArray = [NSArray array];
    
    for ( int i = 0 ; i < arrayCount ; ++i )
    {
        sortingArray = [sortingArray arrayByAddingObject:[NSNumber numberWithInt:intArray[i]]];
    }
    
    //sort
    
     sortingArray = [sortingArray sortedArrayUsingSelector:@selector(compare:)];
    
    //return values back to array
//    for ( int i = 0 ; i < arrayCount ; ++i )
//    {
//    intArray[i] = [sortingArray[i] intValue];
//    
//    }
    //int to string
    
    for ( int i=0; i < arrayCount; i++)
    {
        intArray[i] = [sortingArray[i] intValue];   //no need for other loop, can combine to 1
        finalArray[i]= [NSString stringWithFormat:@"%i", intArray[i]];
        
    }
    
    sortLabel = finalArray[0];
    // string values in to one
    for ( int i=1; i < arrayCount; i++){
        
        sortLabel = [NSString stringWithFormat:@"%@,%@", sortLabel, finalArray[i]];
        
    }

    sortedLabel.text=sortLabel;

}
-(IBAction) pressGenerate{

    for ( int i=0; i < arrayCount; i++)
    {
       intArray[i] = arc4random() %5;
        strArray[i]= [NSString stringWithFormat:@"%i", intArray[i]];
      
    }
    
    strLabel = strArray[0];
    
    for ( int i=1; i < arrayCount; i++){
        
        strLabel = [NSString stringWithFormat:@"%@,%@", strLabel, strArray[i]];
        
    }
   
    randomLabel.text = strLabel;
}

@end
