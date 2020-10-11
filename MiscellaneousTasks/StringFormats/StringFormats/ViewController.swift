//
//  ViewController.swift
//  StringFormats
//
//  Created by 하진호 on 2020/10/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // On a 32-bit platform, Int is the same size as Int32
        // On a 64-bit platform, Int is the same size as Int64

        let int: Int = 10
        print(String(format: "%d", int))    // -> "10"
        print(String(format: "%0.3d", int)) // -> "010"

        let float: Float = 10.3  // 32-bit
        print(String(format: "%f", float))    // -> "10.300000"

        let decimal: Double = 10.3 // 64-bit
        print(String(format: "%f", decimal))    // -> "10.300000"
        print(String(format: "%0.f", decimal))  // -> "10"
        print(String(format: "%0.1f", decimal)) // -> "10.3"
        print(String(format: "%0.2f", decimal)) // -> "10.30"
        
        // Do any additional setup after loading the view.
    }


}

