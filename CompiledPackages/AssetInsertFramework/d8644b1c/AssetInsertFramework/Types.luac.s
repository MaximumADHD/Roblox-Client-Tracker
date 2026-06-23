PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R6
       10 GETIMPORT                        R7 K2 [table.insert]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 2 ; [-8]
       15 RETURN                           R1 1

PROTO_1:
        0 JUMPIFLT                         R0 R1 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getEnumAsList"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K3 [table.sort]
        7 MOVE                             R3 R1
        8 DUPCLOSURE                       R4 K4 [PROTO_1]
        9 CALL                             R2 2 0
       10 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKB                       R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["getEnumAsList"]
        6 DUPCLOSURE                       R1 K2 [PROTO_2]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["getEnumAsSortedList"]
       10 DUPTABLE                         R1 K7 [{"Ok", "Sanitized", "Remove"}]
       11 LOADK                            R2 K4 ["Ok"]
       12 SETTABLEKS                       R2 R1 K4 ["Ok"]
       14 LOADK                            R2 K5 ["Sanitized"]
       15 SETTABLEKS                       R2 R1 K5 ["Sanitized"]
       17 LOADK                            R2 K6 ["Remove"]
       18 SETTABLEKS                       R2 R1 K6 ["Remove"]
       20 SETTABLEKS                       R1 R0 K8 ["SanitizedState"]
       22 DUPTABLE                         R2 K12 [{"AssetPosition", "Camera", "Custom"}]
       23 LOADK                            R3 K9 ["AssetPosition"]
       24 SETTABLEKS                       R3 R2 K9 ["AssetPosition"]
       26 LOADK                            R3 K10 ["Camera"]
       27 SETTABLEKS                       R3 R2 K10 ["Camera"]
       29 LOADK                            R3 K11 ["Custom"]
       30 SETTABLEKS                       R3 R2 K11 ["Custom"]
       32 SETTABLEKS                       R2 R0 K13 ["InsertPositionMode"]
       34 NEWTABLE                         R3 16 0
       36 GETIMPORT                        R4 K17 [Enum.AssetType.Animation]
       38 LOADB                            R5 1
       39 SETTABLE                         R5 R3 R4
       40 GETIMPORT                        R4 K19 [Enum.AssetType.Audio]
       42 LOADB                            R5 1
       43 SETTABLE                         R5 R3 R4
       44 GETIMPORT                        R4 K21 [Enum.AssetType.Decal]
       46 LOADB                            R5 1
       47 SETTABLE                         R5 R3 R4
       48 GETIMPORT                        R4 K23 [Enum.AssetType.MeshPart]
       50 LOADB                            R5 1
       51 SETTABLE                         R5 R3 R4
       52 GETIMPORT                        R4 K25 [Enum.AssetType.Mesh]
       54 LOADB                            R5 1
       55 SETTABLE                         R5 R3 R4
       56 GETIMPORT                        R4 K27 [Enum.AssetType.Model]
       58 LOADB                            R5 1
       59 SETTABLE                         R5 R3 R4
       60 GETIMPORT                        R4 K29 [Enum.AssetType.Image]
       62 LOADB                            R5 1
       63 SETTABLE                         R5 R3 R4
       64 GETIMPORT                        R4 K31 [Enum.AssetType.Package]
       66 LOADB                            R5 1
       67 SETTABLE                         R5 R3 R4
       68 GETIMPORT                        R4 K33 [Enum.AssetType.Video]
       70 LOADB                            R5 1
       71 SETTABLE                         R5 R3 R4
       72 SETTABLEKS                       R3 R0 K34 ["InsertableAssetTypes"]
       74 DUPCLOSURE                       R4 K35 [PROTO_3]
       75 CAPTURE                          VAL R3
       76 SETTABLEKS                       R4 R0 K36 ["isInsertableAssetType"]
       78 RETURN                           R0 1
