//
//  OnboadingView.swift
//  Fructus
//
//  Created by Nicholas on 11/06/2022.
//

import SwiftUI

struct OnboadingView: View {
    
    //MARK: -PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(0..<5){
                item in
//                FruitCardView()
                Text("Cards")
            }
        } //:TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20 )
    }
}
//MARK: - PREVIEW
struct OnboadingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboadingView()
    }
}
