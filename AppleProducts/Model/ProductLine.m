//
//  ProductLine.m
//  AppleProducts
//
//  Created by Bogdan Lviv on 8/20/19.
//  Copyright © 2019 Bogdan Lviv. All rights reserved.
//

#import "ProductLine.h"
#import "Product.h"
@implementation ProductLine

- (id)initWithName:(NSString *)named andProducts:(NSArray *)products{
    self = [super init];
    if(self){
        self.name = named;
        if([[products firstObject] isKindOfClass:[Product class]]){
            self.products = products;
        }
    }
    return self;
}

+ (NSArray *) getProductLines {
    
    return [[NSArray alloc] initWithObjects:[ProductLine iDevices], [ProductLine mac],[ProductLine software], [ProductLine iPod], [ProductLine iCloudAndApplePay], nil];
}

#define mark - private helper Methods
+ (ProductLine *)iDevices{
    NSMutableArray *products = [[NSMutableArray alloc] init];
    [products addObject:[[Product alloc]initWithTitle: @"Apple Watch" withDescription: @"Featuring revolutionary new technologies and a pioneering user interface with a beautiful design that honors the rich tradition of precision watchmaking." andImgName: @"apple-watch"]];
    [products addObject:[[Product alloc]initWithTitle: @"iPad" withDescription: @"iPad Air 2 is the thinnest and most powerful iPad ever. With iPad, we’ve always had a somewhat paradoxical goal: to create a device that’s immensely powerful, yet so thin and light you almost forget it’s there." andImgName: @"ipad-air2"]];
    [products addObject:[[Product alloc]initWithTitle: @"iPhone" withDescription: @"The biggest advancements in iPhone history, featuring two models with stunning 4.7-inch and 5.5-inch Retina HD displays." andImgName: @"iphone6"]];
    [products addObject:[[Product alloc]initWithTitle: @"iOS" withDescription: @"iOS is the world’s most advanced operating system. Its easy-to-use interface, amazing features, and rock-solid stability are built into every iPhone, iPad, and iPod touch." andImgName: @"iOS8"]];
    return [[ProductLine alloc] initWithName:@"iDevices" andProducts:products];
}

//  (2) Mac: MacBook, MacBook Pro with Retina Display, MacBook Air, iMac
//           Mac Pro, MacBook Pro, Mac Mini, Display, Airport Extreme,
//           AirPort Time Capsule, AirPort Express, Magic Trackpad
//           Magic Mouse, Apple Keyboard, Apple Battery Charger
+ (ProductLine *)mac{
    NSMutableArray *products = [[NSMutableArray alloc] init];
    
    [products addObject:[[Product alloc]initWithTitle: @"MacBook" withDescription: @"The thinnest and lightest Mac ever with every component meticulously redesigned to create a Mac that is just two pounds and 13.1 mm thin. " andImgName: @"macbook"]];
    [products addObject:[[Product alloc]initWithTitle: @"MacBook Pro 13 inch" withDescription: @"MacBook Pro features the latest dual-core and quad-core processors, and faster graphics to deliver the perfect combination of pro performance and extreme portability." andImgName: @"macbook-pro-13"]];
    [products addObject:[[Product alloc]initWithTitle: @"MacBook Pro with Retina Display" withDescription: @"A stunning high-resolution display, an amazing thin and light design, and the latest technology to power through the most demanding projects." andImgName: @"macbook-pro-retina"]];
    [products addObject:[[Product alloc]initWithTitle: @"MacBook Air" withDescription: @"All day battery life, fourth generation Intel Core processors with faster graphics, 802.11ac Wi-Fi and flash storage that is up to 45 percent faster than the previous generation." andImgName: @"macbook-air"]];
    [products addObject:[[Product alloc]initWithTitle: @"iMac" withDescription: @"The 27-inch iMac with Retina 5K display features a breathtaking 14.7 million pixel display so text appears sharper than ever, videos are unbelievably lifelike." andImgName: @"imac-5k"]];
    [products addObject:[[Product alloc]initWithTitle: @"Mac Pro" withDescription: @"Designed around a revolutionary unified thermal core, the Mac Pro introduces a completely new pro desktop architecture and design that is optimized for performance inside and out." andImgName: @"mac-pro"]];
    [products addObject:[[Product alloc]initWithTitle: @"Mac Mini" withDescription: @"With its sleek aluminum design, a removable bottom panel for easy access to memory, and a space-saving built-in power supply, Mac mini is pretty incredible." andImgName: @"mac-mini"]];
    [products addObject:[[Product alloc]initWithTitle: @"Displays" withDescription: @"The 27-inch Apple LED Cinema Display supersizes your view with an incredible 2560-by-1440 resolution." andImgName: @"display"]];
    [products addObject:[[Product alloc]initWithTitle: @"Airport Extreme" withDescription: @"Featuring 802.11ac Wi-Fi for up to three times faster performance." andImgName: @"airport-extreme"]];
    
    return [[ProductLine alloc] initWithName:@"Mac" andProducts:products];
}

 //  (3) Software: OS X, iLife, iWork, Logic Pro X, Final Cut Pro X, Aperture

