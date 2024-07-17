//
//  Errors.swift
//  SurfSecond
//
//  Created by Andrey Sandler on 17.07.2024.
//

import Foundation

struct Error {
    static let host = "https://http.cat/"
    static let errorsList = [
        "100",
        "101",
        "102",
        "103",
        "200",
        "201",
        "202",
        "203",
        "204",
        "404"
    ]

    static var urls = errorsList.compactMap { URL(string: host + $0) }
}
