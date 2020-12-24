//
//  WeatherManager.swift
//  Clima
//
//  Created by Matthew Gleich on 12/20/20.
//

import Foundation

protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel)
    func didFailWithError(_ error: Error)
}

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=\(apiKey)&units=metric"
    
    var delegate: WeatherManagerDelegate?

    func fetchWeather(cityName: String) {
        let urlString = weatherURL + "&q=" + cityName
        performRequest(with: urlString)
    }

    func performRequest(with urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, _, error in
                if let error = error {
                    print(error)
                    delegate?.didFailWithError(error)
                    return
                }

                if let safeData = data {
                    if let weather = parseJSON(safeData) {
                        self.delegate?.didUpdateWeather(self, weather: weather)
                    }
                }
            }
            task.resume()
        }
    }

    func parseJSON(_ weatherData: Data) -> WeatherModel? {
        let decoder = JSONDecoder()

        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)

            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name

            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            return weather

        } catch {
            print(error)
            delegate?.didFailWithError(error)
            return nil
        }
    }
}
