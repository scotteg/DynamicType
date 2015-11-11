//
//  SegmentedControl.swift
//  DynamicType
//
//  Created by Scott Gardner on 11/11/15.
//  Copyright © 2015 Scott Gardner. All rights reserved.
//

import UIKit

@IBDesignable class SegmentedControl: UISegmentedControl {
  
  @IBInspectable var apportionWidths: Bool = false {
    didSet {
      apportionsSegmentWidthsByContent = apportionWidths
    }
  }
  
}
