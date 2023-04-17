import SwiftUI

struct NewGameView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                
                VStack() {
                    TopBarView()

                    GameSelectionView()
                    
                    Spacer()
                    
                    BottomBarView()
                }
            }
        }
    }
}


struct NewGameView_Previews: PreviewProvider {
    static var previews: some View {
        NewGameView()
    }
}
