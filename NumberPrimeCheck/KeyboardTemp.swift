//
//  KeyboardTemp.swift
//  NumberPrimeCheck
//
//  Created by Macbook Pro on 29/02/20.
//  Copyright © 2020 OrgwareTechnologies. All rights reserved.
//

import Foundation
import UIKit

protocol KeyboardTempProtocol: class {
  var tempView : UIView { get }
  func register()
  func unRegister()
}

extension KeyboardTempProtocol  {
  
  func register() {
    NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { (notif) in
      self.keyboardWillShow(notification: notif)
    }
    NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil) { (notif) in
      self.keyboardWillHide(notification: notif)
    }
  }
  
  func keyboardWillShow(notification: Notification) {
    guard let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {
      return
    }
    // move the root view up by the distance of keyboard height
    self.tempView.frame.origin.y = 0 - keyboardSize.height
  }
  
  func keyboardWillHide(notification: Notification) {
    // move back the root view origin to zero
    self.tempView.frame.origin.y = 0
  }
  
  func unRegister() {
    NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
    NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
  }
}
