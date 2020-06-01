//
//  Network.swift
//  RealmParsing
//
//  Created by Misael Pérez Chamorro on 01/06/20.
//  Copyright © 2020 Misael Pérez Chamorro. All rights reserved.
//

import Foundation
import Alamofire
import RealmSwift

class Network {
  static func request() {
    AF.request("http://localhost:4000/api/user").responseJSON { response in
      do {
        let decoder = JSONDecoder()
        let user = try decoder.decode(User.self, from: response.data!)
        let realm = try Realm()
        try realm.write {
          realm.add(user, update: .all)
        }
        let users = realm.objects(User.self)
        debugPrint(users)
      } catch {
        debugPrint(error)
      }
    }
  }
}