+ (ProductLine *)software{
    NSMutableArray *products = [[NSMutableArray alloc] init];
   
    [products addObject:[[Product alloc]initWithTitle: @"OS X" withDescription: @"Built on a rock-solid UNIX foundation, OS X is engineered to take full advantage of the technologies in every new Mac." andImgName: @"os-x"]];
    [products addObject:[[Product alloc]initWithTitle: @"iLife" withDescription: @"Do more with movies and music than you ever thought possible." andImgName: @"ilife"]];
    [products addObject:[[Product alloc]initWithTitle: @"iWork" withDescription: @" iWork is the easiest way to create great-looking documents, spreadsheets, and presentations. " andImgName: @"iwork"]];
    [products addObject:[[Product alloc]initWithTitle: @"Logic Pro X" withDescription: @"Logic Pro X, the most advanced version of Logic Pro to date, with a new interface designed for pros." andImgName: @"logic-pro-x"]];
    [products addObject:[[Product alloc]initWithTitle: @"Final Cut Pro X" withDescription: @"A revolutionary new version of the world’s most popular Pro video editing software which completely reinvents video editing." andImgName: @"final-cut-pro-x"]];
    [products addObject:[[Product alloc]initWithTitle: @"Aperture" withDescription: @"Featuring revolutionary new technologies and a pioneering user interface with a beautiful design that honors the rich tradition of precision watchmaking." andImgName: @"aperture"]];
    
    return [[ProductLine alloc] initWithName:@"Software" andProducts:products];
}

//  (4) iPod: Apple TV, iPod nano, iPod shuffle, iPod touch, iTunes
+ (ProductLine *)iPod{
    NSMutableArray *products = [[NSMutableArray alloc] init];
    
    [products addObject:[[Product alloc]initWithTitle: @"iPod nano" withDescription: @"The thinnest iPod ever featuring a 2.5-inch Multi-Touch display; convenient navigation buttons; built-in Bluetooth for wireless listening; and the iPod nano comes in seven gorgeous colors." andImgName: @"ipod-nano"]];
    [products addObject:[[Product alloc]initWithTitle: @"iPod shuffle" withDescription: @"Crafted from a single piece of aluminium and polished to a beautiful shine, iPod shuffle feels solid, sleek and durable." andImgName: @"ipod-shuffle"]];
    [products addObject:[[Product alloc]initWithTitle: @"iPod touch" withDescription: @"Featuring a brilliant 4-inch Retina display; a 5-megapixel iSight camera with 1080p HD video recording." andImgName: @"ipod-touch"]];
    [products addObject:[[Product alloc]initWithTitle: @"iTunes" withDescription: @"A free application for your Mac or PC, iTunes organizes and plays your digital music and video on your computer." andImgName: @"itunes"]];
    [products addObject:[[Product alloc]initWithTitle: @"Apple TV" withDescription: @"Access to tons of great HD content in a tiny package. Enjoy blockbuster movies, TV shows, live sports and news, your music, photos, and more — right on your high-definition TV." andImgName: @"apple-tv"]];
    
    return [[ProductLine alloc] initWithName:@"iPod and iTunes" andProducts:products];
}


+ (ProductLine *)iCloudAndApplePay{
    NSMutableArray *products = [[NSMutableArray alloc] init];
    
   
    [products addObject:[[Product alloc]initWithTitle: @"iCloud" withDescription: @"The thinnest iPod ever featuring a 2.5-inch Multi-Touch display; convenient navigation buttons; built-in Bluetooth for wireless listening; and the iPod nano comes in seven gorgeous colors." andImgName: @"icloud"]];
    [products addObject:[[Product alloc]initWithTitle: @"Apple Pay" withDescription: @"A breakthrough set of free new cloud services that work seamlessly with applications on your iPhone®, iPad®, iPod touch®, Mac® or PC to automatically and wirelessly store your content in iCloud and automatically and wirelessly push it to all your devices. " andImgName: @"apple-pay"]];
    
    return [[ProductLine alloc] initWithName:@"iCloud and Apple Pay" andProducts:products];
}

@end
