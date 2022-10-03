//
//  ViewController.swift
//  Delegate Ornek
//
//  Created by Batuhan Alp Kurban on 3.10.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtKullaniciAdi: UITextField!
    
    
    @IBOutlet weak var lblResult: UILabel!
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtKullaniciAdi.delegate = self
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        lblResult.text = "kullanıcı adınız : \(textField.text!)"
       // lblResult.text = string
        
        if textField.tag == 1{
            //kullanıcı adı
            lblResult.text = "kullanıcı adınız : \(textField.text!)"
        }
        else if textField.tag == 2{
            //parola
            lblResult.text = "parolanız : \(textField.text!)"
        }
        
        return true
    }

}

