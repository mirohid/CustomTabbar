import SwiftUI

struct CommunityView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                    ForEach(0..<6) { index in
                        CommunityCard()
                    }
                }
                .padding()
            }
            .navigationTitle("Community")
        }
    }
}

struct CommunityCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "person.3.fill")
                .font(.system(size: 40))
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue.opacity(0.1))
                .cornerRadius(10)
            
            Text("Group Name")
                .font(.headline)
            
            Text("42 members")
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}

// End of file
#Preview{
    CommunityView()
}
