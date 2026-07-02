PROTO_0:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["setTabLocation not implemented"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createContext"]
       16 MOVE                             R3 R2
       17 DUPTABLE                         R4 K12 [{["current"] = "Center", ["setTabLocation"]}]
       18 DUPCLOSURE                       R5 K13 [PROTO_0]
       19 SETTABLEKS                       R5 R4 K11 ["setTabLocation"]
       21 CALL                             R3 1 -1
       22 RETURN                           R3 -1
