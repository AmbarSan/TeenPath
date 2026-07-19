import SwiftUI

struct WelcomeCard: View {

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {

            HStack(spacing: 12) {
                Image("teenpath")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 55, height: 55)

                VStack(alignment: .leading, spacing: 3) {
                    Text("Welcome back, Ámbar!")
                        .font(.system(size: 22, weight: .bold, design: .rounded))

                    Text("Ready to discover your next path?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.black.opacity(0.65))
                }

                Spacer()
            }

            Text("Discover opportunities, share your journey, and connect with young people around the world.")
                .font(.system(size: 15, weight: .medium, design: .rounded))
                .foregroundStyle(Color.black.opacity(0.72))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(
            LinearGradient(
                colors: [
                    .teenYellow,
                    .teenLightYellow
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .clipShape(RoundedRectangle(cornerRadius: 22))
        .shadow(
            color: .black.opacity(0.08),
            radius: 8,
            y: 4
        )
    }
}

#Preview {
    WelcomeCard()
}
