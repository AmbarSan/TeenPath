import SwiftUI

struct EmptyViewCard: View {

    let icon: String
    let title: String
    let message: String

    var body: some View {
        VStack(spacing: 14) {
            Image(systemName: icon)
                .font(.system(size: 45))
                .foregroundStyle(Color.teenOrange)

            Text(title)
                .font(.headline)
                .multilineTextAlignment(.center)

            Text(message)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding(30)
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
    }
}

#Preview {
    EmptyViewCard(
        icon: "bookmark",
        title: "No saved opportunities yet",
        message: "The opportunities you save will appear here."
    )
}
