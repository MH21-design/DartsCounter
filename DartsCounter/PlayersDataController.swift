
import Foundation
import CoreData

class PlayersDataController: ObservableObject {
    var nsContainer: NSPersistentContainer
    
    init(name: String) {
        nsContainer = NSPersistentContainer(name: name)
        nsContainer.loadPersistentStores() { _, error in
            if let error = error {
                print("CoreData Error: \(error.localizedDescription)")
            }
        }
    }
}
