import SwiftUI

struct ProjectSection: View {

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {

            Text("Projects")
                .font(.headline)

            ProjectRow(
                icon: "gearshape.2.fill",
                title: "Robotics Team",
                description: "Robot design, construction, programming, and outreach."
            )

            Divider()

            ProjectRow(
                icon: "iphone",
                title: "TeenPath",
                description: "An international platform connecting young people with opportunities."
            )

            Divider()

            ProjectRow(
                icon: "music.note.tv.fill",
                title: "Technology and Entertainment",
                description: "Exploring how engineering can transform creative experiences."
            )
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
    ProjectSection()
}
