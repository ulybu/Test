//
//  XYZViewController.h
//  a
//
//  Created by Élèves on 21/09/12.
//  Copyright (c) 2012 pprentissage delegate. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GestionNotes.h"

@interface XYZViewController : UIViewController <GestionNotesDelegate>
{
    UIButton *_button;
    UILabel *_label;
    UITextField *_textF;
    
    GestionNotes *_gestionnaire;
}
@end
