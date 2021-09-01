//
//  ViewController.swift
//  ecuacion2doGrado
//
//  Created by user194082 on 8/26/21.
//

import UIKit

class ViewController: UIViewController {
    let ecuationsolver = EcuationSolver();

    @IBOutlet weak var inputEcuationA: UITextField!
    @IBOutlet weak var inputEcuationB: UITextField!
    @IBOutlet weak var inputEcuationC: UITextField!
    
    @IBOutlet weak var inputRoot1: UITextField!
    @IBOutlet weak var inputRoot2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func solvingButton(_ sender: UIButton) {
        inputRoot1.text = ""
        inputRoot2.text = ""
        
        if let a = inputEcuationA.text, let b = inputEcuationB.text, let c = inputEcuationC.text {
            if (!a.isEmpty || !b.isEmpty || !c.isEmpty) {
                let rootsValue = ecuationsolver.convert(ecuation: Ecuation(a: Float16(a)!, b: Float16(b)!, c: Float16(c)!, r1: 0.0, r2: 0.0))
            } else {
                print("At least one of the values is empty")
            }
        }
    }
}

