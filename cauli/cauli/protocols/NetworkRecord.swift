//
//  NetworkRecord.swift
//  cauli
//
//  Created by Pascal Stüdlein on 12.07.17.
//  Copyright © 2017 TBO Interactive GmbH & Co KG. All rights reserved.
//

import Foundation

protocol NetworkRecord {
    var createdAt: Date { get }
    var originalRequest: URLRequest { get }
    var request: URLRequest { get }
    var response: URLResponse? { get set }
    var metrics: URLSessionTaskMetrics? { get set }
    var data: Data? { get set }
    var error: Error? { get set }
}