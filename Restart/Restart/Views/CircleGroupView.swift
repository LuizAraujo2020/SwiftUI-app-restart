//
//  CircleGroupView.swift
//  Restart
//
//  Created by Luiz Araujo on 25/11/23.
//

import SwiftUI

struct CircleGroupView: View {
    
    @State var shapeColor: Color
    @State var shapeOpacity: Double

    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    shapeColor.opacity(shapeOpacity),
                    lineWidth: 40
                )
                .frame(width: 260, height: 260)

            Circle()
                .stroke(
                    shapeColor.opacity(shapeOpacity),
                    lineWidth: 80
                )
                .frame(width: 260, height: 260)
        } //: zstack
    }
}

#Preview {
    ZStack {
        Color("ColorBlue").ignoresSafeArea()
        
        CircleGroupView(
            shapeColor: .white,
            shapeOpacity: 0.2
        )
    }
}
