import SwiftUI

struct GameView: View {
    
    @ObservedObject var gameModel: DartsGameModel
    
    var body: some View {
        
        ZStack {
            BackgroundView()
            
            VStack(spacing: 0) {
                TopSection(gameModel: gameModel)
                MidSectionView(gameModel: gameModel)
//                BottomSectionView()
            }
        }
    }
}
