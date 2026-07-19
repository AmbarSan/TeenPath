import SwiftUI

struct SplashScreenView: View {

    @State private var logoScale: CGFloat = 0.80
    @State private var contentOpacity = 0.0

    var body: some View {
        ZStack {
            Color.teenOrange
                .ignoresSafeArea()

            VStack(spacing: 24) {

                Image("teenpath")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 225, height: 225)
                    .scaleEffect(logoScale)

                Text("TeenPath")
                    .font(
                        .system(
                            size: 40,
                            weight: .black,
                            design: .rounded
                        )
                    )
                    .tracking(3)
                    .foregroundStyle(.black)
            }
            .opacity(contentOpacity)
        }
        .onAppear {
            withAnimation(
                .spring(
                    response: 0.70,
                    dampingFraction: 0.72
                )
            ) {
                logoScale = 1
                contentOpacity = 2
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
