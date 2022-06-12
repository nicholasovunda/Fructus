//
//  SettingsView.swift
//  Fructus
//
//  Created by Nicholas on 12/06/2022.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK :- PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    //MARK:- BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    // Mark :-  SECTION 1
                    
                    GroupBox(
                        label:
                    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider()
                            .padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essentials nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    }
                    // Mark :-  SECTION 2
                    
                    // Mark :-  SECTION 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "app.iphone")){
                        Divider().padding(.vertical, 4)
                        
                        HStack{
                            Text("Developer").foregroundColor(Color.gray)
                            Spacer()
                            Text("John / Jane")
                        }
                    } //: BOX
                   
                }// : VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                    }
                )
                .padding()
            }// : SCROLL
        } // : NAVIGATION
    }
}

// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13 Pro")
    }
}
