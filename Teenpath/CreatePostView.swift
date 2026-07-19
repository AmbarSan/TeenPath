import SwiftUI

struct CreatePostView: View {

    @Binding var posts: [Post]
    @Binding var currentTab: Int

    @State private var postTitle = ""
    @State private var postDescription = ""
    @State private var selectedCategory = "Community"
    @State private var showConfirmation = false

    private let categories = [
        "Community",
        "Technology",
        "Robotics",
        "Arts",
        "Music",
        "Dance",
        "Sports",
        "MUN",
        "Leadership",
        "Volunteering",
        "Entrepreneurship"
    ]

    private var canPublish: Bool {
        !postTitle
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .isEmpty
        &&
        !postDescription
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .isEmpty
    }

    var body: some View {
        NavigationStack {
            Form {
                Section("What would you like to share?") {
                    TextField(
                        "Post title",
                        text: $postTitle
                    )

                    TextEditor(text: $postDescription)
                        .frame(minHeight: 160)
                }

                Section("Category") {
                    Picker(
                        "Select a category",
                        selection: $selectedCategory
                    ) {
                        ForEach(categories, id: \.self) { category in
                            Text(category)
                                .tag(category)
                        }
                    }
                }

                Section {
                    Button {
                        publishPost()
                    } label: {
                        Text("Publish")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                    }
                    .foregroundStyle(Color.teenOrange)
                    .disabled(!canPublish)
                }
            }
            .scrollContentBackground(.hidden)
            .background(Color.teenBackground)
            .navigationTitle("Create a post")
            .alert(
                "Your post is live!",
                isPresented: $showConfirmation
            ) {
                Button("View post") {
                    currentTab = 0
                }

                Button("Close", role: .cancel) { }
            } message: {
                Text(
                    "Your new post is now visible on the home feed."
                )
            }
        }
    }

    private func publishPost() {
        let newPost = Post(
            author: "Ámbar Aguilar",
            username: "@ambar",
            initials: "AA",
            title: postTitle,
            description: postDescription,
            category: selectedCategory,
            location: "Mexico",
            date: "Just now",
            imageName: nil,
            likes: 0
        )

        posts.insert(newPost, at: 0)

        postTitle = ""
        postDescription = ""
        selectedCategory = "Community"
        showConfirmation = true
    }
}

#Preview {
    CreatePostView(
        posts: .constant(SampleData.posts),
        currentTab: .constant(0)
    )
}
