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
let API_KEY = "073a5f570651811ba827086269ba251c"

let CURRENT_WETHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGITUDE)123\(APP_ID)\(API_KEY)"

typealias DownloadComplete = () -> ()

// http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=073a5f570651811ba827086269ba251c
