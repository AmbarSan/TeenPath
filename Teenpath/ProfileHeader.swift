import SwiftUI

struct ProfileHeader: View {

    var body: some View {
        VStack(spacing: 12) {

            Circle()
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
                .frame(width: 100, height: 100)
                .overlay {
                    Text("AA")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }

            Text("Ámbar Aguilar")
                .font(.title2)
                .fontWeight(.bold)

            Text("@ambar")
                .foregroundStyle(.secondary)

            Label(
                "Mexico",
                systemImage: "location.fill"
            )
            .font(.subheadline)
            .foregroundStyle(.secondary)

            Text(
                "Student interested in robotics, software development, creativity, entertainment, and projects with social impact."
            )
            .font(.subheadline)
            .multilineTextAlignment(.center)
            .foregroundStyle(.secondary)

            Button {

            } label: {
                Text("Edit profile")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 11)
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
                        RoundedRectangle(cornerRadius: 12)
                    )
            }
        }
        .padding()
        .background(
            LinearGradient(
                colors: [
                    .teenLightYellow,
                    .white
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .clipShape(
            RoundedRectangle(cornerRadius: 20)
        )
        .shadow(
            color: .black.opacity(0.06),
            radius: 7,
            y: 3
        )
    }
}

#Preview {
    ProfileHeader()
}
