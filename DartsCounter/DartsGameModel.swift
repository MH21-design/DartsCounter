import Foundation

class DartsGameModel: ObservableObject {
    
    
    @Published var currentPlayerIndex = 0
    @Published var playersArray: [Player]
    
    var showAlert = false
    
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
    
    func switchToNextPlayer() {
        if playersArray.count >= 2 {
            currentPlayerIndex = (currentPlayerIndex + 1) % playersArray.count
        }
    }
    
    func finishThrow(pointsInput: Int32) {
        var points = getStartPoints()
        if pointsInput <= 180 {
            points -= pointsInput
            playersArray[currentPlayerIndex].startPoints = points
            switchToNextPlayer()
        }
    }
}
