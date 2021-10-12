//
//  MyVstackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by hyorin song on 2021/10/11.
//

import SwiftUI

struct MyVstackView: View{
    var body: some View{
        VStack{
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 70))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 70))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 70))
        }
        .background(Color.red)
    }
}

//
struct MyVstackView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
