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
    @IBOutlet weak var Refresh: UIButton!
    @IBOutlet weak var textView: UITextView!
    var value = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 40)
        label.text = "0"
        textView.text = "История изменений"
    }
    func updateTextView(text: String) {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let dateString = formatter.string(from: date)

        let currentText = textView.text ?? ""
        let newText = "\(currentText)\n\(dateString): \(text)"
        textView.text = newText

        textView.isEditable = false
        textView.isSelectable = false
        textView.isScrollEnabled = true
    }
    @IBAction func PressMinus(_ sender: Any) {
        if value > 0 {
            value -= 1
            updateTextView(text: "значение изменено на -1")
        } else {
            value = 0
            updateTextView(text: "попытка уменьшить значение счётчика ниже 0")
        }
        label.text = "\(value)"
    }
    @IBAction func PressPlus(_ sender: Any) {
        value += 1
        label.text = "\(value)"
        updateTextView(text: "значение изменено на +1")
    }
    @IBAction func RefreshLabel(_ sender: Any) {
        value = 0
        label.text = "\(value)"
        updateTextView(text: "значение сброшено")
    }
    
    
}

