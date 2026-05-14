PROTO_0:
        0 DUPTABLE                         R1 K3 [{"Asset", "AudioDetails", "Creator"}]
        1 DUPTABLE                         R2 K12 [{"Id", "Name", "AssetGenres", "TypeId", "IsEndorsed", "Description", "Duration", "HasScripts"}]
        2 SETTABLEKS                       R0 R2 K4 ["Id"]
        4 LOADK                            R3 K13 ["Cascaded Drumming"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K6 ["AssetGenres"]
       10 LOADN                            R3 10
       11 SETTABLEKS                       R3 R2 K7 ["TypeId"]
       13 LOADB                            R3 0
       14 SETTABLEKS                       R3 R2 K8 ["IsEndorsed"]
       16 LOADK                            R3 K14 ["High hat with various percussion sounds. Loud crashes."]
       17 SETTABLEKS                       R3 R2 K9 ["Description"]
       19 LOADK                            R3 K15 ["128"]
       20 SETTABLEKS                       R3 R2 K10 ["Duration"]
       22 LOADB                            R3 0
       23 SETTABLEKS                       R3 R2 K11 ["HasScripts"]
       25 SETTABLEKS                       R2 R1 K0 ["Asset"]
       27 DUPTABLE                         R2 K20 [{"Artist", "Type", "SoundEffectCategory", "SoundEffectSubcategory"}]
       28 LOADK                            R3 K21 ["OnlyTwentyCharacters"]
       29 SETTABLEKS                       R3 R2 K16 ["Artist"]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K22 ["SOUND_EFFECTS"]
       34 GETTABLEKS                       R3 R3 K23 ["name"]
       36 SETTABLEKS                       R3 R2 K17 ["Type"]
       38 LOADK                            R3 K24 ["instruments"]
       39 SETTABLEKS                       R3 R2 K18 ["SoundEffectCategory"]
       41 LOADK                            R3 K25 ["Drum"]
       42 SETTABLEKS                       R3 R2 K19 ["SoundEffectSubcategory"]
       44 SETTABLEKS                       R2 R1 K1 ["AudioDetails"]
       46 DUPTABLE                         R2 K26 [{"Id", "Name", "Type"}]
       47 LOADN                            R3 1
       48 SETTABLEKS                       R3 R2 K4 ["Id"]
       50 LOADK                            R3 K27 ["Rolbox"]
       51 SETTABLEKS                       R3 R2 K5 ["Name"]
       53 LOADK                            R3 K28 ["User"]
       54 SETTABLEKS                       R3 R2 K17 ["Type"]
       56 SETTABLEKS                       R2 R1 K2 ["Creator"]
       58 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Insert Asset"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Try Insert"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["try open asset config"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["OnAssetPreviewButtonClicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K5 [{"Size", "BackgroundTransparency", "Position"}]
        5 GETIMPORT                        R4 K8 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 246
        9 LOADN                            R7 0
       10 LOADN                            R8 4
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K2 ["Size"]
       14 LOADN                            R4 1
       15 SETTABLEKS                       R4 R3 K3 ["BackgroundTransparency"]
       17 GETIMPORT                        R4 K8 [UDim2.new]
       19 LOADN                            R5 0
       20 LOADN                            R6 0
       21 LOADN                            R7 0
       22 LOADN                            R8 0
       23 CALL                             R4 4 1
       24 SETTABLEKS                       R4 R3 K4 ["Position"]
       26 DUPTABLE                         R4 K10 [{"AudioTable"}]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K11 ["Generator"]
       30 DUPTABLE                         R6 K20 [{"Assets", "AudioType", "CanInsertAsset", "InsertAsset", "TryInsert", "TryOpenAssetConfig", "OnAssetPreviewButtonClicked", "SwimlaneName"}]
       31 GETUPVAL                         R7 2
       32 SETTABLEKS                       R7 R6 K12 ["Assets"]
       34 GETTABLEKS                       R7 R0 K21 ["props"]
       36 GETTABLEKS                       R7 R7 K13 ["AudioType"]
       38 SETTABLEKS                       R7 R6 K13 ["AudioType"]
       40 DUPCLOSURE                       R7 K22 [PROTO_1]
       41 SETTABLEKS                       R7 R6 K14 ["CanInsertAsset"]
       43 DUPCLOSURE                       R7 K23 [PROTO_2]
       44 SETTABLEKS                       R7 R6 K15 ["InsertAsset"]
       46 DUPCLOSURE                       R7 K24 [PROTO_3]
       47 SETTABLEKS                       R7 R6 K16 ["TryInsert"]
       49 DUPCLOSURE                       R7 K25 [PROTO_4]
       50 SETTABLEKS                       R7 R6 K17 ["TryOpenAssetConfig"]
       52 DUPCLOSURE                       R7 K26 [PROTO_5]
       53 SETTABLEKS                       R7 R6 K18 ["OnAssetPreviewButtonClicked"]
       55 LOADK                            R7 K27 ["test"]
       56 SETTABLEKS                       R7 R6 K19 ["SwimlaneName"]
       58 CALL                             R5 1 1
       59 SETTABLEKS                       R5 R4 K9 ["AudioTable"]
       61 CALL                             R1 3 -1
       62 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioTableWrapper"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K4 [{"AudioType"}]
       12 GETUPVAL                         R7 3
       13 GETTABLEKS                       R7 R7 K5 ["SOUND_EFFECTS"]
       15 GETTABLEKS                       R7 R7 K6 ["name"]
       17 SETTABLEKS                       R7 R6 K3 ["AudioType"]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K1 ["AudioTableWrapper"]
       22 CALL                             R0 3 -1
       23 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioTableWrapper"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K4 [{"AudioType"}]
       12 GETUPVAL                         R7 3
       13 GETTABLEKS                       R7 R7 K5 ["MUSIC"]
       15 GETTABLEKS                       R7 R7 K6 ["name"]
       17 SETTABLEKS                       R7 R6 K3 ["AudioType"]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K1 ["AudioTableWrapper"]
       22 CALL                             R0 3 -1
       23 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioTableWrapper"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 CALL                             R4 1 1
       12 SETTABLEKS                       R4 R3 K1 ["AudioTableWrapper"]
       14 CALL                             R0 3 -1
       15 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 GETTABLEKS                       R4 R4 K10 ["Category"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K11 ["Parent"]
       29 GETTABLEKS                       R5 R5 K12 ["AudioTable"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R6 K13 ["Models"]
       38 GETTABLEKS                       R6 R6 K14 ["AssetInfo"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R0 K15 ["Stories"]
       45 GETTABLEKS                       R7 R7 K16 ["ToolboxStoryWrapper"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R2 K17 ["PureComponent"]
       50 LOADK                            R9 K18 ["AudioRowWrapper"]
       51 NAMECALL                         R7 R7 K19 ["extend"]
       53 CALL                             R7 2 1
       54 DUPCLOSURE                       R8 K20 [PROTO_0]
       55 CAPTURE                          VAL R3
       56 SETGLOBAL                        R8 K21 ["createAudioInfo"]
       58 NEWTABLE                         R8 0 0
       60 LOADN                            R11 1
       61 LOADN                            R9 10
       62 LOADN                            R10 1
       63 FORNPREP                         R9
       64 MOVE                             R13 R8
       65 GETGLOBAL                        R14 K21 ["createAudioInfo"]
       67 MOVE                             R15 R11
       68 CALL                             R14 1 -1
       69 FASTCALL                         TABLE_INSERT ; [+2]
       70 GETIMPORT                        R12 K24 [table.insert]
       72 CALL                             R12 -1 0
       73 FORNLOOP                         R9
       74 DUPCLOSURE                       R9 K25 [PROTO_6]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R8
       78 SETTABLEKS                       R9 R7 K26 ["render"]
       80 DUPTABLE                         R9 K29 [{"summary", "stories"}]
       81 LOADK                            R10 K30 ["Audio Table"]
       82 SETTABLEKS                       R10 R9 K27 ["summary"]
       84 NEWTABLE                         R10 0 3
       86 DUPTABLE                         R11 K33 [{"name", "story"}]
       87 LOADK                            R12 K34 ["Soundeffect"]
       88 SETTABLEKS                       R12 R11 K31 ["name"]
       90 DUPCLOSURE                       R12 K35 [PROTO_7]
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R3
       95 SETTABLEKS                       R12 R11 K32 ["story"]
       97 DUPTABLE                         R12 K33 [{"name", "story"}]
       98 LOADK                            R13 K36 ["Music"]
       99 SETTABLEKS                       R13 R12 K31 ["name"]
      101 DUPCLOSURE                       R13 K37 [PROTO_8]
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R3
      106 SETTABLEKS                       R13 R12 K32 ["story"]
      108 DUPTABLE                         R13 K33 [{"name", "story"}]
      109 LOADK                            R14 K38 ["Uncategorized"]
      110 SETTABLEKS                       R14 R13 K31 ["name"]
      112 DUPCLOSURE                       R14 K39 [PROTO_9]
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R7
      116 SETTABLEKS                       R14 R13 K32 ["story"]
      118 SETLIST                          R10 R11 3 [1]
      120 SETTABLEKS                       R10 R9 K28 ["stories"]
      122 RETURN                           R9 1
