//
//  indicatorXibView.swift
//  SurfTry
//
//  Created by Afnan on 19/04/2018.
//  Copyright © 2018 iSystematic. All rights reserved.
//

import UIKit

class indicatorXibView: UIView , UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    public var unfillImage : UIImage = UIImage()
    public var fillImage : UIImage? = UIImage()
    
     public var maximumNumberOfImages : Int = 5{
        didSet {
            self.collectionView.reloadData()
        }
    }
    
    public var selectedImage : Int?{
        didSet {
             self.collectionView.reloadData()
         }
    }
    
    func setScrollDirectionOfCollectionView(_ isHorizontal : Bool){
    if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
         flowLayout.scrollDirection = (isHorizontal == true ) ? .horizontal : .vertical
        collectionView.reloadData()
    }
    }
    
     override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
     }
    
    
    func setUpView(){
        //   DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {  [weak self ] in
        collectionView.frame = self.bounds
         let nib = UINib(nibName: "IndicatorImageCell", bundle: nil)
        self.collectionView?.register(nib, forCellWithReuseIdentifier: "IndicatorImageCell")
        self.collectionView?.delegate =  self
        self.collectionView?.dataSource =  self
        self.collectionView?.reloadData()
        // }
        
        
        //  collectionView.register(IndicatorImageCell.self, forCellWithReuseIdentifier: "IndicatorImageCell")
    }
    
    public func changeFrameOfColectionView(withframe frame : CGRect){
        self.collectionView?.frame = frame
        self.collectionView?.reloadData()
     }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "IndicatorImageCell", for: indexPath) as! IndicatorImageCell
         
       cell.indicatorImageView.image =  ( indexPath.row == selectedImage ) ? fillImage :  unfillImage
          return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return   maximumNumberOfImages
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          return unfillImage.size
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5.0
    }
}
