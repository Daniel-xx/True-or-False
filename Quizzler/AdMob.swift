//
//  AdMob.swift
//  Quizzler
//
//  Created by Daniel Travers on 12/08/2017.
//  Copyright © 2017 Daniel Travers. All rights reserved.
//

import UIKit
import GoogleMobileAds

class AdMob: UIViewController{

var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        bannerView = GADBannerView(adSize: kGADAdSizeFullBanner)
        self.view.addSubview(bannerView)
        bannerView.adUnitID = "ca-app-pub-6962486061492477/2112150261"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
    }
    
    

}
