//
//  NSData+Brotli.h
//  DataCompressDemo
//
//  Created by masijia on 2017/11/7.
//  Copyright © 2017年 codoon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Brotli)

-(NSData *)compressedData;

-(NSData *)compressedDataWithQuality:(NSUInteger)quality;

-(NSData *)decompressedData;

@end
