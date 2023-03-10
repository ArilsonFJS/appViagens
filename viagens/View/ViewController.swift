//
//  ViewController.swift
//  viagens
//
//  Created by Arilson Silva on 11/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    //Criando uma referencia da tabela
    @IBOutlet weak var viagensTableView: UITableView!
    
    //Metodo que exibe as informacoes na tela
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*Definindo o protocolo que sera implementado, neste caso,
         como o ViewController implementa UITableViewDataSource então ela mesmo sera definida como dataSource.*/
        viagensTableView.dataSource = self
        viagensTableView.delegate = self
        
        //definindo a cor de fundo do app com a mesma cor do header
        view.backgroundColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 119.0/255.0, alpha: 1)
    }

}

                        //Protocolo para trabalhar com celulas
extension ViewController: UITableViewDataSource {
    
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
                            
                          //Protocolo para acesso aos metodos do Header da TableView
extension ViewController: UITableViewDelegate {
    
    //Metodo para buscar qual View sera exibido no header da TableView
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        //Buscar o arquivo do Header pelo nome
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        headerView?.configuraView()
        
        return headerView
    }
    
    
    //Metodo para definir a altura do TableView
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
}
