//
//  ContentView.swift
//  AnimatedChartsSwiftUI
//
//  Created by Dawid Kubicki on 22/11/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var pickerSelectedItem = 0
    
    var body: some View {
        ZStack {
    
            Color(#colorLiteral(red: 0, green: 0.8676494956, blue: 0.8651667237, alpha: 1)).edgesIgnoringSafeArea(.all)
        
            VStack {
                Text("Calory Intake")
                    .font(.system(size: 34))
                    .fontWeight(.heavy)
                
                Picker(selection: $pickerSelectedItem, label: Text("")) {
                    Text("Weekday").tag(0)
                    Text("Afternoon").tag(1)
                    Text("Evening").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal, 24)
                
                HStack {
                    VStack {
                        ZStack (alignment: .bottom) {
                            Capsule().frame(width: 30, height: 200)
                                .foregroundColor(Color(#colorLiteral(red: 0.7156495452, green: 0.7113971114, blue: 0.7189193964, alpha: 0.7377255673)))
                            Capsule().frame(width: 30, height: 150)
                                .foregroundColor(.white)
                        }
                        Text("M")
                            .fontWeight(.medium)
                            .padding(.top, 8)
                    
                    }
                }.padding(.top, 20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
