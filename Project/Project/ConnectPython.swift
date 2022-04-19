//
//  ConnectPython.swift
//  Project
//
//  Created by Andrea Marino on 4/13/22.
//

import Foundation
import PythonKit

func RunPythonScript() -> PythonObject {
    let sys = Python.import("sys")
    sys.path.append("/Users/andreamarino/Documents/Project/Project/")
    let file = Python.import("PythonTester")
    
    let response = file.hello()
    print(response)
    return response
}

