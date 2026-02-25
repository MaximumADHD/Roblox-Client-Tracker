PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K0 ["JSONDecode"]
        6 CALL                             R2 2 1
        7 MOVE                             R3 R2
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R8 R9 K1 ["append"]
       14 MOVE                             R9 R1
       15 GETUPVAL                         R10 2
       16 MOVE                             R11 R7
       17 CALL                             R10 1 -1
       18 CALL                             R8 -1 0
       19 FORGLOOP                         R3 2 ; [-9]
       21 LENGTH                           R3 R1
       22 JUMPIFNOTEQKN                    R3 K2 [0] ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R3 3
       26 MOVE                             R5 R1
       27 NAMECALL                         R3 R3 K3 ["Set"]
       29 CALL                             R3 2 0
       30 GETIMPORT                        R5 K5 [game]
       32 GETTABLEKS                       R4 R5 K6 ["Workspace"]
       34 GETTABLEKS                       R3 R4 K7 ["CurrentCamera"]
       36 JUMPIFNOT                        R3 ; [+4]
       37 GETUPVAL                         R4 4
       38 MOVE                             R5 R3
       39 MOVE                             R6 R1
       40 CALL                             R4 2 0
       41 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["HttpService"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K9 [game]
       22 LOADK                            R5 K12 ["Selection"]
       23 NAMECALL                         R3 R3 K11 ["GetService"]
       25 CALL                             R3 2 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R8 R0 K13 ["Src"]
       30 GETTABLEKS                       R7 R8 K14 ["Asset"]
       32 GETTABLEKS                       R6 R7 K15 ["Util"]
       34 GETTABLEKS                       R5 R6 K16 ["getAssetInstancesById"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R9 R0 K13 ["Src"]
       41 GETTABLEKS                       R8 R9 K14 ["Asset"]
       43 GETTABLEKS                       R7 R8 K15 ["Util"]
       45 GETTABLEKS                       R6 R7 K17 ["cameraZoomToExtents"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K18 [PROTO_0]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R5
       54 RETURN                           R6 1
