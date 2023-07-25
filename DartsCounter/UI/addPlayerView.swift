import SwiftUI

struct addPlayerView: View {
    
    @FetchRequest(sortDescriptors: [SortDescriptor(\.name)]) var players: FetchedResults<Player>
    @Environment(\.managedObjectContext) var moc
    
    @ObservedObject var playerModel: PlayerModel
    @ObservedObject var gameModel: DartsGameModel

    @State private var showSheet = true
    @State private var playerName = ""
    @State private var showAlert = false
    
    
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
                TextField("Benutzer", text: $playerName)
                    .font(Font.system(size: 24))
                    .padding(16)
                    .background(Color.white)
                    .foregroundColor(Color.black)
                    .frame(width: UIScreen.screenWidth - 56)
                    .cornerRadius(5)
                
                List {
                    ForEach(players) { player in
                        Button(action:  {
                            var playerStruct = PlayerStruct(
                                id: player.id ?? UUID(),
                                name: player.name ?? "",
                                startPoints: player.startPoints,
                                remainingPoints: player.remainingPoints,
                                numberOfDartThrows: player.numberOfDartThrows,
                                lastThrowPoints: player.lastThrowPoints,
                                avg: player.avg,
                                isPlaying: false
                                )
                            if gameModel.playersArray.isEmpty {
                                playerStruct.isPlaying = true
                            }
                            gameModel.playersArray.append(playerStruct)
                            showSheet.toggle()
                        }) {
                            Text(player.name ?? "")
                        }
                    }
                    .onDelete(perform: deleteItems)
                }
                .frame(width: UIScreen.screenWidth - 56)
                
                Button() {
                    
                    if playerName == ""{
                        showAlert = true
                    }else {
                        var newPlayer = PlayerStruct(name: playerName, startPoints: 501, remainingPoints: 0, numberOfDartThrows: 0, lastThrowPoints: 0, avg: 0, isPlaying: false)
                            gameModel.playersArray.append(newPlayer)
                            playerName = ""
                        try? moc.save()
                    }
                    
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
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Hinweis"),
                    message: Text("Gib einen Spieler Namen ein!"),
                    dismissButton: .default(Text("OK")))
            }
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
        playerModel.newPlayer(name: name, startPoints: 501)
    }
}

