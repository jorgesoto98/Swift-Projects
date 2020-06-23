//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Jorge Soto on 22/06/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Story{
    let title:String
    let choice1:String
    let choice2:String
    let choice1Destination:Int
    let choice2Destination:Int

    init(t:String , ch1:String ,ch1D:Int ,ch2:String ,ch2D:Int) {
        title = t
        choice1 = ch1
        choice2 = ch2
        choice1Destination = ch1D
        choice2Destination = ch2D
    }
}
