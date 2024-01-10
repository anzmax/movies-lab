import SwiftUI

struct InfoDetails: View {
    var post: Post
    var body: some View {
        ScrollView {
            post.image
                .resizable()
                .scaledToFit()
                .padding(.top, 15)
                .shadow(radius: 25)
            
            VStack(alignment: .leading) {
                Text(post.description)
                    .font(.subheadline).fontWeight(.medium)
                    .foregroundStyle(.black)
                Divider()
                
            }
            .padding()
        }
        .navigationTitle(post.title)
        .background(Color(.white))
    }
}

#Preview {
    InfoDetails(post: Post.data[0])
}
