import SwiftUI

struct GameSettingsBottomView: View {
    
    @ObservedObject var gameModel: DartsGameModel
    @State public var navigateToGameView = false
    var body: some View {
        ZStack {
            Color.secondary
                .ignoresSafeArea()
            NavigationStack {
                NavigationLink(
                    destination: GameView(gameModel: gameModel),
                    isActive: $navigateToGameView,
                    label: {
                        Text("SPIEL ANFANGEN")
                            .resizableFont()
                            .frame(width: 364, height: 35, alignment: .center)
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("myColor"))
                            .padding(.top, 24)
                    }
                )
                .simultaneousGesture(TapGesture().onEnded {
                    gameModel.startNewGame()
                    navigateToGameView = true
            })
            }
        }
        .frame(height: 60)
        .padding(.top, 40)
    }
}
