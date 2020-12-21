//
//  WeatherManager.swift
//  Clima
//
//  Created by Matthew Gleich on 12/20/20.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=\(apiKey)&units=metric"

    func fetchWeather(cityName: String) {
        let urlString = weatherURL + "&q=" + cityName
        performRequest(urlString: urlString)
    }

    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, _, error in
                if let error = error {
                    print(error)
                    return
                }

                if let safeData = data {
                    parseJSON(weatherData: safeData)
                }
            }
            task.resume()
        }
    }

    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()

        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name
            
            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            print(weather.conditionName)
            print(weather.temperatureString)
            
        } catch {
            print(error)
        }
    }
}
