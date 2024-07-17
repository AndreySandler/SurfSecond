import SwiftUI

struct ContentView: View {
    
    @State private var buttonDidTapped = false
    
    var body: some View {
        NavigationView {
            ZStack() {
                Color.gray
                    .ignoresSafeArea()
                VStack(alignment: .center) {
                    let imageURL = URL(string: "https://http.cat/404")
                    AsyncImage(url: imageURL) { phase in
                        phase.image?
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }.frame(maxWidth: 300, maxHeight: .infinity)
                    Text("Really interested in?")
                    Spacer().frame(maxHeight: .infinity)
                    NavigationLink(destination: ErrorsView(), label: {
                        Text("Show me!")
                            .foregroundStyle(.white)
                            .font(.system(size: 20))
                    })
                    .padding()
                    .background(.black)
                    .clipShape(.capsule)
                }
                .fontWeight(.heavy)
                .font(.system(size: 32))
            }
        }
        .accentColor(.gray)
    }
}
