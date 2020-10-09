//
//  CustomDelegateViewController.swift
//  CustomDelegate
//
//  Created by 하진호 on 2020/10/09.
//

import UIKit

class CustomDelegateViewController: UIViewController, ComposeDelegate {
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func navBtn(_ sender: Any) {
        performSegue(withIdentifier: "ComposeSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nav = segue.destination as? UINavigationController, let vc = nav.topViewController as? CustomViewController {
            vc.delegate = self
        }
    }
    
    func composer(_ vc: UIViewController, didInput textField: UITextField?) {
        label.text = textField?.text
    }
    
    func composerDidCancel(_ vc: UIViewController) {
        label.text = "Cancel"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

protocol ComposeDelegate {
    func composer(_ vc: UIViewController, didInput textField: UITextField?)
    func composerDidCancel(_ vc: UIViewController)
}
