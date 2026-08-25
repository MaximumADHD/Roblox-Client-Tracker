PROTO_0:
        0 LOADK                            R2 K0 ["rbxassetid://%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R4 K1 [pcall]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K2 ["LoadAssetAsync"]
        5 GETUPVAL                         R6 0
        6 MOVE                             R7 R0
        7 CALL                             R4 3 2
        8 JUMPIFNOT                        R4 ; [+6]
        9 JUMPIFNOT                        R5 ; [+5]
       10 LOADB                            R6 1
       11 NAMECALL                         R7 R5 K3 ["GetChildren"]
       13 CALL                             R7 1 -1
       14 RETURN                           R6 -1
       15 LOADB                            R6 0
       16 MOVE                             R7 R5
       17 RETURN                           R6 2

PROTO_2:
        0 JUMPIFNOT                        R2 ; [+25]
        1 GETIMPORT                        R4 K1 [pcall]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K2 ["LoadPackageAssetAsync"]
        6 GETUPVAL                         R6 0
        7 LOADK                            R8 K3 ["rbxassetid://%*"]
        8 MOVE                             R10 R0
        9 NAMECALL                         R8 R8 K4 ["format"]
       11 CALL                             R8 2 1
       12 MOVE                             R7 R8
       13 CALL                             R4 3 2
       14 JUMPIFNOT                        R4 ; [+8]
       15 JUMPIFNOT                        R5 ; [+7]
       16 LOADB                            R6 1
       17 NEWTABLE                         R7 0 1
       19 GETTABLEN                        R8 R5 1
       20 SETLIST                          R7 R8 1 [1]
       22 RETURN                           R6 2
       23 LOADB                            R6 0
       24 MOVE                             R7 R5
       25 RETURN                           R6 2
       26 GETUPVAL                         R4 1
       27 MOVE                             R5 R0
       28 MOVE                             R6 R1
       29 MOVE                             R7 R2
       30 MOVE                             R8 R3
       31 CALL                             R4 4 -1
       32 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETIMPORT                        R6 K3 [Enum.AssetType.Model]
        3 GETTABLE                         R4 R5 R6
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 MOVE                             R7 R2
        7 MOVE                             R8 R3
        8 CALL                             R4 4 -1
        9 RETURN                           R4 -1

PROTO_4:
        0 LOADNIL                          R4
        1 LOADNIL                          R5
        2 GETIMPORT                        R6 K2 [Content.fromAssetId]
        4 MOVE                             R7 R0
        5 CALL                             R6 1 1
        6 GETIMPORT                        R7 K4 [pcall]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R8 R8 K5 ["CreateMeshPartAsync"]
       11 GETUPVAL                         R9 0
       12 MOVE                             R10 R6
       13 CALL                             R7 3 2
       14 MOVE                             R4 R7
       15 MOVE                             R5 R8
       16 JUMPIFNOT                        R4 ; [+8]
       17 JUMPIFNOT                        R5 ; [+7]
       18 LOADB                            R7 1
       19 NEWTABLE                         R8 0 1
       21 MOVE                             R9 R5
       22 SETLIST                          R8 R9 1 [1]
       24 RETURN                           R7 2
       25 LOADB                            R7 0
       26 MOVE                             R8 R5
       27 RETURN                           R7 2

PROTO_5:
        0 GETIMPORT                        R4 K2 [Instance.new]
        2 LOADK                            R5 K3 ["Decal"]
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R1 R4 K4 ["Name"]
        6 LOADK                            R6 K5 ["rbxassetid://%*"]
        7 MOVE                             R8 R0
        8 NAMECALL                         R6 R6 K6 ["format"]
       10 CALL                             R6 2 1
       11 MOVE                             R5 R6
       12 SETTABLEKS                       R5 R4 K7 ["Texture"]
       14 LOADB                            R5 1
       15 NEWTABLE                         R6 0 1
       17 MOVE                             R7 R4
       18 SETLIST                          R6 R7 1 [1]
       20 RETURN                           R5 2

PROTO_6:
        0 GETUPVAL                         R4 0
        1 NAMECALL                         R4 R4 K0 ["GetAudioApiByDefault"]
        3 CALL                             R4 1 1
        4 JUMPIFNOT                        R4 ; [+16]
        5 LOADK                            R5 K1 ["rbxassetid://%*"]
        6 MOVE                             R7 R0
        7 NAMECALL                         R5 R5 K2 ["format"]
        9 CALL                             R5 2 1
       10 MOVE                             R4 R5
       11 LOADB                            R5 1
       12 GETUPVAL                         R6 0
       13 MOVE                             R8 R4
       14 MOVE                             R9 R1
       15 GETUPVAL                         R10 1
       16 CALL                             R10 0 -1
       17 NAMECALL                         R6 R6 K3 ["InsertAsset"]
       19 CALL                             R6 -1 -1
       20 RETURN                           R5 -1
       21 GETIMPORT                        R4 K6 [Instance.new]
       23 LOADK                            R5 K7 ["Sound"]
       24 CALL                             R4 1 1
       25 SETTABLEKS                       R1 R4 K8 ["Name"]
       27 LOADK                            R6 K1 ["rbxassetid://%*"]
       28 MOVE                             R8 R0
       29 NAMECALL                         R6 R6 K2 ["format"]
       31 CALL                             R6 2 1
       32 MOVE                             R5 R6
       33 SETTABLEKS                       R5 R4 K9 ["SoundId"]
       35 GETUPVAL                         R5 1
       36 CALL                             R5 0 1
       37 JUMPIFNOT                        R5 ; [+12]
       38 GETUPVAL                         R5 2
       39 NAMECALL                         R5 R5 K10 ["Get"]
       41 CALL                             R5 1 1
       42 GETTABLEN                        R6 R5 1
       43 JUMPIF                           R6 ; [+4]
       44 GETIMPORT                        R6 K12 [game]
       46 GETTABLEKS                       R6 R6 K13 ["Workspace"]
       48 SETTABLEKS                       R6 R4 K14 ["Parent"]
       50 LOADB                            R5 1
       51 NEWTABLE                         R6 0 1
       53 MOVE                             R7 R4
       54 SETLIST                          R6 R7 1 [1]
       56 RETURN                           R5 2

PROTO_7:
        0 GETIMPORT                        R4 K2 [Instance.new]
        2 LOADK                            R5 K3 ["VideoFrame"]
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R1 R4 K4 ["Name"]
        6 SETTABLEKS                       R0 R4 K5 ["SourceAssetId"]
        8 LOADK                            R6 K6 ["rbxassetid://%*"]
        9 MOVE                             R8 R0
       10 NAMECALL                         R6 R6 K7 ["format"]
       12 CALL                             R6 2 1
       13 MOVE                             R5 R6
       14 SETTABLEKS                       R5 R4 K8 ["Video"]
       16 GETIMPORT                        R5 K10 [UDim2.new]
       18 LOADN                            R6 1
       19 LOADN                            R7 0
       20 LOADN                            R8 1
       21 LOADN                            R9 0
       22 CALL                             R5 4 1
       23 SETTABLEKS                       R5 R4 K11 ["Size"]
       25 LOADB                            R5 1
       26 NEWTABLE                         R6 0 1
       28 MOVE                             R7 R4
       29 SETLIST                          R6 R7 1 [1]
       31 RETURN                           R5 2

PROTO_8:
        0 JUMPIF                           R3 ; [+7]
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 MOVE                             R8 R3
        6 CALL                             R4 4 -1
        7 RETURN                           R4 -1
        8 GETIMPORT                        R4 K2 [Instance.new]
       10 LOADK                            R5 K3 ["Animation"]
       11 CALL                             R4 1 1
       12 SETTABLEKS                       R1 R4 K4 ["Name"]
       14 LOADK                            R6 K5 ["rbxassetid://%*"]
       15 MOVE                             R8 R0
       16 NAMECALL                         R6 R6 K6 ["format"]
       18 CALL                             R6 2 1
       19 MOVE                             R5 R6
       20 SETTABLEKS                       R5 R4 K7 ["AnimationId"]
       22 SETTABLEKS                       R0 R4 K8 ["SourceAssetId"]
       24 LOADB                            R5 1
       25 NEWTABLE                         R6 0 1
       27 MOVE                             R7 R4
       28 SETLIST                          R6 R7 1 [1]
       30 RETURN                           R5 2

PROTO_9:
        0 GETUPVAL                         R6 0
        1 GETTABLE                         R5 R6 R1
        2 JUMPIF                           R5 ; [+10]
        3 GETIMPORT                        R5 K1 [error]
        5 LOADK                            R7 K2 ["Unsupported asset type: %*"]
        6 GETTABLEKS                       R9 R1 K3 ["Name"]
        8 NAMECALL                         R7 R7 K4 ["format"]
       10 CALL                             R7 2 1
       11 MOVE                             R6 R7
       12 CALL                             R5 1 0
       13 GETUPVAL                         R6 0
       14 GETTABLE                         R5 R6 R1
       15 MOVE                             R6 R0
       16 MOVE                             R7 R2
       17 MOVE                             R8 R3
       18 MOVE                             R9 R4
       19 CALL                             R5 4 2
       20 JUMPIF                           R5 ; [+12]
       21 GETUPVAL                         R7 1
       22 LOADK                            R9 K5 ["Failed to get asset instances for %*: %*"]
       23 GETTABLEKS                       R11 R1 K3 ["Name"]
       25 MOVE                             R12 R6
       26 NAMECALL                         R9 R9 K4 ["format"]
       28 CALL                             R9 3 1
       29 MOVE                             R8 R9
       30 CALL                             R7 1 0
       31 LOADNIL                          R7
       32 RETURN                           R7 1
       33 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Services"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K6 ["GetService"]
       12 LOADK                            R3 K7 ["AssetService"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R1 K6 ["GetService"]
       16 LOADK                            R4 K8 ["InsertService"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R4 R1 K6 ["GetService"]
       20 LOADK                            R5 K9 ["SoundService"]
       21 CALL                             R4 1 1
       22 GETIMPORT                        R5 K11 [game]
       24 LOADK                            R7 K12 ["Selection"]
       25 NAMECALL                         R5 R5 K6 ["GetService"]
       27 CALL                             R5 2 1
       28 GETIMPORT                        R6 K4 [require]
       30 GETTABLEKS                       R7 R0 K13 ["Types"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K4 [require]
       35 GETTABLEKS                       R8 R0 K14 ["Utils"]
       37 GETTABLEKS                       R8 R8 K15 ["logIfDebug"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K4 [require]
       42 GETTABLEKS                       R9 R0 K16 ["Flags"]
       44 GETTABLEKS                       R9 R9 K17 ["getFFlagAudioAssetInsertAssetManagerUsesSelection"]
       46 CALL                             R8 1 1
       47 DUPCLOSURE                       R9 K18 [PROTO_0]
       48 NEWTABLE                         R10 0 0
       50 DUPCLOSURE                       R11 K19 [PROTO_1]
       51 CAPTURE                          VAL R2
       52 GETTABLEKS                       R12 R6 K20 ["InsertableAssetTypes"]
       54 LOADNIL                          R13
       55 LOADNIL                          R14
       56 FORGPREP                         R12
       57 SETTABLE                         R11 R10 R15
       58 FORGLOOP                         R12 2 ; [-2]
       60 GETIMPORT                        R12 K24 [Enum.AssetType.Model]
       62 DUPCLOSURE                       R13 K25 [PROTO_2]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R11
       65 SETTABLE                         R13 R10 R12
       66 GETIMPORT                        R12 K27 [Enum.AssetType.MeshPart]
       68 DUPCLOSURE                       R13 K28 [PROTO_3]
       69 CAPTURE                          VAL R10
       70 SETTABLE                         R13 R10 R12
       71 GETIMPORT                        R12 K30 [Enum.AssetType.Mesh]
       73 DUPCLOSURE                       R13 K31 [PROTO_4]
       74 CAPTURE                          VAL R2
       75 SETTABLE                         R13 R10 R12
       76 GETIMPORT                        R12 K33 [Enum.AssetType.Image]
       78 DUPCLOSURE                       R13 K34 [PROTO_5]
       79 SETTABLE                         R13 R10 R12
       80 GETIMPORT                        R12 K36 [Enum.AssetType.Audio]
       82 DUPCLOSURE                       R13 K37 [PROTO_6]
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R5
       86 SETTABLE                         R13 R10 R12
       87 GETIMPORT                        R12 K39 [Enum.AssetType.Video]
       89 DUPCLOSURE                       R13 K40 [PROTO_7]
       90 SETTABLE                         R13 R10 R12
       91 GETIMPORT                        R12 K42 [Enum.AssetType.Animation]
       93 DUPCLOSURE                       R13 K43 [PROTO_8]
       94 CAPTURE                          VAL R11
       95 SETTABLE                         R13 R10 R12
       96 DUPCLOSURE                       R12 K44 [PROTO_9]
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R7
       99 RETURN                           R12 1
