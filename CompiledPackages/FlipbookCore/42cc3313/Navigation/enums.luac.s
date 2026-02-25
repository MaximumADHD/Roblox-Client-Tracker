MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPTABLE                         R1 K3 [{"Home", "Settings", "About"}]
        4 LOADK                            R2 K0 ["Home"]
        5 SETTABLEKS                       R2 R1 K0 ["Home"]
        7 LOADK                            R2 K1 ["Settings"]
        8 SETTABLEKS                       R2 R1 K1 ["Settings"]
       10 LOADK                            R2 K2 ["About"]
       11 SETTABLEKS                       R2 R1 K2 ["About"]
       13 SETTABLEKS                       R1 R0 K4 ["Screen"]
       15 RETURN                           R0 1
