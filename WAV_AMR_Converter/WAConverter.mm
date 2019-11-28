//
//  VoiceConverter.m
//  Jeans
//
//  Created by Jeans Huang on 12-7-22.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "WAConverter.h"
#import "wav.h"
#import "interf_dec.h"
#import "dec_if.h"
#import "interf_enc.h"
#import "amrFileCodec.h"

@implementation WAConverter


+ (int)isMP3File:(NSString *)filePath{
    const char *_filePath = [filePath cStringUsingEncoding:NSASCIIStringEncoding];
    return isMP3File(_filePath);
}

+ (int)isAMRFile:(NSString *)filePath{
    const char *_filePath = [filePath cStringUsingEncoding:NSASCIIStringEncoding];
    return isAMRFile(_filePath);
}

+ (BOOL)convertAMR:(NSString *)amrPath toWAV:(NSString *)wavPath {
    if (EM_DecodeAMRFileToWAVEFile([amrPath cStringUsingEncoding:NSASCIIStringEncoding], [wavPath cStringUsingEncoding:NSASCIIStringEncoding]))
        return YES; // success

    return NO;   // failed
}

+ (BOOL)convertWAV:(NSString *)wavPath toAMR:(NSString *)amrPath {
    if (EM_EncodeWAVEFileToAMRFile([wavPath cStringUsingEncoding:NSASCIIStringEncoding], [amrPath cStringUsingEncoding:NSASCIIStringEncoding], 1, 16))
        return YES;   // success

    return NO;   // failed
}

@end
