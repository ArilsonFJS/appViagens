//
//  HomeTableViewHeader.swift
//  viagens
//
//  Created by Arilson Silva on 12/01/23.
//

import UIKit

//Classe criada para fazer a ligacao da View header com o ViewController
class HomeTableViewHeader: UIView {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var bannerView: UIView!
    
    func configuraView(){
        headerView.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
        
        //Arredondando o banner
        bannerView.layer.cornerRadius = 10
        bannerView.layer.masksToBounds = true
        
        headerView.layer.cornerRadius = 500
        headerView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
}
