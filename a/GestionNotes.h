//
//  GestionNotes.h
//  a
//
//  Created by Élèves on 02/10/12.
//  Copyright (c) 2012 pprentissage delegate. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol GestionNotesDelegate;


@interface GestionNotes : NSObject
{
    @private
    @protected
    @public
}
@property (nonatomic, assign) id <GestionNotesDelegate> delegate;

@end

@protocol GestionNotesDelegate <NSObject> 
@required 
- (void) gestionNotes:(GestionNotes*)gestionNotes aRecuUneNote:(NSInteger)note nouvelleMoyenne:(float)moyenne;
@optional 
- (void) gestionNotes:(GestionNotes*)gestionNotes enDessousMoyenne:(float)moyenne;
@end
