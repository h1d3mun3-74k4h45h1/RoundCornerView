//
//  UIViewExtension.swift
//  RoundCornerView
//
//  Created by hidemune on 12/12/18.
//  Copyright © 2018 Hidemune Takahashi. All rights reserved.
//

import UIKit

extension UIView: RoundCornerViewCompatible {}

extension RoundCornerView where Base: UIView {
    func makeRound(corners: UIRectCorner, cornerRadius: CGFloat) {
        let path = UIBezierPath(roundedRect: base.bounds,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        base.layer.mask = mask
    }
}

