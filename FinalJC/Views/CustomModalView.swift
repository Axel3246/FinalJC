import SwiftUI


struct CustomModalView: View {
    @State private var showCreateRoom = false
    @State private var showJoinRoom = false

    var body: some View {
        HStack {
                Button(action: {
                showCreateRoom.toggle()
            }) {
                Text("Create a Room")
                    .padding()
                    .background(Color.purple)
                    .opacity(0.9)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $showCreateRoom) {
                
            }

            Button(action: {
                showJoinRoom.toggle()
            }) {
                Text("Join the Room")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $showJoinRoom) {
                            }        }
    }
}


#Preview{
    ContentView()
}
