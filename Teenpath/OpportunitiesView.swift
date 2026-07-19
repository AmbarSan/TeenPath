import SwiftUI
import SwiftUI

struct OpportunitiesView: View {

    @Binding var opportunities: [Opportunity]

    @State private var searchText = ""
    @State private var currentCategory = "All"

    private let categories = [
        "All",
        "Innovation",
        "Leadership",
        "Arts",
        "MUN",
        "Dance",
        "Music",
        "Scholarship",
        "Volunteering"
    ]

    private var visibleOpportunities: [Opportunity] {
        opportunities.filter { opportunity in
            let matchesSearch =
                searchText.isEmpty ||
                opportunity.title.localizedCaseInsensitiveContains(searchText) ||
                opportunity.organization.localizedCaseInsensitiveContains(searchText) ||
                opportunity.category.localizedCaseInsensitiveContains(searchText) ||
                opportunity.location.localizedCaseInsensitiveContains(searchText)

            let matchesCategory =
                currentCategory == "All" ||
                opportunity.category == currentCategory

            return matchesSearch && matchesCategory
        }
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {

                CategoryBar(
                    categories: categories,
                    currentCategory: $currentCategory
                )

                if visibleOpportunities.isEmpty {
                    EmptyViewCard(
                        icon: "magnifyingglass",
                        title: "No opportunities found",
                        message: "Try searching for another category or country."
                    )
                } else {
                    ScrollView {
                        LazyVStack(spacing: 14) {
                            ForEach(visibleOpportunities) { opportunity in
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
            .navigationTitle("Opportunities")
            .searchable(
                text: $searchText,
                prompt: "Search programs, events, countries..."
            )
        }
    }
}

#Preview {
    OpportunitiesView(
        opportunities: .constant(SampleData.opportunities)
    )
}
