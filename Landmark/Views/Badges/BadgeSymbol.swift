//
//  BadgeSymbol.swift
//  Landmark
//
//  Created by Sabal on 11/2/23.
//

import SwiftUI

struct BadgeSymbol: View {
    static let symbolColor = Color(red: 79.0 / 255, green: 79.0 / 255, blue: 191.0 / 255)


    var body: some View {
        GeometryReader { geometry in
            ZStack {
                
                let width = min(geometry.size.width, geometry.size.height)
                let height = width * 0.75
                let spacing = width * 0.03
                let middle = width * 0.5
                let topWidth = width * 0.226
                let topHeight = height * 0.488
                
                Path { path in
                    


                    path.addLines([
                        CGPoint(x: middle, y: spacing),
                        CGPoint(x: middle - topWidth, y: topHeight - spacing),
                        CGPoint(x: middle, y: topHeight / 2 + spacing),
                        CGPoint(x: middle + topWidth, y: topHeight - spacing),
                        CGPoint(x: middle, y: spacing)
                    ])
                    
                    
                    
                    path.move(to: CGPoint(x: middle, y: topHeight / 2 + spacing * 3))
                    
                    path.addLines([
                        CGPoint(x: middle - topWidth, y: topHeight + spacing),
                        CGPoint(x: spacing, y: height - spacing),
                        CGPoint(x: width - spacing, y: height - spacing),
                        CGPoint(x: middle + topWidth, y: topHeight + spacing),
                        CGPoint(x: middle, y: topHeight / 2 + spacing * 3)
                    ])
                }
                .fill(Self.symbolColor)
                
                //this two paths are added later and Z stack is created. These two paths given below is responsible for green adn blue small triangles.
                Path { path in
                    path.addLines([
                        CGPoint(x: middle - topWidth, y: topHeight + spacing),
                        CGPoint(x: middle , y: topHeight + spacing),
                        CGPoint(x: middle, y: topHeight / 2 + spacing * 3)
                    ])
                }
                .fill(.green)
                
                Path { path in
                    path.addLines([
                        
                        CGPoint(x: middle , y: topHeight + spacing),
                        CGPoint(x: middle + topWidth, y: topHeight + spacing),
                        CGPoint(x: middle, y: topHeight / 2 + spacing * 3)
                        
                        
                    ])
                }
                .fill(.blue)
                
            }
        }
    }
}

#Preview {
    BadgeSymbol()
}
