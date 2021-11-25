//
//  ViewController.swift
//  BigScrollDemo
//
//  Created by Hiram Castro on 24/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    let scroll:UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    let contentView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let titleLabel: UILabel = {
        return UILabel.makeLabel(withText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", fontSize: 25)
    }()
        
    let subtitleLabel: UILabel = {
        return UILabel.makeLabel(withText: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?", fontSize: 25)
    }()
    
    let stack:UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 16.0
        stack.backgroundColor = .blue
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let view1:UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let view2:UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let view3:UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let view4:UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let view5:UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let sectionLabel:UILabel = {
        return UILabel.makeLabel(withText: "Como funciona?", fontSize: 15)
    }()
    
    let collection:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        //layout.itemSize = CGSize(width: 200, height: 200)
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .yellow
        collection.translatesAutoresizingMaskIntoConstraints = false
        
        return collection
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .black
        
        addScrollView()
        addElementsToScroll()
    }
    
    private func addScrollView() {
        self.view.addSubview(scroll)
        scroll.addSubview(contentView)
        NSLayoutConstraint.activate([
            scroll.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0),
            scroll.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            scroll.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: 0),
            scroll.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
            
            contentView.centerXAnchor.constraint(equalTo: scroll.centerXAnchor, constant: 0),
            contentView.widthAnchor.constraint(equalTo: scroll.widthAnchor, constant: 0),
            contentView.topAnchor.constraint(equalTo: scroll.topAnchor, constant: 0),
            contentView.bottomAnchor.constraint(equalTo: scroll.bottomAnchor, constant: 0)
        ])
    }
    
    private func addElementsToScroll() {
        
//        stack.addArrangedSubview(view1)
//        stack.addArrangedSubview(view2)
//        stack.addArrangedSubview(view3)
//        stack.addArrangedSubview(view4)
//        stack.addArrangedSubview(view5)
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(subtitleLabel)
//        contentView.addSubview(stack)
        contentView.addSubview(sectionLabel)
        
        contentView.addSubview(collection)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            titleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 3/4),
            
            subtitleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            subtitleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 3/4),
            //subtitleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
//            stack.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
//            stack.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 20),
//            stack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
//            stack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//            stack.heightAnchor.constraint(equalToConstant: 300),
//
//            view1.widthAnchor.constraint(equalTo: stack.widthAnchor),
//            view1.heightAnchor.constraint(equalToConstant: 50),
//
//            view2.widthAnchor.constraint(equalTo: stack.widthAnchor),
//            view2.heightAnchor.constraint(equalToConstant: 50),
//
//            view3.widthAnchor.constraint(equalTo: stack.widthAnchor),
//            view3.heightAnchor.constraint(equalToConstant: 50),
//
//            view4.widthAnchor.constraint(equalTo: stack.widthAnchor),
//            view4.heightAnchor.constraint(equalToConstant: 50),
//
//            view5.widthAnchor.constraint(equalTo: stack.widthAnchor),
//            view5.heightAnchor.constraint(equalToConstant: 50),
            
            sectionLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            sectionLabel.leadingAnchor.constraint(equalTo: subtitleLabel.leadingAnchor, constant: 0),
            sectionLabel.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 20),
            
            collection.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            collection.topAnchor.constraint(equalTo: sectionLabel.bottomAnchor, constant: 20),
            collection.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            collection.heightAnchor.constraint(equalToConstant: 300),
            collection.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
        
        collection.register(ItemCell.self, forCellWithReuseIdentifier: "ItemCell")
        collection.dataSource = self
        collection.delegate = self
        
        collection.reloadData()
    }

}

extension ViewController:UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as? ItemCell
        else { return UICollectionViewCell() }
        
        print("cell size: \(cell.frame)")
        
        return cell
    }
    
}

extension ViewController:UICollectionViewDelegate {
    
}

class ItemCell:UICollectionViewCell {
    
    let view1:UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let view2:UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configCell() {
        self.contentView.backgroundColor = .blue
        
        self.contentView.addSubview(view1)
        // self.contentView.addSubview(view2)
        
        NSLayoutConstraint.activate([
            view1.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 0),
            view1.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: 0),
            view1.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            view1.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            view1.widthAnchor.constraint(equalToConstant: 200),
            view1.heightAnchor.constraint(equalToConstant: 200),
            
//            view2.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
//            view2.topAnchor.constraint(equalTo: view1.bottomAnchor, constant: 0),
//            view2.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
//            view2.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
//            view2.widthAnchor.constraint(equalToConstant: 200),
//            view2.heightAnchor.constraint(equalToConstant: 200),
//            view2.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: 0),
        ])
    }
    
}

extension UILabel {
    
    static func makeLabel(withText text:String, fontSize size:CGFloat = 10) -> UILabel {
        let label = UILabel()
        label.text = text
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: size)
        label.adjustsFontSizeToFitWidth = true
        label.sizeToFit()
        label.textColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
}
