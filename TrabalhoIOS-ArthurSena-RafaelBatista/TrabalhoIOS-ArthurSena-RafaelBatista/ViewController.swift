//
//  ViewController.swift
//  TrabalhoIOS-ArthurSena-RafaelBatista
//
//  Created by COTEMIG on 16/09/20.
//  Copyright © 2020 ArthurSenaRafaelBatista. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var dicionario = ["teste":"valor"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

    let urlString = "https://trabalhoartigosgeek.herokuapp.com/artigosgeek"
    if let url = URL(string: urlString) {
        let urlSession = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data {
                print(String(data: data, encoding: .utf8) ?? "")
                
                let json = JSONSerialization.jsonObject(with: data, options: .allowFragments)
            }
        }
        URLSession.resume()
    }


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
