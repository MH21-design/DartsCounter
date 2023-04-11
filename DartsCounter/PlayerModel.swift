import Foundation

class PlayerModel : ObservableObject {
    @Published var id = UUID()
    @Published var name: String
    @Published var currentPoints: Int
    @Published var numberOfThrows: Int
    @Published var numberOfDartThrows: Int
    @Published var isPlaying: Bool
    @Published var history: [Int]
    
    
    init(name: String) {
        self.id = UUID()
        self.name = name
        self.currentPoints = 0
        self.numberOfThrows = 0
        self.numberOfDartThrows = 0
        self.isPlaying = false
        self.history = []
    }
    
    func throwDarts(points: Int) {
        self.currentPoints -= points
        numberOfThrows += 1
        numberOfDartThrows = numberOfThrows * 3
    }
    
    func undoThrow() {
        let lastThrowScore = self.history.last
        self.currentPoints += lastThrowScore!
        self.numberOfThrows -= 1
        self.numberOfDartThrows = numberOfThrows * 3
        self.history.removeLast()
    }
    
    func resetScore() {
        self.currentPoints = 501
        self.numberOfThrows = 0
        self.history.removeAll()
    }
    
    func setPlayingStatus() {
        isPlaying.toggle()
    }
}



