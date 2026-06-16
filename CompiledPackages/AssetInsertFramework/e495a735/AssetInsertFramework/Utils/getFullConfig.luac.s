PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K6 [{"GameId", "Parent", "PositionMode", "Position", "OnProgress", "StudioComponents"}]
        1 GETTABLEKS                       R3 R0 K0 ["GameId"]
        3 ORK                              R2 R3 K7 [0]
        4 SETTABLEKS                       R2 R1 K0 ["GameId"]
        6 GETTABLEKS                       R2 R0 K1 ["Parent"]
        8 JUMPIF                           R2 ; [+10]
        9 GETUPVAL                         R3 0
       10 NAMECALL                         R3 R3 K8 ["Get"]
       12 CALL                             R3 1 1
       13 GETTABLEN                        R2 R3 1
       14 JUMPIF                           R2 ; [+4]
       15 GETIMPORT                        R2 K10 [game]
       17 GETTABLEKS                       R2 R2 K11 ["Workspace"]
       19 SETTABLEKS                       R2 R1 K1 ["Parent"]
       21 GETTABLEKS                       R2 R0 K2 ["PositionMode"]
       23 JUMPIF                           R2 ; [+5]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K12 ["InsertPositionMode"]
       27 GETTABLEKS                       R2 R2 K13 ["Camera"]
       29 SETTABLEKS                       R2 R1 K2 ["PositionMode"]
       31 GETTABLEKS                       R3 R0 K3 ["Position"]
       33 ORK                              R2 R3 K14 [{0, 0, 0}]
       34 SETTABLEKS                       R2 R1 K3 ["Position"]
       36 GETTABLEKS                       R2 R0 K4 ["OnProgress"]
       38 JUMPIF                           R2 ; [+1]
       39 DUPCLOSURE                       R2 K15 [PROTO_0]
       40 SETTABLEKS                       R2 R1 K4 ["OnProgress"]
       42 GETTABLEKS                       R2 R0 K5 ["StudioComponents"]
       44 SETTABLEKS                       R2 R1 K5 ["StudioComponents"]
       46 GETTABLEKS                       R2 R1 K2 ["PositionMode"]
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K12 ["InsertPositionMode"]
       51 GETTABLEKS                       R3 R3 K13 ["Camera"]
       53 JUMPIFNOTEQ                      R2 R3 ; [+5]
       55 GETUPVAL                         R2 2
       56 CALL                             R2 0 1
       57 SETTABLEKS                       R2 R1 K3 ["Position"]
       59 RETURN                           R1 1

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
