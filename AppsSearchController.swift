//
//  AppsSearchController.swift
//  Code Auto Layout
//
//  Created by 凱聿蔡凱聿 on 2023/12/6.
//

import UIKit

class AppsSearchController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 設置 collectionView 白色背景
        collectionView.backgroundColor = .white

        // 註冊 collectionView cell
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
        
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        // 設置 cell 長寬，寬=整個螢幕寬，高=350
        return .init(width: view.frame.width, height: 350)
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // 產生 5 個 cell
        return 5
    }
    

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        
        // 對每個 cell 設置不同背景，讓我們分辨得出來
        cell.backgroundColor = .init(red: 155/255, green: 233/255, blue: 29/255, alpha: CGFloat(0.2 * Double(indexPath.item)))
        return cell
    }
    

    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
