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
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()

            VStack(spacing: 20) {
                // MARK: - HEADER

                Spacer()

                VStack(spacing: 0) {
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)

                    Text("""
                    It's not about how much we give but
                    how much love we put into giving.
                    """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                } //: header

                // MARK: - CENTER

                ZStack {
                    ZStack {
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 40)
                            .frame(width: 260, height: 260)

                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80)
                            .frame(width: 260, height: 260)
                    } //: zstack

                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                } //: center

                Spacer()

                // MARK: - FOOTER

                ZStack {
                    Capsule()
                        .fill(Color.white.opacity(0.2))

                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)


                    Text("Get started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .offset(x: 20)

                    HStack {
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)

                        Spacer()
                    }

                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color("ColorRed"))

                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)

                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }
                        .foregroundStyle(.white)
                        .frame(width: 80, height: 80)
                        .onTapGesture {
                            isOnboardingViewActive = false
                        }

                        Spacer()
                    } //: hstack
                } //: footer
                .frame(height: 80)
                .padding()

            } //: vstack
        } //: zstack
    }
}

#Preview {
    OnboardingView()
}
