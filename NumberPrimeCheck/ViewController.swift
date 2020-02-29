//
//  ViewController.swift
//  NumberPrimeCheck
//
//  Created by Macbook Pro on 28/02/20.
//  Copyright © 2020 OrgwareTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var testTxtFld: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        
        view.addGestureRecognizer(tap)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.register()
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
}

extension ViewController : KeyboardTempProtocol {
    
    var tempView: UIView {
       return self.view
    }
    
    
}

