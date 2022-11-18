//
//  ContentView.swift
//  ShrinkingCircles
//
//  Created by Noah Alexandre Soubliere on 2022-11-18.
//

import SwiftUI

struct ShrinkingCircles: Shape{
    
    func path(in rect: CGRect) -> Path {
      
        //Create a path
        var path = Path()
        
        //loop for smaller circles
        for i in 0...7 {
            
            let j = CGFloat(i)
            
            path.addEllipse(in: CGRect(origin: CGPoint(x: rect.midX - rect.midY + 25 * j, y: 25 * j),
                                       size: CGSize(width: rect.height - 50 * j, height: rect.height - 50 * j)))
        }


        //return the path
        return path
    }
}

struct ShrinkingCirclesRecursively: Shape {
    
    //MARK: Stored Propertie
    let desiredDepth: Int
    
    //MARK: Function
    func path(in rect: CGRect) -> Path {
        //Make path
        var path = Path()
        
        //Begin calling the recursive helper
        let AllThePaths = recursiveHelper(currentDepth: 1)
        path.addPath(AllThePaths)
        //Return path
        return path
        
    }
    
    func recursiveHelper(currentDepth: Int) -> Path {
        
        //Make path
        var path = Path()
        
        //Return path
        return path
        
    }
    
}
struct ContentView: View {
    var body: some View {
        VStack{
            ShrinkingCircles()
                .stroke()
            
            ShrinkingCirclesRecursively(desiredDepth: Int)
                .stroke()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
