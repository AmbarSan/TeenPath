import SwiftUI

struct SavedView: View {

    @Binding var opportunities: [Opportunity]

    private var savedOpportunities: [Opportunity] {
        opportunities.filter {
            $0.isSaved
        }
    }

    var body: some View {
        NavigationStack {
            Group {
                if savedOpportunities.isEmpty {
                    EmptyViewCard(
                        icon: "bookmark",
                        title: "No saved opportunities yet",
                        message: "The opportunities you save will appear here."
                    )
                } else {
                    ScrollView {
                        LazyVStack(spacing: 14) {
                            ForEach(savedOpportunities) { opportunity in
                                if let index = opportunities.firstIndex(
                                    where: {
                                        $0.id == opportunity.id
                                    }
                                ) {
                                    NavigationLink {
                                        OpportunityDetailView(
                                            opportunity: $opportunities[index]
                                        )
                                    } label: {
                                        OpportunityView(
                                            opportunity: $opportunities[index]
                                        )
                                    }
                                    .buttonStyle(.plain)
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
            .background(Color.teenBackground)
            .navigationTitle("Saved")
        }
    }
}

#Preview {
    SavedView(
        opportunities: .constant(SampleData.opportunities)
    )
}
