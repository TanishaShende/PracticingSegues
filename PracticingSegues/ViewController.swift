//
//  ViewController.swift
//  PracticingSegues
//
//  Created by Tanisha Shende on 7/27/22.
//

import UIKit

class ViewController: UIViewController {

    var score = 0
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.titleLabel!.text == "Yes" {
            //add a point
            score = 10
        } else {
            //do nothing, subtract a point
            score = -10
        }
    }
    
    @IBAction func nextScreenPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToNext", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNext" {
            let destinationVC = segue.destination as? SecondViewController
            if let name = nameTextField.text {
                destinationVC?.name = name
                destinationVC?.score = score
            }
        }
    }
    
}

