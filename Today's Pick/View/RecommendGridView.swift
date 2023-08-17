//
//  RecommendGridView.swift
//  Today's Pick
//
//  Created by Ko Seokjun on 2023/08/17.
//

import SwiftUI

struct RecommendGridView: View {
    @State private var clothes = [
        Cloth(id: 1, name: "블라우스"),
        Cloth(id: 2, name: "긴팔 티"),
        Cloth(id: 3, name: "면바지"),
        Cloth(id: 4, name: "슬랙스"),
        Cloth(id: 5, name: "후드티")
    ]
    @State private var row = 3
    
    var body: some View {
        VStack(alignment: .leading){
            ForEach(0..<clothes.count/2+clothes.count%2, id: \.self) { idx in
                HStack(spacing: 0){
                    Text(clothes[2*idx].name1)
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .regular))
                        .frame(width: 146, height: 20, alignment: .leading)
                    if(2*idx+1 < clothes.count){
                        Text(clothes[2*idx+1].name1)
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .regular))
                            .frame(width: 146, height: 20, alignment: .leading)
                    }
                }
                Divide()
            }
        }
    }
}

struct RecommendGridView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendGridView()
    }
}
