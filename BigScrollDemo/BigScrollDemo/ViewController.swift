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
        return UILabel.makeLabel(withText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    }()
        
    let subtitleLabel: UILabel = {
        return UILabel.makeLabel(withText: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?")
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
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let view3:UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let view4:UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let view5:UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        
        stack.addArrangedSubview(view1)
        stack.addArrangedSubview(view2)
        stack.addArrangedSubview(view3)
        stack.addArrangedSubview(view4)
        stack.addArrangedSubview(view5)
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(subtitleLabel)
        contentView.addSubview(stack)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            titleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 3/4),
            
            subtitleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            subtitleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 3/4),
            //subtitleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            stack.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            stack.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 20),
            stack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            stack.heightAnchor.constraint(equalToConstant: 330),
            stack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            view1.widthAnchor.constraint(equalToConstant: 50),
            view1.heightAnchor.constraint(equalToConstant: 50),
            
            view2.widthAnchor.constraint(equalToConstant: 50),
            view2.heightAnchor.constraint(equalToConstant: 50),
            
            view3.widthAnchor.constraint(equalToConstant: 50),
            view3.heightAnchor.constraint(equalToConstant: 50),
            
            view4.widthAnchor.constraint(equalToConstant: 50),
            view4.heightAnchor.constraint(equalToConstant: 50),
            
            view5.widthAnchor.constraint(equalToConstant: 50),
            view5.heightAnchor.constraint(equalToConstant: 50),
        ])
    }

}

extension UILabel {
    
    static func makeLabel(withText text:String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
}
