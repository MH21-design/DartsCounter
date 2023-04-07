import Foundation

class PlayerModel : ObservableObject {
    var Players = [
        PlayerConstruct(id: UUID() ,name: "Marius")
    ]
}


struct PlayerConstruct: Identifiable {
    var id = UUID()
    var name = ""
}
