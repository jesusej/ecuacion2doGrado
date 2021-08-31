//
//  EcuationSolver.swift
//  ecuacion2doGrado
//
//  Created by user194082 on 8/31/21.
//

import Foundation

public class EcuationSolver {
    public func convert(ecuation: Ecuation) ->
    Ecuation {
        let discriminator : Float16 = ecuation.b * ecuation.b - (4 * ecuation.a * ecuation.c);
        
        if (discriminator > 0) {
            let root1: Float16 = (-ecuation.b + discriminator) / (2 * ecuation.a)
            let root2: Float16 = (-ecuation.b - discriminator) / (2 * ecuation.a)
            
            return Ecuation(a: ecuation.a, b: ecuation.b, c: ecuation.c, r1: root1, r2: root2)
        }
        
        let roots: Float16 = -ecuation.b / (2 * ecuation.a);
        
        return Ecuation(a: ecuation.a, b: ecuation.b, c: ecuation.c, r1: roots, r2: roots);
    }
}
