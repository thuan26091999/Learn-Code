//
//  SettingsViewController.swift
//  Instagram
//
//  Created by Thuận Nguyễn Văn on 10/12/2020.
//

import UIKit

struct SettingCellModel {
    let title: String
    let handler: (() -> Void)
}

///View Controller to show user setting
final class SettingsViewController: UIViewController {

    private let tableView:UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(UITableView.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    private var data = [[SettingCellModel]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        configureModels()

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        
    }
    
    private func configureModels(){
        let section = [SettingCellModel(title: "Log Out", handler: { [weak self] in
            self?.didTapLogOut()
        })]
        data.append(section)
    }
    
    private func didTapLogOut(){
        AuthManager.shared.logOut { success in
            DispatchQueue.main.async {
                if success {
                    //Present Log In
                    let loginVC = LoginViewController()
                    loginVC.modalPresentationStyle = .fullScreen
                    self.present(loginVC, animated: true){
                        self.navigationController?.popToRootViewController(animated: false)
                        self.tabBarController?.selectedIndex = 0
                    }
                    return
                    
                }
                else{
                    // Error Occurred
                    return
                }

            }
        }
    }
}

extension SettingsViewController:UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.section][indexPath.row].title
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //Handle Cell Selection
        data[indexPath.section][indexPath.row].handler()
    }
    
    
}
