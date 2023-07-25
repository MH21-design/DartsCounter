import Foundation

class DartsGameModel: ObservableObject {
    
    
    @Published var currentPlayerIndex = 0
    @Published var playersArray: [PlayerStruct]
    @Published var showAlert = false
    @Published var alertTitle = ""
    @Published var alertMessage = ""
    
    init(playersArray: [PlayerStruct]) {
        self.playersArray = playersArray
    }
    
    func getStartPoints() -> Int32 {
        playersArray[currentPlayerIndex].startPoints
    }
    
    func getRemainingPoints() -> Int32 {
        playersArray[currentPlayerIndex].remainingPoints
    }
    
    func getPlayerName() -> String {
        playersArray[currentPlayerIndex].name
    }
    
    func getLastThrow() -> Int32 {
        playersArray[currentPlayerIndex].lastThrowPoints
    }
    
    func getNumberOfDartThrows() -> Int32 {
        playersArray[currentPlayerIndex].numberOfDartThrows
    }
    
    func getAvg() -> Int32 {
        playersArray[currentPlayerIndex].avg
    }
    
    func switchToNextPlayer() {
        if playersArray.count >= 2 {
            playersArray[currentPlayerIndex].isPlaying = false
            currentPlayerIndex = (currentPlayerIndex + 1) % playersArray.count
            playersArray[currentPlayerIndex].isPlaying = true
        }
    }
    
    func finishThrow(pointsInput: Int32) {
        let points = getRemainingPoints()
        
        if pointsInput <= 180 {
            
            if pointsInput > points {
                showAlert = true
                alertTitle = "Hinweis"
                alertMessage = "ÜBERWORFEN!"
            }else if pointsInput == points {
                playersArray[currentPlayerIndex].remainingPoints = (points - pointsInput)
                showAlert = true
                alertTitle = "HURRA"
                alertMessage = "DU HAST GEWONNEN!"
                startNewGame()
            }else {
                playersArray[currentPlayerIndex].remainingPoints = (points - pointsInput)
                playersArray[currentPlayerIndex].lastThrowPoints = pointsInput
                playersArray[currentPlayerIndex].numberOfDartThrows += 3
                switchToNextPlayer()
            }
            
        }else {
            showAlert = true
            alertTitle = "Hinweis"
            alertMessage = "UNGÜLTIGE EINGABE!"
        }
    }
    
    func startNewGame() {
        for index in 0..<playersArray.count {
            playersArray[index].remainingPoints = playersArray[index].startPoints
            playersArray[index].numberOfDartThrows = 0
            playersArray[index].lastThrowPoints = 0
        }
    }
}
