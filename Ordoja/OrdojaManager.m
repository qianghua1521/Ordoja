//
//  OrdojaManager.m
//  Ordoja
//
//  Created by Majd Alfhaily on 3/22/15.
//  Copyright (c) 2015 Majd Alfhaily. All rights reserved.
//

#import "OrdojaManager.h"

@implementation OrdojaManager
- (void)extractPackageAtPath:(NSString *)packagePath {
    [SSZipArchive unzipFileAtPath:packagePath toDestination:[packagePath stringByDeletingPathExtension]];
}
@end
