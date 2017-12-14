//
//  ArticleService.swift
//  MVPArchitecture
//
//  Created by Raksmey on 12/14/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation
import Alamofire

class ArticleService {
    var delegate: ArticleServiceProtocol?
    var headers = ["Content-Type": "Application/json",
                   "Authorization": "Basic QU1TQVBJQURNSU46QU1TQVBJUEBTU1dPUkQ=",
                   "Accept": "Application/json"
                   ]
    var api_get = URL(string: "http://api-ams.me/v1/api/articles?page=1&limit=15")
    
    func getData() {
        Alamofire.request(api_get!, method: .get, headers: headers).responseJSON(completionHandler: <#T##(DataResponse<Any>) -> Void#>)
    }
}







