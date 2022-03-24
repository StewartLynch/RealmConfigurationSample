//
//  FamilyEntry.swift
//  RealmConfigurationSample
//
//  Created by Stewart Lynch on 2022-03-22.
//

import SwiftUI
import RealmSwift

struct FamilyEntry: View {
    @ObservedResults(Family.self) var family
    @State private var member = ""
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("New Family", text: $member)
                        .textFieldStyle(.roundedBorder)
                    Spacer()
                    Button {
                        $family.append(Family(name: member))
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .disabled(member.isEmpty)
                    }
                }
                .padding()
                List {
                    ForEach(family) { member in
                        Text(member.name)
                            .font(.title)
                    }
                }
            }
            .navigationTitle("Family")
        }
    }
}

struct FamilyEntry_Previews: PreviewProvider {
    static var previews: some View {
        FamilyEntry()
    }
}
