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
       16 DUPTABLE                         R2 K9 [{"menuVisible", "setMenuVisible"}]
       17 LOADB                            R3 0
       18 SETTABLEKS                       R3 R2 K7 ["menuVisible"]
       20 DUPCLOSURE                       R3 K10 [PROTO_0]
       21 SETTABLEKS                       R3 R2 K8 ["setMenuVisible"]
       23 GETTABLEKS                       R3 R1 K11 ["createContext"]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 1
       27 RETURN                           R3 1
