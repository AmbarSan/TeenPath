import SwiftUI

struct MyPostsSection: View {

    let posts: [Post]

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {

            Text("My Posts")
                .font(.headline)

            if posts.isEmpty {
                Text("You have not shared anything yet.")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            } else {
                ForEach(posts) { post in
                    VStack(alignment: .leading, spacing: 7) {

                        Text(post.category)
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.teenOrange)

                        Text(post.title)
                            .fontWeight(.semibold)

                        Text(post.description)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                            .lineLimit(4)

                        HStack {
                            Label(
                                post.location,
                                systemImage: "location"
                            )

                            Spacer()

                            Label(
                                "\(post.likes)",
                                systemImage: "heart"
                            )
                        }
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    }

                    if post.id != posts.last?.id {
                        Divider()
                    }
                }
            }
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
        .padding()
        .background(.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 18)
        )
    }
}

#Preview {
    MyPostsSection(posts: SampleData.posts)
}
