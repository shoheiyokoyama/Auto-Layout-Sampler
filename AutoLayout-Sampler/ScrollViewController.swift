//
//  ScrollViewController.swift
//  AutoLayout-Sampler
//
//  Created by 横山祥平 on 2016/08/04.
//  Copyright © 2016年 Shohei. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentViewWidth: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         1. scrollViewと親viewの上下左右を揃える
         2. scrollViewとscrollview子viewを上下左右を揃える
         3. scrollViewとscrollview子viewに対して、scroll方向じゃない方向をequalにする（横スクロールならequalHeight）
         4. scroll方向に制約をつければautolayoutでscrollViewを扱える。（コードで制約を変更すればスクロール領域がキ決まる）
         http://d.hatena.ne.jp/shu223/20141030/1414623275
         */
        
        let width = view.bounds.width
        let height = view.bounds.height
        
        let view1 = UIView(frame: CGRect(x: width * 0, y: 0, width: width, height: height))
        view1.backgroundColor = UIColor.red
        contentView.addSubview(view1)
        let view2 = UIView(frame: CGRect(x: width * 1, y: 0, width: width, height: height))
        view2.backgroundColor = UIColor.blue
        contentView.addSubview(view2)
        let view3 = UIView(frame: CGRect(x: width * 2, y: 0, width: width, height: height))
        view3.backgroundColor = UIColor.green
        contentView.addSubview(view3)
        
        contentViewWidth.constant = width * 2 + width
        
        scrollView.isPagingEnabled = true
        print(scrollView.bounds, scrollView.contentSize)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
