//
//  AuthService.swift
//  alamo
//
//  Created by Alex Beattie on 9/9/17.
//  Copyright © 2017 Alex Beattie. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class AuthService {
    
    static let instance = AuthService()
    
    let defaults = UserDefaults.standard


    
    func getFeed() {
        Alamofire.request("\(AUTH_CODES)\(BASE_URL)\(ENDPOINT)").validate(contentType: ["application/json"]).responseJSON { response in
            
            
            switch response.result {
            case .success:
                print("Validation Successful")
            case .failure(let error):
                print(error)
            }

            
            
            if let json = response.result.value   {
                print("JSON: \(json)")

            
            }
        }
    }
}
