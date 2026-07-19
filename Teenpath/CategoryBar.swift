import SwiftUI

struct CategoryBar: View {

    let categories: [String]
    @Binding var currentCategory: String

    var body: some View {
        ScrollView(
            .horizontal,
            showsIndicators: false
        ) {
            HStack {
                ForEach(categories, id: \.self) { category in
                    Button {
                        currentCategory = category
                    } label: {
                        Text(category)
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .foregroundStyle(
                                currentCategory == category
                                    ? Color.white
                                    : Color.primary
                            )
                            .padding(.horizontal, 15)
                            .padding(.vertical, 9)
                            .background(
                                currentCategory == category
                                    ? Color.teenOrange
                                    : Color.white
                            )
                            .clipShape(Capsule())
                            .overlay {
                                Capsule()
                                    .stroke(
                                        Color.teenYellow.opacity(0.25),
                                        lineWidth: 1
                                    )
                            }
                    }
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
        }
        .background(Color.teenBackground)
    }
}

#Preview {
    CategoryBar(
        categories: [
            "All",
            "Innovation",
            "Leadership",
            "Arts"
        ],
        currentCategory: .constant("All")
    )
}
