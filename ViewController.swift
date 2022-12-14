//
//  ViewController.swift
//  FoodApp
//
//  Created by Rushabh Shah on 10/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchFruitsListFromApiService()
    }

    func fetchFruitsListFromApiService() {
            let url = URL(string: "https://www.fruityvice.com/api/fruit/all")!
            
            URLSession.shared.dataTask(with: url) { data, response, error in
               
                
                do {
                    let getResponse = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)
                    
                    print(getResponse)
                    
                } catch {
                    print("error serializing JSON: \(error)")
                }
            }.resume()
        }


}

