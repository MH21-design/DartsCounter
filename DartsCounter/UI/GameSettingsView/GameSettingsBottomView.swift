import SwiftUI

struct GameSettingsBottomView: View {
    
    var body: some View {
        ZStack {
            Color.secondary
                .ignoresSafeArea()
            NavigationLink {
                GameView()
                    .navigationTitle("GAME VIEW")
                    .padding(0)
            } label: {
                Text("SPIEL ANFANGEN")
                    .resizableFont()
                    .frame(width: 364, height: 35, alignment: .center)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("myColor"))
                    .padding(.top, 24)
            }
        }
        .frame(height: 60)
        .padding(.top, 40)
    }
}

//struct GameSettingsBottomView_Previews: PreviewProvider {
//    static var previews: some View {
//        GameSettingsBottomView()
//    }
//}
