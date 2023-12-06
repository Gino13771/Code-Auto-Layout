//
//  SearchResultCellView.swift
//  Code Auto Layout
//
//  Created by 凱聿蔡凱聿 on 2023/12/6.
//

import UIKit

class SearchResultCellView: UICollectionViewCell {
    
    static let identifier = "SearchResultCellId"

       override var reuseIdentifier: String? {
           return SearchResultCellView.identifier
       }
       override init(frame: CGRect) {
            super.init(frame: frame)
    }

       required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
    // 用於 appicon
        let appIconImageView: UIImageView = {
            let iv = UIImageView()
            iv.backgroundColor = .red

            // 約束寬度=64
            iv.widthAnchor.constraint(equalToConstant: 64).isActive = true
            // 約束高度=64
            iv.heightAnchor.constraint(equalToConstant: 64).isActive = true

            // 約束圓角=12
            iv.layer.cornerRadius = 12
            return iv
        }()

        // 用於應用名稱
        let nameLabel: UILabel = {
            let label = UILabel()
            label.text = "應用名稱"
            return label
        }()

        // 用於應用種類
        let categoryLabel: UILabel = {
            let label = UILabel()
            label.text = "生產力工具"
            return label
        }()

        // 用於應用大小
        let ratingsLabel: UILabel = {
            let label = UILabel()
            label.text = "54.87M"
            return label
        }()

        // 用於應用取得按鈕
        let getButton: UIButton = {
            let button = UIButton(type: .system)
            button.setTitle("取得", for: .normal)
            button.setTitleColor(.blue, for: .normal)
            button.titleLabel?.font = .boldSystemFont(ofSize: 14)
            button.backgroundColor = UIColor(white: 0.95, alpha: 1)

            // 約束寬度=80
            button.widthAnchor.constraint(equalToConstant: 80).isActive = true
            // 約束高度=32
            button.heightAnchor.constraint(equalToConstant: 32).isActive = true
            // 圓角=16
            button.layer.cornerRadius = 16
            return button
        }()
    
}
