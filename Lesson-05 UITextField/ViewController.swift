//
//  ViewController.swift
//  Lesson-05 UITextField
//
//  Created by Adam的Apple on 2024/4/2.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addTextField()
    }

    func addTextField() {
        //创建UITextField
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width:300, height: 50))
        //设置边框式样为圆角矩形
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        //居中显示
        textField.center = CGPoint(x: view.bounds.width/2, y: view.bounds.height/2)
        //要设置圆角半径masksToBounds 设置为true
        textField.layer.masksToBounds = true
        //修改圆角的半径大小
        textField.layer.cornerRadius = 10.0
        //边框粗细
        textField.layer.borderWidth = 2.0
        //边框颜色
        textField.layer.borderColor = UIColor.red.cgColor
        //设置文本框提示文字
        textField.placeholder = "please input your name"
        //当文字超出文本框宽度时，自动调整文字大小
        textField.adjustsFontSizeToFitWidth = true
        //最小可缩小的字号
        textField.minimumFontSize = 14
        //显示清除按钮
        textField.clearButtonMode = .always
        //输入内容显示小黑点(输入敏感信息时使用)
        //textField.isSecureTextEntry = true
        //添加到视图中
        view.addSubview(textField)
    }

}

