PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K10 [{"GameId", "Parent", "PositionMode", "Position", "OnProgress", "SkipCameraMove", "StudioComponents", "UseAnimationInstance", "SandboxAssetIds", "LoadAsUserInUnsavedPlaces"}]
        1 GETTABLEKS                       R3 R0 K0 ["GameId"]
        3 ORK                              R2 R3 K11 [0]
        4 SETTABLEKS                       R2 R1 K0 ["GameId"]
        6 GETTABLEKS                       R2 R0 K1 ["Parent"]
        8 JUMPIF                           R2 ; [+10]
        9 GETUPVAL                         R3 0
       10 NAMECALL                         R3 R3 K12 ["Get"]
       12 CALL                             R3 1 1
       13 GETTABLEN                        R2 R3 1
       14 JUMPIF                           R2 ; [+4]
       15 GETIMPORT                        R2 K14 [game]
       17 GETTABLEKS                       R2 R2 K15 ["Workspace"]
       19 SETTABLEKS                       R2 R1 K1 ["Parent"]
       21 GETTABLEKS                       R2 R0 K2 ["PositionMode"]
       23 JUMPIF                           R2 ; [+5]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K16 ["InsertPositionMode"]
       27 GETTABLEKS                       R2 R2 K17 ["Camera"]
       29 SETTABLEKS                       R2 R1 K2 ["PositionMode"]
       31 GETTABLEKS                       R3 R0 K3 ["Position"]
       33 ORK                              R2 R3 K18 [{0, 0, 0}]
       34 SETTABLEKS                       R2 R1 K3 ["Position"]
       36 GETTABLEKS                       R2 R0 K4 ["OnProgress"]
       38 JUMPIF                           R2 ; [+1]
       39 DUPCLOSURE                       R2 K19 [PROTO_0]
       40 SETTABLEKS                       R2 R1 K4 ["OnProgress"]
       42 GETTABLEKS                       R3 R0 K5 ["SkipCameraMove"]
       44 ORK                              R2 R3 K20 [False]
       45 SETTABLEKS                       R2 R1 K5 ["SkipCameraMove"]
       47 GETTABLEKS                       R2 R0 K6 ["StudioComponents"]
       49 SETTABLEKS                       R2 R1 K6 ["StudioComponents"]
       51 GETTABLEKS                       R3 R0 K7 ["UseAnimationInstance"]
       53 ORK                              R2 R3 K20 [False]
       54 SETTABLEKS                       R2 R1 K7 ["UseAnimationInstance"]
       56 GETUPVAL                         R3 2
       57 CALL                             R3 0 1
       58 JUMPIFNOT                        R3 ; [+6]
       59 GETTABLEKS                       R2 R0 K8 ["SandboxAssetIds"]
       61 JUMPIF                           R2 ; [+4]
       62 NEWTABLE                         R2 0 0
       64 JUMP                             ; [+1]
       65 LOADNIL                          R2
       66 SETTABLEKS                       R2 R1 K8 ["SandboxAssetIds"]
       68 GETUPVAL                         R3 3
       69 CALL                             R3 0 1
       70 JUMPIFNOT                        R3 ; [+4]
       71 GETTABLEKS                       R3 R0 K9 ["LoadAsUserInUnsavedPlaces"]
       73 ORK                              R2 R3 K20 [False]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R2
       76 SETTABLEKS                       R2 R1 K9 ["LoadAsUserInUnsavedPlaces"]
       78 GETUPVAL                         R2 4
       79 CALL                             R2 0 1
       80 JUMPIF                           R2 ; [+13]
       81 GETTABLEKS                       R2 R1 K2 ["PositionMode"]
       83 GETUPVAL                         R3 1
       84 GETTABLEKS                       R3 R3 K16 ["InsertPositionMode"]
       86 GETTABLEKS                       R3 R3 K17 ["Camera"]
       88 JUMPIFNOTEQ                      R2 R3 ; [+5]
       90 GETUPVAL                         R2 5
       91 CALL                             R2 0 1
       92 SETTABLEKS                       R2 R1 K3 ["Position"]
       94 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssetInsertFramework"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Types"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K9 [require]
       20 GETTABLEKS                       R4 R1 K11 ["getCameraInsertPosition"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K9 [require]
       25 GETTABLEKS                       R5 R1 K12 ["Flags"]
       27 GETTABLEKS                       R5 R5 K13 ["getFFlagAinLoadAsUserInUnsavedPlaces"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K9 [require]
       32 GETTABLEKS                       R6 R1 K12 ["Flags"]
       34 GETTABLEKS                       R6 R6 K14 ["getFFlagAinSandboxInsertedAssets"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K9 [require]
       39 GETTABLEKS                       R7 R1 K12 ["Flags"]
       41 GETTABLEKS                       R7 R7 K15 ["getFFlagCinUseClosestInsertPosition"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K16 [PROTO_1]
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R3
       51 RETURN                           R7 1
