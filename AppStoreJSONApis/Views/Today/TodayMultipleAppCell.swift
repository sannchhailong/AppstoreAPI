//
//  TodayMultipleAppCell.swift
//  AppStoreJSONApis
//
//  Created by Brian Voong on 3/2/19.
//  Copyright © 2019 Brian Voong. All rights reserved.
//

import UIKit

class TodayMultipleAppCell: BaseTodayCell {
    
    override var todayItem: TodayItem! {
        didSet {
            categoryLabel.text = todayItem.category
            titleLabel.text = todayItem.title
            
            multipleAppsController.apps = todayItem.apps
            multipleAppsController.collectionView.reloadData()
            multipleAppsController.collectionView.backgroundColor = .white
        }
    }
    
    let categoryLabel = UILabel(text: "LIFE HACK", font: .boldSystemFont(ofSize: 20))
    let titleLabel = UILabel(text: "Utilizing your Time", font: .boldSystemFont(ofSize: 32), numberOfLines: 2)
    
    let multipleAppsController = TodayMultipleAppsController(mode: .small)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        [categoryLabel, titleLabel].forEach{$0.textColor = .black}
        backgroundColor = .white
        layer.cornerRadius = 16
        
        let stackView = VerticalStackView(arrangedSubviews: [
            categoryLabel,
            titleLabel,
            multipleAppsController.view
            ], spacing: 12)
        
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 24, left: 24, bottom: 24, right: 24))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}
