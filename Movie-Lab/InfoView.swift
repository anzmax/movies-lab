import SwiftUI

struct InfoView: View {
    var body: some View {

        NavigationView {
            
            List(Post.data) { post in
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post: post)
                }
            }
            .navigationTitle("Movies")
            .listStyle(.plain)
        }
    }
}

#Preview {
    InfoView()
}
