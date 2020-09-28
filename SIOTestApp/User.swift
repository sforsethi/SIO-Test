//
//  User.swift
//  SIOTestApp
//
//  Created by Raghav Sethi on 28/09/20.
//

import Foundation
import RealmSwift

class User: Object {
    @objc dynamic var name = ""
    @objc dynamic var occupation = ""
    @objc dynamic var experience = 0
}

