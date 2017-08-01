//
//  AgrumeImageView.swift
//  Agrume
//
//  Created by Hani Ibrahim Ibrahim Eloksh on 01.08.17.
//  Copyright © 2017 Schnaub. All rights reserved.
//

import Foundation

open class AgrumeImageView: UIView {
  
  private lazy var imageView: UIImageView = {
    let imageView = UIImageView(frame: self.bounds)
    imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    imageView.contentMode = .scaleAspectFit
    imageView.isUserInteractionEnabled = true
    imageView.clipsToBounds = true
    imageView.layer.allowsEdgeAntialiasing = true
    return imageView
  }()
  
  open var image: UIImage? {
    get {
      return imageView.image
    }
    set {
      imageView.image = newValue
    }
  }
  
  required public override init(frame: CGRect) {
    super.init(frame: frame)
    addSubview(imageView)
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
