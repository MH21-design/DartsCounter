import SwiftUI
import Foundation

struct TopSection: View {

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
                Text("")
                    .font(.title)
                    .fontWeight(.semibold)
                //.padding(.bottom, 12)
            }
            Text("Points")
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

