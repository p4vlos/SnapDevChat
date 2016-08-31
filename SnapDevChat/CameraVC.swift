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
        guard FIRAuth.auth()?.currentUser != nil else {
            //load login vc
            performSegue(withIdentifier: "LoginVC", sender: nil)
            return
        }
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
    func videoRecordingFailed() {
        
        
    }
    
    func videoRecordingComplete(_ videoURL: URL!) {
        performSegue(withIdentifier: "UsersVC", sender: ["videoURL":videoURL])
        
    }
    
    func snapshotFailed() {
        
        
    }
    
    func snapshotTaken(_ snapshotData: Data!) {
        performSegue(withIdentifier: "UsersVC", sender: ["snapshotData":snapshotData])
        
    }
    
    func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        if let usersVC = segue.destination as? UsersVC {
            if let videoDict = sender as? Dictionary<String, URL> {
                let url = videoDict["videoURL"]
                usersVC.videoURL = url
            } else if let snapDict = sender as? Dictionary<String, Data> {
                let snapData = snapDict["snapshotData"]
                usersVC.snapData = snapData
            }
        }
    }
}

