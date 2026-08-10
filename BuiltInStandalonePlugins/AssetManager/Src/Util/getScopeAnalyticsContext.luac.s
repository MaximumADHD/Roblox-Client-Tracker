PROTO_0:
        0 MOVE                             R5 R0
        1 NAMECALL                         R3 R1 K0 ["getScopeRoot"]
        3 CALL                             R3 2 1
        4 OR                               R2 R3 R0
        5 DUPTABLE                         R3 K4 [{"currentRootType", "currentRootId", "currentFolderId"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R6 R2 K5 ["Type"]
        9 GETTABLE                         R4 R5 R6
       10 SETTABLEKS                       R4 R3 K1 ["currentRootType"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R7 R2 K5 ["Type"]
       15 GETTABLE                         R5 R6 R7
       16 JUMPIF                           R5 ; [+3]
       17 GETTABLEKS                       R4 R2 K6 ["Id"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R4
       21 SETTABLEKS                       R4 R3 K2 ["currentRootId"]
       23 GETTABLEKS                       R5 R0 K5 ["Type"]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K7 ["ScopeType"]
       28 GETTABLEKS                       R6 R6 K8 ["Folder"]
       30 JUMPIFNOTEQ                      R5 R6 ; [+4]
       32 GETTABLEKS                       R4 R0 K6 ["Id"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R4
       36 SETTABLEKS                       R4 R3 K3 ["currentFolderId"]
       38 RETURN                           R3 1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Analytics"]
       20 GETTABLEKS                       R3 R3 K7 ["Types"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 8 0
       25 GETTABLEKS                       R4 R1 K9 ["ScopeType"]
       27 GETTABLEKS                       R4 R4 K10 ["User"]
       29 LOADK                            R5 K11 ["user"]
       30 SETTABLE                         R5 R3 R4
       31 GETTABLEKS                       R4 R1 K9 ["ScopeType"]
       33 GETTABLEKS                       R4 R4 K12 ["Group"]
       35 LOADK                            R5 K13 ["group"]
       36 SETTABLE                         R5 R3 R4
       37 GETTABLEKS                       R4 R1 K9 ["ScopeType"]
       39 GETTABLEKS                       R4 R4 K14 ["Universe"]
       41 LOADK                            R5 K15 ["experience"]
       42 SETTABLE                         R5 R3 R4
       43 GETTABLEKS                       R4 R1 K9 ["ScopeType"]
       45 GETTABLEKS                       R4 R4 K16 ["ProjectPlaces"]
       47 LOADK                            R5 K17 ["places"]
       48 SETTABLE                         R5 R3 R4
       49 GETTABLEKS                       R4 R1 K9 ["ScopeType"]
       51 GETTABLEKS                       R4 R4 K18 ["RecentUploads"]
       53 LOADK                            R5 K19 ["recentUploads"]
       54 SETTABLE                         R5 R3 R4
       55 NEWTABLE                         R4 2 0
       57 GETTABLEKS                       R5 R1 K9 ["ScopeType"]
       59 GETTABLEKS                       R5 R5 K16 ["ProjectPlaces"]
       61 LOADB                            R6 1
       62 SETTABLE                         R6 R4 R5
       63 GETTABLEKS                       R5 R1 K9 ["ScopeType"]
       65 GETTABLEKS                       R5 R5 K18 ["RecentUploads"]
       67 LOADB                            R6 1
       68 SETTABLE                         R6 R4 R5
       69 DUPCLOSURE                       R5 K20 [PROTO_0]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R1
       73 RETURN                           R5 1
