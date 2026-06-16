MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Small", "Medium"}]
        2 LOADK                            R1 K0 ["Small"]
        3 SETTABLEKS                       R1 R0 K0 ["Small"]
        5 LOADK                            R1 K1 ["Medium"]
        6 SETTABLEKS                       R1 R0 K1 ["Medium"]
        8 RETURN                           R0 1
