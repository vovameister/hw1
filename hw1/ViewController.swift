//
//  ViewController.swift
//  hw1
//
//  Created by Владимир Клевцов on 19.4.23..
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var pluss: UIButton!
    var value = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "0"
    }
    @IBAction func PressMinus(_ sender: Any) {
        value -= 1
        label.text = "\(value)"
    }
    @IBAction func PressPlus(_ sender: Any) {
        value += 1
        label.text = "\(value)"
    }
    
    
}

