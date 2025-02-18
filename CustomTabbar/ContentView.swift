//
//  ContentView.swift
//  CustomTabbar
//
//  Created by MacMini6 on 12/02/25.
//

import SwiftUI

struct MainTabbarView: View {
    @State private var selectedTab: Int = 0
    
    let tabs = [
        (title: "Inbox", icon: "bubble.fill"),
        (title: "Updates", icon: "dial.low"),
        (title: "Community", icon: "person.3.fill"),
        (title: "Calls", icon: "phone.fill")
    ]
    
    var body: some View {
        VStack {
            TabView(selection: $selectedTab) {
                InboxView()
                    .tag(0)
                UpdatesView()
                    .tag(1)
                CommunityView()
                    .tag(2)
                CallsView()
                    .tag(3)
            }
            CustomTabBar(selectedTab: $selectedTab, tabs: tabs)
               
        }
        .edgesIgnoringSafeArea(.bottom)
    
    }
}

struct CustomTabBar: View {
    @Binding var selectedTab: Int
    let tabs: [(title: String, icon: String)]
    
    var body: some View {
        HStack {
            ForEach(0..<tabs.count, id: \.self) { index in
                Spacer()
                Button(action: {
                    withAnimation(.spring()) {
                        selectedTab = index
                    }
                }) {
                    VStack(spacing: 6) {
                        Image(systemName: tabs[index].icon)
                            .font(.system(size: selectedTab == index ? 24 : 20, weight: .bold))
                            .foregroundColor(selectedTab == index ? .black : .gray)
                        
                        Text(tabs[index].title)
                            .font(.caption)
                            .foregroundColor(selectedTab == index ? .black : .gray)
                    }
                }
                Spacer()
            }
        }
        .frame(height: 70)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))]),
                startPoint: .leading,
                endPoint: .trailing
            )
        )
        .cornerRadius(50)
        .padding(.horizontal, 16)
        .padding(.bottom, 30)
        .shadow(radius: 5)

    }
}

#Preview {
    MainTabbarView()
}
