//
//  Receita.m
//  Receitas
//
//  Created by Vinicius Miana on 3/30/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Receita.h"

@implementation Receita

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        [self setNome:[aDecoder decodeObjectForKey:@"nome"]];
        [self setModoDePreparo:[aDecoder decodeObjectForKey:@"modoDePreparo"]];
        [self setIngredientes:[aDecoder decodeObjectForKey:@"ingredientes"]];
        
        
        
    }
    
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:_nome forKey:@"nome"];
    [aCoder encodeObject:_modoDePreparo forKey:@"modoDePreparo"];
    [aCoder encodeObject:_ingredientes forKey:@"ingredientes"];
    
    
    
}

@end
