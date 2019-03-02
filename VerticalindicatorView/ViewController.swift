//
//  ViewController.swift
//  VerticalindicatorView
//
//  Created by Afnan Khan on 3/2/19.
//  Copyright © 2019 Afnan Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var indicatorView: MAKIndicatorView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var demoIamges = ["demo_1","demo_2","demo_3","demo_4","demo_5","demo_6"]
    override func viewDidLoad() {
        super.viewDidLoad()
        indicatorView.selectedImage = 0
        indicatorView.maxiumNumberOfImages = demoIamges.count

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
    }
}



extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return demoIamges.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "MAKCollectionViewCell", for: indexPath) as! MAKCollectionViewCell
        cell.imageView.image = UIImage(named: demoIamges[indexPath.row])
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.frame.size
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        var visibleRect = CGRect()
        visibleRect.origin = self.collectionView.contentOffset
        visibleRect.size = self.collectionView.bounds.size
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        var visibleIndexPath : IndexPath?
        visibleIndexPath = (self.collectionView.indexPathForItem(at: visiblePoint))
        indicatorView.selectedImage = visibleIndexPath?.row

        
    }
}
