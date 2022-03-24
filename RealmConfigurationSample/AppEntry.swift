//
//  AppEntry.swift
//  RealmConfigurationSample
//
//  Created by Stewart Lynch on 2022-03-22.
//

import SwiftUI

@main
struct RealmConfigurationSampleApp: App {
    let configurator = RealmConfigurator(name: "Family")
    var body: some Scene {
        WindowGroup {
            FamilyEntry()
                .onAppear {
                    UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
                }
        }
    }
}
