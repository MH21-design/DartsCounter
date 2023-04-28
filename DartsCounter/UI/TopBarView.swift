import SwiftUI

struct TopBarView: View {
    var body: some View {
        Color("myColor")
            .ignoresSafeArea()
            .frame(height: 95)
            .ignoresSafeArea()
    }
}

struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarView()
    }
}
