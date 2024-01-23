//
//  CurrentWeatherCollectionViewCellViewModel.swift
//  brightsky
//
// 
//

import WeatherKit
import Foundation

struct CurrentWeatherCollectionViewCellViewModel {
    private let model: CurrentWeather
    
    init(model: CurrentWeather) {
        self.model = model
    }

    public var condition: String {
        return model.condition.description
    }

    public var temperature: String {
        return "\(Int(model.temperature.converted(to: .celsius).value)) °C"
    }

    public var iconName: String {
        return model.symbolName
    }
}
