//
//  OrdojaManager.h
//  Ordoja
//
//  Created by Majd Alfhaily on 3/22/15.
//  Copyright (c) 2015 Majd Alfhaily. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSZipArchive.h"

@interface OrdojaManager : NSObject
- (void)extractPackageAtPath:(NSString *)packagePath;
@end
