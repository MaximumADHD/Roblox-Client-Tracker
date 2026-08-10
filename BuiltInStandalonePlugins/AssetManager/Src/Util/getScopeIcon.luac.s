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
       21 GETTABLEKS                       R1 R1 K5 ["Universe"]
       23 JUMPIFNOTEQ                      R0 R1 ; [+3]
       25 LOADK                            R1 K6 ["icon-game-folder"]
       26 RETURN                           R1 1
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       30 GETTABLEKS                       R1 R1 K7 ["ProjectPlaces"]
       32 JUMPIFNOTEQ                      R0 R1 ; [+3]
       34 LOADK                            R1 K8 ["icon-places-folder"]
       35 RETURN                           R1 1
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       39 GETTABLEKS                       R1 R1 K9 ["Folder"]
       41 JUMPIFNOTEQ                      R0 R1 ; [+3]
       43 LOADK                            R1 K10 ["icon-folder"]
       44 RETURN                           R1 1
       45 LOADK                            R1 K11 ["icon-placeholder"]
       46 RETURN                           R1 1

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
