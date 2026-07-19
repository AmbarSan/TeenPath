import SwiftUI

struct OpportunityDetailView: View {

    @Binding var opportunity: Opportunity

    @State private var showApplicationMessage = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 22) {

                RoundedRectangle(cornerRadius: 25)
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
                    .frame(height: 170)
                    .overlay {
                        Image(systemName: opportunity.icon)
                            .font(.system(size: 62))
                            .foregroundStyle(.white)
                    }

                VStack(alignment: .leading, spacing: 8) {
                    Text(opportunity.category.uppercased())
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.teenOrange)

                    Text(opportunity.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    Text(opportunity.organization)
                        .font(.title3)
                        .foregroundStyle(.secondary)
                }

                Divider()

                InformationRow(
                    icon: "location.fill",
                    title: "Location",
                    value: opportunity.location
                )

                InformationRow(
                    icon: "calendar",
                    title: "Application deadline",
                    value: opportunity.deadline
                )

                VStack(alignment: .leading, spacing: 8) {
                    Text("About this opportunity")
                        .font(.headline)

                    Text(opportunity.description)
                        .foregroundStyle(.secondary)
                }

                Button {
                    opportunity.isSaved.toggle()
                } label: {
                    Label(
                        opportunity.isSaved
                        ? "Remove from saved"
                        : "Save opportunity",
                        systemImage: opportunity.isSaved
                        ? "bookmark.fill"
                        : "bookmark"
                    )
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        LinearGradient(
                            colors: [
                                .teenYellow,
                                .teenOrange
                            ],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .foregroundStyle(.white)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 14)
                    )
                }

                Button {
                    showApplicationMessage = true
                } label: {
                    Text("Apply now")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.teenLightYellow)
                        .foregroundStyle(Color.teenOrange)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 14)
                        )
                        .overlay {
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(
                                    Color.teenOrange,
                                    lineWidth: 1
                                )
                        }
                }
            }
            .padding()
        }
        .background(Color.teenBackground)
        .navigationBarTitleDisplayMode(.inline)
        .alert(
            "Application page",
            isPresented: $showApplicationMessage
        ) {
            Button("Continue", role: .cancel) { }
        } message: {
            Text(
                "This button will eventually open the official application website."
            )
        }
    }
}

#Preview {
    NavigationStack {
        OpportunityDetailView(
            opportunity: .constant(SampleData.opportunities[0])
        )
    }
}
