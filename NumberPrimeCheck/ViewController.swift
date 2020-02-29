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
    self.view.accessibilityIdentifier = "JustView"
    self.view.backgroundColor = .green
    self.view.tag = 1000
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    self.register()
  }
  //MARK:- Methods
  func dismissMe() {
    self.view.endEditing(true)
  }
}

extension ViewController : KeyboardTempProtocol {
  
  var tempView: UIView {
    return self.view
  }
}

