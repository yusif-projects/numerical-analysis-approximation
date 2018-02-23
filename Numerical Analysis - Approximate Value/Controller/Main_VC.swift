//Created by Yusif Aliyev
//February 23, 2018

import UIKit

class Main_VC: UIViewController {
    @IBOutlet weak var power_text_box: UITextField!
    @IBOutlet weak var accuracy_text_box: UITextField!
    
    var power: Double = 0.0
    var accuracy: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Main_VC.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
}
