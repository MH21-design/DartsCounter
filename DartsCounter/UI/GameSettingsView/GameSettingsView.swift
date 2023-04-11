import SwiftUI

struct GameSettingsView: View {
    
    @State var showSheet: Bool = false
    @State var selectedPlayer: Player?
    @State var playersArray: [Player] = []
    
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
                            
                            if playersArray.indices.contains(0) {
                                Image(systemName: "x.square.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24)
                                    .onTapGesture {
                                        playersArray.remove(at: playersArray.indices[0])
                                    }
                                
                            }
                        }
                        Text(playersArray.indices.contains(0) ? playersArray[0].name ?? "" : "")
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
                            
                            if playersArray.indices.contains(1) {
                                Image(systemName: "x.square.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24)
                                    .onTapGesture {
                                        playersArray.remove(at: playersArray.indices[1])
                                    }
                            }
                        }
                        
                        Text(playersArray.indices.contains(1) ? playersArray[1].name ?? "" : "")
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
                        addPlayerView(playersArray: $playersArray, selectedPlayer: $selectedPlayer, showSheet: $showSheet)
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
            GameSettingsView()
        }
        
    }
}
