//Created by Yusif Aliyev
//February 23, 2018

import UIKit

class Main_VC: UIViewController {
    @IBOutlet weak var power_text_box: UITextField!
    @IBOutlet weak var accuracy_text_box: UITextField!
    @IBOutlet weak var result_label: UILabel!
    
    var power: Double = 0.0
    var accuracy: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        result_label.isHidden = true
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Main_VC.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func calculate_pressed(_ sender: Any) {
        if let power_tb = power_text_box.text {
            power = Double(power_tb)!
        }
        
        if let accuracy_tb = accuracy_text_box.text {
            accuracy = Double(accuracy_tb)!
        }
        
        let result = approximateValue(power: power, accuracy: accuracy)
        
        result_label.text = "\(result)"
        
        result_label.isHidden = false
    }
    
}
