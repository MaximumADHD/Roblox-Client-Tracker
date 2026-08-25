PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K8 [{"GameId", "Parent", "PositionMode", "Position", "OnProgress", "SkipCameraMove", "StudioComponents", "UseAnimationInstance"}]
        1 GETTABLEKS                       R3 R0 K0 ["GameId"]
        3 ORK                              R2 R3 K9 [0]
        4 SETTABLEKS                       R2 R1 K0 ["GameId"]
        6 GETTABLEKS                       R2 R0 K1 ["Parent"]
        8 JUMPIF                           R2 ; [+10]
        9 GETUPVAL                         R3 0
       10 NAMECALL                         R3 R3 K10 ["Get"]
       12 CALL                             R3 1 1
       13 GETTABLEN                        R2 R3 1
       14 JUMPIF                           R2 ; [+4]
       15 GETIMPORT                        R2 K12 [game]
       17 GETTABLEKS                       R2 R2 K13 ["Workspace"]
       19 SETTABLEKS                       R2 R1 K1 ["Parent"]
       21 GETTABLEKS                       R2 R0 K2 ["PositionMode"]
       23 JUMPIF                           R2 ; [+5]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K14 ["InsertPositionMode"]
       27 GETTABLEKS                       R2 R2 K15 ["Camera"]
       29 SETTABLEKS                       R2 R1 K2 ["PositionMode"]
       31 GETTABLEKS                       R3 R0 K3 ["Position"]
       33 ORK                              R2 R3 K16 [{0, 0, 0}]
       34 SETTABLEKS                       R2 R1 K3 ["Position"]
       36 GETTABLEKS                       R2 R0 K4 ["OnProgress"]
       38 JUMPIF                           R2 ; [+1]
       39 DUPCLOSURE                       R2 K17 [PROTO_0]
       40 SETTABLEKS                       R2 R1 K4 ["OnProgress"]
       42 GETTABLEKS                       R3 R0 K5 ["SkipCameraMove"]
       44 ORK                              R2 R3 K18 [False]
       45 SETTABLEKS                       R2 R1 K5 ["SkipCameraMove"]
       47 GETTABLEKS                       R2 R0 K6 ["StudioComponents"]
       49 SETTABLEKS                       R2 R1 K6 ["StudioComponents"]
       51 GETTABLEKS                       R3 R0 K7 ["UseAnimationInstance"]
       53 ORK                              R2 R3 K18 [False]
       54 SETTABLEKS                       R2 R1 K7 ["UseAnimationInstance"]
       56 GETTABLEKS                       R2 R1 K2 ["PositionMode"]
       58 GETUPVAL                         R3 1
       59 GETTABLEKS                       R3 R3 K14 ["InsertPositionMode"]
       61 GETTABLEKS                       R3 R3 K15 ["Camera"]
       63 JUMPIFNOTEQ                      R2 R3 ; [+5]
       65 GETUPVAL                         R2 2
       66 CALL                             R2 0 1
       67 SETTABLEKS                       R2 R1 K3 ["Position"]
       69 RETURN                           R1 1

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
       23 DUPCLOSURE                       R4 K12 [PROTO_1]
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 RETURN                           R4 1
