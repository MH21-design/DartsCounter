
import SwiftUI

struct NeuesSpielView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.secondary
                    .opacity(0.2)
                    .ignoresSafeArea()
                
                VStack() {
                    ZStack {
                        Color("myColor")
                            .ignoresSafeArea()
                    }
                    .frame(height: 90)
                    .ignoresSafeArea()
                    
                    // SPIELE AUSWAHL ........................................
                    
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
                    
                
                    //BOTTOM....................................................................
                    
                    ZStack {
                        Color.secondary
                            .ignoresSafeArea()
                        
                        Text("Darts Counter by Marius")
                            .font(.title2)
                            .padding(.top, 24)
                    }
                    .frame(height: 60)
                    .padding(.top, 40)
                }
            }
        }
    }
}

struct NeuesSpielView_Previews: PreviewProvider {
    static var previews: some View {
        NeuesSpielView()
    }
}
