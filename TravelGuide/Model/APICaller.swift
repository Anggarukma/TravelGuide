//
//  APICaller.swift
//  TravelGuide
//
//  Created by Hirtanto Angga on 30/08/22.
//

import Foundation


struct APICaller {
    
    func fetchData(completion: @escaping(travelModel) -> Void) {
        guard let url = URL (string: "https://tourism-api.dicoding.dev/list")
        else { return }
        let dataTask = URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                print("error fetching data: \(error.localizedDescription)")
            }
            
            guard let jsonData = data else { return }
            
            let decoder = JSONDecoder()
            
            do {
                let decodedData = try decoder.decode(travelModel.self, from: jsonData)
                completion(decodedData)
            } catch {
                print("error decoding data")
            }
        }
        
        dataTask.resume()
    }
}



