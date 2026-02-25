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
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R5 K9 ["ColorMode"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R2 K10 ["createContext"]
       23 DUPTABLE                         R5 K13 [{"isIconSize", "colorMode"}]
       24 LOADB                            R6 0
       25 SETTABLEKS                       R6 R5 K11 ["isIconSize"]
       27 GETTABLEKS                       R6 R3 K14 ["Color"]
       29 SETTABLEKS                       R6 R5 K12 ["colorMode"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K15 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R4
       35 DUPTABLE                         R6 K18 [{"Provider", "usePresentationContext"}]
       36 GETTABLEKS                       R7 R4 K16 ["Provider"]
       38 SETTABLEKS                       R7 R6 K16 ["Provider"]
       40 SETTABLEKS                       R5 R6 K17 ["usePresentationContext"]
       42 RETURN                           R6 1
