PROTO_0:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K10 [{["menuVisible"] = False, ["setMenuVisible"]}]
       17 DUPCLOSURE                       R3 K11 [PROTO_0]
       18 SETTABLEKS                       R3 R2 K9 ["setMenuVisible"]
       20 GETTABLEKS                       R3 R1 K12 ["createContext"]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 1
       24 RETURN                           R3 1
