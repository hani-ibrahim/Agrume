//
//  AgrumeImageView.swift
//  Agrume
//
//  Created by Hani Ibrahim Ibrahim Eloksh on 01.08.17.
//  Copyright © 2017 Schnaub. All rights reserved.
//

import Foundation

public class AgrumeImageView: UIView {
  public var innerImageView: UIImageView?
  
  required public override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

public class DefaultAgrumeImageView: AgrumeImageView {
  
  public required init(frame: CGRect) {
    super.init(frame: frame)
    innerImageView = UIImageView(frame: bounds)
    innerImageView?.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    addSubview(innerImageView!)
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
