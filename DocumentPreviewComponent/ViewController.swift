//
//  ViewController.swift
//  DocumentPreviewComponent
//
//  Created by Amit Kumar Panda03 on 09/02/18.
//  Copyright © 2018 Amit Kumar Panda03. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func docButtonTapped(_ sender: Any) {
        showDocument(document: "sample.doc")
    }
    
    @IBAction func pdfButtonTapped(_ sender: Any) {
        showDocument(document: "sample.pdf")
    }
    
    @IBAction func pptButtonTapped(_ sender: Any) {
        showDocument(document: "sample.pptx")
    }
    
    @IBAction func txtButtonTapped(_ sender: Any) {
        showDocument(document: "sample.txt")
    }
    
    @IBAction func xlsButtonTapped(_ sender: Any) {
        showDocument(document: "sample.xlsx")
    }
    
    func showDocument(document:String)
    {
        let quickLookVC = QuickLookViewController(documentName: document)
        quickLookVC.dataSource = quickLookVC
        self.present(quickLookVC, animated: true, completion: nil)
    }
    
    
}

