//
//  Ecuation.swift
//  ecuacion2doGrado
//
//  Created by user194082 on 8/29/21.
//
//  Base class of all the movement of the ecuation solver
//  Saves the values of a,b,c of the ecuation and the roots

import Foundation

public class Ecuation {
    public let a: Float16;
    public let b: Float16;
    public let c: Float16;
    public let r1: String;
    public let r2: String;
    
    public init(a: Float16, b: Float16, c: Float16, r1: String, r2: String) {
        self.a = a;
        self.b = b;
        self.c = c;
        self.r1 = r1;
        self.r2 = r2;
    }
}
