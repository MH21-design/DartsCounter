import SwiftUI

struct addPlayerView: View {
    
    @FetchRequest(sortDescriptors: [SortDescriptor(\.name)]) var players: FetchedResults<Player>
    @Environment(\.managedObjectContext) var moc
    
    @Binding var playersArray: [Player]
    @Binding var playerName: String
    @Binding var startPoints: Int32
    @Binding var numberOfThrows: Int32
    @Binding var numberOfDartThrows: Int32
    @Binding var history: [Int32]
    
    @State var showSheet: Bool
    @State var currentPlayerIndex: Int
    
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
                
                List {
                    ForEach(players) { player in
                        Button(action:  {
                            playersArray.append(player)
                            showSheet.toggle()
                        }) {
                            Text(player.name ?? "")
                        }
                    }
                    .onDelete(perform: deleteItems)
                }
                .frame(width: UIScreen.screenWidth - 56)
                
                Button() {
                    createPlayer(name: playerName)
                    
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
    
    func deleteItems(at offsets: IndexSet) {
        for offset in offsets {
            let player = players[offset]
            moc.delete(player)
        }
        try? moc.save()
    }
    
    func createPlayer(name: String) {
        let newPlayer = Player(context: moc)
        
        let playerModel = PlayerModel(name: playerName)
        newPlayer.id = playerModel.id
        newPlayer.name = playerModel.name
        newPlayer.startPoints = Int32(playerModel.startPoints)
        newPlayer.numberOfThrows = Int32(playerModel.numberOfThrows)
        newPlayer.numberOfDartThrows = Int32(playerModel.numberOfDartThrows)
        newPlayer.hiostory = playerModel.history as NSObject
    }
}



//struct addPlayerView_Previews: PreviewProvider {
//    static var previews: some View {
//        addPlayerView(playersArray: [], playerName: "Name", startPoints: $0, numberOfThrows: <#Binding<Int32>#>, numberOfDartThrows: <#Binding<Int32>#>, history: <#Binding<[Int32]>#>, showSheet: <#Bool#>, currentPlayerIndex: <#Int#>)
//
//    }
//}

