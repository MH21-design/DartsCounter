
import SwiftUI

struct GameView: View {
    
    @State var name = "[NAME]"
    @State var startpoints = 501
    @State var pointsNow = 321
    @State var lastThrow = 180
    @State var dartsThrowen = 3
    @State var throwenPoints = 180
    
    
    
    var body: some View {
        
        // Hintergrund ------------------------------------------------------------------------
        
        ZStack {
            Color.secondary
                .opacity(0.2)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                // TOP Section -------------------------------------------------------------
                
                Group {
                    ZStack {
                        Color("myColor")
                            .frame(height: 90)
                            .ignoresSafeArea()
                            .padding(-64)
                    }
                    ZStack {
                        Rectangle()
                            .frame(height: 56)
                            .opacity(0.1)
                            .border(.black, width: 2)
                           // .padding(.top, -12)
                        Text(name)
                            .font(.title)
                            .fontWeight(.semibold)
                            //.padding(.bottom, 12)
                    }
                    Text("\(pointsNow)")
                        .resizableFont()
                        .scaledToFit()
                        .frame(height: 100)
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(24)
                }
                Spacer()
                
                // MID SECTION ---------------------------------------------------------------
                
                Group {
                    Divider()
                    HStack {
                        Text("Letzte aufnahme:")
                        Spacer()
                        Text("\(lastThrow)")
                    }
                    .padding(.horizontal)
                    .font(.title3)
                    .fontWeight(.light)
                    Divider()
                    HStack {
                        Text("Geworfene Darts:")
                        Spacer()
                        Text("\(dartsThrowen)")
                    }
                    .padding(.horizontal)
                    .font(.title3)
                    .fontWeight(.light)
                    Divider()
                    HStack {
                        Text("3-Dart-Avg:")
                        Spacer()
                        Text("")
                    }
                    .padding(.horizontal)
                    .font(.title3)
                    .fontWeight(.light)
                }
                
                Group {
                    ZStack {
                        Rectangle()
                            .frame(height: 80)
                            .opacity(0)
                            .border(.black, width: 1)
                        
                        HStack(spacing: 4) {
                            ZStack() {
                                Rectangle()
                                    .frame(width: 88, height: 64)
                                    .foregroundColor(.red)
                                    .border(.secondary, width: 1)
                                 // .padding(.leading, 8)
                                Image(systemName: "return")
                                    .resizable()
                                    .scaledToFit()
                                    .bold()
                                    .frame(width: 94, height: 40)
                            }
                           
                            
                            
                            ZStack {
                                Rectangle()
                                    .frame(width: 184, height: 64, alignment: .center)
                                    .opacity(0)
                                    .border(.black, width: 2)
                            }
                            
                            ZStack {
                                Rectangle()
                                    .frame(width: 88, height: 64)
                                    .foregroundColor(Color("myColor"))
                                    .border(.secondary, width: 1)
                                 // .padding(.trailing, 8)
                                Image(systemName: "arrow.right")
                                    .resizable()
                                    .scaledToFit()
                                    .bold()
                                    .frame(width: 94, height: 40)
                            }
                           
                            
                        }
                    }
                }
                
                // BOTTOM SECTION ..............................................................................
                
                
                VStack(spacing: 0) {
                    HStack(spacing: 0)  {
                        Button() {
                            
                        } label: {
                            Text("1")
                                .resizableFont()
                                .scaleEffect(0.6)
                                .frame(width: UIScreen.screenWidth / 3, height: 88)
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                       
                        
                        Divider()
                            .frame(height: 88)
                        
                        Button() {
                            
                        } label: {
                            Text("2")
                                .resizableFont()
                                .scaleEffect(0.6)
                                .frame(width: UIScreen.screenWidth / 3, height: 88)
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                        
                        
                        Divider()
                            .frame(height: 88)
                        
                        Button() {
                            
                        } label: {
                            Text("3")
                                .resizableFont()
                                .scaleEffect(0.6)
                                .frame(width: UIScreen.screenWidth / 3, height: 88)
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                        
                        
                    }
                    
                    Divider()
                    
                    HStack(spacing: 0)  {
                        Button() {
                            
                        } label: {
                            Text("4")
                                .resizableFont()
                                .scaleEffect(0.6)
                                .frame(width: UIScreen.screenWidth / 3, height: 88)
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                        
                        
                        Divider()
                            .frame(height: 88)
                        
                        Button() {
                            
                        } label: {
                            Text("5")
                                .resizableFont()
                                .scaleEffect(0.6)
                                .frame(width: UIScreen.screenWidth / 3, height: 88)
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                        
                        
                        Divider()
                            .frame(height: 88)
                        
                        Button() {
                            
                        } label: {
                            Text("6")
                                .resizableFont()
                                .scaleEffect(0.6)
                                .frame(width: UIScreen.screenWidth / 3, height: 88)
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                        
                        
                    }
                    
                    Divider()
                    
                    HStack(spacing: 0)  {
                        Button() {
                            
                        } label: {
                            Text("7")
                                .resizableFont()
                                .scaleEffect(0.6)
                                .frame(width: UIScreen.screenWidth / 3, height: 88)
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                        
                        
                        Divider()
                            .frame(height: 88)
                        
                        Button() {
                            
                        } label: {
                            Text("8")
                                .resizableFont()
                                .scaleEffect(0.6)
                                .frame(width: UIScreen.screenWidth / 3, height: 88)
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                        
                        
                        Divider()
                            .frame(height: 88)
                        
                        Button() {
                            
                        } label: {
                            Text("9")
                                .resizableFont()
                                .scaleEffect(0.6)
                                .frame(width: UIScreen.screenWidth / 3, height: 88)
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                        
                        
                    }
                    
                    Divider()
                    
                    HStack(spacing: 0)  {
                        Button("") {
                            
                        }
                        .resizableFont()
                        .scaleEffect(0.6)
                        .frame(width: UIScreen.screenWidth / 3, height: 88)
                        .font(.title)
                        .fontWeight(.semibold)
                        
                        
                        Divider()
                            .frame(height: 88)
                        
                        Button() {
                            
                        } label: {
                            Text("0")
                                .resizableFont()
                                .scaleEffect(0.6)
                                .frame(width: UIScreen.screenWidth / 3, height: 88)
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                        
                        
                        Divider()
                            .frame(height: 88)
                        
                        Button() {
                            
                        } label: {
                            Image(systemName: "delete.left")
                                .resizable()
                                .scaleEffect(0.6)
                                .frame(width: UIScreen.screenWidth / 3, height: 88)
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                        
                    }
                    
                    Divider()
                }
            }
        }
    }
}


struct GameView_Previews: PreviewProvider {
    static var previews: some View {
            GameView()
    }
}
