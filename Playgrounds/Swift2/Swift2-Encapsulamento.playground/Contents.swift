import UIKit

class CreditCard {
    let number: String
    let limit: Double
    var invoiceValue: Double = 0
    
    let iof: Double = 6.38
    
    init(number: String, limit: Double) {
        self.number = number
        self.limit = limit
    }
    
    func makePurchase(off value: Double, isInternational: Bool) -> Bool {
        let debit = isInternational ? value * (1 + self.iof/100) : value
        let finalValue = invoiceValue + debit
        if finalValue > limit {
            return false
        } else {
            self.invoiceValue = finalValue
            return true
        }
    }
}

let creditCard = CreditCard(number: "1234-4445-2123-1235", limit: 5000)
creditCard.makePurchase(off: 1500.00, isInternational: true)
print(creditCard.invoiceValue)
