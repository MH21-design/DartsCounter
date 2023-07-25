import Foundation

struct PlayerStruct {
    var id = UUID()
    var name: String
    var startPoints: Int32
    var remainingPoints: Int32
    var numberOfDartThrows: Int32
    var lastThrowPoints: Int32
    var avg: Int32
    var isPlaying: Bool
}

class PlayerModel: ObservableObject {
    @Published var players: [PlayerStruct] = []
    
    func addPlayer(_ player: PlayerStruct){
        players.append(player)
    }
    
    func getPlayer(at index: Int) -> PlayerStruct? {
        guard index >= 0 && index < players.count else { return nil }
        return players[index]
    }
    
    // Player hinzufügen
    func newPlayer(name: String, startPoints: Int32) {
        var newPlayer = PlayerStruct(name: name, startPoints: startPoints, remainingPoints: startPoints, numberOfDartThrows: 0, lastThrowPoints: 0, avg: 0, isPlaying: false)
        
        players.append(newPlayer)
    }
}
