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
            let root1: String = String(format: "%.2f", Double((-ecuation.b + sqrt(discriminator)) / (2 * ecuation.a)))
            let root2: String = String(format: "%.2f", Double((-ecuation.b - sqrt(discriminator)) / (2 * ecuation.a)))
            
            return Ecuation(a: ecuation.a, b: ecuation.b, c: ecuation.c, r1: root1, r2: root2)
        } else {
            let base: String = String(format: "%.2f", Double(-ecuation.b / (2 * ecuation.a)));
            
            if (discriminator < 0) {
                let imaginary: String = String(format: "%.2f", Double(sqrt(-discriminator) / (2 * ecuation.a)));
                
                let root1: String = base + " + " + imaginary + "i";
                let root2: String = base + " - " + imaginary + "i";
                
                return Ecuation(a: ecuation.a, b: ecuation.b, c: ecuation.c, r1: root1, r2: root2)
            } else {
                return Ecuation(a: ecuation.a, b: ecuation.b, c: ecuation.c, r1: base, r2: base);
            }
        }
    }
}
