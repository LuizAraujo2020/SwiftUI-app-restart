//
//  HomeView.swift
//  Restart
//
//  Created by Luiz Araujo on 25/11/23.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive = false

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
                isOnboardingViewActive = true
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
    }
}

#Preview {
    HomeView()
}
