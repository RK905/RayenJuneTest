//
//  RandomizerVC.h
//  RayenJuneTest
//
//  Created by Rayen Kamta on 7/12/15.
//  Copyright (c) 2015 Geeksdobyte. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RandomizerVC : UIViewController{


IBOutlet UITextField *randomLabel;

IBOutlet UIButton *generateBtn;
IBOutlet UITextField *sortedLabel;
IBOutlet UIButton *sortBtn;

}

-(IBAction) pressSort;
-(IBAction) pressGenerate;


@end
