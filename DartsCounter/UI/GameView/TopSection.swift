import SwiftUI
import Foundation

struct TopSection: View {
    
    @ObservedObject var gameModel: DartsGameModel
    
    var body: some View {
        Group {
            ZStack {
                Color("myColor")
                    .frame(height: 90)
                    .ignoresSafeArea()
                    .padding(-16)
            }
                HStack{
                    ForEach(gameModel.playersArray, id: \.id) { player in
                        VStack{
                            ZStack {
                                Rectangle()
                                    .frame(height: 56)
                                    .opacity(0.1)
                                    .border(.black, width: 1)
                                    .padding(.top, -9)
                                
                                if player.isPlaying{
                                    Text(player.name)
                                        .font(.title)
                                        .fontWeight(.semibold)
                                        .padding(.bottom, 9)
                                }else {
                                    Text(player.name)
                                        .font(.title)
                                        .fontWeight(.thin)
                                        .padding(.bottom, 9)
                                }
                            }

                            Text("\(player.remainingPoints)")
                                .resizableFont()
                                .scaledToFit()
                                .frame(height: 100)
                                .font(.title)
                                .fontWeight(.semibold)
                                .padding(24)
                        }
                    }
                }
                Spacer()
            }
        }
        
    }

