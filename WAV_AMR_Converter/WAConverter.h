//
//  VoiceConverter.h
//  Jeans
//
//  Created by Jeans Huang on 12-7-22.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WAConverter : NSObject

+ (int)isMP3File:(NSString *)filePath;

+ (int)isAMRFile:(NSString *)filePath;


+ (BOOL)convertAMR: (NSString *)amrPath toWAV:(NSString *)wavPath;
//+ (int)amrToWav:(NSString*)_amrPath wavSavePath:(NSString*)_savePath;

+ (BOOL)convertWAV: (NSString *)wavPath toAMR:(NSString *)amrPath;
//+ (int)wavToAmr:(NSString*)_wavPath amrSavePath:(NSString*)_savePath;

@end
