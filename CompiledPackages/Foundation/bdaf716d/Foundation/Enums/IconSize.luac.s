MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{"XSmall", "Small", "Medium", "Large", "XLarge", "XXLarge"}]
        2 LOADK                            R1 K0 ["XSmall"]
        3 SETTABLEKS                       R1 R0 K0 ["XSmall"]
        5 LOADK                            R1 K1 ["Small"]
        6 SETTABLEKS                       R1 R0 K1 ["Small"]
        8 LOADK                            R1 K2 ["Medium"]
        9 SETTABLEKS                       R1 R0 K2 ["Medium"]
       11 LOADK                            R1 K3 ["Large"]
       12 SETTABLEKS                       R1 R0 K3 ["Large"]
       14 LOADK                            R1 K4 ["XLarge"]
       15 SETTABLEKS                       R1 R0 K4 ["XLarge"]
       17 LOADK                            R1 K5 ["XXLarge"]
       18 SETTABLEKS                       R1 R0 K5 ["XXLarge"]
       20 RETURN                           R0 1
