import SwiftUI

struct BottomBarView: View {
    var body: some View {
        ZStack {
            Color.secondary
                .ignoresSafeArea()
            
            Text("Darts Counter by Marius")
                .font(.title2)
                .padding(.top, 24)
        }
        .frame(height: 60)
        .padding(.top, 40)
    }
}

struct BottomBarView_Previews: PreviewProvider {
    static var previews: some View {
        BottomBarView()
    }
}
