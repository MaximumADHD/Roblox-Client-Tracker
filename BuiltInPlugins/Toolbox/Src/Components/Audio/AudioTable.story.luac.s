PROTO_0:
        0 DUPTABLE                         R1 K3 [{"Asset", "AudioDetails", "Creator"}]
        1 DUPTABLE                         R2 K18 [{["Id"], ["Name"] = "Cascaded Drumming", ["AssetGenres"] = , ["TypeId"] = 10, ["IsEndorsed"] = False, ["Description"] = "High hat with various percussion sounds. Loud crashes.", ["Duration"] = "128", ["HasScripts"] = False}]
        2 SETTABLEKS                       R0 R2 K4 ["Id"]
        4 SETTABLEKS                       R2 R1 K0 ["Asset"]
        6 DUPTABLE                         R2 K26 [{["Artist"] = "OnlyTwentyCharacters", ["Type"], ["SoundEffectCategory"] = "instruments", ["SoundEffectSubcategory"] = "Drum"}]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K27 ["SOUND_EFFECTS"]
       10 GETTABLEKS                       R3 R3 K28 ["name"]
       12 SETTABLEKS                       R3 R2 K21 ["Type"]
       14 SETTABLEKS                       R2 R1 K1 ["AudioDetails"]
       16 DUPTABLE                         R2 K32 [{["Id"] = 1, ["Name"] = "Rolbox", ["Type"] = "User"}]
       17 SETTABLEKS                       R2 R1 K2 ["Creator"]
       19 RETURN                           R1 1

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
        4 DUPTABLE                         R3 K6 [{["Size"], ["BackgroundTransparency"] = 1, ["Position"]}]
        5 GETIMPORT                        R4 K9 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 -10
        9 LOADN                            R7 0
       10 LOADN                            R8 260
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K2 ["Size"]
       14 GETIMPORT                        R4 K9 [UDim2.new]
       16 LOADN                            R5 0
       17 LOADN                            R6 0
       18 LOADN                            R7 0
       19 LOADN                            R8 0
       20 CALL                             R4 4 1
       21 SETTABLEKS                       R4 R3 K5 ["Position"]
       23 DUPTABLE                         R4 K11 [{"AudioTable"}]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K12 ["Generator"]
       27 DUPTABLE                         R6 K22 [{["Assets"], ["AudioType"], ["CanInsertAsset"], ["InsertAsset"], ["TryInsert"], ["TryOpenAssetConfig"], ["OnAssetPreviewButtonClicked"], ["SwimlaneName"] = "test"}]
       28 GETUPVAL                         R7 2
       29 SETTABLEKS                       R7 R6 K13 ["Assets"]
       31 GETTABLEKS                       R7 R0 K23 ["props"]
       33 GETTABLEKS                       R7 R7 K14 ["AudioType"]
       35 SETTABLEKS                       R7 R6 K14 ["AudioType"]
       37 DUPCLOSURE                       R7 K24 [PROTO_1]
       38 SETTABLEKS                       R7 R6 K15 ["CanInsertAsset"]
       40 DUPCLOSURE                       R7 K25 [PROTO_2]
       41 SETTABLEKS                       R7 R6 K16 ["InsertAsset"]
       43 DUPCLOSURE                       R7 K26 [PROTO_3]
       44 SETTABLEKS                       R7 R6 K17 ["TryInsert"]
       46 DUPCLOSURE                       R7 K27 [PROTO_4]
       47 SETTABLEKS                       R7 R6 K18 ["TryOpenAssetConfig"]
       49 DUPCLOSURE                       R7 K28 [PROTO_5]
       50 SETTABLEKS                       R7 R6 K19 ["OnAssetPreviewButtonClicked"]
       52 CALL                             R5 1 1
       53 SETTABLEKS                       R5 R4 K10 ["AudioTable"]
       55 CALL                             R1 3 -1
       56 RETURN                           R1 -1

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
       80 DUPTABLE                         R9 K30 [{["summary"] = "Audio Table", ["stories"]}]
       81 NEWTABLE                         R10 0 3
       83 DUPTABLE                         R11 K34 [{["name"] = "Soundeffect", ["story"]}]
       84 DUPCLOSURE                       R12 K35 [PROTO_7]
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R3
       89 SETTABLEKS                       R12 R11 K33 ["story"]
       91 DUPTABLE                         R12 K37 [{["name"] = "Music", ["story"]}]
       92 DUPCLOSURE                       R13 K38 [PROTO_8]
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R3
       97 SETTABLEKS                       R13 R12 K33 ["story"]
       99 DUPTABLE                         R13 K40 [{["name"] = "Uncategorized", ["story"]}]
      100 DUPCLOSURE                       R14 K41 [PROTO_9]
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R7
      104 SETTABLEKS                       R14 R13 K33 ["story"]
      106 SETLIST                          R10 R11 3 [1]
      108 SETTABLEKS                       R10 R9 K29 ["stories"]
      110 RETURN                           R9 1
