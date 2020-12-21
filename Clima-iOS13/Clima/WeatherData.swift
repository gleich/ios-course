//
//  WeatherData.swift
//  Clima
//
//  Created by Matthew Gleich on 12/20/20.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let description: String
}
