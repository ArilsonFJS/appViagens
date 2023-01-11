//
//  ViewController.swift
//  viagens
//
//  Created by Arilson Silva on 11/01/23.
//

import UIKit
                                        //Protocolo para trabalhar com celulas
class ViewController: UIViewController, UITableViewDataSource {
    
    //Criando uma referencia da tabela
    @IBOutlet weak var viagensTableView: UITableView!
    
    //Metodo que exibe as informacoes na tela
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*Definindo o protocolo que sera implementado, neste caso,
         como o ViewController implementa UITableViewDataSource então ela mesmo sera definida como dataSource.*/
        viagensTableView.dataSource = self
    }

    //Neste metodo e passado a quantidade de linhas que sera exibida dentro da TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    //Neste metodo e definido qual sera a celula para cada linha
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //criando variavel para a celula
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        //Inserindo uma mensagem na propriedade text da celula, pegando qual a posicao da celula pelo index
        cell.textLabel?.text = "Viagem \(indexPath.row)"
        
        return cell
    }

}

