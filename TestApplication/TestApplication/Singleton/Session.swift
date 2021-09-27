//
//  Session.swift
//  TestApplication
//
//  Created by KONSTANTIN TISHCHENKO on 27.09.2021.
//
import KeychainAccess

final class Session {
    
    let keychain: Keychain = Keychain(service: "com.KonstantinTishchenko.TestApplication")
    
    var userName: String?
    var password: String?
    
    static var shared = Session()
    
    private init(){}
    
     func getToken() {
         if !keychain.allItems().isEmpty {
             userName = keychain.allKeys()[0]
             password = keychain["\(userName!)"]
         }
    }
}
