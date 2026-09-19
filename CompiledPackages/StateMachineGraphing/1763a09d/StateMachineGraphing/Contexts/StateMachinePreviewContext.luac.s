MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K13 [{["activeStateIds"], ["selectionStyle"] = "emphasis", ["activeStyle"] = "shift400"}]
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K8 ["activeStateIds"]
       19 GETTABLEKS                       R3 R1 K14 ["createContext"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 DUPTABLE                         R4 K16 [{"Context"}]
       24 SETTABLEKS                       R3 R4 K15 ["Context"]
       26 RETURN                           R4 1
