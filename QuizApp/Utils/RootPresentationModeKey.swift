//
//  RootPresentationModeKey.swift
//  QuizApp
//
//  Created by Marco Alonso Rodriguez on 12/05/23.
//

import Foundation
import SwiftUI 

typealias RootPresentationMode = QuizViewModel?

private struct RootPresentationModeKey: EnvironmentKey {
    static let defaultValue: Binding<RootPresentationMode> = .constant(nil)
}

extension EnvironmentValues {
    var rootPresentationMode: Binding<RootPresentationMode> {
        get { self[RootPresentationModeKey.self] }
        set { self[RootPresentationModeKey.self] = newValue }
    }
}

extension RootPresentationMode {
    mutating func dismiss() {
        self = nil 
    }
}
