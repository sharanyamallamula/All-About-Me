//
//  ContentView.swift
//  All About Me
//
//  Created by scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var abtRanya = ""
    @State private var littleFacts = ""
    var body: some View {
        VStack() {
            Text("All About Me!")
                .font(.title)
                .fontWeight(.medium)
                
            ZStack() {
                VStack () {
                    HStack() {
                        Image("catabtme")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(15.0)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        VStack() {
                            Text("Ranya!")
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .padding()
                            Text("From : Northern VA \n Rising junior!")
                                .multilineTextAlignment(.center)
                        } //vstack closing
                    } //hstack closing
                    .padding()
                    Button("Learn More") {
                        abtRanya = "About Ranya!"
                        littleFacts = "☆ i play the violin and guitar! \n☆ i like to crochet and for birthday gifts i make custom clothing \n☆ i love cats and chemistry\n☆ i like reading mystery novels!\n☆ i want to run my own crochet business in the future"
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.4392156862745098, green: 0.592156862745098, blue: 0.4588235294117647))
                    Text(abtRanya)
                        .underline()
                    Text(littleFacts)
                        .font(.body)
                        .padding(.horizontal)
                    Button("Minimize") {
                        abtRanya = ""
                        littleFacts = ""
                    }
                    .font(.body)
                    .tint(Color(hue: 0.355, saturation: 0.375, brightness: 0.408))
                    .underline()

                } //vstack closing
            } //zstack closing
            .background(Rectangle().foregroundColor(Color(red: 0.6313725490196078, green: 0.8, blue: 0.6470588235294118)))
            .cornerRadius(15.0)
            .padding([.leading, .bottom, .trailing])
//            HStack() {
//
//            } //hstack closing
        } //vstack closing
    } // closing bracket
} // closing bracket

// nothing under here is touched
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
