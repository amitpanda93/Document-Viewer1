//
//  QuickLookViewController.swift
//  DocumentPreviewComponent
//
//  Created by Amit Kumar Panda03 on 15/02/18.
//  Copyright © 2018 Amit Kumar Panda03. All rights reserved.
//

import UIKit
import QuickLook

class QuickLookViewController: QLPreviewController, QLPreviewControllerDataSource, QLPreviewControllerDelegate
{
    
    var documentURL = NSURL()
    var documentName = String()
//    let quickLookController = QLPreviewController()
    
    init(documentName:String)
    {
        super.init(nibName: nil, bundle: nil)
        self.documentName = documentName
        self.prepareFileURLs(file:documentName)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        return 1
    }
    
    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        return documentURL
    }

    func prepareFileURLs(file:String)
    {
        
        let fileParts = file.components(separatedBy: ".")
        if let url = Bundle.main.url(forResource: fileParts[0], withExtension: fileParts[1])
        {
            if FileManager.default.fileExists(atPath: url.path)
            {
                self.documentURL =  url as NSURL
            }
        }
    }
    

}
