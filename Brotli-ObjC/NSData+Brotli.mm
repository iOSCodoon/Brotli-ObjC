//
//  NSData+Brotli.m
//  DataCompressDemo
//
//  Created by masijia on 2017/11/7.
//  Copyright © 2017年 codoon. All rights reserved.
//

#import "NSData+Brotli.h"
#import "decode.h"
#import "encode.h"

#define CDBrotli_Compress_Default_Level 2

@implementation NSData (Brotli)

-(NSData *)compressedData{
    return [self compressedDataWithQuality:CDBrotli_Compress_Default_Level];
}

- (NSData *)compressedDataWithQuality:(NSUInteger)quality {
    uint8_t* compressedBuffer = (uint8_t*)malloc(self.length * sizeof(uint8_t));
    size_t compressedSize = self.length;
    
    if (!BrotliEncoderCompress((int)quality,
                              BROTLI_DEFAULT_WINDOW,
                              BROTLI_MODE_GENERIC,
                              (size_t)self.length,
                              (uint8_t*)self.bytes,
                              &compressedSize,
                              compressedBuffer)) {
        return nil;
    }
    
    NSData *data = [NSData dataWithBytes:compressedBuffer length:compressedSize];
    free(compressedBuffer);
    return data;
}

-(NSData *)decompressedData{
    size_t decodedSize = self.length * 10;
    uint8_t* decompressedBuffer = (uint8_t*)malloc(decodedSize * sizeof(uint8_t));
    BrotliDecoderResult finalResult = BrotliDecoderDecompress((size_t)self.length,
                                                         (uint8_t*)self.bytes,
                                                         &decodedSize,
                                                         decompressedBuffer);
    if(finalResult == BROTLI_DECODER_RESULT_SUCCESS){
        NSData *data = [NSData dataWithBytes:decompressedBuffer length:decodedSize];
        free(decompressedBuffer);
        return data;
    }
    return nil;
}

@end
