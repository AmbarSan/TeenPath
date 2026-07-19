import SwiftUI

struct ContentView: View {

    @State private var currentTab = 0
    @State private var posts = SampleData.posts
    @State private var opportunities = SampleData.opportunities

    var body: some View {
        TabView(selection: $currentTab) {

            HomeView(posts: $posts)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)

            OpportunitiesView(opportunities: $opportunities)
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
                .tag(1)

            CreatePostView(
                posts: $posts,
                currentTab: $currentTab
            )
            .tabItem {
                Label("Post", systemImage: "plus.circle.fill")
            }
            .tag(2)

            SavedView(opportunities: $opportunities)
                .tabItem {
                    Label("Saved", systemImage: "bookmark.fill")
                }
                .tag(3)

            ProfileView(posts: posts)
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
                .tag(4)
        }
        .tint(Color.teenOrange)
    }
}

#Preview {
    ContentView()
}
