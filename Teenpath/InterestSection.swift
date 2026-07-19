import SwiftUI

struct InterestSection: View {

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {

            Text("Interests")
                .font(.headline)

            HStack {
                InterestTag(text: "Robotics")
                InterestTag(text: "Programming")
            }

            HStack {
                InterestTag(text: "Technology")
                InterestTag(text: "Entertainment")
            }

            HStack {
                InterestTag(text: "Volunteering")
                InterestTag(text: "Social Impact")
            }
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
        .padding()
        .background(.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 18)
        )
    }
}

#Preview {
    InterestSection()
}
