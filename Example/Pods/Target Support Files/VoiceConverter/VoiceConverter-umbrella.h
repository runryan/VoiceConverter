#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "amrFileCodec.h"
#import "dec_if.h"
#import "EMVoiceConverter.h"
#import "interf_dec.h"
#import "interf_enc.h"
#import "VoiceConverter.h"
#import "wav.h"

FOUNDATION_EXPORT double VoiceConverterVersionNumber;
FOUNDATION_EXPORT const unsigned char VoiceConverterVersionString[];

