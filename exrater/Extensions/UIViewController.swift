//
//  UIViewController.swift
//  exrater
//
//  Created by Bohdan Yankivskyi on 17.03.2020.
//  Copyright © 2020 by. All rights reserved.
//

import UIKit

extension UIViewController {
  
  func presentAlertController(withTitle title: String? = nil, message: String? = nil, actionHandler handler: (() -> Void)? = nil) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "OK", style: .cancel) { (action) in handler?() }
    alertController.addAction(okAction)
    present(alertController, animated: true, completion: nil)
  }
  
  func presentErrorAlertController(withTitle title: String? = "Ooops...", message: String? = "Something went wrong", actionHandler handler: (() -> Void)? = nil) {
    presentAlertController(withTitle: title, message: message, actionHandler: handler)
  }

  
}
