//
//  RealmConfigurator.swift
//  RealmConfigurationSample
//
//  Created by Stewart Lynch on 2022-03-22.
//

import Foundation
import RealmSwift

class RealmConfigurator {
    init(name: String) {
        initializeConfig(name: name)
    }
    
    func initializeConfig(name: String) {
        let docDir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let realmFileUrl = docDir.appendingPathComponent("\(name).realm")
        let config = Realm.Configuration(fileURL: realmFileUrl)
        Realm.Configuration.defaultConfiguration = config
        print(docDir.path)
        // Peform Migrations now if you need to
    }
}
