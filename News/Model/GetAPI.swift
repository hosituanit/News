//
//  getAPI.swift
//  News
//
//  Created by Hồ Sĩ Tuấn on 8/3/20.
//  Copyright © 2020 Hồ Sĩ Tuấn. All rights reserved.
//

import Foundation
import MBProgressHUD

class GetAPI {
    func getFromAPI<T: Codable>(for: T.Type = T.self, urlString: String, completionHandler: @escaping (T) -> () ) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            session.dataTask(with: url, completionHandler: {
                (data, response, error) in
                if (error != nil) {
                    print(error!)
    
                    return
                }
                if let dataRespone = data {
                    if let result:T = self.parseJSON(data: dataRespone) {
                        completionHandler(result)
                    }
                    else {
                        print("nil result")
                    }
                }
            }).resume()
        }
    }
    
    func parseJSON<T: Codable>(data: Data) -> T?  {
        let decode = JSONDecoder()
        do {
            let result = try decode.decode(T.self, from: data)
            return result
        } catch {
            print(error)
            return nil
        }
    }
}
