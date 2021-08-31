//
//  Ecuation.swift
//  ecuacion2doGrado
//
//  Created by user194082 on 8/29/21.
//

import Foundation

public class Ecuation {
    public let a: Float16;
    public let b: Float16;
    public let c: Float16;
    public let r1: Float16;
    public let r2: Float16;
    
    public init(a: Float16, b: Float16, c: Float16, r1: Float16, r2: Float16) {
        self.a = a;
        self.b = b;
        self.c = c;
        self.r1 = r1;
        self.r2 = r2;
    }
}
