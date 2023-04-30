import Foundation

class PlayerModel : ObservableObject {
    @Published var id = UUID()
    @Published var name: String
    @Published var startPoints: Int32
    @Published var numberOfThrows: Int32
    @Published var numberOfDartThrows: Int32
    @Published var history: [Int32]
    @Published var lastThrowPoints: Int32
    
    
    init(name: String) {
        self.id = UUID()
        self.name = name
        self.startPoints = 501
        self.numberOfThrows = 0
        self.numberOfDartThrows = 0
        self.lastThrowPoints = 0
        self.history = []
    }
    
    func throwDarts(points: Int) {
        self.startPoints -= lastThrowPoints
        numberOfThrows += 1
        numberOfDartThrows = numberOfThrows * 3
    }
    
    func undoThrow() {
        let lastThrowScore = self.history.last
        self.startPoints += lastThrowScore!
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



