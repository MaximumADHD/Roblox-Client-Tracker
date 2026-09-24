PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R3 K0 ["JSONDecode"]
        6 CALL                             R3 2 1
        7 MOVE                             R4 R3
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R9 R9 K1 ["append"]
       14 MOVE                             R10 R2
       15 GETUPVAL                         R11 2
       16 MOVE                             R12 R8
       17 CALL                             R11 1 -1
       18 CALL                             R9 -1 0
       19 FORGLOOP                         R4 2 ; [-9]
       21 LENGTH                           R4 R2
       22 JUMPIFNOTEQKN                    R4 K2 [0] ; [+7]
       24 LOADK                            R6 K3 ["ShowToast"]
       25 DUPTABLE                         R7 K8 [{["Key"] = "Toast", ["SubKey"] = "FindInExplorerNotFound"}]
       26 NAMECALL                         R4 R0 K9 ["Invoke"]
       28 CALL                             R4 3 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R4 3
       31 MOVE                             R6 R2
       32 NAMECALL                         R4 R4 K10 ["Set"]
       34 CALL                             R4 2 0
       35 GETIMPORT                        R4 K12 [game]
       37 GETTABLEKS                       R4 R4 K13 ["Workspace"]
       39 GETTABLEKS                       R4 R4 K14 ["CurrentCamera"]
       41 JUMPIFNOT                        R4 ; [+16]
       42 GETUPVAL                         R5 4
       43 CALL                             R5 0 1
       44 JUMPIFNOT                        R5 ; [+9]
       45 GETUPVAL                         R5 5
       46 GETTABLEKS                       R5 R5 K15 ["Utils"]
       48 GETTABLEKS                       R5 R5 K16 ["cameraZoomToExtents"]
       50 MOVE                             R6 R4
       51 MOVE                             R7 R2
       52 CALL                             R5 2 0
       53 RETURN                           R0 0
       54 GETUPVAL                         R5 6
       55 MOVE                             R6 R4
       56 MOVE                             R7 R2
       57 CALL                             R5 2 0
       58 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["AssetInsertFramework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K12 [game]
       30 LOADK                            R6 K13 ["HttpService"]
       31 NAMECALL                         R4 R4 K14 ["GetService"]
       33 CALL                             R4 2 1
       34 GETIMPORT                        R5 K12 [game]
       36 LOADK                            R7 K15 ["Selection"]
       37 NAMECALL                         R5 R5 K14 ["GetService"]
       39 CALL                             R5 2 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K9 ["Src"]
       44 GETTABLEKS                       R7 R7 K16 ["Asset"]
       46 GETTABLEKS                       R7 R7 K17 ["Util"]
       48 GETTABLEKS                       R7 R7 K18 ["getAssetInstancesById"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K9 ["Src"]
       55 GETTABLEKS                       R8 R8 K16 ["Asset"]
       57 GETTABLEKS                       R8 R8 K17 ["Util"]
       59 GETTABLEKS                       R8 R8 K19 ["cameraZoomToExtents"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K9 ["Src"]
       66 GETTABLEKS                       R9 R9 K20 ["Flags"]
       68 GETTABLEKS                       R9 R9 K21 ["getFFlagAmrMigrateToUseLibraries"]
       70 CALL                             R8 1 1
       71 DUPCLOSURE                       R9 K22 [PROTO_0]
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R7
       79 RETURN                           R9 1
