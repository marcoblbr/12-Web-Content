//
//  ViewController.swift
//  12 - Web Content
//
//  Created by Marco Linhares on 6/17/15.
//  Copyright (c) 2015 Marco Linhares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var url = NSURL (string: "http://www.stackoverflow.com")
        
        // o conteúdo de dentro do task é executado quando a url é lida. São retornadas 3 variáveis, data, response e error que podem ser tratadas dentro da função.
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, error) in
            if error != nil {
                println (error)
            } else {
                // lê uma url do disco e mostra em código html
                println (NSString (data: data, encoding: NSUTF8StringEncoding)!)
            }
        }
        
        // o comando abaixo executa a declaração acima
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

