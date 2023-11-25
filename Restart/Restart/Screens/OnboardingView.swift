//
//  OnboardingView.swift
//  Restart
//
//  Created by Luiz Araujo on 25/11/23.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("onboarding") var isOnboardingViewActive = true

    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)

            Button {
                isOnboardingViewActive = false
            } label: {
                Text("Start")
            }
        } //: vstack
    }
}

#Preview {
    OnboardingView()
}
