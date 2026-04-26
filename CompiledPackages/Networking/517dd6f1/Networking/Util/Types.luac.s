MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPTABLE                         R1 K3 [{"Users", "Groups", "Universe"}]
        4 LOADK                            R2 K4 ["users"]
        5 SETTABLEKS                       R2 R1 K0 ["Users"]
        7 LOADK                            R2 K5 ["groups"]
        8 SETTABLEKS                       R2 R1 K1 ["Groups"]
       10 LOADK                            R2 K6 ["universe"]
       11 SETTABLEKS                       R2 R1 K2 ["Universe"]
       13 SETTABLEKS                       R1 R0 K7 ["AccountType"]
       15 RETURN                           R0 1
