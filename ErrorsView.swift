//
//  ErrorsView.swift
//  SurfSecond
//
//  Created by Andrey Sandler on 17.07.2024.
//

import SwiftUI

struct ErrorsView: View {
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 8) {
                ForEach(Error.urls, id: \.self) { url in
                    AsyncImage(url: url) { phase in
                        phase.image?
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    }
                }
            }
        }
        .frame(width: 300)
    }
}
