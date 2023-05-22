//
//  ScoreView.swift
//  quiz
//
//  Created by Vivek on 19/05/23.
//

import SwiftUI
private var questions = Question.sampleData
struct ScoreView: View {
    @ViewBuilder
    var body: some View {
        NavigationStack {
           Text("Score")
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
