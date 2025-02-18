import SwiftUI

struct CallsView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<4) { index in
                    CallRow()
                }
            }
            .navigationTitle("Calls")
        }
    }
}

struct CallRow: View {
    var body: some View {
        HStack {
            Circle()
                .fill(Color.green)
                .frame(width: 40, height: 40)
                .overlay(Image(systemName: "phone.fill").foregroundColor(.white))
            
            VStack(alignment: .leading) {
                Text("John Doe")
                    .font(.headline)
                HStack {
                    Image(systemName: "arrow.up.right")
                        .foregroundColor(.green)
                    Text("Yesterday, 2:30 PM")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "phone.circle.fill")
                    .font(.title2)
                    .foregroundColor(.blue)
            }
        }
        .padding(.vertical, 4)
    }
}

// End of file

#Preview {
    CallsView()
}
