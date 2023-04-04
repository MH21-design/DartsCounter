//
//  GameSettingsView.swift
//  DartsCounter
//
//  Created by Marius Hübbertz on 02.04.23.
//

import SwiftUI

struct GameSettingsView: View {
    
    var body: some View {
        ZStack {
            Color.secondary
                .opacity(0.2)
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    Color("myColor")
                        .ignoresSafeArea()
                }
                .frame(height: 90)
                .ignoresSafeArea()
                
                HStack {
                    ZStack{
                        Circle()
                            .foregroundColor(.secondary)
                            .frame(width: 120)
                        Image(systemName: "plus")
                            .font(.system(size:50))
                            .foregroundColor(Color("myColor"))
                    }
                    
                    Spacer()
                    
                    ZStack{
                        Circle()
                            .foregroundColor(.secondary)
                            .frame(width: 120)
                        Image(systemName: "plus")
                            .font(.system(size:50))
                            .foregroundColor(Color("myColor"))
                    }
                }
                .padding(.horizontal, 32)
                
                Text("Spieleinstellungen")
                    .font(.title)
                    .padding(.top, 136)
                
                HStack {
                    Text("301")
                        .font(.title)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .border(.black)
                        .padding()
                    Text("501")
                        .font(.title)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .border(.black)
                        .background(Color("myColor"))
                    Text("701")
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
                .padding(.top)
                
                
                Spacer()
                
                //BOTTOM....................................................................
                
                ZStack {
                    Color.secondary
                        .ignoresSafeArea()
                    NavigationLink {
                        GameView()
                            .navigationTitle("GAME VIEW")
                    } label: {
                        Text("SPIEL ANFANGEN")
                            .resizableFont()
                            .frame(width: 364, height: 35, alignment: .center)
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("myColor"))
                            .padding(.top, 24)
                    }
                    
                }
                .frame(height: 60)
                .padding(.top, 40)
            }
        }
    }
}

struct GameSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            GameSettingsView()
        }
        
    }
}
