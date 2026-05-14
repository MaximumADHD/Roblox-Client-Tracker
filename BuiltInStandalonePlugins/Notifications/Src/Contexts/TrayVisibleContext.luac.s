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
       16 DUPTABLE                         R2 K8 [{"trayVisible"}]
       17 LOADB                            R3 0
       18 SETTABLEKS                       R3 R2 K7 ["trayVisible"]
       20 GETTABLEKS                       R3 R1 K9 ["createContext"]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 1
       24 RETURN                           R3 1
