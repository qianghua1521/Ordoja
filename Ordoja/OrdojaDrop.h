//
//  OrdojaDrop.h
//  Ordoja
//
//  Created by Majd Alfhaily on 3/22/15.
//  Copyright (c) 2015 Majd Alfhaily. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "OrdojaManager.h"

@interface OrdojaDrop : NSView <NSDraggingDestination>

@property (assign) IBOutlet NSTextField *dragState;

@end
