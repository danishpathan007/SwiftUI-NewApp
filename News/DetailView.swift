//
//  DetailView.swift
//  News
//
//  Created by Danish Khan on 26/04/20.
//  Copyright © 2020 Danish Khan. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?

    var body: some View {
        WebView(stringUrl: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com")
    }
}


