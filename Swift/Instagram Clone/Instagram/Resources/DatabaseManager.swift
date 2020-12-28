//
//  DatabaseManager.swift
//  Instagram
//
//  Created by Thuận Nguyễn Văn on 10/12/2020.
//

import FirebaseDatabase


public class DatabaseManager{
    
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    
    //MARK: Public
    
    /// Check If email and username is available
    /// - Parameters:
    ///     - email: String representing email
    ///     - username: String representing username
    
    public func canCreateNewUser(with email: String, username: String, completion: (Bool) -> Void){
        completion(true)
    }
    
    /// Insert New User Data to database
    /// - Parameters:
    ///     - email: String representing email
    ///     - username: String representing username
    ///     - completion: Async fallback for result if database entry succeded
    public func insertNewUser(with email: String, username: String, completion: @escaping (Bool) -> Void)
    {
        database.child(email.safeDatabaseKey()).setValue(["username": username]) { error, _ in
            if  error == nil{
                //Success
                completion(true)
                return
            }
            else{
                //Failed
                completion(false)
                return
                
                
            }
        }
    }
    
    
    //MARK: Private
    
}
