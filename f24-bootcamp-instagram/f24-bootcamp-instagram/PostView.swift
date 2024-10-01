import SwiftUI

struct PostView: View {
    @State var isLiked = false
    @State var isSaved = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image("yellow")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .clipShape(Circle())
                Text("test user")
                    .font(.subheadline)
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal, 8)
            
            Image("bamboo")
                .resizable()
                .scaledToFit()
            
            HStack(spacing: 16) {
                Button(action: {
                    if(isLiked == true){
                        isLiked = false;
                    }
                    else{
                        isLiked = true
                    }
                }, label: {
                    if(isLiked == true){
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                    }
                    else{
                        Image(systemName: "heart").foregroundColor(.black)
                    }
                })
                
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Button(action: {
                    if(isSaved == true){
                        isSaved = false;
                    }
                    else{
                        isSaved = true
                    }
                }, label: {
                    if(isSaved == true){
                        Image(systemName: "bookmark.fill")
                            .foregroundColor(.black)
                    }
                    else{
                        Image(systemName: "bookmark").foregroundColor(.black)
                    }
                })
            }
            .font(.title2)
            if(isLiked == true){
                Text("100,001 likes")
                    .font(.footnote)
                    .fontWeight(.semibold)
            }
            else{
                Text("100,000 likes")
                    .font(.footnote)
                    .fontWeight(.semibold)
            }
            Text("My first project in Swift!")
                .font(.footnote)
            
            Text("September 19th")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    PostView()
}
