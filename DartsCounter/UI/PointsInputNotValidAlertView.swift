

import SwiftUI

struct PointsInputNotValidAlertView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 16)
            .foregroundColor(Color.gray)
            .frame(width: 250, height: 250)
            .overlay(
                VStack {
                    Image(systemName: "x.circle")
                        .resizable()
                        .scaleEffect(0.5)
                        .foregroundColor(.red)
                        .frame(width: 200, height: 200)
                    Text("Eingabe ungültig!")
                        .font(.title)
                        .padding(.bottom, 40)
                }
            )
    }
}

struct PointsInputNotValidAlertView_Previews: PreviewProvider {
    static var previews: some View {
        PointsInputNotValidAlertView()
    }
}
