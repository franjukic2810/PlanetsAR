//
//  PlanetsView.swift
//  PlanetsAR
//
//  Created by Fran Jukic on 18/07/2020.
//  Copyright © 2020 Fran Jukic. All rights reserved.
//

import SwiftUI

struct PlanetsView: View {
    var course: Course
    
    var body: some View {
        HStack {
            Image(uiImage: course.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .offset(y: 30)
            .frame(width: 220)
            .frame(height: 200)
            .shadow(radius: 20)
            
            Spacer()
                .frame(width: 50)
            
            VStack(alignment: .leading) {
                Text("Mars")
                .font(.largeTitle)
                .bold()
                
                Text(course.text)
                .font(.subheadline)
                .fontWeight(.light)
            }
        }
        .padding()
        
    }
}

struct PlanetsView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetsView(course: courseData[0])
    }
}
