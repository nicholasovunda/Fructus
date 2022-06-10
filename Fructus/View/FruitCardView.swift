//
//  FruitCardView.swift
//  Fructus
//
//  Created by Nicholas on 10/06/2022.
//

import SwiftUI

struct FruitCardView: View {
//    MARK: - PROPERTIES
    
//    MARK: _ BODY
    var body: some View {
        VStack(spacing: 20){
            // FRUIT: IMAGE
            Image("blueberry")
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x:6, y: 8)
            // FRUIT: TITLE
            Text("Blueberry")
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 2, x: 2, y: 2)
            // FRUIT: HEADLINE
            // FRUIT: START
        }//: VSTACK
        .frame(minWidth:0, maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
}
// MARK: - PREVIEW

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
