import SwiftUI

struct StatCard: View {

    let number: String
    let label: String

    var body: some View {
        VStack {
            Text(number)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle(Color.teenOrange)

            Text(label)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    StatCard(
        number: "12",
        label: "Posts"
    )
}
