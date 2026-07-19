import SwiftUI

struct InformationRow: View {

    let icon: String
    let title: String
    let value: String

    var body: some View {
        HStack(spacing: 14) {

            Image(systemName: icon)
                .font(.title3)
                .foregroundStyle(Color.teenOrange)
                .frame(width: 28)

            VStack(alignment: .leading, spacing: 3) {

                Text(title)
                    .font(.caption)
                    .foregroundStyle(.secondary)

                Text(value)
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }

            Spacer()
        }
    }
}

#Preview {
    InformationRow(
        icon: "location.fill",
        title: "Location",
        value: "Monterrey, Mexico"
    )
}
