import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                
                VStack {
                    ZStack {
                        Color.white
                            .cornerRadius(180)
                        
                        Image("logo-removebg")
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(0.9)
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                    }
                    .frame(width: 250.0, height: 100.0)
                    .padding(.bottom, 40)
                    
                    HStack(spacing: 64) {
                        Image(systemName: "person.circle")
                            .scaledToFit()
                            .font(.system(size: 110))
                        
                        Text("[Name]")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .padding(.trailing, 8.0)
                    }
                    .padding(.top, 16)
                    
                    Spacer()
                    
                    Group {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 352, height: 104)
                                .foregroundColor(Color("myColor"))
                            
                            NavigationLink {
                                NewGameView()
                                    .navigationTitle("NEUES SPIEL")
                            } label: {
                                HStack(spacing: 56) {
                                    Text("Neues Spiel")
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                        .frame(width: 200.0)
                                        .foregroundColor(.accentColor)
                                    
                                    
                                    Image("darts")
                                        .resizable()
                                        .frame(width: 56.0, height: 56.0)
                                        .padding()
                                        .foregroundColor(.accentColor)
                                }
                                .frame(width: 352)
                            }
                        }
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                            
                                .frame(width: 352, height: 104)
                                .foregroundColor(.white)
                                .opacity(0.8)
                            
                            NavigationLink {
                                StatistikView()
                                    .navigationTitle("Statistik")
                            } label: {
                                HStack {
                                    Text("Zeige dir Statistik an")
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                        .frame(width: 250.0)
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image("statistik")
                                        .resizable()
                                        .frame(width: 56.0, height: 56.0)
                                        .padding(24)
                                }
                                .frame(width: 352)
                            }
                        }
                    }
                    .padding()
                    
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





struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
