import SwiftUI

struct GameView: View {
    
    @State var name = "[NAME]"
    @State var startpoints = 501
    @State var pointsNow = 321
    @State var lastThrow = 180
    @State var dartsThrowen = 3
    @State var throwenPoints = 180
    
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


struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
