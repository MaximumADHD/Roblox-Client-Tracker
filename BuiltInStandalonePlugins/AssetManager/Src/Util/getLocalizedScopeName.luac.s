PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Type"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["ScopeType"]
        5 GETTABLEKS                       R3 R3 K2 ["ProjectPlaces"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+7]
        9 LOADK                            R4 K3 ["Scopes"]
       10 LOADK                            R5 K4 ["ExperiencePlaces"]
       11 NAMECALL                         R2 R1 K5 ["getText"]
       13 CALL                             R2 3 -1
       14 RETURN                           R2 -1
       15 GETTABLEKS                       R2 R0 K0 ["Type"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K1 ["ScopeType"]
       20 GETTABLEKS                       R3 R3 K6 ["RecentUploads"]
       22 JUMPIFNOTEQ                      R2 R3 ; [+7]
       24 LOADK                            R4 K3 ["Scopes"]
       25 LOADK                            R5 K6 ["RecentUploads"]
       26 NAMECALL                         R2 R1 K5 ["getText"]
       28 CALL                             R2 3 -1
       29 RETURN                           R2 -1
       30 GETTABLEKS                       R2 R0 K7 ["Name"]
       32 RETURN                           R2 1

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
