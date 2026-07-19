import SwiftUI

struct OpportunityView: View {

    @Binding var opportunity: Opportunity

    var body: some View {
        HStack(alignment: .top, spacing: 14) {

            RoundedRectangle(cornerRadius: 14)
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
                .frame(width: 58, height: 58)
                .overlay {
                    Image(systemName: opportunity.icon)
                        .font(.title2)
                        .foregroundStyle(.white)
                }

            VStack(alignment: .leading, spacing: 6) {

                Text(opportunity.category.uppercased())
                    .font(.caption2)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.teenOrange)

                Text(opportunity.title)
                    .font(.headline)
                    .multilineTextAlignment(.leading)

                Text(opportunity.organization)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                Label(
                    opportunity.location,
                    systemImage: "location.fill"
                )
                .font(.caption)
                .foregroundStyle(.secondary)

                Text("Deadline: \(opportunity.deadline)")
                    .font(.caption)
                    .fontWeight(.medium)
            }

            Spacer()

            Button {
                opportunity.isSaved.toggle()
            } label: {
                Image(
                    systemName: opportunity.isSaved
                    ? "bookmark.fill"
                    : "bookmark"
                )
                .font(.title3)
                .foregroundStyle(Color.teenOrange)
            }
            .buttonStyle(.plain)
        }
        .padding()
        .background(Color.teenCard)
        .clipShape(
            RoundedRectangle(cornerRadius: 18)
        )
        .shadow(
            color: .black.opacity(0.05),
            radius: 6,
            y: 3
        )
    }
}

#Preview {
    OpportunityView(
        opportunity: .constant(SampleData.opportunities[0])
    )
}
