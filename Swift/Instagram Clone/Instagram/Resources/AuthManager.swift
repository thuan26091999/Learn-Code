//
//  AuthManager.swift
//  Instagram
//
//  Created by Thuận Nguyễn Văn on 11/12/2020.
//


import FirebaseAuth


public class AuthManager{
    
    static let shared = AuthManager()
    
    //MARK: Public
    public func registerNewUser(Username: String, Email: String, Password: String, Completion: @escaping (Bool) -> Void )
    {
        /*
            - Check if username is avaialble
            - Check if email is available
         */
        
        DatabaseManager.shared.canCreateNewUser(with: Email, username: Username) { canCreate in
            if canCreate{
                /*
                 - Create Account
                 - Insert Account to database
                 */
                Auth.auth().createUser(withEmail: Email, password: Password) { result, error in
                    guard result != nil , error == nil else {
                        //Firebase auth couldn't create Account
                        Completion(false)
                        return
                    }
                    //Insert Into Database
                    DatabaseManager.shared.insertNewUser(with: Email, username: Username) { inserted in
                        
                        if inserted{
                            Completion(true)
                            return
                        }
                        else{
                            //Failed To Insert To Database:
                            Completion(false)
                            return
                        }
                    }
                }
                
            }
            else{
                //Either Username or Email does not exist
                Completion(false)
            }
        }
        
    }
    
    
    
    public func loginUser(Username: String?, Email: String? , Password: String, Completion: @escaping ((Bool) -> Void))
    {
        if let email = Email{
            //Email Login
            Auth.auth().signIn(withEmail: email, password: Password) { authResult, error in
                guard authResult != nil, error == nil else{
                    Completion(false)
                    return
                }
                Completion(true)
            }
        }
        else if let username = Username{
            print(username)
        }
        
    }
    
    
    
    /// Attempt to log out firebase user
    public func logOut(completion: (Bool) -> Void){
        do{
            try Auth.auth().signOut()
            completion(true)
            return
        }
        catch{
            print(error)
            completion(false)
            return
        }
        
    }
    
}
