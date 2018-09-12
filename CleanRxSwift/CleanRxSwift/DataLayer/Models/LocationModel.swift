//
//  LocationModel.swift
//  CleanRxSwift
//
//  Created by Nikolai Vasilevich on 9/12/18.
//  Copyright © 2018 Nikolai Vasilevich. All rights reserved.
//

import Foundation

struct LocationModel: Codable {
    let version: Int
    let key, type: String
    let rank: Int
    let localizedName, englishName, primaryPostalCode: String
    let region, country: Country
    let administrativeArea: AdministrativeArea
    let timeZone: TimeZone
    let geoPosition: GeoPosition
    let isAlias: Bool
    let supplementalAdminAreas: [Int]
    let dataSets: [String]
    
    enum CodingKeys: String, CodingKey {
        case version = "Version"
        case key = "Key"
        case type = "Type"
        case rank = "Rank"
        case localizedName = "LocalizedName"
        case englishName = "EnglishName"
        case primaryPostalCode = "PrimaryPostalCode"
        case region = "Region"
        case country = "Country"
        case administrativeArea = "AdministrativeArea"
        case timeZone = "TimeZone"
        case geoPosition = "GeoPosition"
        case isAlias = "IsAlias"
        case supplementalAdminAreas = "SupplementalAdminAreas"
        case dataSets = "DataSets"
    }
}

struct AdministrativeArea: Codable {
    let id, localizedName, englishName: String
    let level: Int
    let localizedType, englishType, countryID: String
    
    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case localizedName = "LocalizedName"
        case englishName = "EnglishName"
        case level = "Level"
        case localizedType = "LocalizedType"
        case englishType = "EnglishType"
        case countryID = "CountryID"
    }
}

struct Country: Codable {
    let id, localizedName, englishName: String
    
    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case localizedName = "LocalizedName"
        case englishName = "EnglishName"
    }
}

struct GeoPosition: Codable {
    let latitude, longitude: Double
    let elevation: Elevation
    
    enum CodingKeys: String, CodingKey {
        case latitude = "Latitude"
        case longitude = "Longitude"
        case elevation = "Elevation"
    }
}

struct Elevation: Codable {
    let metric, imperial: Imperial
    
    enum CodingKeys: String, CodingKey {
        case metric = "Metric"
        case imperial = "Imperial"
    }
}

struct Imperial: Codable {
    let value: Int
    let unit: String
    let unitType: Int
    
    enum CodingKeys: String, CodingKey {
        case value = "Value"
        case unit = "Unit"
        case unitType = "UnitType"
    }
}

struct TimeZone: Codable {
    let code, name: String
    let gmtOffset: Int
    let isDaylightSaving: Bool
    let nextOffsetChange: Date
    
    enum CodingKeys: String, CodingKey {
        case code = "Code"
        case name = "Name"
        case gmtOffset = "GmtOffset"
        case isDaylightSaving = "IsDaylightSaving"
        case nextOffsetChange = "NextOffsetChange"
    }
}
