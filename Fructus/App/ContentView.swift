//
//  ContentView.swift
//  Fructus
//
//  Created by Nicholas on 10/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSettings: Bool = false
    // MARK:- PROPERTIES
    var fruits : [Fruit] = fruitsData
    
    //MARK:- BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) {
                    item in NavigationLink(destination: FruitDetailView(fruit: item)){
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
            trailing: Button( action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                }// : BUTTON
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            )
        }//: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
// MARK:- PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(
        fruits: fruitsData
        )
    }
}
