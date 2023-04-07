import SwiftUI

struct TopSection: View {
    
    @State var name = "[NAME]"
    @State var startpoints = 501
    @State var pointsNow = 321
    @State var lastThrow = 180
    @State var dartsThrowen = 3
    @State var throwenPoints = 180
    
    var body: some View {
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
    }
}

struct TopSection_Previews: PreviewProvider {
    static var previews: some View {
        TopSection()
    }
}
