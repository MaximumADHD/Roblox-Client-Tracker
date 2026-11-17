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
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetInsertFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 16 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 SETTABLEKS                       R3 R2 K9 ["getEnumAsList"]
       19 DUPCLOSURE                       R3 K10 [PROTO_2]
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R3 R2 K11 ["getEnumAsSortedList"]
       23 DUPTABLE                         R3 K15 [{["Ok"] = "Ok", ["Sanitized"] = "Sanitized", ["Remove"] = "Remove"}]
       24 SETTABLEKS                       R3 R2 K16 ["SanitizedState"]
       26 DUPTABLE                         R4 K20 [{["AssetPosition"] = "AssetPosition", ["Camera"] = "Camera", ["Custom"] = "Custom"}]
       27 SETTABLEKS                       R4 R2 K21 ["InsertPositionMode"]
       29 GETTABLEKS                       R5 R1 K22 ["Enums"]
       31 GETTABLEKS                       R5 R5 K23 ["ScopeType"]
       33 SETTABLEKS                       R5 R2 K23 ["ScopeType"]
       35 GETTABLEKS                       R5 R1 K22 ["Enums"]
       37 GETTABLEKS                       R5 R5 K24 ["DraftStatus"]
       39 SETTABLEKS                       R5 R2 K24 ["DraftStatus"]
       41 GETTABLEKS                       R5 R1 K22 ["Enums"]
       43 GETTABLEKS                       R5 R5 K25 ["ModerationStatus"]
       45 SETTABLEKS                       R5 R2 K25 ["ModerationStatus"]
       47 NEWTABLE                         R5 16 0
       49 GETIMPORT                        R6 K29 [Enum.AssetType.AnimatedImage]
       51 LOADB                            R7 1
       52 SETTABLE                         R7 R5 R6
       53 GETIMPORT                        R6 K31 [Enum.AssetType.Animation]
       55 LOADB                            R7 1
       56 SETTABLE                         R7 R5 R6
       57 GETIMPORT                        R6 K33 [Enum.AssetType.Audio]
       59 LOADB                            R7 1
       60 SETTABLE                         R7 R5 R6
       61 GETIMPORT                        R6 K35 [Enum.AssetType.Decal]
       63 LOADB                            R7 1
       64 SETTABLE                         R7 R5 R6
       65 GETIMPORT                        R6 K37 [Enum.AssetType.MeshPart]
       67 LOADB                            R7 1
       68 SETTABLE                         R7 R5 R6
       69 GETIMPORT                        R6 K39 [Enum.AssetType.Mesh]
       71 LOADB                            R7 1
       72 SETTABLE                         R7 R5 R6
       73 GETIMPORT                        R6 K41 [Enum.AssetType.Model]
       75 LOADB                            R7 1
       76 SETTABLE                         R7 R5 R6
       77 GETIMPORT                        R6 K43 [Enum.AssetType.Image]
       79 LOADB                            R7 1
       80 SETTABLE                         R7 R5 R6
       81 GETIMPORT                        R6 K45 [Enum.AssetType.Package]
       83 LOADB                            R7 1
       84 SETTABLE                         R7 R5 R6
       85 GETIMPORT                        R6 K47 [Enum.AssetType.TextDocument]
       87 LOADB                            R7 1
       88 SETTABLE                         R7 R5 R6
       89 GETIMPORT                        R6 K49 [Enum.AssetType.Video]
       91 LOADB                            R7 1
       92 SETTABLE                         R7 R5 R6
       93 SETTABLEKS                       R5 R2 K50 ["InsertableAssetTypes"]
       95 DUPCLOSURE                       R6 K51 [PROTO_3]
       96 CAPTURE                          VAL R5
       97 SETTABLEKS                       R6 R2 K52 ["isInsertableAssetType"]
       99 RETURN                           R2 1
