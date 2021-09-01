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
        
        // To let the ecuationSolver to work all the inputs must not be empty and the a value must not be equal to 0
        // If the other case it prints a message to the console or creates an alert, respectively
        if let a = inputEcuationA.text, let b = inputEcuationB.text, let c = inputEcuationC.text {
            if (!a.isEmpty || !b.isEmpty || !c.isEmpty) {
                if(Int(a) != 0) {
                    let rootsValue = ecuationsolver.convert(ecuation: Ecuation(a: Float16(a)!, b: Float16(b)!, c: Float16(c)!, r1: "", r2: ""))
                    print("Root 1: " + String(rootsValue.r1) + " Root 2: " + String(rootsValue.r2))
                    inputRoot1.text = String(rootsValue.r1)
                    inputRoot2.text = String(rootsValue.r2)
                } else {
                    let alertController = UIAlertController(title: "Aviso", message: "No es una ecuacion de segundo grado", preferredStyle: UIAlertController.Style.alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
                    present(alertController, animated: true, completion: nil)
                }
            } else {
                print("At least one of the values is empty")
            }
        }
    }
}

