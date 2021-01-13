import UIKit
import StoreKit
class ViewController: UIViewController {
    
    
    private var models = [SKProduct]()
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        SKPaymentQueue.default().add(self)
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.delegate = self
        tableView.dataSource = self
        fetchProducts()
        
    }
    
    enum Product: String, CaseIterable {
        case removeAds = "com.myapp.removeAds"
        case unlockEverything = "com.myapp.unlockEverything"
        case getGems = "com.myapp.getGems"
    }
    
    private func fetchProducts() {
        let request = SKProductsRequest(productIdentifiers: Set(Product.allCases.compactMap({ $0.rawValue })))
        request.delegate = self
        request.start()
    }
}

extension ViewController:UITableViewDelegate,  UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let product = models[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = "\(product.localizedTitle):\(product.localizedDescription) - \(product.priceLocale.currencySymbol ?? "$")\((product.price))"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        ///Show Purchase
        
        let payment = SKPayment(product: models[indexPath.row])
        SKPaymentQueue.default().add(payment)
        
    }
    
}

extension ViewController: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        DispatchQueue.main.async {
            print("Count: \(response.products)")
            self.models = response.products
            self.tableView.reloadData()
        }
    }
}

extension ViewController: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        transactions.forEach({
            switch $0.transactionState {
            
            case .purchasing:
                print("pruchasing")
            case .purchased:
                print("purchased")
                SKPaymentQueue.default().finishTransaction($0)
            case .failed:
                print("did not purchase")
                SKPaymentQueue.default().finishTransaction($0)
            case .restored:
                break
            case .deferred:
                break
            @unknown default:
                break
            }
        })
    }
}
