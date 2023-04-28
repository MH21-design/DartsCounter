import Foundation

class PlayerModel : ObservableObject {
    @Published var id = UUID()
    @Published var name: String
    @Published var startPoints: Int
    @Published var numberOfThrows: Int
    @Published var numberOfDartThrows: Int
    @Published var history: [Int32]
    
    
    init(name: String) {
        self.id = UUID()
        self.name = name
        self.startPoints = 0
        self.numberOfThrows = 0
        self.numberOfDartThrows = 0
        self.history = []
    }
    
    func throwDarts(points: Int) {
        self.startPoints -= points
        numberOfThrows += 1
        numberOfDartThrows = numberOfThrows * 3
    }
    
    func undoThrow() {
        let lastThrowScore = self.history.last
        self.startPoints += Int(lastThrowScore!)
        self.numberOfThrows -= 1
        self.numberOfDartThrows = numberOfThrows * 3
        self.history.removeLast()
    }
    
    func resetScore() {
        self.startPoints = 501
        self.numberOfThrows = 0
        self.history.removeAll()
    }
}



