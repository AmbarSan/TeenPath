import SwiftUI

struct InterestTag: View {

    let text: String

    var body: some View {
        Text(text)
            .font(.subheadline)
            .padding(.horizontal, 12)
            .padding(.vertical, 7)
            .background(Color.teenLightYellow)
            .foregroundStyle(
                .black.opacity(0.75)
            )
            .clipShape(Capsule())
    }
}

#Preview {
    InterestTag(text: "Robotics")
}
