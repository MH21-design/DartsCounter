import SwiftUI

struct MidSectionView: View {
    
    @State var name = "[NAME]"
    @State var startpoints = 501
    @State var pointsNow = 321
    @State var lastThrow = 180
    @State var dartsThrowen = 3
    @State var throwenPoints = 180
    
    var body: some View {
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
    }
}

struct MidSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MidSectionView()
    }
}
