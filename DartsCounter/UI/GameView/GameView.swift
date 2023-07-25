import SwiftUI

struct GameView: View {
    
    @ObservedObject var gameModel: DartsGameModel
    @State var pointsInput: Int32 = 0
    
    var body: some View {
        
        ZStack {
            BackgroundView()
            
            VStack(spacing: 0) {
                TopSection(gameModel: gameModel)
                MidSectionView(gameModel: gameModel, pointsInput: $pointsInput)
                BottomSectionView(pointsInput: $pointsInput)
            }
        }
    }
}
