PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["LoadAsset"]
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["Interfaces"]
       15 GETTABLEKS                       R2 R3 K9 ["InsertServiceInterface"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R8 R0 K6 ["Src"]
       22 GETTABLEKS                       R7 R8 K10 ["tests"]
       24 GETTABLEKS                       R6 R7 K7 ["Util"]
       26 GETTABLEKS                       R5 R6 K11 ["mockInterfaces"]
       28 GETTABLEKS                       R4 R5 K12 ["setupMockInsertServiceInterface"]
       30 GETTABLEKS                       R3 R4 K13 ["mockLoadAsset"]
       32 CALL                             R2 1 1
       33 DUPCLOSURE                       R3 K14 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 RETURN                           R3 1
