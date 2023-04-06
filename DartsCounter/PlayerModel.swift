//
//  PlayerModel.swift
//  DartsCounter
//
//  Created by Marius Hübbertz on 05.04.23.
//

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
