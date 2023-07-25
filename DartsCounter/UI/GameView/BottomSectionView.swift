import SwiftUI

struct BottomSectionView: View {

    @Binding var pointsInput: Int32
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0)  {
                
                Button() {
                    pointsInput = (pointsInput * 10) + 1
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
                    pointsInput = (pointsInput * 10) + 2
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
                    pointsInput = (pointsInput * 10) + 3
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
                    pointsInput = (pointsInput * 10) + 4
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
                    pointsInput = (pointsInput * 10) + 5
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
                    pointsInput = (pointsInput * 10) + 6
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
                    pointsInput = (pointsInput * 10) + 7
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
                    pointsInput = (pointsInput * 10) + 8
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
                    pointsInput = (pointsInput * 10) + 9
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
                Rectangle()
                .opacity(0)
                .scaleEffect(0.6)
                .frame(width: UIScreen.screenWidth / 3, height: 88)

                
                
                Divider()
                    .frame(height: 88)
                
                Button() {
                    pointsInput = (pointsInput * 10)
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
                    pointsInput = 0
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

//struct BottomSectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomSectionView(pointsInput: 0)
//    }
//}
