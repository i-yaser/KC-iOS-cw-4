//
//  ContentView.swift
//  Best Track
//
//  Created by Yasr Alajmi on 11/08/2022.
//

import SwiftUI

struct ContentView: View {
     @State var iOSOnTop = ""
    @State var iOS = ""
    var body: some View {
       
        VStack{
            
        Spacer()
                .frame(width: 300, height: 300)
            
            Text("ماهو المسار المفضل لديك؟👨🏻‍💻")
                .font(.title3)
                .fontWeight(.semibold)
                .frame(width: 300, height: 50)
           
            ZStack{ Image("lol")
                    .resizable()
                    .frame(width: 100, height: 100)
                
           
                Image(iOS)
                .resizable()
                .frame(width: 300, height: 300)
            }
            
            Text("iOS")
                .foregroundColor(.white)
                .frame(width: 180, height: 60)
                .background(Color.blue) .opacity(0.5)
                .clipShape(Capsule())
                .onTapGesture {
                    iOS = "apple"
                    
                }
            
            Text("Gamedev")
                .foregroundColor(.white)
                .frame(width: 180, height: 60)
                .background(Color.red)
                .clipShape(Capsule())
                .onTapGesture {
                  iOS = "gamedev"
                }
            
            Text("Web")
                .foregroundColor(.white)
                .frame(width: 180, height: 60)
                .background(Color.gray)
                .clipShape(Capsule())
                .onTapGesture {
                  iOS = "88"
                }
            
            Text("Androdi")
                .foregroundColor(.white)
                .frame(width: 180, height: 60)
                .background(Color.green)
                .clipShape(Capsule())
                .onTapGesture {
                  iOS = "non"
                }
        
            Spacer()
                .frame(width:0, height: 340)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
