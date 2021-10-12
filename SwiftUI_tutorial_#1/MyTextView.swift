//
//  MyTextView.swift
//  SwiftUI_tutorial_#1
//
//  Created by hyorin song on 2021/10/11.
//

import SwiftUI

struct MyTextView: View{
    
    //@State 값의 변화를 감지 -> 뷰에 적용
    @State
    private var index: Int = 0
    
    //배경색 배열 준비
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View{
        VStack{
            
            Spacer()
            
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity) //좌 우 여백없이 채우기
            Spacer()
            
        }.background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all) //위 아래 여백없이 채우기
        .onTapGesture {
            print("배경아이템이 클릭되었다.")
            if(self.index == self.backgroundColors.count - 1){
                self.index = 0
            }else{
                self.index += 1
            }
        }
    }
}

//
struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}


