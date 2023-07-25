import Foundation

//class PlayerModel : ObservableObject {
//    @Published var id = UUID()
//    @Published var name: String
//    @Published var startPoints: Int32
//    @Published var numberOfThrows: Int32
//    @Published var numberOfDartThrows: Int32
//    @Published var history: [Int32]
//    @Published var lastThrowPoints: Int32
//
//
//    init(name: String, startPoints: Int32, numberOfThrows: Int32, numberOfDartThrows: Int32, lastThrowPoints: Int32, history: [Int32]) {
//        self.id = UUID()
//        self.name = name
//        self.startPoints = startPoints
//        self.numberOfThrows = numberOfThrows
//        self.numberOfDartThrows = numberOfDartThrows
//        self.lastThrowPoints = lastThrowPoints
//        self.history = history
//    }
//
//    func throwDarts(points: Int) {
//        self.startPoints -= lastThrowPoints
//        numberOfThrows += 1
//        numberOfDartThrows = numberOfThrows * 3
//    }
//
//    func undoThrow() {
//        let lastThrowScore = self.history.last
//        self.startPoints += lastThrowScore!
//        self.numberOfThrows -= 1
//        self.numberOfDartThrows = numberOfThrows * 3
//        self.history.removeLast()
//    }
//
//    func resetScore() {
//        self.startPoints = 501
//        self.numberOfThrows = 0
//        self.history.removeAll()
//    }
//}

struct PlayerStruct {
    var id = UUID()
    var name: String
    var startPoints: Int32
    var numberOfThrows: Int32
    var numberOfDartThrows: Int32
    var lastThrowPoints: Int32
    var history: [Int32]
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
        let newPlayer = PlayerStruct(name: name, startPoints: startPoints, numberOfThrows: 0, numberOfDartThrows: 0, lastThrowPoints: 0, history: [])
        players.append(newPlayer)
    }
}
