PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ScopeType"]
        3 GETTABLEKS                       R1 R2 K1 ["User"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+3]
        7 LOADK                            R1 K2 ["users"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["ScopeType"]
       12 GETTABLEKS                       R1 R2 K3 ["Group"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADK                            R1 K4 ["groups"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K0 ["ScopeType"]
       21 GETTABLEKS                       R1 R2 K5 ["Universe"]
       23 JUMPIFEQ                         R0 R1 ; [+15]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R2 R3 K0 ["ScopeType"]
       28 GETTABLEKS                       R1 R2 K6 ["ProjectShared"]
       30 JUMPIFEQ                         R0 R1 ; [+8]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R2 R3 K0 ["ScopeType"]
       35 GETTABLEKS                       R1 R2 K7 ["ProjectPlaces"]
       37 JUMPIFNOTEQ                      R0 R1 ; [+3]
       39 LOADK                            R1 K8 ["universe"]
       40 RETURN                           R1 1
       41 LOADK                            R1 K9 [""]
       42 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
