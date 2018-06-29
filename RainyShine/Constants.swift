//
//  Constants.swift
//  RainyShine
//
//  Created by Omar  on 21/02/2018.
//  Copyright © 2018 Omar. All rights reserved.
//

import Foundation
let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "42a1771a0b787bf12e734ada0cfc80cb"

let CURRENT_WETHER_URL = "\(BASE_URL)\(LATITUDE)51.5685\(LONGITUDE)0.0100\(APP_ID)\(API_KEY)"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=51.5685&lon=0.0100&cnt=10&mode=json&appid=42a1771a0b787bf12e734ada0cfc80cb"

typealias DownloadComplete = () -> ()

// http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=073a5f570651811ba827086269ba251c
//http://api.openweathermap.org/data/2.5/weather?lat=-36&lon=123&appid=073a5f570651811ba827086269ba251c

//http://api.openweathermap.org/data/2.5/weather?lat=-36&lon=123&appid=42a1771a0b787bf12e734ada0cfc80cb
//http://api.openweathermap.org/data/2.5/forecast/daily?lat=51.5685&lon=0.0100&cnt=10&mode=json&appid=42a1771a0b787bf12e734ada0cfc80cb
//"073a5f570651811ba827086269ba251c"
