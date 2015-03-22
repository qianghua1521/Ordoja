//
//  OrdojaDrop.m
//  Ordoja
//
//  Created by Majd Alfhaily on 3/22/15.
//  Copyright (c) 2015 Majd Alfhaily. All rights reserved.
//

#import "OrdojaDrop.h"

@implementation OrdojaDrop
@synthesize dragState;

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self registerForDraggedTypes:[NSArray arrayWithObjects:NSFilenamesPboardType, nil]];
}

- (NSDragOperation)draggingUpdated:(id<NSDraggingInfo>)sender {
    NSArray *draggedFilenames = [[sender draggingPasteboard] propertyListForType:NSFilenamesPboardType];
    if ([[[draggedFilenames objectAtIndex:0] pathExtension] isEqual:@"ipa"]) {
        dragState.stringValue = @"EXTRACT IPA";
        return NSDragOperationCopy;
    } else {
        dragState.stringValue = @"IPA NOT VALID";
        return NSDragOperationNone;
    }
}

- (void)draggingEnded:(id<NSDraggingInfo>)sender {
    NSArray *draggedFilenames = [[sender draggingPasteboard] propertyListForType:NSFilenamesPboardType];
    if ([[[draggedFilenames objectAtIndex:0] pathExtension] isEqual:@"ipa"]) {
        [[OrdojaManager alloc] extractPackageAtPath:[draggedFilenames objectAtIndex:0]];
    }

    dragState.stringValue = @"DRAG IPA HERE";
}

- (void)draggingExited:(id<NSDraggingInfo>)sender {
    dragState.stringValue = @"DRAG IPA HERE";
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

@end
