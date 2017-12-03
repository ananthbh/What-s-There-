//
//  ViewController.swift
//  What's There?
//
//  Created by Ananth Bhamidipati on 03/12/17.
//  Copyright © 2017 Ananth Bhamidipati. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        openCamera()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func openCamera() {
        let captureSession = AVCaptureSession()
        captureSession.sessionPreset = .photo
        guard let captureDevice = AVCaptureDevice.default(for: .video) else { return }
        guard let inputDevice = try? AVCaptureDeviceInput(device: captureDevice) else { return }
        captureSession.addInput(inputDevice)
        captureSession.startRunning()
        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = self.view.frame
        self.view.layer.addSublayer(previewLayer)
    }

}

