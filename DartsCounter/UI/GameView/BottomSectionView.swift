import SwiftUI

struct BottomSectionView: View {
    
    var body: some View {
        
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

struct BottomSectionView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSectionView()
    }
}
