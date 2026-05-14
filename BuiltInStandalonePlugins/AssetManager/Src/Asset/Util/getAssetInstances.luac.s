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
        3 GETIMPORT                        R0 K1 [game]
        5 GETTABLEKS                       R0 R0 K2 ["InsertObjectsAndJoinIfLegacyAsync"]
        7 RETURN                           R0 1
        8 DUPCLOSURE                       R0 K3 [PROTO_1]
        9 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["LoadAsset"]
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
        0 GETTABLEKS                       R2 R1 K0 ["InsertPosition"]
        2 GETTABLEKS                       R3 R0 K1 ["IsPackage"]
        4 JUMPIFNOT                        R3 ; [+49]
        5 GETIMPORT                        R3 K3 [pcall]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K4 ["LoadPackageAssetAsync"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R7 R0 K5 ["AssetId"]
       13 LOADK                            R8 K6 ["rbxassetid://%*"]
       14 MOVE                             R10 R7
       15 NAMECALL                         R8 R8 K7 ["format"]
       17 CALL                             R8 2 1
       18 MOVE                             R6 R8
       19 CALL                             R3 3 2
       20 JUMPIFNOT                        R3 ; [+126]
       21 JUMPIFNOT                        R4 ; [+125]
       22 JUMPIFNOT                        R2 ; [+24]
       23 GETIMPORT                        R5 K10 [Instance.new]
       25 LOADK                            R6 K11 ["Model"]
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K13 [game]
       29 GETTABLEKS                       R6 R6 K14 ["Workspace"]
       31 SETTABLEKS                       R6 R5 K15 ["Parent"]
       33 GETTABLEN                        R6 R4 1
       34 SETTABLEKS                       R5 R6 K15 ["Parent"]
       36 MOVE                             R8 R2
       37 NAMECALL                         R6 R5 K16 ["MoveTo"]
       39 CALL                             R6 2 0
       40 GETTABLEN                        R6 R4 1
       41 LOADNIL                          R7
       42 SETTABLEKS                       R7 R6 K15 ["Parent"]
       44 NAMECALL                         R6 R5 K17 ["Destroy"]
       46 CALL                             R6 1 0
       47 NEWTABLE                         R5 0 1
       49 GETTABLEN                        R6 R4 1
       50 SETLIST                          R5 R6 1 [1]
       52 RETURN                           R5 1
       53 JUMP                             ; [+93]
       54 GETUPVAL                         R3 1
       55 CALL                             R3 0 1
       56 JUMPIFNOT                        R3 ; [+56]
       57 GETIMPORT                        R3 K3 [pcall]
       59 GETUPVAL                         R5 2
       60 CALL                             R5 0 1
       61 JUMPIF                           R5 ; [+5]
       62 GETIMPORT                        R4 K13 [game]
       64 GETTABLEKS                       R4 R4 K18 ["InsertObjectsAndJoinIfLegacyAsync"]
       66 JUMP                             ; [+1]
       67 DUPCLOSURE                       R4 K19 [PROTO_1]
       68 GETIMPORT                        R5 K13 [game]
       70 GETTABLEKS                       R7 R0 K5 ["AssetId"]
       72 LOADK                            R8 K6 ["rbxassetid://%*"]
       73 MOVE                             R10 R7
       74 NAMECALL                         R8 R8 K7 ["format"]
       76 CALL                             R8 2 1
       77 MOVE                             R6 R8
       78 CALL                             R3 3 2
       79 JUMPIFNOT                        R3 ; [+67]
       80 GETTABLEN                        R5 R4 1
       81 JUMPIFNOT                        R5 ; [+65]
       82 GETTABLEN                        R5 R4 1
       83 JUMPIFNOT                        R2 ; [+22]
       84 GETIMPORT                        R6 K10 [Instance.new]
       86 LOADK                            R7 K11 ["Model"]
       87 CALL                             R6 1 1
       88 GETIMPORT                        R7 K13 [game]
       90 GETTABLEKS                       R7 R7 K14 ["Workspace"]
       92 SETTABLEKS                       R7 R6 K15 ["Parent"]
       94 SETTABLEKS                       R6 R5 K15 ["Parent"]
       96 MOVE                             R9 R2
       97 NAMECALL                         R7 R6 K16 ["MoveTo"]
       99 CALL                             R7 2 0
      100 LOADNIL                          R7
      101 SETTABLEKS                       R7 R5 K15 ["Parent"]
      103 NAMECALL                         R7 R6 K17 ["Destroy"]
      105 CALL                             R7 1 0
      106 NEWTABLE                         R6 0 1
      108 MOVE                             R7 R5
      109 SETLIST                          R6 R7 1 [1]
      111 RETURN                           R6 1
      112 JUMP                             ; [+34]
      113 GETIMPORT                        R3 K3 [pcall]
      115 GETUPVAL                         R4 0
      116 GETTABLEKS                       R4 R4 K20 ["LoadAsset"]
      118 GETUPVAL                         R5 0
      119 GETTABLEKS                       R6 R0 K5 ["AssetId"]
      121 CALL                             R3 3 2
      122 JUMPIFNOT                        R3 ; [+24]
      123 JUMPIFNOT                        R4 ; [+23]
      124 JUMPIFNOT                        R2 ; [+13]
      125 GETIMPORT                        R5 K13 [game]
      127 GETTABLEKS                       R5 R5 K14 ["Workspace"]
      129 SETTABLEKS                       R5 R4 K15 ["Parent"]
      131 MOVE                             R7 R2
      132 NAMECALL                         R5 R4 K16 ["MoveTo"]
      134 CALL                             R5 2 0
      135 LOADNIL                          R5
      136 SETTABLEKS                       R5 R4 K15 ["Parent"]
      138 NEWTABLE                         R5 0 1
      140 NAMECALL                         R7 R4 K21 ["GetChildren"]
      142 CALL                             R7 1 1
      143 GETTABLEN                        R6 R7 1
      144 SETLIST                          R5 R6 1 [1]
      146 RETURN                           R5 1
      147 NEWTABLE                         R3 0 0
      149 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["AssetType"]
        4 GETTABLEKS                       R4 R4 K1 ["Model"]
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
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K6 ["CreateMeshPartAsync"]
       10 GETUPVAL                         R5 0
       11 MOVE                             R6 R2
       12 CALL                             R3 3 2
       13 JUMPIFNOT                        R3 ; [+14]
       14 JUMPIFNOT                        R4 ; [+13]
       15 GETTABLEKS                       R5 R1 K7 ["InsertPosition"]
       17 JUMPIFNOT                        R5 ; [+4]
       18 GETTABLEKS                       R5 R1 K7 ["InsertPosition"]
       20 SETTABLEKS                       R5 R4 K8 ["Position"]
       22 NEWTABLE                         R5 0 1
       24 MOVE                             R6 R4
       25 SETLIST                          R5 R6 1 [1]
       27 RETURN                           R5 1
       28 GETIMPORT                        R5 K10 [warn]
       30 MOVE                             R6 R4
       31 CALL                             R5 1 0
       32 NEWTABLE                         R5 0 0
       34 RETURN                           R5 1

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
       16 SETTABLEKS                       R2 R1 K9 ["ColorMap"]
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
        0 GETTABLEKS                       R2 R1 K0 ["Flags"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R2 R1 K0 ["Flags"]
        5 GETTABLEKS                       R2 R2 K1 ["UseAnimationInstance"]
        7 JUMPIF                           R2 ; [+4]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 RETURN                           R2 1
       12 GETIMPORT                        R2 K4 [Instance.new]
       14 LOADK                            R3 K5 ["Animation"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R0 K6 ["DisplayName"]
       18 SETTABLEKS                       R3 R2 K7 ["Name"]
       20 GETTABLEKS                       R4 R0 K8 ["AssetId"]
       22 LOADK                            R5 K9 ["rbxassetid://%*"]
       23 MOVE                             R7 R4
       24 NAMECALL                         R5 R5 K10 ["format"]
       26 CALL                             R5 2 1
       27 MOVE                             R3 R5
       28 SETTABLEKS                       R3 R2 K11 ["AnimationId"]
       30 GETTABLEKS                       R3 R0 K8 ["AssetId"]
       32 SETTABLEKS                       R3 R2 K12 ["SourceAssetId"]
       34 NEWTABLE                         R3 0 1
       36 MOVE                             R4 R2
       37 SETLIST                          R3 R4 1 [1]
       39 RETURN                           R3 1

PROTO_12:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_13:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagAudioAssetInsertAssetManagerUsesSelection"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["Services"]
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
       47 GETTABLEKS                       R8 R0 K6 ["Src"]
       49 GETTABLEKS                       R8 R8 K18 ["Types"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K6 ["Src"]
       56 GETTABLEKS                       R9 R9 K9 ["Util"]
       58 GETTABLEKS                       R9 R9 K19 ["isCli"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K6 ["Src"]
       65 GETTABLEKS                       R10 R10 K7 ["Flags"]
       67 GETTABLEKS                       R10 R10 K20 ["getFFlagAmrOrganizationFoundation"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["Src"]
       74 GETTABLEKS                       R11 R11 K7 ["Flags"]
       76 GETTABLEKS                       R11 R11 K21 ["getFFlagAmrFixInsertInPlaySolo"]
       78 CALL                             R10 1 1
       79 DUPCLOSURE                       R11 K22 [PROTO_0]
       80 DUPCLOSURE                       R12 K23 [PROTO_2]
       81 CAPTURE                          VAL R8
       82 DUPCLOSURE                       R13 K24 [PROTO_3]
       83 CAPTURE                          VAL R4
       84 NEWTABLE                         R14 0 0
       86 GETTABLEKS                       R15 R7 K25 ["asList"]
       88 GETTABLEKS                       R16 R7 K26 ["AssetType"]
       90 CALL                             R15 1 3
       91 FORGPREP                         R15
       92 SETTABLE                         R13 R14 R19
       93 FORGLOOP                         R15 2 ; [-2]
       95 MOVE                             R15 R9
       96 CALL                             R15 0 1
       97 JUMPIFNOT                        R15 ; [+6]
       98 GETTABLEKS                       R15 R7 K26 ["AssetType"]
      100 GETTABLEKS                       R15 R15 K27 ["Folder"]
      102 DUPCLOSURE                       R16 K28 [PROTO_4]
      103 SETTABLE                         R16 R14 R15
      104 GETTABLEKS                       R15 R7 K26 ["AssetType"]
      106 GETTABLEKS                       R15 R15 K29 ["Model"]
      108 DUPCLOSURE                       R16 K30 [PROTO_5]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R8
      112 SETTABLE                         R16 R14 R15
      113 GETTABLEKS                       R15 R7 K26 ["AssetType"]
      115 GETTABLEKS                       R15 R15 K31 ["MeshPart"]
      117 DUPCLOSURE                       R16 K32 [PROTO_6]
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R7
      120 SETTABLE                         R16 R14 R15
      121 GETTABLEKS                       R15 R7 K26 ["AssetType"]
      123 GETTABLEKS                       R15 R15 K33 ["Mesh"]
      125 DUPCLOSURE                       R16 K34 [PROTO_7]
      126 CAPTURE                          VAL R3
      127 SETTABLE                         R16 R14 R15
      128 GETTABLEKS                       R15 R7 K26 ["AssetType"]
      130 GETTABLEKS                       R15 R15 K35 ["Image"]
      132 DUPCLOSURE                       R16 K36 [PROTO_8]
      133 SETTABLE                         R16 R14 R15
      134 GETTABLEKS                       R15 R7 K26 ["AssetType"]
      136 GETTABLEKS                       R15 R15 K37 ["Audio"]
      138 DUPCLOSURE                       R16 K38 [PROTO_9]
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R6
      143 SETTABLE                         R16 R14 R15
      144 GETTABLEKS                       R15 R7 K26 ["AssetType"]
      146 GETTABLEKS                       R15 R15 K39 ["Video"]
      148 DUPCLOSURE                       R16 K40 [PROTO_10]
      149 CAPTURE                          VAL R8
      150 SETTABLE                         R16 R14 R15
      151 GETTABLEKS                       R15 R7 K26 ["AssetType"]
      153 GETTABLEKS                       R15 R15 K41 ["Animation"]
      155 DUPCLOSURE                       R16 K42 [PROTO_11]
      156 CAPTURE                          VAL R13
      157 SETTABLE                         R16 R14 R15
      158 GETTABLEKS                       R15 R7 K26 ["AssetType"]
      160 GETTABLEKS                       R15 R15 K43 ["Plugin"]
      162 DUPCLOSURE                       R16 K44 [PROTO_12]
      163 SETTABLE                         R16 R14 R15
      164 GETTABLEKS                       R15 R7 K26 ["AssetType"]
      166 GETTABLEKS                       R15 R15 K45 ["FontFamily"]
      168 DUPCLOSURE                       R16 K46 [PROTO_13]
      169 SETTABLE                         R16 R14 R15
      170 GETTABLEKS                       R15 R7 K26 ["AssetType"]
      172 GETTABLEKS                       R15 R15 K47 ["Place"]
      174 DUPCLOSURE                       R16 K48 [PROTO_14]
      175 SETTABLE                         R16 R14 R15
      176 RETURN                           R14 1
