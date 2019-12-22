//
//  View1.swift
//  First-App
//
//  Created by Hemanth Vikash on 22/12/2019.
//  Copyright © 2019 Hemanth Vikash Kannan Rajan. All rights reserved.
//

import SwiftUI

struct View1: View {
    var body: some View {
        VStack(alignment: .center){
            /*
             Image is stored in the Assets.xcassets folder
             */
            Image("My-small-image")
                .resizable()
                .frame(width: 70.0, height: 70.0)
                .clipShape(Circle())
                .shadow(color: .white ,radius: 5.0)
            
            Text("Hemanth Vikash")
            
        }
    }
}


// This is only useful if you are using the canvas feature.
struct View1_Previews: PreviewProvider {
    static var previews: some View {
        View1()
    }
}
