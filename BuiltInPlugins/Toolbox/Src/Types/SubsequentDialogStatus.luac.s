MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Models"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetInfo"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K13 [{"ExcessiveTransactions", "PriceChanged", "PurchaseFailed", "PurchaseSuccess"}]
       17 LOADK                            R3 K9 ["ExcessiveTransactions"]
       18 SETTABLEKS                       R3 R2 K9 ["ExcessiveTransactions"]
       20 LOADK                            R3 K10 ["PriceChanged"]
       21 SETTABLEKS                       R3 R2 K10 ["PriceChanged"]
       23 LOADK                            R3 K11 ["PurchaseFailed"]
       24 SETTABLEKS                       R3 R2 K11 ["PurchaseFailed"]
       26 LOADK                            R3 K12 ["PurchaseSuccess"]
       27 SETTABLEKS                       R3 R2 K12 ["PurchaseSuccess"]
       29 RETURN                           R2 1
