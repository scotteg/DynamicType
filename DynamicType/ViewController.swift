//
//  ViewController.swift
//  DynamicType
//
//  Created by Scott Gardner on 11/11/15.
//  Copyright © 2015 Scott Gardner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var label: UILabel!
  @IBOutlet weak var segmentedControl: SegmentedControl!
  @IBOutlet weak var button: UIButton!
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var textView: UITextView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    segmentedControl.setTitleTextAttributes([NSFontAttributeName: UIFont.preferredFontForTextStyle(UIFontTextStyleCaption1)], forState: .Normal)
    registerForNotifications()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  deinit {
    NSNotificationCenter.defaultCenter().removeObserver(self)
  }
  
  func userTextSizeDidChange() {
    label.font = UIFont.preferredFontForTextStyle(UIFontTextStyleTitle1)
    segmentedControl.setTitleTextAttributes([NSFontAttributeName: UIFont.preferredFontForTextStyle(UIFontTextStyleCaption1)], forState: .Normal)
    button.titleLabel?.font = UIFont.preferredFontForTextStyle(UIFontTextStyleCallout)
    textField.font = UIFont.preferredFontForTextStyle(UIFontTextStyleFootnote)
    textView.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
  }
  
  func registerForNotifications() {
    NSNotificationCenter.defaultCenter().addObserver(self, selector: "userTextSizeDidChange", name: UIContentSizeCategoryDidChangeNotification, object: nil)
  }

}
