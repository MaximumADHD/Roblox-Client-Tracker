MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"XSmall", "Small", "Medium"}]
        2 LOADK                            R1 K0 ["XSmall"]
        3 SETTABLEKS                       R1 R0 K0 ["XSmall"]
        5 LOADK                            R1 K1 ["Small"]
        6 SETTABLEKS                       R1 R0 K1 ["Small"]
        8 LOADK                            R1 K2 ["Medium"]
        9 SETTABLEKS                       R1 R0 K2 ["Medium"]
       11 RETURN                           R0 1
