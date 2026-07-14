//
//  HomeShapeView.swift
//  SwiftDSA
//
//  Created by Vikram on 14/07/26.
//

import SwiftUI

struct HomeShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 50, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 130))
        path.addLine(to: CGPoint(x: 100, y: 130 ))
        path.addLine(to: CGPoint(x: 50, y: 0))
        path.addLine(to: CGPoint(x: 250, y: 0))
        path.addLine(to: CGPoint(x: 300 , y: 130))
        path.addLine(to: CGPoint(x: 100, y: 130))
        path.addLine(to: CGPoint(x: 100, y: 300))
        
        
        path.move(to: CGPoint(x: 0, y: 130))
        path.addLine(to: CGPoint(x: 0, y: 300))
        
        path.move(to: CGPoint(x: 0, y: 300))
        path.addLine(to: CGPoint(x: 300, y: 300))
        
        path.move(to: CGPoint(x: 300, y: 300))
        path.addLine(to: CGPoint(x: 300, y: 130))
        
        path.move(to: CGPoint(x: 20, y: 300))
        path.addLine(to: CGPoint(x: 20, y: 186))
        path.addLine(to: CGPoint(x: 50, y: 186 ))
        path.addLine(to: CGPoint(x: 50, y: 300))
        
        path.move(to: CGPoint(x: 150, y: 186))
        path.addLine(to: CGPoint(x: 250, y: 186 ))
        path.addLine(to: CGPoint(x: 250, y: 242))
        path.addLine(to: CGPoint(x: 150, y: 242))
        path.addLine(to: CGPoint(x: 150, y: 186))
        
        
        return path
    }
}

struct HomeShapeView: View {
    var body: some View {
        HomeShape()
            .stroke(.blue, lineWidth: 3)
            .frame(width: 200, height: 200)
            
    }
}

#Preview {
    HomeShapeView()
}
