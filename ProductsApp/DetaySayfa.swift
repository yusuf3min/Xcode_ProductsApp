//
//  DetaySayfa.swift
//  ProductsApp
//
//  Created by yusufeminguney on 29.04.2024.
//

import UIKit

class DetaySayfa: UIViewController {
    
    @IBOutlet weak var labelUrunFiyat: UILabel!
    @IBOutlet weak var imageViewUrun: UIImageView!
    var urun:Urunler?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let u = urun {
            self.navigationItem.title = u.ad
            imageViewUrun.image = UIImage(named: u.resim!)
            labelUrunFiyat.text = "\(u.fiyat!) ₺"
        }
        
        
    }
    
    
    @IBAction func buttonSepeteEkle(_ sender: Any) { if let u = urun {
        print("Detay Sayfa : \(u.ad!) sepete eklendi.")
    }
    }
}
