//
//  WebView.swift
//  News
//
//  Created by Danish Khan on 27/04/20.
//  Copyright © 2020 Danish Khan. All rights reserved.
//

import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {
    
    let stringUrl : String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = stringUrl {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                         uiView.load(request)
            }
        }
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(stringUrl: "https://google.com")
    }
}
