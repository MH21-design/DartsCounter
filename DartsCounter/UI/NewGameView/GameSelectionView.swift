import SwiftUI

struct GameSelectionView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: 364.0, height: 80.0)
                    .cornerRadius(5)
                    .foregroundColor(.secondary)
                    .border(Color.black, width: 2.5)
                NavigationLink {
                    GameSettingsView()
                        .navigationTitle("GAME SETTINGS")
                } label: {
                    Text("Spiel X01")
                        .padding(.leading, 16.0)
                        .resizableFont()
                        .frame(width: 364, height: 35, alignment: .leading)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("myColor"))
                }
            }
            ZStack {
                Rectangle()
                    .frame(width: 364.0, height: 80.0)
                    .cornerRadius(5)
                    .foregroundColor(.secondary)
                    .border(Color.black, width: 2.5)
                Text("Cricket")
                    .padding(.leading, 16.0)
                    .resizableFont()
                    .frame(width: 364, height: 35, alignment: .leading)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("myColor"))
            }
            ZStack {
                Rectangle()
                    .frame(width: 364.0, height: 80.0)
                    .cornerRadius(5)
                    .foregroundColor(.secondary)
                    .border(Color.black, width: 2.5)
                Text("Singlefelder Training")
                    .padding(.leading, 16.0)
                    .resizableFont()
                    .frame(width: 364, height: 35, alignment: .leading)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("myColor"))
                
            }
            ZStack {
                Rectangle()
                    .frame(width: 364.0, height: 80.0)
                    .cornerRadius(5)
                    .foregroundColor(.secondary)
                    .border(Color.black, width: 2.5)
                Text("Doppelfelder Training")
                    .padding(.leading, 16.0)
                    .resizableFont()
                    .frame(width: 364, height: 35, alignment: .leading)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("myColor"))
            }
            ZStack {
                Rectangle()
                    .frame(width: 364.0, height: 80.0)
                    .cornerRadius(5)
                    .foregroundColor(.secondary)
                    .border(Color.black, width: 2.5)
                Text("Bob's 27")
                    .padding(.leading, 16.0)
                    .resizableFont()
                    .frame(width: 364, height: 35, alignment: .leading)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("myColor"))
            }
            ZStack {
                Rectangle()
                    .frame(width: 364.0, height: 80.0)
                    .cornerRadius(5)
                    .foregroundColor(.secondary)
                    .border(Color.black, width: 2.5)
                Text("Score Traing")
                    .padding(.leading, 16.0)
                    .resizableFont()
                    .frame(width: 364, height: 35, alignment: .leading)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("myColor"))
            }
        }
    }
}

struct GameSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        GameSelectionView()
    }
}
