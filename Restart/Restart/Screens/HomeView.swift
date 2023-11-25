//
//  HomeView.swift
//  Restart
//
//  Created by Luiz Araujo on 25/11/23.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive = false

    @State private var isAnimating = false

    private let hapticFeedback = UINotificationFeedbackGenerator()

    var body: some View {
        VStack(spacing: 20) {
            // MARK: - HEADER
            
            Spacer()

            ZStack {
                CircleGroupView(
                    shapeColor: .gray,
                    shapeOpacity: 0.1
                )

                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? 35.0 : -35.0)
                    .animation(
                        Animation
                            .easeInOut(duration: 4)
                            .repeatForever()
                        , value: isAnimating
                    )
            }

            // MARK: - CENTER
            
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding()

            // MARK: - FOOTER
            

            Spacer()

            Button {
                withAnimation {
                    hapticFeedback.notificationOccurred(.success)
                    playSound(sound: "success", type: "m4a")
                    isOnboardingViewActive = true
                }
            } label: {

                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)

                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                isAnimating = true
            })
        }
    }
}

#Preview {
    HomeView()
}
