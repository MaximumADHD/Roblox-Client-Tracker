PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
        3 GETTABLEKS                       R1 R1 K1 ["Group"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+3]
        7 LOADK                            R1 K2 ["icon-group-folder"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       12 GETTABLEKS                       R1 R1 K3 ["User"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADK                            R1 K4 ["icon-user-folder"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       21 GETTABLEKS                       R1 R1 K5 ["ProjectShared"]
       23 JUMPIFEQ                         R0 R1 ; [+8]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       28 GETTABLEKS                       R1 R1 K6 ["Universe"]
       30 JUMPIFNOTEQ                      R0 R1 ; [+3]
       32 LOADK                            R1 K7 ["icon-game-folder"]
       33 RETURN                           R1 1
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       37 GETTABLEKS                       R1 R1 K8 ["ProjectPlaces"]
       39 JUMPIFNOTEQ                      R0 R1 ; [+3]
       41 LOADK                            R1 K9 ["icon-places-folder"]
       42 RETURN                           R1 1
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       46 GETTABLEKS                       R1 R1 K10 ["Folder"]
       48 JUMPIFNOTEQ                      R0 R1 ; [+3]
       50 LOADK                            R1 K11 ["icon-folder"]
       51 RETURN                           R1 1
       52 LOADK                            R1 K12 ["icon-placeholder"]
       53 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
