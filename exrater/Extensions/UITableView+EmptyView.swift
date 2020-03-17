//
//  UITableView+EmptyView.swift
//  exrater
//
//  Created by Bohdan Yankivskyi on 17.03.2020.
//  Copyright © 2020 by. All rights reserved.
//

import UIKit

extension UITableView {
  
  func setEmptyView(title: String, message: String) {
    let emptyView = UIView(frame: CGRect(x: center.x, y: center.y, width: bounds.size.width, height: bounds.size.height))
    let titleLabel = UILabel()
    let messageLabel = UILabel()
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    messageLabel.translatesAutoresizingMaskIntoConstraints = false
    titleLabel.textColor = UIColor.black
    titleLabel.font = UIFont.boldSystemFont(ofSize: 17.0)
    messageLabel.textColor = UIColor.lightGray
    messageLabel.font = UIFont.systemFont(ofSize: 15.0)
    emptyView.addSubview(titleLabel)
    emptyView.addSubview(messageLabel)
    titleLabel.centerYAnchor.constraint(equalTo: emptyView.centerYAnchor, constant: -16).isActive = true
    titleLabel.centerXAnchor.constraint(equalTo: emptyView.centerXAnchor).isActive = true
    messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).isActive = true
    messageLabel.leftAnchor.constraint(equalTo: emptyView.leftAnchor, constant: 16).isActive = true
    messageLabel.rightAnchor.constraint(equalTo: emptyView.rightAnchor, constant: -16).isActive = true
    titleLabel.text = title
    messageLabel.text = message
    messageLabel.numberOfLines = 0
    messageLabel.textAlignment = .center
     
    backgroundView = emptyView
    separatorStyle = .none
  }
  
  func restore() {
    backgroundView = nil
    separatorStyle = .singleLine
  }
  
}

