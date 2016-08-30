//
//  ViewController.swift
//  SnapDevChat
//
//  Created by Pavlos Nicolaou on 30/08/2016.
//  Copyright © 2016 Pavlos Nicolaou. All rights reserved.
//

import UIKit

class CameraVC: AAPLCameraViewController {

    @IBOutlet weak var previewView: AAPLPreviewView!
    
    override func viewDidLoad() {
        _previewView = previewView
        
        super.viewDidLoad()
    }

    @IBAction func recordBtnPressed(_ sender: AnyObject) {
        
        toggleMovieRecording()
    }
   
    @IBAction func changeCameraBtnPressed(_ sender: AnyObject) {
        changeCamera()
    }

}

