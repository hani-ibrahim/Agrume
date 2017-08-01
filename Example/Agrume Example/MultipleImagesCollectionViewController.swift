//
//  Copyright © 2016 Schnaub. All rights reserved.
//

import UIKit
import Agrume

final class MultipleImagesCollectionViewController: UICollectionViewController {

  private let identifier = "Cell"

  private let images = [
    UIImage(named: "MapleBacon")!,
    UIImage(named: "EvilBacon")!
  ]

  override func viewDidLoad() {
    super.viewDidLoad()

    let layout = collectionView?.collectionViewLayout as! UICollectionViewFlowLayout
    layout.itemSize = CGSize(width: view.bounds.width, height: view.bounds.height)
  }

  // MARK: UICollectionViewDataSource

  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return images.count
  }

  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! DemoCell
    cell.imageView.image = images[indexPath.row]
    return cell
  }

  // MARK: UICollectionViewDelegate

  override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    let agrume = Agrume(images: images, startIndex: indexPath.row, backgroundBlurStyle: .light)
    agrume.agrumeImageViewType = OverlayImageView.self
    agrume.didScroll = { [unowned self] index in
      self.collectionView?.scrollToItem(at: IndexPath(row: index, section: 0), at: [], animated: false)
    }
    agrume.showFrom(self)
  }
  
}

class OverlayImageView: AgrumeImageView {
  
  required init(frame: CGRect) {
    super.init(frame: frame)
    addOverlay()
  }
  
  func addOverlay() {
    guard viewWithTag(100) == nil else { return }
    let overlayView = UIView(frame: bounds)
    overlayView.backgroundColor = .red
    overlayView.tag = 100
    overlayView.frame.size.height = 200
    overlayView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    addSubview(overlayView)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
