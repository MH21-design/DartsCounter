import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Color.secondary
            .opacity(0.2)
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
