//
//  Frost.swift
//  PlanetsAR
//
//  Created by Fran Jukic on 20/07/2020.
//  Copyright © 2020 Fran Jukic. All rights reserved.
//

import SwiftUI

struct Frost: UIViewRepresentable, Hashable {
    // Adaptive UI style, matching the system toolbars
    static var chrome: Frost {
        Frost(style: .systemChromeMaterial)
    }

    // Adaptive UI styles, by thickness
    static var ultraThin: Frost {
        Frost(style: .systemUltraThinMaterial)
    }

    static var thin: Frost {
        Frost(style: .systemThinMaterial)
    }

    static var normal: Frost {
        Frost(style: .systemMaterial)
    }

    static var thick: Frost {
        Frost(style: .systemThickMaterial)
    }

    // Content styles, by brightness
    static var lighter: Frost {
        Frost(style: .extraLight)
    }

    static var neutral: Frost {
        Frost(style: .light)
    }

    static var darker: Frost {
        Frost(style: .dark)
    }

    // Implementation
    var style: UIBlurEffect.Style = .systemChromeMaterial

    func makeUIView(context: Context) -> UIVisualEffectView {
        UIVisualEffectView()
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

struct Frost_Previews: PreviewProvider {
    static var previews: some View {
        Frost()
    }
}
