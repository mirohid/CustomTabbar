import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<5) { index in
                    MessageRow()
                }
            }
            .navigationTitle("Inbox")
        }
    }
}

struct MessageRow: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 40, height: 40)
                    .overlay(Text("A").foregroundColor(.white))
                
                VStack(alignment: .leading) {
                    Text("Sample Message")
                        .font(.headline)
                    Text("Message preview text goes here...")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .padding(.vertical, 4)
        }
    }
}

#Preview {
    InboxView()
}

// End of file
