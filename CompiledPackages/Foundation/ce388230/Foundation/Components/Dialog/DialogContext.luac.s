PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Enums"]
       13 GETTABLEKS                       R3 R3 K8 ["DialogSize"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K10 ["createContext"]
       23 DUPTABLE                         R5 K17 [{"size", "responsiveSize", "setResponsiveSize", "hasHeroMedia", "setHasHeroMedia", "testId"}]
       24 GETTABLEKS                       R6 R2 K18 ["Small"]
       26 SETTABLEKS                       R6 R5 K11 ["size"]
       28 GETTABLEKS                       R6 R2 K18 ["Small"]
       30 SETTABLEKS                       R6 R5 K12 ["responsiveSize"]
       32 DUPCLOSURE                       R6 K19 [PROTO_0]
       33 SETTABLEKS                       R6 R5 K13 ["setResponsiveSize"]
       35 LOADB                            R6 0
       36 SETTABLEKS                       R6 R5 K14 ["hasHeroMedia"]
       38 DUPCLOSURE                       R6 K20 [PROTO_1]
       39 SETTABLEKS                       R6 R5 K15 ["setHasHeroMedia"]
       41 LOADK                            R6 K21 [""]
       42 SETTABLEKS                       R6 R5 K16 ["testId"]
       44 CALL                             R4 1 -1
       45 RETURN                           R4 -1
