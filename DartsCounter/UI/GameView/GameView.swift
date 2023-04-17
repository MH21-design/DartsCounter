import SwiftUI

struct GameView: View {
    
    var body: some View {
        
        ZStack {
            BackgroundView()
            
            VStack(spacing: 0) {
                TopSection()
                MidSectionView()
                BottomSectionView()
            }
        }
    }
}
