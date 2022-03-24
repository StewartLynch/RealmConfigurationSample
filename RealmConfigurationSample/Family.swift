//
//  Family.swift
//  RealmConfigurationSample
//
//  Created by Stewart Lynch on 2022-03-22.
//

import Foundation
import RealmSwift


class Family: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var name: String
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}
