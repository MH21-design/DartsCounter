import Foundation

class DartsGameModel: ObservableObject {
    
    var currentPlayerIndex = 0
    
    @Published var playersArray: [Player]
    
    init(playersArray: [Player]) {
        self.playersArray = playersArray
    }
    
    func getStartPoints() -> Int32 {
        playersArray[currentPlayerIndex].startPoints
    }
    
    func getPlayerName() -> String {
        playersArray[currentPlayerIndex].name!
    }
    
    func getLastThrow() -> Int32 {
        playersArray[currentPlayerIndex].lastThrowPoints
    }
    
    func getNumberOfDartThrows() -> Int32 {
        playersArray[currentPlayerIndex].numberOfDartThrows
    }
}
