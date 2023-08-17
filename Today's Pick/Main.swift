//
//  Main.swift
//  Today's Pick
//
//  Created by Ko Seokjun on 2023/08/16.
//

import SwiftUI

struct Cloth: Identifiable{
    var id: Int
    var name: String
}

struct Main: View {
    
    var body: some View {
        ZStack(){
            LinearGradient(gradient: Gradient( colors: [ Color(red: 32/255, green: 74/255, blue: 138/255), Color(red: 103/255, green: 151/255, blue: 213/255)]),startPoint: .top, endPoint: .bottom).ignoresSafeArea(.all)
            VStack{
                Text("대체로 맑음")
                    .font(.system(size: 19, weight: .regular))
                    .foregroundColor(.white)
                    .padding(.bottom, 7)
                Text("도시명")
                    .font(.system(size: 13, weight: .regular))
                    .foregroundColor(.white)
                    .padding(.bottom, 24)
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                    .frame(width: 333, height: 372)
                    .background(Color(red: 34/255, green: 77/255, blue: 140/255))
                    .opacity(0.1)
                    VStack{
                        Text("오늘 이런 옷은 어떤가요?")
                            .font(.system(size: 13, weight: .regular))
                            .foregroundColor(.white)
                            .frame(width: 293, height: 20.28, alignment: .leading)
                        Divide()
                        RecommendGridView()
                        Text("기온이 떨어지는 구간이 있으니, 고려해보세요!")
                            .font(.system(size: 13, weight: .regular))
                            .foregroundColor(.white)
                            .frame(width: 293, height: 20.28, alignment: .leading)
                            .padding(.top, 17.4)
                        Divide()
                        RecommendGridView()
                    }
                    .frame(width: 333, height: 372)
                    .background(.clear)
                }
                .padding(.bottom, 11)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                    .frame(width: 333, height: 138)
                    .background(Color(red: 34/255, green: 77/255, blue: 140/255))
                    .opacity(0.1)
                        
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack{
                            ForEach(1...32, id: \.self) { i in
                                VStack {
                                    Text("지금")
                                        .foregroundColor(.white)
                                        .font(.system(size: 13, weight: .medium))
                                    Circle()
                                        .fill(.yellow)
                                        .frame(width: 22, height: 22)
                                    Text("\(i)°")
                                        .foregroundColor(.white)
                                        .font(.system(size: 18, weight: .medium))
                                }
                                .frame(width: 52, height: 85)
                            }
                            .padding(.all, 8)
                        }
                    }
                    .frame(width: 333, height: 138)
                    .foregroundColor(.clear)
                }
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}

