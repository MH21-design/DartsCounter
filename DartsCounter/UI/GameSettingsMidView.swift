//
//  GameSettingsMidView.swift
//  DartsCounter
//
//  Created by Marius Hübbertz on 05.04.23.
//

import SwiftUI

struct GameSettingsMidView: View {
    var body: some View {
        Text("Spieleinstellungen")
            .font(.title)
            .padding(.top, 136)
        
        HStack {
            
            Button("301") {
                
            }
            .font(.title)
            .padding(.horizontal)
            .padding(.vertical, 8)
            .border(.black)
            .padding()
            
            Button("501") {
                
            }
            .font(.title)
            .padding(.horizontal)
            .padding(.vertical, 8)
            .border(.black)
            .background(Color("myColor"))
            
            Button("701") {
                
            }
            .font(.title)
            .padding(.horizontal)
            .padding(.vertical, 8)
            .border(.black)
            .padding()
        }
        .padding(.top)
        
        HStack(spacing: 56) {
            Text("FIRST")
                .font(.title2)
                .fontWeight(.semibold)
            Text("3")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.horizontal)
                .padding(.vertical, 8)
                .border(.black)
                .background(Color("myColor"))
            
            Text("LEGS")
                .font(.title2)
                .fontWeight(.semibold)
            //.padding(.leading, 32)
        }
        //.padding(.top,8)
        
    }
}

struct GameSettingsMidView_Previews: PreviewProvider {
    static var previews: some View {
        GameSettingsMidView()
    }
}
