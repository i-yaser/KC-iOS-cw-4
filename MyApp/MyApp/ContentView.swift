//
//  ContentView.swift
//  MyApp
//
//  Created by Yasr Alajmi on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var grade = ""
    @State var grade90 = ""
    var body: some View {
        ZStack{
            Color.blue
                .opacity(0.3)
                .ignoresSafeArea()
            
            VStack{
                Text("حاسبة درجات")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .frame(width: 300, height: 60)
                
                Spacer()
                
                Image("jo-1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height:200)
            
                
                TextField("ضع درجتك هنا ",text: $grade)
                    .background(.white)
                    .textFieldStyle(.roundedBorder)
                
                Text("احسب درجتك")
                    .frame(width: 130, height: 50)
                    .background(.red)
                    .onTapGesture {
                        if (Double(grade) ?? 0) >= 90 {
                            grade90 = "❤️‍🔥امتياز❤️‍🔥"
                        }
                        else if (Double(grade) ?? 0) >= 80 {
                            grade90 = "جيد جدا💙"
                        }
                        else if (Double(grade) ?? 0) >= 70 {
                            grade90 = "جيد💛"
                        }
                        else {
                            grade90 = "رسوب💔"
                        }
                    }
                 
                Text("👆🏻اضغط هنا👆🏻")
                Spacer()
                
                Text(grade90)
                    .font(.largeTitle)
                    .fontWeight(.regular)
                    .frame(width: 300, height: 100)
                    
            }.padding()
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
}

