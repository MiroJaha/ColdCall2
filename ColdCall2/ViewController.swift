//
//  ViewController.swift
//  ColdCall2
//
//  Created by admin on 02/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    let names = ["Miro","Mohammad","Reem","Lubabah","Shahad","Keven","Almin"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func coldCall(_ sender: Any) {
        nameLabel.text = names[Int.random(in: 0..<names.count)]
        
        let number = Int.random(in: 1...5)
        numberLabel.text = String(number)
        numberLabel.isHidden = false
        
        if number == 1 || number == 2{
            numberLabel.textColor = .red
        }
        else if number == 3 || number == 4{
            numberLabel.textColor = .orange
        }
        else{
            numberLabel.textColor = .green
        }
    }
    
}

