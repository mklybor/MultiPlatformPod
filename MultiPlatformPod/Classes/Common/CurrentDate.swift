//
//  CurrentDate.swift
//  MacIOSFramework2
//
//  Created by Michael Klybor on 5/7/19.
//
//  example of a framework class that would work on all Swift plartforms
//

import Foundation
public class CurrentDate {
    public static func date () -> Date {
        return Date()
    }
    
    public static func dateStr () -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter.string(from: CurrentDate.date())
    }
}
