//
//  User.swift
//  RealmParsing
//
//  Created by Misael Pérez Chamorro on 01/06/20.
//  Copyright © 2020 Misael Pérez Chamorro. All rights reserved.
//

import Foundation
import RealmSwift

class User: Object, Decodable {
  @objc dynamic var id: Int = 0
  @objc dynamic var name: String?
  @objc dynamic var profilePicture: String?
  
  override class func primaryKey() -> String? {
      return "id"
  }
  
  private enum CodingKeys: String, CodingKey {
    case name = "name"
    case profilePicture = "profile_picture"
  }
  
}
