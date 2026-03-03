PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Type"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["ScopeType"]
        5 GETTABLEKS                       R3 R4 K2 ["ProjectPlaces"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+7]
        9 LOADK                            R4 K3 ["Scopes"]
       10 LOADK                            R5 K4 ["ExperiencePlaces"]
       11 NAMECALL                         R2 R1 K5 ["getText"]
       13 CALL                             R2 3 -1
       14 RETURN                           R2 -1
       15 GETTABLEKS                       R2 R0 K0 ["Type"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K1 ["ScopeType"]
       20 GETTABLEKS                       R3 R4 K6 ["ProjectShared"]
       22 JUMPIFNOTEQ                      R2 R3 ; [+7]
       24 LOADK                            R4 K3 ["Scopes"]
       25 LOADK                            R5 K7 ["ExperienceShared"]
       26 NAMECALL                         R2 R1 K5 ["getText"]
       28 CALL                             R2 3 -1
       29 RETURN                           R2 -1
       30 GETUPVAL                         R2 1
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+15]
       33 GETTABLEKS                       R2 R0 K0 ["Type"]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R4 R5 K1 ["ScopeType"]
       38 GETTABLEKS                       R3 R4 K8 ["RecentUploads"]
       40 JUMPIFNOTEQ                      R2 R3 ; [+7]
       42 LOADK                            R4 K3 ["Scopes"]
       43 LOADK                            R5 K8 ["RecentUploads"]
       44 NAMECALL                         R2 R1 K5 ["getText"]
       46 CALL                             R2 3 -1
       47 RETURN                           R2 -1
       48 GETTABLEKS                       R2 R0 K9 ["Name"]
       50 RETURN                           R2 1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Flags"]
       20 GETTABLEKS                       R3 R4 K9 ["getFFlagAmrRecents"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
