import SwiftUI

struct GameSettingsView: View {
    
    @State var showSheet: Bool = false
    @State var selectedPlayer: Player?
    @State var playerOne: String
    @State var playerTwo: String
    
    var body: some View {
        
        ZStack {
            BackgroundView()
            
            VStack {
                TopBarView()
                
                HStack(spacing: 80) {
                    VStack {
                        ZStack(alignment: .topTrailing) {
                            Image(systemName: "person")
                                .resizable()
                                .scaledToFit()
                                .padding()
                                .frame(width: 100, height: 100)
                                .font(Font.system(.title2, weight: .ultraLight))
                                .background(Color.white)
                                .clipShape(Circle())
                            
                            if playerOne != "" {
                                Image(systemName: "x.square.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24)
                                    .onTapGesture {
                                        playerOne = ""
                                    }
                            }
                        }
                        Text(playerOne)
                            .padding()
                            .font(.title2)
                            .fontWeight(.semibold)
                    }
                    VStack {
                        ZStack(alignment: .topTrailing) {
                            Image(systemName: "person")
                                .resizable()
                                .scaledToFit()
                                .padding()
                                .frame(width: 100, height: 100)
                                .font(Font.system(.title2, weight: .ultraLight))
                                .background(Color.white)
                                .clipShape(Circle())
                            
                            if playerTwo != "" {
                                Image(systemName: "x.square.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24)
                                    .onTapGesture {
                                        playerTwo = ""
                                }
                            }
                        }
                        
                        Text(playerTwo)
                            .padding()
                            .font(.title2)
                            .fontWeight(.semibold)
                    }
                }
                .padding(.horizontal, 32)
                
                Spacer()
                
                GameSettingsMidView()
                
                Spacer()
                
                GameSettingsBottomView()
            }
            .toolbar() {
                ToolbarItem() {
                    Button {
                        showSheet.toggle()
                    } label: {
                        Image(systemName: "plus.app")
                            .frame(width: 50, height: 50)
                            .fontWeight(.semibold)
                            .font(.title2)
                    }
                    .sheet(isPresented: $showSheet) {
                        addPlayerView(playerOne: $playerOne, playerTwo: $playerTwo, selectedPlayer: $selectedPlayer, showSheet: $showSheet)
                            .presentationDetents([.fraction(0.80)])
                    }
                }
            }
        }
    }
}




struct GameSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            GameSettingsView(playerOne: "", playerTwo: "")
        }
        
    }
}
