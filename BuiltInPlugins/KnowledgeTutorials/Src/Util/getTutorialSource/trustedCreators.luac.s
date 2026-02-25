MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 3
        3 DUPTABLE                         R1 K2 [{"CreatorType", "CreatorTargetId"}]
        4 LOADK                            R2 K3 ["User"]
        5 SETTABLEKS                       R2 R1 K0 ["CreatorType"]
        7 LOADK                            R2 K4 [998796]
        8 SETTABLEKS                       R2 R1 K1 ["CreatorTargetId"]
       10 DUPTABLE                         R2 K2 [{"CreatorType", "CreatorTargetId"}]
       11 LOADK                            R3 K5 ["Group"]
       12 SETTABLEKS                       R3 R2 K0 ["CreatorType"]
       14 LOADK                            R3 K6 [33728020]
       15 SETTABLEKS                       R3 R2 K1 ["CreatorTargetId"]
       17 DUPTABLE                         R3 K2 [{"CreatorType", "CreatorTargetId"}]
       18 LOADK                            R4 K3 ["User"]
       19 SETTABLEKS                       R4 R3 K0 ["CreatorType"]
       21 LOADK                            R4 K7 [5687038647]
       22 SETTABLEKS                       R4 R3 K1 ["CreatorTargetId"]
       24 SETLIST                          R0 R1 3 [1]
       26 RETURN                           R0 1
