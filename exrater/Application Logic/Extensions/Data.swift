//
//  Data.swift
//  exrater
//
//  Created by Bohdan Yankivskyi on 17.03.2020.
//  Copyright © 2020 by. All rights reserved.
//

import Foundation

extension Data {
  
  mutating func append(_ string: String) {
    if let data = string.data(using: .utf8) {
      append(data)
    }
  }
  
}
