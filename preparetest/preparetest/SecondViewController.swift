//
//  SecondViewController.swift
//  preparetest
//
//  Created by kimdaeman14 on 2018. 8. 6..
//  Copyright © 2018년 GoldenShoe. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label:UILabel!
    
    var labelstring:String?

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.label.text = self.labelstring
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
