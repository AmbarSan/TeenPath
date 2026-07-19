import SwiftUI

struct ProfileView: View {

    let posts: [Post]

    private var userPosts: [Post] {
        posts.filter {
            $0.username == "@ambar"
        }
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    ProfileHeader()

                    ProfileStatistics(
                        publicationCount: userPosts.count
                    )

                    InterestSection()

                    ProjectSection()

                    MyPostsSection(
                        posts: userPosts
                    )
                }
                .padding()
            }
            .background(Color.teenBackground)
            .navigationTitle("My Profile")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {

                    } label: {
                        Image(systemName: "pencil")
                            .foregroundStyle(Color.teenOrange)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView(posts: SampleData.posts)
}
