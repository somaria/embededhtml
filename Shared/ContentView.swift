//
//  ContentView.swift
//  Shared
//
//  Created by admin on 17/7/21.
//

import SwiftUI
import WebKit
struct ContentView: View {
  @State var text = "<blockquote class='twitter-tweet' style='font-size:96px;'><h1  lang='en' dir='ltr'>Sunrise at Linton at Cambs in England / ClickASnap <a href='https://t.co/8BpakwFkhL'>https://t.co/8BpakwFkhL</a> <a href='https://twitter.com/hashtag/photoforsale?src=hash&amp;ref_src=twsrc%5Etfw'>#photoforsale</a> <a href='https://twitter.com/ClickASnap_?ref_src=twsrc%5Etfw'>@ClickASnap_</a> <a href='https://twitter.com/Picfair?ref_src=twsrc%5Etfw'>@Picfair</a> <a href='https://twitter.com/PictureThisAI?ref_src=twsrc%5Etfw'>@PictureThisAI</a> <a href='https://twitter.com/Photo4mecom?ref_src=twsrc%5Etfw'>@Photo4mecom</a> <a href='https://twitter.com/photos2profits?ref_src=twsrc%5Etfw'>@photos2profits</a> <a href='https://twitter.com/hashtag/ineedajob?src=hash&amp;ref_src=twsrc%5Etfw'>#ineedajob</a></h1>&mdash; Simon Hill (@simonh_s) <a href='https://twitter.com/simonh_s/status/1416090776870785026?ref_src=twsrc%5Etfw'>July 16, 2021</a></blockquote> <script async src='https://platform.twitter.com/widgets.js' charset='utf-8'></script>"
   
  var body: some View {
    WebView(text: $text)
      .frame(width: 620, alignment: .center).offset(x: 130)
  }
}
struct WebView: UIViewRepresentable {
  @Binding var text: String
   
  func makeUIView(context: Context) -> WKWebView {
    return WKWebView()
  }
   
  func updateUIView(_ uiView: WKWebView, context: Context) {
    uiView.loadHTMLString(text, baseURL: nil)
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
