import SwiftUI

struct PostImageView: View {

    let imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity)
            .frame(height: 220)
            .clipped()
            .clipShape(
                RoundedRectangle(cornerRadius: 16)
            )
    }
}

#Preview {
    PostImageView(imageName: "leadershipProgram")
        .padding()
}
