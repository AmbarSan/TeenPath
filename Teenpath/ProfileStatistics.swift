import SwiftUI

struct ProfileStatistics: View {

    let publicationCount: Int

    var body: some View {
        HStack {

            StatCard(
                number: "\(publicationCount)",
                label: "Posts"
            )

            Divider()
                .frame(height: 45)

            StatCard(
                number: "3",
                label: "Projects"
            )

            Divider()
                .frame(height: 45)

            StatCard(
                number: "6",
                label: "Skills"
            )
        }
        .padding()
        .background(.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 18)
        )
    }
}

#Preview {
    ProfileStatistics(publicationCount: 5)
}
