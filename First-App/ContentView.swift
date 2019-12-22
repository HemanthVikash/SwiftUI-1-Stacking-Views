//
//  ContentView.swift
//  First-App
//
//  Created by Hemanth Vikash on 22/12/2019.
//  Copyright © 2019 Hemanth Vikash Kannan Rajan. All rights reserved.
//

import SwiftUI

/*
 Content Views are mostly the crux of the project.
 
 As soon as the application loads, this is the first
 view that is shown to the user. This can be changed
 (although never considered a good practise) in the
 Scene Delegate. More on that later.
 
*/
struct ContentView: View {
    @State private var bio = ""
    
    var body: some View {
        ZStack
        {
            Color
                .black // Inbuilt color
                .opacity(0.9) // opacity modifier
                .edgesIgnoringSafeArea(.all) // This is to cover the notch on top
            
            /*
             Every View within the VStack
             will be aligned to the left.
             
             In SwiftUI:
             Left aligned : leading
             Right aligned : trailing
             Center aligned : center
             */
            VStack(alignment: .leading)
            {
                HStack(alignment: .center){
                    View1()
                    PostView(posts: 19, followers: 331, following: 399)
                }
               
                
                /*
                 TextField is only available for one line for some reason
                 */
                TextField("Enter bio here", text: $bio)
                    .frame(width: UIScreen.main.bounds.width - 20)
                    .foregroundColor(.white)
                
                Spacer()
            } // End of VStack
             .foregroundColor(.white)
            /*
                 Every view within the VStack will
                 adhere to this foreground color
                 modifier unless specified otherwise
            */
            
        } // End of ZStack
    }
}


// This is only useful if you are using the canvas feature.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
