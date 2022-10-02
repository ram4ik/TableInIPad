//
//  ContentView.swift
//  TableInIPad
//
//  Created by Ramill Ibragimov on 02.10.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Table(SomeData.examples) {
                TableColumn("Some data name", value: \.name)
                TableColumn("Some data details", value: \.details)
            }
        }
        .padding()
    }
}

struct SomeData: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let details: String
}

extension SomeData {
    static var examples: [SomeData] {
        [
            .init(name: "One", details: "First"),
            .init(name: "Two", details: "Second"),
            .init(name: "Three", details: "Third")
        ]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
