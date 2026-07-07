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
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 8 0
       23 GETTABLEKS                       R4 R1 K9 ["ScopeType"]
       25 GETTABLEKS                       R4 R4 K10 ["User"]
       27 LOADK                            R5 K11 ["user"]
       28 SETTABLE                         R5 R3 R4
       29 GETTABLEKS                       R4 R1 K9 ["ScopeType"]
       31 GETTABLEKS                       R4 R4 K12 ["Group"]
       33 LOADK                            R5 K13 ["group"]
       34 SETTABLE                         R5 R3 R4
       35 GETTABLEKS                       R4 R1 K9 ["ScopeType"]
       37 GETTABLEKS                       R4 R4 K14 ["Universe"]
       39 LOADK                            R5 K15 ["experience"]
       40 SETTABLE                         R5 R3 R4
       41 GETTABLEKS                       R4 R1 K9 ["ScopeType"]
       43 GETTABLEKS                       R4 R4 K16 ["ProjectShared"]
       45 LOADK                            R5 K15 ["experience"]
       46 SETTABLE                         R5 R3 R4
       47 GETTABLEKS                       R4 R1 K9 ["ScopeType"]
       49 GETTABLEKS                       R4 R4 K17 ["ProjectPlaces"]
       51 LOADK                            R5 K18 ["places"]
       52 SETTABLE                         R5 R3 R4
       53 GETTABLEKS                       R4 R1 K9 ["ScopeType"]
       55 GETTABLEKS                       R4 R4 K19 ["RecentUploads"]
       57 LOADK                            R5 K20 ["recentUploads"]
       58 SETTABLE                         R5 R3 R4
       59 NEWTABLE                         R4 2 0
       61 GETTABLEKS                       R5 R1 K9 ["ScopeType"]
       63 GETTABLEKS                       R5 R5 K17 ["ProjectPlaces"]
       65 LOADB                            R6 1
       66 SETTABLE                         R6 R4 R5
       67 GETTABLEKS                       R5 R1 K9 ["ScopeType"]
       69 GETTABLEKS                       R5 R5 K19 ["RecentUploads"]
       71 LOADB                            R6 1
       72 SETTABLE                         R6 R4 R5
       73 DUPCLOSURE                       R5 K21 [PROTO_0]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R1
       77 RETURN                           R5 1
