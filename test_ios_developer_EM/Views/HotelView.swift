//
//  HotelView.swift
//  test_ios_developer_EM
//
//  Created by Pavel Krigin on 14.09.2023.
//

import Foundation
import SwiftUI

struct HotelView: View {
    @ObservedObject var viewModel: HotelViewModel

    var body: some View {
        if let hotel = viewModel.hotel {
            ScrollView {
                
                Text(hotel.name)
                Text(hotel.address)
               
            }
        } else {
            ProgressView() // Отображение индикатора загрузки, пока данные загружаются
        }
    }
}
