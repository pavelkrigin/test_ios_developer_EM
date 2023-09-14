//
//  HotelViewModel.swift
//  test_ios_developer_EM
//
//  Created by Pavel Krigin on 14.09.2023.
//

import Foundation
import SwiftUI
import Combine

class HotelViewModel: ObservableObject {
    @Published var hotel: Hotel?

    private var cancellables: Set<AnyCancellable> = []

    init() {
        fetchHotelData()
    }

    func fetchHotelData() {
        
        let url = URL(string: "https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3")!

        URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: Hotel.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in },
                  receiveValue: { [weak self] hotel in
                      self?.hotel = hotel
                  })
            .store(in: &cancellables)
    }
}

