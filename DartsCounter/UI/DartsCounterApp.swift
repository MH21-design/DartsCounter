import SwiftUI

@main
struct DartsCounterApp: App {
    
    @State var dataController = PlayersDataController(name: "Players")
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, dataController.nsContainer.viewContext)
        }
    }
}
