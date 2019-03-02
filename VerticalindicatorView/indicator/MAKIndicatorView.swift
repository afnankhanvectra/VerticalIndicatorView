//
//  SWIndicatorView.swift
//  SurfTry
//
//  Created by Afnan on 19/04/2018.
//  Copyright © 2018 iSystematic. All rights reserved.
//

import UIKit

@IBDesignable
open class MAKIndicatorView: UIView {
     //MARK: inspectable
    @IBInspectable
    public var unfillImage : UIImage = UIImage(){
        didSet {
            view.unfillImage = unfillImage
        }
    }
    @IBInspectable
    public var fillImage : UIImage = UIImage(){
        didSet {
            view.fillImage = fillImage
        }
    }
    
    @IBInspectable
    public var maxiumNumberOfImages : Int = 1{
        didSet {
            view.maximumNumberOfImages = maxiumNumberOfImages
        }
    }
    @IBInspectable
    public var isHorizontal : Bool = true{
        didSet {
            view.setScrollDirectionOfCollectionView(isHorizontal)
         }
    }
    public var selectedImage : Int?{
        didSet {
            view.selectedImage = selectedImage
         }
    }


    //---------------------------------------------------------------------------------------------------
    //MARK: IBOutlet
 
    var view: indicatorXibView!
    
    //MARK: life cycle
    //---------------------------------------------------------------------------------------------------

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpView()
    }
    
    func setUpView(){
         xibSetup()
    }
    
    
    
    //---------------------------------------------------------------------------------------------------

    //MARK: Set up
    func xibSetup() {
        view = loadViewFromNib()
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        // Make the view stretch with containing view
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        // Adding custom subview on top of our view (over any custom drawing > see note below)
         view.changeFrameOfColectionView(withframe: bounds)
        addSubview(view)
     }
    
    func loadViewFromNib() -> indicatorXibView {
        view =  Bundle.main.loadNibNamed("indicatorXibView", owner: nil, options: nil)![0] as! indicatorXibView
        return view
        
    }
    
   
}


