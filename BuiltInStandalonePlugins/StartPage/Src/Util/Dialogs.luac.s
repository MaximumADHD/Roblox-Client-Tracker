PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
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
       14 GETTABLEKS                       R2 R1 K8 ["createContext"]
       16 DUPTABLE                         R3 K11 [{"showVerifyAge", "showAgeRestricted"}]
       17 DUPCLOSURE                       R4 K12 [PROTO_0]
       18 SETTABLEKS                       R4 R3 K9 ["showVerifyAge"]
       20 DUPCLOSURE                       R4 K13 [PROTO_1]
       21 SETTABLEKS                       R4 R3 K10 ["showAgeRestricted"]
       23 CALL                             R2 1 -1
       24 RETURN                           R2 -1
