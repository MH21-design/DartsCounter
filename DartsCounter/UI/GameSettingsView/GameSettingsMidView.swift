import SwiftUI

struct GameSettingsMidView: View {
    
    @State var selectedStartPoints: Int = 501
    
    var body: some View {
    
        Text("Spieleinstellungen")
            .font(.title)
            .padding(.top, 136)
        
        HStack {
            
            Button("301") {
                selectedStartPoints = 301
            }
            .font(.title)
            .padding(.horizontal)
            .padding(.vertical, 8)
            .border(.black)
            .background(selectedStartPoints == 301 ? Color("myColor") : Color.clear)
            .padding()
            
            Button("501") {
                selectedStartPoints = 501
            }
            .font(.title)
            .padding(.horizontal)
            .padding(.vertical, 8)
            .border(.black)
            .background(selectedStartPoints == 501 ? Color("myColor") : Color.clear)
            
            Button("701") {
                selectedStartPoints = 701
            }
            .font(.title)
            .padding(.horizontal)
            .padding(.vertical, 8)
            .border(.black)
            .background(selectedStartPoints == 701 ? Color("myColor") : Color.clear)
            .padding()
        }
        .padding(.top)
        
        HStack(spacing: 56) {
            Text("FIRST")
                .font(.title2)
                .fontWeight(.semibold)
            Text("3")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.horizontal)
                .padding(.vertical, 8)
                .border(.black)
                .background(Color("myColor"))
            
            Text("LEGS")
                .font(.title2)
                .fontWeight(.semibold)
            //.padding(.leading, 32)
        }
        //.padding(.top,8)
        
    }
}

struct GameSettingsMidView_Previews: PreviewProvider {
    static var previews: some View {
        GameSettingsMidView(selectedStartPoints: 501)
    }
}
