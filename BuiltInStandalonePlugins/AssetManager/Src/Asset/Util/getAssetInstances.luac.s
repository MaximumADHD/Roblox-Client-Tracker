PROTO_0:
        0 LOADK                            R2 K0 ["rbxassetid://%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R0 0 1
        2 GETIMPORT                        R1 K2 [Instance.new]
        4 LOADK                            R2 K3 ["Model"]
        5 CALL                             R1 1 -1
        6 SETLIST                          R0 R1 -1 [1]
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+5]
        3 GETIMPORT                        R1 K1 [game]
        5 GETTABLEKS                       R0 R1 K2 ["InsertObjectsAndJoinIfLegacyAsync"]
        7 RETURN                           R0 1
        8 DUPCLOSURE                       R0 K3 [PROTO_1]
        9 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K2 ["LoadAsset"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R4 R0 K3 ["AssetId"]
        8 CALL                             R1 3 2
        9 JUMPIFNOT                        R1 ; [+10]
       10 JUMPIFNOT                        R2 ; [+9]
       11 NEWTABLE                         R3 0 1
       13 NAMECALL                         R5 R2 K4 ["GetChildren"]
       15 CALL                             R5 1 1
       16 GETTABLEN                        R4 R5 1
       17 SETLIST                          R3 R4 1 [1]
       19 RETURN                           R3 1
       20 NEWTABLE                         R3 0 0
       22 RETURN                           R3 1

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["IsPackage"]
        2 JUMPIFNOT                        R2 ; [+49]
        3 GETIMPORT                        R2 K2 [pcall]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K3 ["LoadPackageAssetAsync"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R6 R0 K4 ["AssetId"]
       11 LOADK                            R7 K5 ["rbxassetid://%*"]
       12 MOVE                             R9 R6
       13 NAMECALL                         R7 R7 K6 ["format"]
       15 CALL                             R7 2 1
       16 MOVE                             R5 R7
       17 CALL                             R2 3 2
       18 JUMPIFNOT                        R2 ; [+126]
       19 JUMPIFNOT                        R3 ; [+125]
       20 JUMPIFNOT                        R1 ; [+24]
       21 GETIMPORT                        R4 K9 [Instance.new]
       23 LOADK                            R5 K10 ["Model"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R6 K12 [game]
       27 GETTABLEKS                       R5 R6 K13 ["Workspace"]
       29 SETTABLEKS                       R5 R4 K14 ["Parent"]
       31 GETTABLEN                        R5 R3 1
       32 SETTABLEKS                       R4 R5 K14 ["Parent"]
       34 MOVE                             R7 R1
       35 NAMECALL                         R5 R4 K15 ["MoveTo"]
       37 CALL                             R5 2 0
       38 GETTABLEN                        R5 R3 1
       39 LOADNIL                          R6
       40 SETTABLEKS                       R6 R5 K14 ["Parent"]
       42 NAMECALL                         R5 R4 K16 ["Destroy"]
       44 CALL                             R5 1 0
       45 NEWTABLE                         R4 0 1
       47 GETTABLEN                        R5 R3 1
       48 SETLIST                          R4 R5 1 [1]
       50 RETURN                           R4 1
       51 JUMP                             ; [+93]
       52 GETUPVAL                         R2 1
       53 CALL                             R2 0 1
       54 JUMPIFNOT                        R2 ; [+56]
       55 GETIMPORT                        R2 K2 [pcall]
       57 GETUPVAL                         R4 2
       58 CALL                             R4 0 1
       59 JUMPIF                           R4 ; [+5]
       60 GETIMPORT                        R4 K12 [game]
       62 GETTABLEKS                       R3 R4 K17 ["InsertObjectsAndJoinIfLegacyAsync"]
       64 JUMP                             ; [+1]
       65 DUPCLOSURE                       R3 K18 [PROTO_1]
       66 GETIMPORT                        R4 K12 [game]
       68 GETTABLEKS                       R6 R0 K4 ["AssetId"]
       70 LOADK                            R7 K5 ["rbxassetid://%*"]
       71 MOVE                             R9 R6
       72 NAMECALL                         R7 R7 K6 ["format"]
       74 CALL                             R7 2 1
       75 MOVE                             R5 R7
       76 CALL                             R2 3 2
       77 JUMPIFNOT                        R2 ; [+67]
       78 GETTABLEN                        R4 R3 1
       79 JUMPIFNOT                        R4 ; [+65]
       80 GETTABLEN                        R4 R3 1
       81 JUMPIFNOT                        R1 ; [+22]
       82 GETIMPORT                        R5 K9 [Instance.new]
       84 LOADK                            R6 K10 ["Model"]
       85 CALL                             R5 1 1
       86 GETIMPORT                        R7 K12 [game]
       88 GETTABLEKS                       R6 R7 K13 ["Workspace"]
       90 SETTABLEKS                       R6 R5 K14 ["Parent"]
       92 SETTABLEKS                       R5 R4 K14 ["Parent"]
       94 MOVE                             R8 R1
       95 NAMECALL                         R6 R5 K15 ["MoveTo"]
       97 CALL                             R6 2 0
       98 LOADNIL                          R6
       99 SETTABLEKS                       R6 R4 K14 ["Parent"]
      101 NAMECALL                         R6 R5 K16 ["Destroy"]
      103 CALL                             R6 1 0
      104 NEWTABLE                         R5 0 1
      106 MOVE                             R6 R4
      107 SETLIST                          R5 R6 1 [1]
      109 RETURN                           R5 1
      110 JUMP                             ; [+34]
      111 GETIMPORT                        R2 K2 [pcall]
      113 GETUPVAL                         R4 0
      114 GETTABLEKS                       R3 R4 K19 ["LoadAsset"]
      116 GETUPVAL                         R4 0
      117 GETTABLEKS                       R5 R0 K4 ["AssetId"]
      119 CALL                             R2 3 2
      120 JUMPIFNOT                        R2 ; [+24]
      121 JUMPIFNOT                        R3 ; [+23]
      122 JUMPIFNOT                        R1 ; [+13]
      123 GETIMPORT                        R5 K12 [game]
      125 GETTABLEKS                       R4 R5 K13 ["Workspace"]
      127 SETTABLEKS                       R4 R3 K14 ["Parent"]
      129 MOVE                             R6 R1
      130 NAMECALL                         R4 R3 K15 ["MoveTo"]
      132 CALL                             R4 2 0
      133 LOADNIL                          R4
      134 SETTABLEKS                       R4 R3 K14 ["Parent"]
      136 NEWTABLE                         R4 0 1
      138 NAMECALL                         R6 R3 K20 ["GetChildren"]
      140 CALL                             R6 1 1
      141 GETTABLEN                        R5 R6 1
      142 SETLIST                          R4 R5 1 [1]
      144 RETURN                           R4 1
      145 NEWTABLE                         R2 0 0
      147 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["AssetType"]
        4 GETTABLEKS                       R4 R5 K1 ["Model"]
        6 GETTABLE                         R2 R3 R4
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_7:
        0 GETIMPORT                        R2 K2 [Content.fromAssetId]
        2 GETTABLEKS                       R3 R0 K3 ["AssetId"]
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K5 [pcall]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K6 ["CreateMeshPartAsync"]
       10 GETUPVAL                         R5 0
       11 MOVE                             R6 R2
       12 CALL                             R3 3 2
       13 JUMPIFNOT                        R3 ; [+10]
       14 JUMPIFNOT                        R4 ; [+9]
       15 JUMPIFNOT                        R1 ; [+2]
       16 SETTABLEKS                       R1 R4 K7 ["Position"]
       18 NEWTABLE                         R5 0 1
       20 MOVE                             R6 R4
       21 SETLIST                          R5 R6 1 [1]
       23 RETURN                           R5 1
       24 GETIMPORT                        R5 K9 [warn]
       26 MOVE                             R6 R4
       27 CALL                             R5 1 0
       28 NEWTABLE                         R5 0 0
       30 RETURN                           R5 1

PROTO_8:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Decal"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K4 ["DisplayName"]
        6 SETTABLEKS                       R2 R1 K5 ["Name"]
        8 GETTABLEKS                       R3 R0 K6 ["AssetId"]
       10 LOADK                            R4 K7 ["rbxassetid://%*"]
       11 MOVE                             R6 R3
       12 NAMECALL                         R4 R4 K8 ["format"]
       14 CALL                             R4 2 1
       15 MOVE                             R2 R4
       16 SETTABLEKS                       R2 R1 K9 ["Texture"]
       18 NEWTABLE                         R2 0 1
       20 MOVE                             R3 R1
       21 SETLIST                          R2 R3 1 [1]
       23 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetAudioApiByDefault"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+18]
        5 GETTABLEKS                       R2 R0 K1 ["AssetId"]
        7 LOADK                            R3 K2 ["rbxassetid://%*"]
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R3 K3 ["format"]
       11 CALL                             R3 2 1
       12 MOVE                             R1 R3
       13 GETUPVAL                         R2 0
       14 MOVE                             R4 R1
       15 GETTABLEKS                       R5 R0 K4 ["DisplayName"]
       17 GETUPVAL                         R6 1
       18 CALL                             R6 0 -1
       19 NAMECALL                         R2 R2 K5 ["InsertAsset"]
       21 CALL                             R2 -1 -1
       22 RETURN                           R2 -1
       23 GETIMPORT                        R1 K8 [Instance.new]
       25 LOADK                            R2 K9 ["Sound"]
       26 CALL                             R1 1 1
       27 GETTABLEKS                       R2 R0 K4 ["DisplayName"]
       29 SETTABLEKS                       R2 R1 K10 ["Name"]
       31 GETUPVAL                         R2 2
       32 CALL                             R2 0 1
       33 JUMPIF                           R2 ; [+10]
       34 GETTABLEKS                       R3 R0 K1 ["AssetId"]
       36 LOADK                            R4 K2 ["rbxassetid://%*"]
       37 MOVE                             R6 R3
       38 NAMECALL                         R4 R4 K3 ["format"]
       40 CALL                             R4 2 1
       41 MOVE                             R2 R4
       42 SETTABLEKS                       R2 R1 K11 ["SoundId"]
       44 GETUPVAL                         R2 1
       45 CALL                             R2 0 1
       46 JUMPIFNOT                        R2 ; [+10]
       47 GETUPVAL                         R2 3
       48 NAMECALL                         R2 R2 K12 ["Get"]
       50 CALL                             R2 1 1
       51 GETTABLEN                        R3 R2 1
       52 JUMPIF                           R3 ; [+2]
       53 GETIMPORT                        R3 K14 [workspace]
       55 SETTABLEKS                       R3 R1 K15 ["Parent"]
       57 NEWTABLE                         R2 0 1
       59 MOVE                             R3 R1
       60 SETLIST                          R2 R3 1 [1]
       62 RETURN                           R2 1

PROTO_10:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["VideoFrame"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K4 ["DisplayName"]
        6 SETTABLEKS                       R2 R1 K5 ["Name"]
        8 GETTABLEKS                       R2 R0 K6 ["AssetId"]
       10 SETTABLEKS                       R2 R1 K7 ["SourceAssetId"]
       12 GETUPVAL                         R2 0
       13 CALL                             R2 0 1
       14 JUMPIF                           R2 ; [+10]
       15 GETTABLEKS                       R3 R0 K6 ["AssetId"]
       17 LOADK                            R4 K8 ["rbxassetid://%*"]
       18 MOVE                             R6 R3
       19 NAMECALL                         R4 R4 K9 ["format"]
       21 CALL                             R4 2 1
       22 MOVE                             R2 R4
       23 SETTABLEKS                       R2 R1 K10 ["Video"]
       25 GETIMPORT                        R2 K12 [UDim2.new]
       27 LOADN                            R3 1
       28 LOADN                            R4 0
       29 LOADN                            R5 1
       30 LOADN                            R6 0
       31 CALL                             R2 4 1
       32 SETTABLEKS                       R2 R1 K13 ["Size"]
       34 NEWTABLE                         R2 0 1
       36 MOVE                             R3 R1
       37 SETLIST                          R2 R3 1 [1]
       39 RETURN                           R2 1

PROTO_11:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_12:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_13:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagAudioAssetInsertAssetManagerUsesSelection"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Util"]
       22 GETTABLEKS                       R3 R4 K10 ["Services"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K11 ["GetService"]
       27 LOADK                            R4 K12 ["AssetService"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R2 K11 ["GetService"]
       31 LOADK                            R5 K13 ["InsertService"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K15 [game]
       35 LOADK                            R7 K16 ["SoundService"]
       36 NAMECALL                         R5 R5 K11 ["GetService"]
       38 CALL                             R5 2 1
       39 GETIMPORT                        R6 K15 [game]
       41 LOADK                            R8 K17 ["Selection"]
       42 NAMECALL                         R6 R6 K11 ["GetService"]
       44 CALL                             R6 2 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R9 R0 K6 ["Src"]
       49 GETTABLEKS                       R8 R9 K18 ["Types"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R11 R0 K6 ["Src"]
       56 GETTABLEKS                       R10 R11 K9 ["Util"]
       58 GETTABLEKS                       R9 R10 K19 ["isCli"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R12 R0 K6 ["Src"]
       65 GETTABLEKS                       R11 R12 K7 ["Flags"]
       67 GETTABLEKS                       R10 R11 K20 ["getFFlagAmrOrganizationFoundation"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R13 R0 K6 ["Src"]
       74 GETTABLEKS                       R12 R13 K7 ["Flags"]
       76 GETTABLEKS                       R11 R12 K21 ["getFFlagAmrFixInsertInPlaySolo"]
       78 CALL                             R10 1 1
       79 DUPCLOSURE                       R11 K22 [PROTO_0]
       80 DUPCLOSURE                       R12 K23 [PROTO_2]
       81 CAPTURE                          VAL R8
       82 DUPCLOSURE                       R13 K24 [PROTO_3]
       83 CAPTURE                          VAL R4
       84 NEWTABLE                         R14 0 0
       86 GETTABLEKS                       R15 R7 K25 ["getEnumAsList"]
       88 GETTABLEKS                       R16 R7 K26 ["AssetType"]
       90 CALL                             R15 1 3
       91 FORGPREP                         R15
       92 SETTABLE                         R13 R14 R19
       93 FORGLOOP                         R15 2 ; [-2]
       95 MOVE                             R15 R9
       96 CALL                             R15 0 1
       97 JUMPIFNOT                        R15 ; [+6]
       98 GETTABLEKS                       R16 R7 K26 ["AssetType"]
      100 GETTABLEKS                       R15 R16 K27 ["Folder"]
      102 DUPCLOSURE                       R16 K28 [PROTO_4]
      103 SETTABLE                         R16 R14 R15
      104 GETTABLEKS                       R16 R7 K26 ["AssetType"]
      106 GETTABLEKS                       R15 R16 K29 ["Model"]
      108 DUPCLOSURE                       R16 K30 [PROTO_5]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R8
      112 SETTABLE                         R16 R14 R15
      113 GETTABLEKS                       R16 R7 K26 ["AssetType"]
      115 GETTABLEKS                       R15 R16 K31 ["MeshPart"]
      117 DUPCLOSURE                       R16 K32 [PROTO_6]
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R7
      120 SETTABLE                         R16 R14 R15
      121 GETTABLEKS                       R16 R7 K26 ["AssetType"]
      123 GETTABLEKS                       R15 R16 K33 ["Mesh"]
      125 DUPCLOSURE                       R16 K34 [PROTO_7]
      126 CAPTURE                          VAL R3
      127 SETTABLE                         R16 R14 R15
      128 GETTABLEKS                       R16 R7 K26 ["AssetType"]
      130 GETTABLEKS                       R15 R16 K35 ["Image"]
      132 DUPCLOSURE                       R16 K36 [PROTO_8]
      133 SETTABLE                         R16 R14 R15
      134 GETTABLEKS                       R16 R7 K26 ["AssetType"]
      136 GETTABLEKS                       R15 R16 K37 ["Audio"]
      138 DUPCLOSURE                       R16 K38 [PROTO_9]
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R6
      143 SETTABLE                         R16 R14 R15
      144 GETTABLEKS                       R16 R7 K26 ["AssetType"]
      146 GETTABLEKS                       R15 R16 K39 ["Video"]
      148 DUPCLOSURE                       R16 K40 [PROTO_10]
      149 CAPTURE                          VAL R8
      150 SETTABLE                         R16 R14 R15
      151 GETTABLEKS                       R16 R7 K26 ["AssetType"]
      153 GETTABLEKS                       R15 R16 K41 ["Plugin"]
      155 DUPCLOSURE                       R16 K42 [PROTO_11]
      156 SETTABLE                         R16 R14 R15
      157 GETTABLEKS                       R16 R7 K26 ["AssetType"]
      159 GETTABLEKS                       R15 R16 K43 ["FontFamily"]
      161 DUPCLOSURE                       R16 K44 [PROTO_12]
      162 SETTABLE                         R16 R14 R15
      163 GETTABLEKS                       R16 R7 K26 ["AssetType"]
      165 GETTABLEKS                       R15 R16 K45 ["Place"]
      167 DUPCLOSURE                       R16 K46 [PROTO_13]
      168 SETTABLE                         R16 R14 R15
      169 RETURN                           R14 1
