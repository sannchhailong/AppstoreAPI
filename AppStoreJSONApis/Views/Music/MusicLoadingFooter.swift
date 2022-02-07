//
//  MusicLoadingFooter.swift
//  AppStoreJSONApis
//
//  Created by Brian Voong on 3/15/19.
//  Copyright © 2019 Brian Voong. All rights reserved.
//

import UIKit

class MusicLoadingFooter: UICollectionReusableView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let aiv = UIActivityIndicatorView(style: .whiteLarge)
        aiv.color = .darkGray
        aiv.startAnimating()
        
        let label = UILabel(text: "Loading more...", font: .systemFont(ofSize: 16))
        label.textAlignment = .center
        
        let stackView = VerticalStackView(arrangedSubviews: [
            aiv, label
            ], spacing: 8)
        
        addSubview(stackView)
        stackView.centerInSuperview(size: .init(width: 200, height: 0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}
