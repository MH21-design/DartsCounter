import SwiftUI

struct addPlayerView: View {
    
    @Environment(\.managedObjectContext) var moc
    @State var playerName: String = ""
    
    var body: some View {
        ZStack {
            Color(.black)
                .frame(width: UIScreen.screenWidth - 40, height: 550)
                .ignoresSafeArea()
                .opacity(0.2)
                .cornerRadius(20)
            VStack {
                ZStack {
                    Text("SPIELER HINZUFÜGEN")
                    Rectangle()
                        .frame(height: 64)
                        .foregroundColor(.secondary)
                        .opacity(0.3)
                        .cornerRadius(5)
                }
                TextField("Gastbenutzer", text: $playerName)
                    .font(Font.system(size: 24))
                    .padding(16)
                    .background(Color.white)
                    .foregroundColor(Color.black)
                    .frame(width: UIScreen.screenWidth - 56)
                    .cornerRadius(5)
                
                PlayerRowView()
                    .frame(width: UIScreen.screenWidth - 56)
                
                Button() {
                    let newPlayer = Player(context: moc)
                    newPlayer.id = UUID()
                    newPlayer.name = playerName
                    
                    try? moc.save()
                    
                    playerName = ""
                } label: {
                    Text("Hinzufügen")
                    
                }
                .frame(width: UIScreen.screenWidth - 40, height: 80)
                .background(Color("myColor"))
                .foregroundColor(.black)
                .font(.title)
            }
            .frame(width: UIScreen.screenWidth - 40,height: 550)
            .cornerRadius(20)
        }
        
    }
}


struct addPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        addPlayerView()
    }
}
