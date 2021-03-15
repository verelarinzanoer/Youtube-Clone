//
//  Model.swift
//  Youtube Clone
//
//  Created by MACBOOK on 15/03/21.
//

import Foundation

class Model {
    
    // buat fungsi untuk ngambil data dari youtube API
    func getVideo(){
        
        // simpan URL ke dalam variabel
        let url = URL(string: Constants.API_URL)
        
        // kita cek url nya kosong apa tidak
        guard url != nil else {
            return
        }
        
        
        // mendapatkan URL_sesion dari object
        let session = URLSession.shared
        
         // session ibaratnya manager :untuk mengatur transfer
        let dataTask = session.dataTask(with: url!) { (data, response, error)  in
        // cek kalo ada error
        if error != nil || data == nil {
            return
        }
            
        }
        // mulai bekerja
        dataTask.resume()
    }
}
