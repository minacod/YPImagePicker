//
//  YPPagerMenu.swift
//  YPImagePicker
//
//  Created by Sacha DSO on 24/01/2018.
//  Copyright © 2016 Yummypets. All rights reserved.
//

import UIKit
import Stevia

final class YPPagerMenu: UIView {
    
    var didSetConstraints = false
    var menuItems = [YPMenuItem]()
    
    convenience init() {
        self.init(frame: .zero)
        backgroundColor = .offWhiteOrBlack
        clipsToBounds = true
    }
    
    var separators = [UIView]()
    
    func setUpMenuItemsConstraints() {
        let hack_ScreenWidth : CGFloat = UIDevice.current.userInterfaceIdiom == .pad ? 500 : UIScreen.main.bounds.width
        let menuItemWidth: CGFloat = hack_ScreenWidth / CGFloat(menuItems.count)
        var previousMenuItem: YPMenuItem?
        for m in menuItems {
            sv(
                m
            )
            
            m.fillVertically().width(menuItemWidth)
            if let pm = previousMenuItem {
                pm-0-m
            } else {
                |m
            }
            
            previousMenuItem = m
        }
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        if !didSetConstraints {
            setUpMenuItemsConstraints()
        }
        didSetConstraints = true
    }
    
    func refreshMenuItems() {
        didSetConstraints = false
        updateConstraints()
    }
}
