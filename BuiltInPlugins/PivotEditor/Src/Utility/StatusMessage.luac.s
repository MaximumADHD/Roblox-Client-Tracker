MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETTABLEKS                       R2 R1 K3 ["Packages"]
       11 GETTABLEKS                       R3 R2 K4 ["Framework"]
       13 GETIMPORT                        R4 K6 [require]
       15 MOVE                             R5 R3
       16 CALL                             R4 1 1
       17 GETTABLEKS                       R4 R4 K7 ["Util"]
       19 GETTABLEKS                       R4 R4 K8 ["strict"]
       21 MOVE                             R5 R4
       22 DUPTABLE                         R6 K15 [{["None"] = "", ["NoSelection"] = "NoSelection", ["MultipleSelection"] = "MultipleSelection", ["InvalidTarget"] = "InvalidTarget", ["ProceduralModel"] = "ProceduralModel"}]
       23 LOADK                            R7 K16 ["StatusMessage"]
       24 CALL                             R5 2 1
       25 RETURN                           R5 1
