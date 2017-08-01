//
//  AgrumeImageView.swift
//  Agrume
//
//  Created by Hani Ibrahim Ibrahim Eloksh on 01.08.17.
//  Copyright © 2017 Schnaub. All rights reserved.
//

import Foundation

open class AgrumeImageView: UIView {
  public var innerImageView: UIImageView
  
  required public override init(frame: CGRect) {
    innerImageView = UIImageView(frame: CGRect(origin: .zero, size: frame.size))
    super.init(frame: frame)
    innerImageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    addSubview(innerImageView)
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
