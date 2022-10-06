//
//  ContentView.swift
//  Images List
//
//  Created by Elaidzha Shchukin on 05.10.2022.
//

import SwiftUI

struct ContentView: View {
//6.10
    
    let columns: [GridItem] = [
        GridItem(.adaptive(minimum: 188), spacing: 0)
        
    ]
    
    var body: some View {
        ScrollView {
            
            LazyVGrid(columns: columns, spacing: 0) {
                ForEach(0..<30) { i in
                    ZStack(alignment: .leading) {
                        
                        Image("NY")
                            .resizable()
                        
                        VStack {
                        
                            Text("New York")
                                .foregroundColor(.white)
                            //.frame(width: 49, height: 24)
                            
                            
                            
                            Text("1245 sights")
                                .font(.caption)
                                .foregroundColor(.white)
                            //    .frame(width: 56, height: 13)
                            
                        }
                        .padding()
                        .padding(.top, 110)
                        
                            VStack(alignment: .trailing) {
                                Button {
                                } label: {
                                    Image(systemName: "chevron.right")
                                }
                                    .foregroundColor(.white)
                                // .position(CGPoint(x: 67.58, y: -1.56))
                                // .position(x: 18, y: 16)
                                    .padding(.leading, 164)
                                
                            }
                            .padding(.top, 120)
                    }
                
                }
                
                .aspectRatio(contentMode: .fit)
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
