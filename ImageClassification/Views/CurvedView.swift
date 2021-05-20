//
//  CurvedView.swift
//  TFL Classify
//

import UIKit

class CurvedView: UIView {
    
    let cornerRadius: CGFloat = 24.0
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setMask()
        
    }
    
    // Sets a mask on the view to round it's corners
    func setMask() {
        
        let maskPath = UIBezierPath(roundedRect:self.bounds,
                                    byRoundingCorners: [.topLeft, .topRight],
                                    cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        
        let shape = CAShapeLayer()
        shape.path = maskPath.cgPath
        self.layer.mask = shape
    }
}
