//import Foundation
//
//class DartsGameModel: ObservableObject {
//    var playersArray: [Player]
//    var currentPlayerIndex = 0
//    var currentPlayer: Player
//
//    @Published var name: String = ""
//    @Published var startpoints = 501
//    @Published var lastThrow = 180
//    @Published var numberOfDartThrows: Int = 0
//    @Published var numberOfThrows: Int = 0
//    @Published var thrownPoints = 180
//
//    init(playersArray: [Player]) {
//        self.playersArray = playersArray
//        self.currentPlayer = playersArray[currentPlayerIndex]
//    }
//
//    func getCurrentPlayerDetails() {
//        name = currentPlayer.name!
//        startpoints = Int(currentPlayer.currentPoints)
//        numberOfThrows = Int(currentPlayer.numberOfThrows)
//        numberOfDartThrows = Int(currentPlayer.numberOfDartThrows)
//
//    }
//
//    func updateCurrentPlayerData() {
//        guard currentPlayerIndex < playersArray.count else {
//            return
//        }
//
//        let currentPlayer = playersArray[currentPlayerIndex]
//        name = currentPlayer.name ?? "Name"
//        numberOfDartThrows = Int(currentPlayer.numberOfDartThrows)
//    }
//}



import Foundation

class DartsGameModel: ObservableObject {
    var playersArray: [Player]
    var numberOfPlayers = 0
    var startPoints = 501
    
    
    init(playersArray: [Player], numberOfPlayers: Int, startPoints: Int) {
        self.playersArray = playersArray
        self.numberOfPlayers = playersArray.count
        self.startPoints = startPoints
    }
}






























