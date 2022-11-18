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
        
    
        //First circle
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.width - rect.height, y: 0),
                                   size: CGSize(width: rect.height, height: rect.height)))
      
        //Secound Circle
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.width - rect.height + 25, y: 25),
                                   size: CGSize(width: rect.height-50, height: rect.height-50)))
      
        //Thrid circle
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.width - rect.height + 50, y: 50),
                                   size: CGSize(width: rect.height-100, height: rect.height-100)))
        
        //Fourth Circle
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.width - rect.height + 75, y: 75),
                                   size: CGSize(width: rect.height-150, height: rect.height-150)))
        //Fith circle
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.width - rect.height + 100, y: 100),
                                   size: CGSize(width: rect.height-200, height: rect.height-200)))
        //sixth circle
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.width - rect.height + 125, y: 125),
                                   size: CGSize(width: rect.height-250, height: rect.height-250)))
        
        //seventh circle
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.width - rect.height + 150, y: 150),
                                   size: CGSize(width: rect.height-300, height: rect.height-300)))
        
        //eith circle
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.width - rect.height + 175, y: 175),
                                   size: CGSize(width: rect.height-350, height: rect.height-350)))
        
        //ninth circle
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.width - rect.height + 185, y: 185),
                                   size: CGSize(width: rect.height-370, height: rect.height-370)))
        //tenth circle
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.width - rect.height + 195, y: 195),
                                   size: CGSize(width: rect.height-390, height: rect.height-390)))
        //eleventh circle
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.width - rect.height + 197.5, y: 197.5),
                                   size: CGSize(width: rect.height-395, height: rect.height-395)))

        //return the path
        return path
    }
}
struct ContentView: View {
    var body: some View {

        ShrinkingCircles()
            .stroke()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
