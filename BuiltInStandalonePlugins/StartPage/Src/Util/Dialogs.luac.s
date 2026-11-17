PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K10 ["createContext"]
       23 DUPTABLE                         R4 K14 [{"showVerifyAge", "showAgeRestricted", "showPlaces"}]
       24 DUPCLOSURE                       R5 K15 [PROTO_0]
       25 SETTABLEKS                       R5 R4 K11 ["showVerifyAge"]
       27 DUPCLOSURE                       R5 K16 [PROTO_1]
       28 SETTABLEKS                       R5 R4 K12 ["showAgeRestricted"]
       30 DUPCLOSURE                       R5 K17 [PROTO_2]
       31 SETTABLEKS                       R5 R4 K13 ["showPlaces"]
       33 CALL                             R3 1 -1
       34 RETURN                           R3 -1
