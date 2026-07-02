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
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["DialogSize"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R2 K10 ["createContext"]
       23 DUPTABLE                         R5 K19 [{["size"], ["responsiveSize"], ["setResponsiveSize"], ["hasHeroMedia"] = False, ["setHasHeroMedia"], ["testId"] = ""}]
       24 GETTABLEKS                       R6 R3 K20 ["Small"]
       26 SETTABLEKS                       R6 R5 K11 ["size"]
       28 GETTABLEKS                       R6 R3 K20 ["Small"]
       30 SETTABLEKS                       R6 R5 K12 ["responsiveSize"]
       32 DUPCLOSURE                       R6 K21 [PROTO_0]
       33 SETTABLEKS                       R6 R5 K13 ["setResponsiveSize"]
       35 DUPCLOSURE                       R6 K22 [PROTO_1]
       36 SETTABLEKS                       R6 R5 K16 ["setHasHeroMedia"]
       38 CALL                             R4 1 -1
       39 RETURN                           R4 -1
