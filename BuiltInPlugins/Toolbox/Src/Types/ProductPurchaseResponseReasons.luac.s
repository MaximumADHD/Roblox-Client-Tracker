MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Invalid", "Success", "AlreadyOwned"}]
        2 LOADK                            R1 K0 ["Invalid"]
        3 SETTABLEKS                       R1 R0 K0 ["Invalid"]
        5 LOADK                            R1 K1 ["Success"]
        6 SETTABLEKS                       R1 R0 K1 ["Success"]
        8 LOADK                            R1 K2 ["AlreadyOwned"]
        9 SETTABLEKS                       R1 R0 K2 ["AlreadyOwned"]
       11 RETURN                           R0 1
