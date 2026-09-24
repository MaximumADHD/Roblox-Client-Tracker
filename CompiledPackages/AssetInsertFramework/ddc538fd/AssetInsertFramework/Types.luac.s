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
       10 DUPTABLE                         R1 K7 [{["Ok"] = "Ok", ["Sanitized"] = "Sanitized", ["Remove"] = "Remove"}]
       11 SETTABLEKS                       R1 R0 K8 ["SanitizedState"]
       13 DUPTABLE                         R2 K12 [{["AssetPosition"] = "AssetPosition", ["Camera"] = "Camera", ["Custom"] = "Custom"}]
       14 SETTABLEKS                       R2 R0 K13 ["InsertPositionMode"]
       16 NEWTABLE                         R3 16 0
       18 GETIMPORT                        R4 K17 [Enum.AssetType.Animation]
       20 LOADB                            R5 1
       21 SETTABLE                         R5 R3 R4
       22 GETIMPORT                        R4 K19 [Enum.AssetType.Audio]
       24 LOADB                            R5 1
       25 SETTABLE                         R5 R3 R4
       26 GETIMPORT                        R4 K21 [Enum.AssetType.Decal]
       28 LOADB                            R5 1
       29 SETTABLE                         R5 R3 R4
       30 GETIMPORT                        R4 K23 [Enum.AssetType.MeshPart]
       32 LOADB                            R5 1
       33 SETTABLE                         R5 R3 R4
       34 GETIMPORT                        R4 K25 [Enum.AssetType.Mesh]
       36 LOADB                            R5 1
       37 SETTABLE                         R5 R3 R4
       38 GETIMPORT                        R4 K27 [Enum.AssetType.Model]
       40 LOADB                            R5 1
       41 SETTABLE                         R5 R3 R4
       42 GETIMPORT                        R4 K29 [Enum.AssetType.Image]
       44 LOADB                            R5 1
       45 SETTABLE                         R5 R3 R4
       46 GETIMPORT                        R4 K31 [Enum.AssetType.Package]
       48 LOADB                            R5 1
       49 SETTABLE                         R5 R3 R4
       50 GETIMPORT                        R4 K33 [Enum.AssetType.Video]
       52 LOADB                            R5 1
       53 SETTABLE                         R5 R3 R4
       54 SETTABLEKS                       R3 R0 K34 ["InsertableAssetTypes"]
       56 DUPCLOSURE                       R4 K35 [PROTO_3]
       57 CAPTURE                          VAL R3
       58 SETTABLEKS                       R4 R0 K36 ["isInsertableAssetType"]
       60 RETURN                           R0 1
