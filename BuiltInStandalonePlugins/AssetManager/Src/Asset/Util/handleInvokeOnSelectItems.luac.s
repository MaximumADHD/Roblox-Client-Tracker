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
       22 JUMPIFNOTEQKN                    R4 K2 [0] ; [+16]
       24 GETUPVAL                         R4 3
       25 CALL                             R4 0 1
       26 JUMPIFNOT                        R4 ; [+11]
       27 LOADK                            R6 K3 ["ShowToast"]
       28 DUPTABLE                         R7 K6 [{"Key", "SubKey"}]
       29 LOADK                            R8 K7 ["Toast"]
       30 SETTABLEKS                       R8 R7 K4 ["Key"]
       32 LOADK                            R8 K8 ["FindInExplorerNotFound"]
       33 SETTABLEKS                       R8 R7 K5 ["SubKey"]
       35 NAMECALL                         R4 R0 K9 ["Invoke"]
       37 CALL                             R4 3 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R4 4
       40 MOVE                             R6 R2
       41 NAMECALL                         R4 R4 K10 ["Set"]
       43 CALL                             R4 2 0
       44 GETIMPORT                        R4 K12 [game]
       46 GETTABLEKS                       R4 R4 K13 ["Workspace"]
       48 GETTABLEKS                       R4 R4 K14 ["CurrentCamera"]
       50 JUMPIFNOT                        R4 ; [+4]
       51 GETUPVAL                         R5 5
       52 MOVE                             R6 R4
       53 MOVE                             R7 R2
       54 CALL                             R5 2 0
       55 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K11 [game]
       23 LOADK                            R5 K12 ["HttpService"]
       24 NAMECALL                         R3 R3 K13 ["GetService"]
       26 CALL                             R3 2 1
       27 GETIMPORT                        R4 K11 [game]
       29 LOADK                            R6 K14 ["Selection"]
       30 NAMECALL                         R4 R4 K13 ["GetService"]
       32 CALL                             R4 2 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K8 ["Src"]
       37 GETTABLEKS                       R6 R6 K15 ["Asset"]
       39 GETTABLEKS                       R6 R6 K16 ["Util"]
       41 GETTABLEKS                       R6 R6 K17 ["getAssetInstancesById"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Src"]
       48 GETTABLEKS                       R7 R7 K15 ["Asset"]
       50 GETTABLEKS                       R7 R7 K16 ["Util"]
       52 GETTABLEKS                       R7 R7 K18 ["cameraZoomToExtents"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K8 ["Src"]
       59 GETTABLEKS                       R8 R8 K19 ["Flags"]
       61 GETTABLEKS                       R8 R8 K20 ["getFFlagAmrCustomToastNotifications"]
       63 CALL                             R7 1 1
       64 DUPCLOSURE                       R8 K21 [PROTO_0]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R6
       71 RETURN                           R8 1
