//
//  ARPageView.swift
//  PlanetsAR
//
//  Created by Fran Jukic on 18/07/2020.
//  Copyright © 2020 Fran Jukic. All rights reserved.
//

import SwiftUI

struct ARPageView: View {
    // State used to toggle showing our sheet containing AR QL preview
       @State var showingPreview = false
       
       // Turns off & on the ability to change the preview size within ARKit.
       @State var allowsScaling = false
       
       var body: some View {
           VStack {
               // Allow the user to enable/disable scaling of the preview content.
               Toggle("Allow Scaling", isOn: $allowsScaling)
               
               Button("Show Preview") {
                   // Action that runs when the button is tapped.
                   // This one toggles the showing-preview state.
                   self.showingPreview.toggle()
               }
               // This modifier tells SwiftUI to present a view in a modal sheet
               // when a state variable is set to true, and to dismiss it
               // when set to false.
               .sheet(isPresented: $showingPreview) {
                   // Sheet content: the quick look view with a header bar containing
                   // a simple 'close' button that closes the sheet.
                   VStack {
                       // Top row: button, aligned left
                       HStack {
                           Button("Close") {
                               // Toggle the preview display off again.
                               // Swiping down (the system gesture to dismiss a sheet)
                               // will cause SwiftUI to toggle our state property as well.
                               self.showingPreview.toggle()
                           }
                           // The spacer fills the space following the button, in effect
                           // pushing the button to the leading edge of the view.
                           Spacer()
                       }
                       // Leave a little space all around the button.
                       .padding()
                       
                       // The actual quick-look view, which will scale to fill the
                       // available space.
                       ARQuickLook(name: "Mars_1_6792", allowScaling: self.allowsScaling)
                   }
               }
           }
       }
}

struct ARPageView_Previews: PreviewProvider {
    static var previews: some View {
        ARPageView()
    }
}
