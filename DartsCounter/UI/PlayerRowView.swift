
import SwiftUI

struct PlayerRowView: View {
    
    @FetchRequest(sortDescriptors: [SortDescriptor(\.name)]) var players:
    FetchedResults<Player>
    
    
    
    var body: some View {
        List {
            ForEach(players) { player in
                Text(player.name ?? "ERROR")
            }
            .onDelete(perform: deleteItems)
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        
    }
}
    
    
    struct PlayerRowView_Previews: PreviewProvider {
        static var previews: some View {
            PlayerRowView()
        }
    }
