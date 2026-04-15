MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Small", "Medium", "Large"}]
        2 LOADK                            R1 K0 ["Small"]
        3 SETTABLEKS                       R1 R0 K0 ["Small"]
        5 LOADK                            R1 K1 ["Medium"]
        6 SETTABLEKS                       R1 R0 K1 ["Medium"]
        8 LOADK                            R1 K2 ["Large"]
        9 SETTABLEKS                       R1 R0 K2 ["Large"]
       11 RETURN                           R0 1
