import SwiftUI

struct PostView: View {

    @Binding var post: Post

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {

            HStack(spacing: 12) {
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [
                                Color.teenYellow,
                                Color.teenOrange
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 48, height: 48)
                    .overlay {
                        Text(post.initials)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                    }

                VStack(alignment: .leading, spacing: 3) {
                    Text(post.author)
                        .fontWeight(.semibold)

                    Text("\(post.username) · \(post.date)")
                        .font(.caption)
                        .foregroundStyle(.secondary)

                    Label(
                        post.location,
                        systemImage: "location"
                    )
                    .font(.caption2)
                    .foregroundStyle(.secondary)
                }

                Spacer()

                Button {

                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundStyle(.secondary)
                }
            }

            Text(post.category)
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundStyle(Color.black.opacity(0.75))
                .padding(.horizontal, 11)
                .padding(.vertical, 6)
                .background(Color.teenLightYellow)
                .clipShape(Capsule())

            Text(post.title)
                .font(.headline)
                .fontWeight(.bold)

            Text(post.description)
                .font(.subheadline)
                .foregroundStyle(.secondary)

            if let imageName = post.imageName {
                PostImageView(imageName: imageName)
            }

            Divider()

            HStack(spacing: 24) {
                Button {
                    likePost()
                } label: {
                    Label(
                        "\(post.likes)",
                        systemImage: post.isLiked
                            ? "heart.fill"
                            : "heart"
                    )
                    .foregroundStyle(
                        post.isLiked
                            ? Color.teenOrange
                            : Color.secondary
                    )
                }

                Button {

                } label: {
                    Label(
                        "Comment",
                        systemImage: "bubble.left"
                    )
                    .foregroundStyle(.secondary)
                }

                Spacer()

                Button {

                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .foregroundStyle(.secondary)
                }
            }
            .font(.subheadline)
        }
        .padding()
        .background(Color.teenCard)
        .clipShape(
            RoundedRectangle(cornerRadius: 20)
        )
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(
                    Color.teenYellow.opacity(0.20),
                    lineWidth: 1
                )
        }
        .shadow(
            color: Color.black.opacity(0.06),
            radius: 7,
            y: 3
        )
    }

    private func likePost() {
        post.isLiked.toggle()

        if post.isLiked {
            post.likes += 1
        } else {
            post.likes -= 1
        }
    }
}

#Preview {
    PostView(
        post: .constant(SampleData.posts[0])
    )
    .padding()
    .background(Color.teenBackground)
}
