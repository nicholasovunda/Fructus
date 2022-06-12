//
//  OnboadingView.swift
//  Fructus
//
//  Created by Nicholas on 11/06/2022.
//

import SwiftUI

struct OnboadingView: View {
    //MARK: -PROPERTIES
    var fruits: [Fruit] = fruitsData
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]){
                item in
                FruitCardView(fruit: item)
            }
        } //:TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 2)
    }
}
//MARK: - PREVIEW
struct OnboadingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboadingView(fruits: fruitsData)
            .previewDevice("iPhone 13 Pro Max")
    }
}
