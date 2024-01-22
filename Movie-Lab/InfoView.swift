import SwiftUI

struct InfoView: View {
    var titleOn: Bool

    var body: some View {
        NavigationView {
            List(Post.data) { post in
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post: post)
                }
            }
            .listStyle(.plain)
            .navigationBarTitle(titleOn ? "Movies" : "")
        }
    }
}


#Preview {
    InfoView(titleOn: true)
}
