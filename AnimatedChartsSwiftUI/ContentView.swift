//
//  ContentView.swift
//  AnimatedChartsSwiftUI
//
//  Created by Dawid Kubicki on 22/11/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var pickerSelectedItem = 0
    
    @State var dataPoints: [[CGFloat]] = [
        [50,100,150,23,12],
        [123,73,90,120,140],
        [60,20,120,54,100]
    ]
    
    var body: some View {
        ZStack {
    
            Color("appBackground").edgesIgnoringSafeArea(.all)
        
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
                    BarChartView(value: dataPoints[pickerSelectedItem][0])
                    BarChartView(value: dataPoints[pickerSelectedItem][1])
                    BarChartView(value: dataPoints[pickerSelectedItem][2])
                    BarChartView(value: dataPoints[pickerSelectedItem][3])
                    BarChartView(value: dataPoints[pickerSelectedItem][4])
                }.padding(.top, 20)
                .animation(.default)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}

struct BarChartView: View {
    
    var value: CGFloat = 0
    
    var body: some View {
        VStack {
            ZStack (alignment: .bottom) {
                Capsule().frame(width: 30, height: 200)
                    .foregroundColor(Color(#colorLiteral(red: 0.7156495452, green: 0.7113971114, blue: 0.7189193964, alpha: 0.7377255673)))
                Capsule().frame(width: 30, height: value)
                    .foregroundColor(.white)
            }
            Text("M")
                .fontWeight(.medium)
                .padding(.top, 8)
            
        }
    }
}
