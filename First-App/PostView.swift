//
//  PostView.swift
//  First-App
//
//  Created by Hemanth Vikash on 22/12/2019.
//  Copyright © 2019 Hemanth Vikash Kannan Rajan. All rights reserved.
//

import SwiftUI

struct PostView: View {
    
    /*
     These variables can be sent as
     parameters when calling them
     
     For example:
     
     PostView(posts: 30, followers: 40, following: 50)
     */
    public var posts: Int
    public var followers: Int
    public var following: Int
    
    var body: some View {
        
        /*
         Every View in this HStack will
         be spaced by "30"
         */
        HStack(alignment: .center, spacing: 30.0)
        {
            VStack{
                Text("\(self.posts)")
                Text("Posts")
                    .fontWeight(.bold)
                    // Modifiers can be added for each View
            }
            
            VStack{
                Text("\(self.followers)")
                    .fontWeight(.bold)
                Text("Followers")
                    .fontWeight(.bold)
            }
            
            VStack{
                Text("\(self.following)")
                Text("Following")
            }
            .font(.headline)
            .foregroundColor(.green)
            // Modifiers can also be added for the whole stack
            
        }
    }
}


// This is only useful if you are using the canvas feature.
struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(posts: 77, followers: 364, following: 612)
    }
}
