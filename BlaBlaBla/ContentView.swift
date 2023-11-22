//
//  ContentView.swift
//  BlaBlaBla
//
//  Created by Student on 21.11.2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    var body: some View  {
        ScrollView{
            VStack {
                HeaderBlock()
                GeneralDoctorBlock()
                SearchBar()
                TagButtonsList()
                NearstDoctorBlocksList()
            }
        }
    }
}
#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
