import SwiftUI

struct InfoRow: View {
    var post: Post
    var body: some View {
        HStack {
            post.image
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 50, height: 50)
                .padding(.leading, 12)
            
            Text(post.title)
            Spacer()
        }
    }
}

#Preview {
    InfoRow(post: Post.data[0])
}
