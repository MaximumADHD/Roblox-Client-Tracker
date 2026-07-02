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
       11 GETTABLEKS                       R3 R0 K7 ["Enums"]
       13 GETTABLEKS                       R3 R3 K8 ["ColorMode"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K10 ["createContext"]
       23 DUPTABLE                         R5 K14 [{["isIconSize"] = False, ["colorMode"]}]
       24 GETTABLEKS                       R6 R2 K15 ["Color"]
       26 SETTABLEKS                       R6 R5 K13 ["colorMode"]
       28 CALL                             R4 1 1
       29 DUPCLOSURE                       R5 K16 [PROTO_0]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 DUPTABLE                         R6 K19 [{"Provider", "usePresentationContext"}]
       33 GETTABLEKS                       R7 R4 K17 ["Provider"]
       35 SETTABLEKS                       R7 R6 K17 ["Provider"]
       37 SETTABLEKS                       R5 R6 K18 ["usePresentationContext"]
       39 RETURN                           R6 1
