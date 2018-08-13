//
//  ViewController.swift
//  delegateTest
//
//  Created by kimdaeman14 on 2018. 8. 13..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField:UITextField!
    @IBOutlet weak var label:UILabel!
    
    @IBAction private func buttonTaped(_ sender: UIButton){
//        label.text = textField.text
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        label.text = textField.text
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self //텍스트필드에 뭔가변하면 내가(뷰컨트롤러) 알려줄게.
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

