PROTO_0:
        0 JUMPIFNOT                        R1 ; [+7]
        1 LOADK                            R2 K0 ["rbxassetid://%*&version=%*"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R2 K1 ["format"]
        6 CALL                             R2 3 1
        7 RETURN                           R2 1
        8 LOADK                            R2 K2 ["rbxassetid://%*"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R2 K1 ["format"]
       12 CALL                             R2 2 1
       13 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R5 K1 [pcall]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K2 ["LoadAssetAsync"]
        5 GETUPVAL                         R7 0
        6 MOVE                             R8 R0
        7 CALL                             R5 3 2
        8 JUMPIFNOT                        R5 ; [+6]
        9 JUMPIFNOT                        R6 ; [+5]
       10 LOADB                            R7 1
       11 NAMECALL                         R8 R6 K3 ["GetChildren"]
       13 CALL                             R8 1 -1
       14 RETURN                           R7 -1
       15 LOADB                            R7 0
       16 MOVE                             R8 R6
       17 RETURN                           R7 2

PROTO_2:
        0 JUMPIFNOT                        R3 ; [+32]
        1 GETIMPORT                        R5 K1 [pcall]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K2 ["LoadPackageAssetAsync"]
        6 GETUPVAL                         R7 0
        7 JUMPIFNOT                        R1 ; [+7]
        8 LOADK                            R8 K3 ["rbxassetid://%*&version=%*"]
        9 MOVE                             R10 R0
       10 MOVE                             R11 R1
       11 NAMECALL                         R8 R8 K4 ["format"]
       13 CALL                             R8 3 1
       14 JUMP                             ; [+5]
       15 LOADK                            R8 K5 ["rbxassetid://%*"]
       16 MOVE                             R10 R0
       17 NAMECALL                         R8 R8 K4 ["format"]
       19 CALL                             R8 2 1
       20 CALL                             R5 3 2
       21 JUMPIFNOT                        R5 ; [+8]
       22 JUMPIFNOT                        R6 ; [+7]
       23 LOADB                            R7 1
       24 NEWTABLE                         R8 0 1
       26 GETTABLEN                        R9 R6 1
       27 SETLIST                          R8 R9 1 [1]
       29 RETURN                           R7 2
       30 LOADB                            R7 0
       31 MOVE                             R8 R6
       32 RETURN                           R7 2
       33 GETUPVAL                         R5 1
       34 MOVE                             R6 R0
       35 MOVE                             R7 R1
       36 MOVE                             R8 R2
       37 MOVE                             R9 R3
       38 MOVE                             R10 R4
       39 CALL                             R5 5 -1
       40 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R6 0
        1 GETIMPORT                        R7 K3 [Enum.AssetType.Model]
        3 GETTABLE                         R5 R6 R7
        4 MOVE                             R6 R0
        5 MOVE                             R7 R1
        6 MOVE                             R8 R2
        7 MOVE                             R9 R3
        8 MOVE                             R10 R4
        9 CALL                             R5 5 -1
       10 RETURN                           R5 -1

PROTO_4:
        0 LOADNIL                          R5
        1 LOADNIL                          R6
        2 LOADNIL                          R7
        3 GETUPVAL                         R8 0
        4 CALL                             R8 0 1
        5 JUMPIFNOT                        R8 ; [+18]
        6 GETIMPORT                        R8 K2 [Content.fromUri]
        8 JUMPIFNOT                        R1 ; [+7]
        9 LOADK                            R9 K3 ["rbxassetid://%*&version=%*"]
       10 MOVE                             R11 R0
       11 MOVE                             R12 R1
       12 NAMECALL                         R9 R9 K4 ["format"]
       14 CALL                             R9 3 1
       15 JUMP                             ; [+5]
       16 LOADK                            R9 K5 ["rbxassetid://%*"]
       17 MOVE                             R11 R0
       18 NAMECALL                         R9 R9 K4 ["format"]
       20 CALL                             R9 2 1
       21 CALL                             R8 1 1
       22 MOVE                             R7 R8
       23 JUMP                             ; [+5]
       24 GETIMPORT                        R8 K7 [Content.fromAssetId]
       26 MOVE                             R9 R0
       27 CALL                             R8 1 1
       28 MOVE                             R7 R8
       29 GETIMPORT                        R8 K9 [pcall]
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R9 R9 K10 ["CreateMeshPartAsync"]
       34 GETUPVAL                         R10 1
       35 MOVE                             R11 R7
       36 CALL                             R8 3 2
       37 MOVE                             R5 R8
       38 MOVE                             R6 R9
       39 JUMPIFNOT                        R5 ; [+8]
       40 JUMPIFNOT                        R6 ; [+7]
       41 LOADB                            R8 1
       42 NEWTABLE                         R9 0 1
       44 MOVE                             R10 R6
       45 SETLIST                          R9 R10 1 [1]
       47 RETURN                           R8 2
       48 LOADB                            R8 0
       49 MOVE                             R9 R6
       50 RETURN                           R8 2

PROTO_5:
        0 GETIMPORT                        R5 K2 [Instance.new]
        2 LOADK                            R6 K3 ["Decal"]
        3 CALL                             R5 1 1
        4 SETTABLEKS                       R2 R5 K4 ["Name"]
        6 JUMPIFNOT                        R1 ; [+7]
        7 LOADK                            R6 K5 ["rbxassetid://%*&version=%*"]
        8 MOVE                             R8 R0
        9 MOVE                             R9 R1
       10 NAMECALL                         R6 R6 K6 ["format"]
       12 CALL                             R6 3 1
       13 JUMP                             ; [+5]
       14 LOADK                            R6 K7 ["rbxassetid://%*"]
       15 MOVE                             R8 R0
       16 NAMECALL                         R6 R6 K6 ["format"]
       18 CALL                             R6 2 1
       19 SETTABLEKS                       R6 R5 K8 ["Texture"]
       21 LOADB                            R6 1
       22 NEWTABLE                         R7 0 1
       24 MOVE                             R8 R5
       25 SETLIST                          R7 R8 1 [1]
       27 RETURN                           R6 2

PROTO_6:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 JUMPIF                           R5 ; [+3]
        3 LOADB                            R5 0
        4 LOADK                            R6 K0 ["AnimatedImage insertion is not enabled"]
        5 RETURN                           R5 2
        6 GETUPVAL                         R5 1
        7 NAMECALL                         R5 R5 K1 ["Get"]
        9 CALL                             R5 1 1
       10 GETTABLEN                        R6 R5 1
       11 GETIMPORT                        R7 K4 [Instance.new]
       13 LOADK                            R8 K5 ["AnimationPlayer"]
       14 CALL                             R7 1 1
       15 GETUPVAL                         R8 2
       16 CALL                             R8 0 1
       17 JUMPIFNOT                        R8 ; [+19]
       18 GETIMPORT                        R8 K8 [Content.fromUri]
       20 JUMPIFNOT                        R1 ; [+7]
       21 LOADK                            R9 K9 ["rbxassetid://%*&version=%*"]
       22 MOVE                             R11 R0
       23 MOVE                             R12 R1
       24 NAMECALL                         R9 R9 K10 ["format"]
       26 CALL                             R9 3 1
       27 JUMP                             ; [+5]
       28 LOADK                            R9 K11 ["rbxassetid://%*"]
       29 MOVE                             R11 R0
       30 NAMECALL                         R9 R9 K10 ["format"]
       32 CALL                             R9 2 1
       33 CALL                             R8 1 1
       34 SETTABLEKS                       R8 R7 K12 ["AnimationContent"]
       36 JUMP                             ; [+6]
       37 GETIMPORT                        R8 K14 [Content.fromAssetId]
       39 MOVE                             R9 R0
       40 CALL                             R8 1 1
       41 SETTABLEKS                       R8 R7 K12 ["AnimationContent"]
       43 LOADB                            R8 1
       44 SETTABLEKS                       R8 R7 K15 ["AutoPlay"]
       46 JUMPIFNOT                        R6 ; [+12]
       47 LOADK                            R10 K16 ["ImageLabel"]
       48 NAMECALL                         R8 R6 K17 ["IsA"]
       50 CALL                             R8 2 1
       51 JUMPIFNOT                        R8 ; [+7]
       52 LOADB                            R8 1
       53 NEWTABLE                         R9 0 1
       55 MOVE                             R10 R7
       56 SETLIST                          R9 R10 1 [1]
       58 RETURN                           R8 2
       59 GETIMPORT                        R8 K4 [Instance.new]
       61 LOADK                            R9 K16 ["ImageLabel"]
       62 CALL                             R8 1 1
       63 SETTABLEKS                       R2 R8 K18 ["Name"]
       65 GETIMPORT                        R9 K21 [UDim2.fromScale]
       67 LOADN                            R10 1
       68 LOADN                            R11 1
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K22 ["Size"]
       72 GETIMPORT                        R9 K26 [Enum.ScaleType.Fit]
       74 SETTABLEKS                       R9 R8 K24 ["ScaleType"]
       76 GETIMPORT                        R9 K29 [Enum.ResamplerMode.Pixelated]
       78 SETTABLEKS                       R9 R8 K30 ["ResampleMode"]
       80 LOADN                            R9 1
       81 SETTABLEKS                       R9 R8 K31 ["BackgroundTransparency"]
       83 SETTABLEKS                       R8 R7 K32 ["Parent"]
       85 LENGTH                           R9 R5
       86 JUMPIFNOTEQKN                    R9 K33 [0] ; [+16]
       88 GETIMPORT                        R9 K4 [Instance.new]
       90 LOADK                            R10 K34 ["ScreenGui"]
       91 CALL                             R9 1 1
       92 SETTABLEKS                       R2 R9 K18 ["Name"]
       94 SETTABLEKS                       R9 R8 K32 ["Parent"]
       96 LOADB                            R10 1
       97 NEWTABLE                         R11 0 1
       99 MOVE                             R12 R9
      100 SETLIST                          R11 R12 1 [1]
      102 RETURN                           R10 2
      103 LOADB                            R9 1
      104 NEWTABLE                         R10 0 1
      106 MOVE                             R11 R8
      107 SETLIST                          R10 R11 1 [1]
      109 RETURN                           R9 2

PROTO_7:
        0 GETUPVAL                         R5 0
        1 NAMECALL                         R5 R5 K0 ["GetAudioApiByDefault"]
        3 CALL                             R5 1 1
        4 JUMPIFNOT                        R5 ; [+23]
        5 JUMPIFNOT                        R1 ; [+7]
        6 LOADK                            R5 K1 ["rbxassetid://%*&version=%*"]
        7 MOVE                             R7 R0
        8 MOVE                             R8 R1
        9 NAMECALL                         R5 R5 K2 ["format"]
       11 CALL                             R5 3 1
       12 JUMP                             ; [+5]
       13 LOADK                            R5 K3 ["rbxassetid://%*"]
       14 MOVE                             R7 R0
       15 NAMECALL                         R5 R5 K2 ["format"]
       17 CALL                             R5 2 1
       18 LOADB                            R6 1
       19 GETUPVAL                         R7 0
       20 MOVE                             R9 R5
       21 MOVE                             R10 R2
       22 GETUPVAL                         R11 1
       23 CALL                             R11 0 -1
       24 NAMECALL                         R7 R7 K4 ["InsertAsset"]
       26 CALL                             R7 -1 -1
       27 RETURN                           R6 -1
       28 GETIMPORT                        R5 K7 [Instance.new]
       30 LOADK                            R6 K8 ["Sound"]
       31 CALL                             R5 1 1
       32 SETTABLEKS                       R2 R5 K9 ["Name"]
       34 JUMPIFNOT                        R1 ; [+7]
       35 LOADK                            R6 K1 ["rbxassetid://%*&version=%*"]
       36 MOVE                             R8 R0
       37 MOVE                             R9 R1
       38 NAMECALL                         R6 R6 K2 ["format"]
       40 CALL                             R6 3 1
       41 JUMP                             ; [+5]
       42 LOADK                            R6 K3 ["rbxassetid://%*"]
       43 MOVE                             R8 R0
       44 NAMECALL                         R6 R6 K2 ["format"]
       46 CALL                             R6 2 1
       47 SETTABLEKS                       R6 R5 K10 ["SoundId"]
       49 GETUPVAL                         R6 1
       50 CALL                             R6 0 1
       51 JUMPIFNOT                        R6 ; [+12]
       52 GETUPVAL                         R6 2
       53 NAMECALL                         R6 R6 K11 ["Get"]
       55 CALL                             R6 1 1
       56 GETTABLEN                        R7 R6 1
       57 JUMPIF                           R7 ; [+4]
       58 GETIMPORT                        R7 K13 [game]
       60 GETTABLEKS                       R7 R7 K14 ["Workspace"]
       62 SETTABLEKS                       R7 R5 K15 ["Parent"]
       64 LOADB                            R6 1
       65 NEWTABLE                         R7 0 1
       67 MOVE                             R8 R5
       68 SETLIST                          R7 R8 1 [1]
       70 RETURN                           R6 2

PROTO_8:
        0 GETIMPORT                        R5 K2 [Instance.new]
        2 LOADK                            R6 K3 ["VideoFrame"]
        3 CALL                             R5 1 1
        4 SETTABLEKS                       R2 R5 K4 ["Name"]
        6 SETTABLEKS                       R0 R5 K5 ["SourceAssetId"]
        8 JUMPIFNOT                        R1 ; [+7]
        9 LOADK                            R6 K6 ["rbxassetid://%*&version=%*"]
       10 MOVE                             R8 R0
       11 MOVE                             R9 R1
       12 NAMECALL                         R6 R6 K7 ["format"]
       14 CALL                             R6 3 1
       15 JUMP                             ; [+5]
       16 LOADK                            R6 K8 ["rbxassetid://%*"]
       17 MOVE                             R8 R0
       18 NAMECALL                         R6 R6 K7 ["format"]
       20 CALL                             R6 2 1
       21 SETTABLEKS                       R6 R5 K9 ["Video"]
       23 GETIMPORT                        R6 K11 [UDim2.new]
       25 LOADN                            R7 1
       26 LOADN                            R8 0
       27 LOADN                            R9 1
       28 LOADN                            R10 0
       29 CALL                             R6 4 1
       30 SETTABLEKS                       R6 R5 K12 ["Size"]
       32 LOADB                            R6 1
       33 NEWTABLE                         R7 0 1
       35 MOVE                             R8 R5
       36 SETLIST                          R7 R8 1 [1]
       38 RETURN                           R6 2

PROTO_9:
        0 GETIMPORT                        R5 K2 [Instance.new]
        2 LOADK                            R6 K3 ["TextDocument"]
        3 CALL                             R5 1 1
        4 SETTABLEKS                       R2 R5 K4 ["Name"]
        6 GETUPVAL                         R6 0
        7 CALL                             R6 0 1
        8 JUMPIFNOT                        R6 ; [+19]
        9 GETIMPORT                        R6 K7 [Content.fromUri]
       11 JUMPIFNOT                        R1 ; [+7]
       12 LOADK                            R7 K8 ["rbxassetid://%*&version=%*"]
       13 MOVE                             R9 R0
       14 MOVE                             R10 R1
       15 NAMECALL                         R7 R7 K9 ["format"]
       17 CALL                             R7 3 1
       18 JUMP                             ; [+5]
       19 LOADK                            R7 K10 ["rbxassetid://%*"]
       20 MOVE                             R9 R0
       21 NAMECALL                         R7 R7 K9 ["format"]
       23 CALL                             R7 2 1
       24 CALL                             R6 1 1
       25 SETTABLEKS                       R6 R5 K11 ["TextContent"]
       27 JUMP                             ; [+6]
       28 GETIMPORT                        R6 K13 [Content.fromAssetId]
       30 MOVE                             R7 R0
       31 CALL                             R6 1 1
       32 SETTABLEKS                       R6 R5 K11 ["TextContent"]
       34 LOADB                            R6 1
       35 NEWTABLE                         R7 0 1
       37 MOVE                             R8 R5
       38 SETLIST                          R7 R8 1 [1]
       40 RETURN                           R6 2

PROTO_10:
        0 JUMPIF                           R4 ; [+8]
        1 GETUPVAL                         R5 0
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 MOVE                             R10 R4
        7 CALL                             R5 5 -1
        8 RETURN                           R5 -1
        9 GETIMPORT                        R5 K2 [Instance.new]
       11 LOADK                            R6 K3 ["Animation"]
       12 CALL                             R5 1 1
       13 SETTABLEKS                       R2 R5 K4 ["Name"]
       15 JUMPIFNOT                        R1 ; [+7]
       16 LOADK                            R6 K5 ["rbxassetid://%*&version=%*"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 NAMECALL                         R6 R6 K6 ["format"]
       21 CALL                             R6 3 1
       22 JUMP                             ; [+5]
       23 LOADK                            R6 K7 ["rbxassetid://%*"]
       24 MOVE                             R8 R0
       25 NAMECALL                         R6 R6 K6 ["format"]
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R5 K8 ["AnimationId"]
       30 SETTABLEKS                       R0 R5 K9 ["SourceAssetId"]
       32 LOADB                            R6 1
       33 NEWTABLE                         R7 0 1
       35 MOVE                             R8 R5
       36 SETLIST                          R7 R8 1 [1]
       38 RETURN                           R6 2

PROTO_11:
        0 GETUPVAL                         R7 0
        1 GETTABLE                         R6 R7 R2
        2 JUMPIF                           R6 ; [+9]
        3 GETIMPORT                        R6 K1 [error]
        5 LOADK                            R7 K2 ["Unsupported asset type: %*"]
        6 GETTABLEKS                       R9 R2 K3 ["Name"]
        8 NAMECALL                         R7 R7 K4 ["format"]
       10 CALL                             R7 2 1
       11 CALL                             R6 1 0
       12 GETUPVAL                         R7 0
       13 GETTABLE                         R6 R7 R2
       14 MOVE                             R7 R0
       15 MOVE                             R8 R1
       16 MOVE                             R9 R3
       17 MOVE                             R10 R4
       18 MOVE                             R11 R5
       19 CALL                             R6 5 2
       20 JUMPIF                           R6 ; [+11]
       21 GETUPVAL                         R8 1
       22 LOADK                            R9 K5 ["Failed to get asset instances for %*: %*"]
       23 GETTABLEKS                       R11 R2 K3 ["Name"]
       25 MOVE                             R12 R7
       26 NAMECALL                         R9 R9 K4 ["format"]
       28 CALL                             R9 3 1
       29 CALL                             R8 1 0
       30 LOADNIL                          R8
       31 RETURN                           R8 1
       32 RETURN                           R7 1

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
       44 GETTABLEKS                       R9 R9 K17 ["getFFlagAmrEnableAnimatedImage"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R10 R0 K16 ["Flags"]
       51 GETTABLEKS                       R10 R10 K18 ["getFFlagAmrInsertPinned"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K4 [require]
       56 GETTABLEKS                       R11 R0 K16 ["Flags"]
       58 GETTABLEKS                       R11 R11 K19 ["getFFlagAudioAssetInsertAssetManagerUsesSelection"]
       60 CALL                             R10 1 1
       61 DUPCLOSURE                       R11 K20 [PROTO_0]
       62 NEWTABLE                         R12 0 0
       64 DUPCLOSURE                       R13 K21 [PROTO_1]
       65 CAPTURE                          VAL R2
       66 GETTABLEKS                       R14 R6 K22 ["InsertableAssetTypes"]
       68 LOADNIL                          R15
       69 LOADNIL                          R16
       70 FORGPREP                         R14
       71 SETTABLE                         R13 R12 R17
       72 FORGLOOP                         R14 2 ; [-2]
       74 GETIMPORT                        R14 K26 [Enum.AssetType.Model]
       76 DUPCLOSURE                       R15 K27 [PROTO_2]
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R13
       79 SETTABLE                         R15 R12 R14
       80 GETIMPORT                        R14 K29 [Enum.AssetType.MeshPart]
       82 DUPCLOSURE                       R15 K30 [PROTO_3]
       83 CAPTURE                          VAL R12
       84 SETTABLE                         R15 R12 R14
       85 GETIMPORT                        R14 K32 [Enum.AssetType.Mesh]
       87 DUPCLOSURE                       R15 K33 [PROTO_4]
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R2
       90 SETTABLE                         R15 R12 R14
       91 GETIMPORT                        R14 K35 [Enum.AssetType.Image]
       93 DUPCLOSURE                       R15 K36 [PROTO_5]
       94 SETTABLE                         R15 R12 R14
       95 GETIMPORT                        R14 K38 [Enum.AssetType.AnimatedImage]
       97 DUPCLOSURE                       R15 K39 [PROTO_6]
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R9
      101 SETTABLE                         R15 R12 R14
      102 GETIMPORT                        R14 K41 [Enum.AssetType.Audio]
      104 DUPCLOSURE                       R15 K42 [PROTO_7]
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R5
      108 SETTABLE                         R15 R12 R14
      109 GETIMPORT                        R14 K44 [Enum.AssetType.Video]
      111 DUPCLOSURE                       R15 K45 [PROTO_8]
      112 SETTABLE                         R15 R12 R14
      113 GETIMPORT                        R14 K47 [Enum.AssetType.TextDocument]
      115 DUPCLOSURE                       R15 K48 [PROTO_9]
      116 CAPTURE                          VAL R9
      117 SETTABLE                         R15 R12 R14
      118 GETIMPORT                        R14 K50 [Enum.AssetType.Animation]
      120 DUPCLOSURE                       R15 K51 [PROTO_10]
      121 CAPTURE                          VAL R13
      122 SETTABLE                         R15 R12 R14
      123 DUPCLOSURE                       R14 K52 [PROTO_11]
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R7
      126 RETURN                           R14 1
