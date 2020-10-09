//
//  CustomViewController.swift
//  CustomDelegate
//
//  Created by 하진호 on 2020/10/09.
//

import UIKit

class CustomViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func cancelBtn(_ sender: Any) {
        delegate?.composerDidCancel(self)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func doneBtn(_ sender: Any) {
        delegate?.composer(self, didInput: textField)
        dismiss(animated: true, completion: nil)
    }
    
    var delegate: ComposeDelegate?
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        delegate?.composer(self, didInput: textField)
        dismiss(animated: true, completion: nil)
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}


