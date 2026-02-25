MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"AlreadyOwned", "ExcessiveTransactions", "PriceChanged", "Success"}]
        2 LOADK                            R1 K5 ["PURCHASE_TRANSACTION_STATUS_ALREADY_OWNED"]
        3 SETTABLEKS                       R1 R0 K0 ["AlreadyOwned"]
        5 LOADK                            R1 K6 ["PURCHASE_TRANSACTION_STATUS_EXCESSIVE_TRANSACTIONS_LIMIT"]
        6 SETTABLEKS                       R1 R0 K1 ["ExcessiveTransactions"]
        8 LOADK                            R1 K7 ["PURCHASE_TRANSACTION_STATUS_PRICE_CHANGED"]
        9 SETTABLEKS                       R1 R0 K2 ["PriceChanged"]
       11 LOADK                            R1 K8 ["PURCHASE_TRANSACTION_STATUS_SUCCESS"]
       12 SETTABLEKS                       R1 R0 K3 ["Success"]
       14 RETURN                           R0 1
