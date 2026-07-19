import SwiftUI

struct ProjectRow: View {

    let icon: String
    let title: String
    let description: String

    var body: some View {
        HStack(spacing: 14) {

            RoundedRectangle(cornerRadius: 12)
                .fill(
                    LinearGradient(
                        colors: [
                            .teenYellow,
                            .teenOrange
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 48, height: 48)
                .overlay {
                    Image(systemName: icon)
                        .foregroundStyle(.white)
                }

            VStack(alignment: .leading, spacing: 4) {

                Text(title)
                    .fontWeight(.semibold)

                Text(description)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            Spacer()
        }
    }
}

#Preview {
    ProjectRow(
        icon: "gearshape.2.fill",
        title: "Robotics Team",
        description: "Robot design, construction, programming, and outreach."
    )
}
