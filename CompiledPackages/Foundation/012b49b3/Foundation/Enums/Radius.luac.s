MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{"None", "XSmall", "Small", "Medium", "Large", "Circle"}]
        2 LOADK                            R1 K0 ["None"]
        3 SETTABLEKS                       R1 R0 K0 ["None"]
        5 LOADK                            R1 K1 ["XSmall"]
        6 SETTABLEKS                       R1 R0 K1 ["XSmall"]
        8 LOADK                            R1 K2 ["Small"]
        9 SETTABLEKS                       R1 R0 K2 ["Small"]
       11 LOADK                            R1 K3 ["Medium"]
       12 SETTABLEKS                       R1 R0 K3 ["Medium"]
       14 LOADK                            R1 K4 ["Large"]
       15 SETTABLEKS                       R1 R0 K4 ["Large"]
       17 LOADK                            R1 K5 ["Circle"]
       18 SETTABLEKS                       R1 R0 K5 ["Circle"]
       20 RETURN                           R0 1
