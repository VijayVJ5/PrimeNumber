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
   
    self.view.backgroundColor = .red
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    self.register()
  }
  
  func dismissKeyboard() {
    self.view.endEditing(true)
  }
  
}

extension ViewController : KeyboardTempProtocol {
  
  var tempView: UIView {
    return self.view
  }
}

