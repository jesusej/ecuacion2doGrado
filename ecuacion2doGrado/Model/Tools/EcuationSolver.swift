//
//  EcuationSolver.swift
//  ecuacion2doGrado
//
//  Created by user194082 on 8/31/21.
//
//  Class that solves the ecuation by 3 cases depending of the value of the discriminator/delta
//  All the root values must be a String with .00 format

import Foundation

public class EcuationSolver {
    public func convert(ecuation: Ecuation) ->
    Ecuation {
        let discriminator : Float16 = ecuation.b * ecuation.b - (4 * ecuation.a * ecuation.c);
        
        if (discriminator > 0) {
            // If the discriminator its greater than 0 then it solves the ecuation like normally
            let root1: String = String(format: "%.2f",
                                       Double((-ecuation.b + sqrt(discriminator)) / (2 * ecuation.a)))
            let root2: String = String(format: "%.2f",
                                       Double((-ecuation.b - sqrt(discriminator)) / (2 * ecuation.a)))
            
            return Ecuation(a: ecuation.a, b: ecuation.b, c: ecuation.c, r1: root1, r2: root2)
        } else {
            // In the other case then it must use the value of the formula without the square root of delta
            let base: String = String(format: "%.2f",
                                      Double(-ecuation.b / (2 * ecuation.a)));
            
            if (discriminator < 0) {
                // The solution is not real so we need to get the imaginary value
                let imaginary: String = String(format: "%.2f",
                                               Double(sqrt(-discriminator) / (2 * ecuation.a)));
                
                // The value of the roots are just an ecuation of the base +- the imaginary value
                let root1: String = base + " + " + imaginary + "i";
                let root2: String = base + " - " + imaginary + "i";
                
                return Ecuation(a: ecuation.a, b: ecuation.b, c: ecuation.c, r1: root1, r2: root2)
            } else {
                // The discriminator doesnt matter so we only use the base value
                return Ecuation(a: ecuation.a, b: ecuation.b, c: ecuation.c, r1: base, r2: base);
            }
        }
    }
}
