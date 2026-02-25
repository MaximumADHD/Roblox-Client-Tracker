PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["createContext"]
       16 DUPTABLE                         R4 K11 [{"isIconSize", "isInverse"}]
       17 LOADB                            R5 0
       18 SETTABLEKS                       R5 R4 K9 ["isIconSize"]
       20 LOADB                            R5 0
       21 SETTABLEKS                       R5 R4 K10 ["isInverse"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K12 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 DUPTABLE                         R5 K15 [{"Provider", "usePresentationContext"}]
       28 GETTABLEKS                       R6 R3 K13 ["Provider"]
       30 SETTABLEKS                       R6 R5 K13 ["Provider"]
       32 SETTABLEKS                       R4 R5 K14 ["usePresentationContext"]
       34 RETURN                           R5 1
