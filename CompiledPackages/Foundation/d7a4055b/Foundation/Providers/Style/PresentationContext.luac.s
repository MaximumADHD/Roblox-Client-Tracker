PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
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
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["ColorMode"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R2 K10 ["createContext"]
       23 DUPTABLE                         R5 K14 [{["isIconSize"] = False, ["colorMode"]}]
       24 GETTABLEKS                       R6 R3 K15 ["Color"]
       26 SETTABLEKS                       R6 R5 K13 ["colorMode"]
       28 CALL                             R4 1 1
       29 DUPCLOSURE                       R5 K16 [PROTO_0]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 DUPTABLE                         R6 K19 [{"Provider", "usePresentationContext"}]
       33 GETTABLEKS                       R7 R4 K17 ["Provider"]
       35 SETTABLEKS                       R7 R6 K17 ["Provider"]
       37 SETTABLEKS                       R5 R6 K18 ["usePresentationContext"]
       39 RETURN                           R6 1
