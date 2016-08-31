//
//  ViewController.swift
//  SnapDevChat
//
//  Created by Pavlos Nicolaou on 30/08/2016.
//  Copyright © 2016 Pavlos Nicolaou. All rights reserved.
//

import UIKit
import FirebaseAuth

class CameraVC: AAPLCameraViewController, AAPLCameraVCDelegate{

    @IBOutlet weak var cameraBtn: UIButton!
    @IBOutlet weak var previewView: AAPLPreviewView!
    @IBOutlet weak var recordBtn: UIButton!
    
    override func viewDidLoad() {
        delegate = self
        _previewView = previewView
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
       // guard FIRAuth.auth()?.currentUser != nil else {
            //load login vc
            performSegue(withIdentifier: "LoginVC", sender: nil)
     //       return
     //   }
    }
    @IBAction func recordBtnPressed(_ sender: AnyObject) {
        
        toggleMovieRecording()
    }
   
    @IBAction func changeCameraBtnPressed(_ sender: AnyObject) {
        changeCamera()
    }
    
    func shouldEnableCameraUI(_ enable: Bool) {
        cameraBtn.isEnabled = enable
        print("Should enable camera UI")
    }
    
    func shouldEnableRecordUI(_ enable: Bool) {
        recordBtn.isEnabled = enable
        print("Should enable record UI")
    }
    
    func recordingHasStarted() {
        print("Recording has started")
    }
    
    func canStartRecording() {
        print("Can start recording")
    }
}

