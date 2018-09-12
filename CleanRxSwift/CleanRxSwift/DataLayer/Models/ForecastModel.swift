//
//  ForecastModel.swift
//  CleanRxSwift
//
//  Created by Nikolai Vasilevich on 9/12/18.
//  Copyright © 2018 Nikolai Vasilevich. All rights reserved.
//

import Foundation

struct ForecastModel: Codable {
    let date: Date
    let epochDate: Int
    let temperature: Temperature
    let day, night: Day
    let sources: [String]
    let mobileLink, link: String
    
    enum CodingKeys: String, CodingKey {
        case date = "Date"
        case epochDate = "EpochDate"
        case temperature = "Temperature"
        case day = "Day"
        case night = "Night"
        case sources = "Sources"
        case mobileLink = "MobileLink"
        case link = "Link"
    }
}

struct Day: Codable {
    let icon: Int
    let iconPhrase: String
    
    enum CodingKeys: String, CodingKey {
        case icon = "Icon"
        case iconPhrase = "IconPhrase"
    }
}

struct Temperature: Codable {
    let minimum, maximum: Imum
    
    enum CodingKeys: String, CodingKey {
        case minimum = "Minimum"
        case maximum = "Maximum"
    }
}

struct Imum: Codable {
    let value: Int
    let unit: String
    let unitType: Int
    
    enum CodingKeys: String, CodingKey {
        case value = "Value"
        case unit = "Unit"
        case unitType = "UnitType"
    }
}
