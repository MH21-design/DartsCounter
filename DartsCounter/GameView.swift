//
//  GameView.swift
//  DartsCounter
//
//  Created by Marius Hübbertz on 02.04.23.
//

import SwiftUI

struct GameView: View {
    
    @State var name = "NAME"
    @State var points = "321"
    @State var Startpoints = "501"
    
    var dartsThrowen = "3"
    var lastThrow = "180"
    
    
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
                
                Text(name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding()
                
                Text(points)
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(24)
                
                Divider()
                
                HStack {
                    Text("Letzte aufnahme:")
                    Spacer()
                    Text(lastThrow)
                }
                .padding(.horizontal)
                .font(.title3)
                .fontWeight(.light)
                
                Divider()
                
                
                HStack {
                    Text("Geworfene Darts:")
                    Spacer()
                    Text(dartsThrowen)
                }
                .padding(.horizontal)
                .font(.title3)
                .fontWeight(.light)
                
                Divider()
                
                HStack {
                    Text("3-Dart-Avg:")
                    Spacer()
                    Text("")
                }
                .padding(.horizontal)
                .font(.title3)
                .fontWeight(.light)
                
                ZStack {
                    Rectangle()
                        .frame(height: 96)
                        .opacity(0)
                        .border(.black, width: 1)
                    HStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 110, height: 80)
                                .padding(.horizontal, 8)
                                .foregroundColor(.red)
                            Image(systemName: "return")
                                .resizable()
                                .scaleEffect(0.15)
                                .bold()
                        }
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 110, height: 80)
                                .padding(.horizontal, 8)
                                .foregroundColor(.red)
                            Image(systemName: "return")
                                .resizable()
                                .scaleEffect(0.15)
                                .bold()
                        }
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 110, height: 80)
                                .padding(.horizontal, 8)
                                .foregroundColor(.red)
                            Image(systemName: "return")
                                .resizable()
                                .scaleEffect(0.15)
                                .bold()
                        }
                    }
                }
            }
            
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            GameView()
        }
        
    }
}
