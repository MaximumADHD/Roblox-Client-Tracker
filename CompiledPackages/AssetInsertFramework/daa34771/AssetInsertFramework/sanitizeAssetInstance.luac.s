PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SanitizedState"]
        3 GETTABLEKS                       R1 R1 K1 ["Ok"]
        5 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["MeshPart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+22]
        5 NAMECALL                         R2 R0 K2 ["GetChildren"]
        7 CALL                             R2 1 1
        8 LENGTH                           R1 R2
        9 LOADN                            R2 0
       10 JUMPIFNOTLT                      R2 R1 ; [+10]
       12 NAMECALL                         R1 R0 K3 ["ClearAllChildren"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K4 ["SanitizedState"]
       18 GETTABLEKS                       R1 R1 K5 ["Sanitized"]
       20 RETURN                           R1 1
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K4 ["SanitizedState"]
       24 GETTABLEKS                       R1 R1 K6 ["Ok"]
       26 RETURN                           R1 1
       27 NAMECALL                         R1 R0 K7 ["Destroy"]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K4 ["SanitizedState"]
       33 GETTABLEKS                       R1 R1 K8 ["Remove"]
       35 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R3 R0 K2 ["ClassName"]
        4 NAMECALL                         R1 R1 K3 ["GetService"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K4 ["SanitizedState"]
       11 GETTABLEKS                       R1 R1 K5 ["Remove"]
       13 RETURN                           R1 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K4 ["SanitizedState"]
       17 GETTABLEKS                       R1 R1 K6 ["Ok"]
       19 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIF                           R2 ; [+14]
        3 GETUPVAL                         R2 1
        4 LOADK                            R4 K0 ["Attempt to sanitize unsupported asset type: %*"]
        5 MOVE                             R6 R1
        6 NAMECALL                         R4 R4 K1 ["format"]
        8 CALL                             R4 2 1
        9 MOVE                             R3 R4
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["SanitizedState"]
       14 GETTABLEKS                       R2 R2 K3 ["Remove"]
       16 RETURN                           R2 1
       17 GETUPVAL                         R3 0
       18 GETTABLE                         R2 R3 R1
       19 MOVE                             R3 R0
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Utils"]
       14 GETTABLEKS                       R3 R3 K7 ["logIfDebug"]
       16 CALL                             R2 1 1
       17 NEWTABLE                         R3 0 0
       19 GETTABLEKS                       R4 R1 K8 ["InsertableAssetTypes"]
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 FORGPREP                         R4
       24 DUPCLOSURE                       R9 K9 [PROTO_0]
       25 CAPTURE                          VAL R1
       26 SETTABLE                         R9 R3 R7
       27 FORGLOOP                         R4 2 ; [-4]
       29 GETIMPORT                        R4 K13 [Enum.AssetType.MeshPart]
       31 DUPCLOSURE                       R5 K14 [PROTO_1]
       32 CAPTURE                          VAL R1
       33 SETTABLE                         R5 R3 R4
       34 GETIMPORT                        R4 K16 [Enum.AssetType.Model]
       36 DUPCLOSURE                       R5 K17 [PROTO_2]
       37 CAPTURE                          VAL R1
       38 SETTABLE                         R5 R3 R4
       39 DUPCLOSURE                       R4 K18 [PROTO_3]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 RETURN                           R4 1
