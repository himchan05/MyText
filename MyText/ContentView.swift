//
//  ContentView.swift
//  MyText
//
//  Created by 박힘찬 on 2022/03/06.
//

import SwiftUI

struct ContentView: View {
    static let dateFormat: DateFormatter = { // 연산 타입 프로퍼티
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 MM월 dd일 hh시 mm분"
        return formatter
    }()
    var time = Date()
    
    var body: some View {
        VStack {
            Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. ")
                .tracking(3) // 글자 사이 간격
                .padding(.vertical)
                .font(.system(size: 20, weight: .medium, design: .rounded))
                .multilineTextAlignment(.center) // 중앙 정렬
                .truncationMode(.middle) // 짜르기 (...)
                .lineLimit(nil) // 라인 제한
                .lineSpacing(5) // 라인 간격
                .shadow(color: Color.gray, radius: 2, x: 5, y: 5) // 그림자
                .background(Color.cyan)
                .foregroundColor(Color.white)
                .cornerRadius(20)
            
                .padding()
                .background(Color.indigo)
                .cornerRadius(20)
             
                .padding()
                .background(Color.purple)
                .cornerRadius(20)
            Text("\(time)")
                .padding()
                .background(Color.black)
                .foregroundColor(Color.white)
            Text("\(time, formatter: ContentView.dateFormat)")
                .padding()
                .font(.system(size: 15, weight: .bold, design: .rounded))
                .background(Color.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
