//
//  ContentView.swift
//  PlanetsAR
//
//  Created by Fran Jukic on 24/05/2020.
//  Copyright © 2020 Fran Jukic. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var courses = courseData
    
    var body: some View {
        NavigationView {
            ScrollView(){
                       
                    ScrollView(.vertical, showsIndicators: false) {
                           VStack(spacing: 20) {
                               ForEach(courseData) { item in
                                   SectionView(course: item)
                               }
                           }
                           .padding(30)
                           .padding(.top,50)
                           .padding(.bottom, 30)
                       }
                       .frame(maxWidth: .infinity, maxHeight: .infinity)
                       .padding(.horizontal,-15)
                    .padding(.vertical,150)
                           
                       .offset(y: -60)
                   }
                   .background(Color("background1"))
                   .edgesIgnoringSafeArea(.all)
                   .navigationBarTitle(Text("Planets"))
        }
    }
}


struct SectionView: View {
    var course: Course
    
    var body: some View {
        HStack(){
            VStack(alignment: .leading){
                Text(course.title)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color.white)
                
                Text(course.text)
                    .font(.subheadline)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
            }
            .padding()
            
            Spacer()
            
            HStack(){
                Spacer()
                Image(uiImage: course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .offset(y: 30)
                    .frame(width: 220)
                    .frame(height: 200)
            }
            .padding(.top,10)
            .shadow(radius: 20)
        }
        .padding(.horizontal,40)
        .padding(.top,20)
        .frame(width: UIScreen.main.bounds.width-30, height: 200)
        .background(Color(course.color))
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color(course.color),radius: 10)
        
    }
}

struct DetailView: View {
    var body: some View {
        Text("Detail view")
            .navigationBarTitle("Detail view", displayMode: .inline)
    }
}

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var image: UIImage
    var color: UIColor
    var show: Bool
}

let courseData = [
    Course(title: "Mars",text: "Red Planet",image: #imageLiteral(resourceName: "Mars.png"),color: #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1),show: false),
    Course(title: "Earth",text: "Our Home",image: #imageLiteral(resourceName: "Earth.png"),color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1),show: false),
    Course(title: "Neptun",text: "Blue Planet",image: #imageLiteral(resourceName: "Neptun.png"),color: #colorLiteral(red: 0.2196078431372549, green: 0.00784313725490196, blue: 0.8549019607843137, alpha: 1.0),show: false),
    Course(title: "Uranus",text: "Cloud Planet",image: #imageLiteral(resourceName: "Uranus.png"),color: #colorLiteral(red: 0.1411764705882353, green: 0.396078431372549, blue: 0.5647058823529412, alpha: 1.0),show: false),
    Course(title: "Pluton",text: "Planet that isn't",image: #imageLiteral(resourceName: "Pluto.png"),color: #colorLiteral(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0),show: false),
    Course(title: "Mercury",text: "Cold planet",image: #imageLiteral(resourceName: "Mercury.png"),color: #colorLiteral(red: 0.2549019607843137, green: 0.27450980392156865, blue: 0.30196078431372547, alpha: 1.0),show: false),
    Course(title: "Venus",text: "Hot Place",image: #imageLiteral(resourceName: "Venus.png"),color: #colorLiteral(red: 0.7254901960784313, green: 0.47843137254901963, blue: 0.09803921568627451, alpha: 1.0),show: false),
    Course(title: "Jupiter",text: "Gas Planet",image: #imageLiteral(resourceName: "Jupiter.png"),color: #colorLiteral(red: 0.9568627450980393, green: 0.6588235294117647, blue: 0.5450980392156862, alpha: 1.0),show: false),
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme,.dark)
    }
}
