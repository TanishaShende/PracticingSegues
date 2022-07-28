//
//  SecondViewController.swift
//  PracticingSegues
//
//  Created by Tanisha Shende on 7/27/22.
//

import UIKit

class SecondViewController: UIViewController {

    var name : String = ""
    var score : Int = 0
    @IBOutlet weak var mainLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        mainLabel.text = "Congratulations, \(name), you've earned \(score) points!"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
