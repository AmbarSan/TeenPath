import SwiftUI

struct HomeView: View {

    @Binding var posts: [Post]

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {

                    WelcomeCard()

                    ForEach($posts) { $post in
                        PostView(post: $post)
                    }
                }
                .padding()
            }
            .background(Color.teenBackground)
            .navigationTitle("TeenPath")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {

                    } label: {
                        Image(systemName: "bell.fill")
                            .foregroundStyle(Color.teenOrange)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView(posts: .constant(SampleData.posts))
}
