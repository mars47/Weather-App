//
//  CurrentWeather.swift
//  RainyShine
//
//  Created by Omar  on 21/02/2018.
//  Copyright © 2018 Omar. All rights reserved.
// http://api.openweathermap.org/data/2.5/weather?lat=-36&lon=123&appid=073a5f570651811ba827086269ba251c

import UIKit
import Alamofire

class CurrentWeather {
    
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemp: Double!
    
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
      let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today \(currentDate)"
        return _date 
        
    }
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currentTemp: Double {
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
        return _currentTemp
    }
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        let currentWeatherURL = URL(string: CURRENT_WETHER_URL)!
        Alamofire.request(currentWeatherURL).responseJSON { response in
            
            if let dict = response.result.value as? Dictionary<String, AnyObject> {
                
                if let name = dict["name"] as? String {
                    self._cityName = name.capitalized
                    print(self._cityName)
                }
                
                if let weather = dict["weather"] as? [Dictionary<String, AnyObject>] {
                    
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                        
                    }
                }
                
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    
                    if let currentTemp = main["temp"] as? Double {
                        
                        let kelvinToFarenheitPreDivision = (currentTemp * (9/5) - 459.67)
                        let kelvinToFarenheit = Double(round( 18 * kelvinToFarenheitPreDivision / 10))
                        
                        self._currentTemp = kelvinToFarenheit
                        print(self._currentTemp)
                        
                    }
                }
            }
            //print(response)
            completed()
        }
    }
}


