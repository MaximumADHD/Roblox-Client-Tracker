PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R2 K1 ["CONFIGURE_ASSET"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R2 K1 ["ASSET_TYPE_SELECTION"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R2 K1 ["UPLOADING_ASSET"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R2 K1 ["UPLOAD_ASSET_RESULT"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["currentScreen"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 LOADK                            R4 K3 ["Frame"]
        8 DUPTABLE                         R5 K7 [{["Size"], ["BackgroundTransparency"] = 1}]
        9 GETIMPORT                        R6 K10 [UDim2.new]
       11 LOADN                            R7 1
       12 LOADN                            R8 0
       13 LOADN                            R9 1
       14 LOADN                            R10 0
       15 CALL                             R6 4 1
       16 SETTABLEKS                       R6 R5 K4 ["Size"]
       18 DUPTABLE                         R6 K15 [{"AssetConfig", "AssetTypeSelection", "AssetUpload", "AssetUploadResult"}]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R8 R8 K16 ["SCREENS"]
       22 GETTABLEKS                       R8 R8 K17 ["CONFIGURE_ASSET"]
       24 JUMPIFEQ                         R2 R8 ; [+2]
       26 LOADB                            R7 0 +1
       27 LOADB                            R7 1
       28 JUMPIFNOT                        R7 ; [+48]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K2 ["createElement"]
       32 GETUPVAL                         R8 2
       33 DUPTABLE                         R9 K25 [{"Size", "assetId", "assetTypeEnum", "onClose", "pluginGui", "owner", "groupId", "setOwner"}]
       34 GETIMPORT                        R10 K10 [UDim2.new]
       36 LOADN                            R11 1
       37 LOADN                            R12 0
       38 LOADN                            R13 1
       39 LOADN                            R14 0
       40 CALL                             R10 4 1
       41 SETTABLEKS                       R10 R9 K4 ["Size"]
       43 GETTABLEKS                       R10 R1 K18 ["assetId"]
       45 SETTABLEKS                       R10 R9 K18 ["assetId"]
       47 GETUPVAL                         R11 3
       48 CALL                             R11 0 1
       49 JUMPIFNOT                        R11 ; [+2]
       50 LOADNIL                          R10
       51 JUMP                             ; [+2]
       52 GETTABLEKS                       R10 R1 K19 ["assetTypeEnum"]
       54 SETTABLEKS                       R10 R9 K19 ["assetTypeEnum"]
       56 GETTABLEKS                       R10 R1 K20 ["onClose"]
       58 SETTABLEKS                       R10 R9 K20 ["onClose"]
       60 GETTABLEKS                       R10 R1 K21 ["pluginGui"]
       62 SETTABLEKS                       R10 R9 K21 ["pluginGui"]
       64 GETTABLEKS                       R10 R1 K22 ["owner"]
       66 SETTABLEKS                       R10 R9 K22 ["owner"]
       68 GETTABLEKS                       R10 R1 K23 ["groupId"]
       70 SETTABLEKS                       R10 R9 K23 ["groupId"]
       72 GETTABLEKS                       R10 R1 K24 ["setOwner"]
       74 SETTABLEKS                       R10 R9 K24 ["setOwner"]
       76 CALL                             R7 2 1
       77 SETTABLEKS                       R7 R6 K11 ["AssetConfig"]
       79 GETUPVAL                         R8 1
       80 GETTABLEKS                       R8 R8 K16 ["SCREENS"]
       82 GETTABLEKS                       R8 R8 K26 ["ASSET_TYPE_SELECTION"]
       84 JUMPIFEQ                         R2 R8 ; [+2]
       86 LOADB                            R7 0 +1
       87 LOADB                            R7 1
       88 JUMPIFNOT                        R7 ; [+19]
       89 GETUPVAL                         R7 0
       90 GETTABLEKS                       R7 R7 K2 ["createElement"]
       92 GETUPVAL                         R8 4
       93 DUPTABLE                         R9 K27 [{"Size", "onClose"}]
       94 GETIMPORT                        R10 K10 [UDim2.new]
       96 LOADN                            R11 1
       97 LOADN                            R12 0
       98 LOADN                            R13 1
       99 LOADN                            R14 0
      100 CALL                             R10 4 1
      101 SETTABLEKS                       R10 R9 K4 ["Size"]
      103 GETTABLEKS                       R10 R1 K20 ["onClose"]
      105 SETTABLEKS                       R10 R9 K20 ["onClose"]
      107 CALL                             R7 2 1
      108 SETTABLEKS                       R7 R6 K12 ["AssetTypeSelection"]
      110 GETUPVAL                         R8 1
      111 GETTABLEKS                       R8 R8 K16 ["SCREENS"]
      113 GETTABLEKS                       R8 R8 K28 ["UPLOADING_ASSET"]
      115 JUMPIFEQ                         R2 R8 ; [+2]
      117 LOADB                            R7 0 +1
      118 LOADB                            R7 1
      119 JUMPIFNOT                        R7 ; [+19]
      120 GETUPVAL                         R7 0
      121 GETTABLEKS                       R7 R7 K2 ["createElement"]
      123 GETUPVAL                         R8 5
      124 DUPTABLE                         R9 K27 [{"Size", "onClose"}]
      125 GETIMPORT                        R10 K10 [UDim2.new]
      127 LOADN                            R11 1
      128 LOADN                            R12 0
      129 LOADN                            R13 1
      130 LOADN                            R14 0
      131 CALL                             R10 4 1
      132 SETTABLEKS                       R10 R9 K4 ["Size"]
      134 GETTABLEKS                       R10 R1 K20 ["onClose"]
      136 SETTABLEKS                       R10 R9 K20 ["onClose"]
      138 CALL                             R7 2 1
      139 SETTABLEKS                       R7 R6 K13 ["AssetUpload"]
      141 GETUPVAL                         R8 1
      142 GETTABLEKS                       R8 R8 K16 ["SCREENS"]
      144 GETTABLEKS                       R8 R8 K29 ["UPLOAD_ASSET_RESULT"]
      146 JUMPIFEQ                         R2 R8 ; [+2]
      148 LOADB                            R7 0 +1
      149 LOADB                            R7 1
      150 JUMPIFNOT                        R7 ; [+19]
      151 GETUPVAL                         R7 0
      152 GETTABLEKS                       R7 R7 K2 ["createElement"]
      154 GETUPVAL                         R8 6
      155 DUPTABLE                         R9 K27 [{"Size", "onClose"}]
      156 GETIMPORT                        R10 K10 [UDim2.new]
      158 LOADN                            R11 1
      159 LOADN                            R12 0
      160 LOADN                            R13 1
      161 LOADN                            R14 0
      162 CALL                             R10 4 1
      163 SETTABLEKS                       R10 R9 K4 ["Size"]
      165 GETTABLEKS                       R10 R1 K20 ["onClose"]
      167 SETTABLEKS                       R10 R9 K20 ["onClose"]
      169 CALL                             R7 2 1
      170 SETTABLEKS                       R7 R6 K14 ["AssetUploadResult"]
      172 CALL                             R3 3 -1
      173 RETURN                           R3 -1

PROTO_5:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K1 [{"currentScreen"}]
        6 GETTABLEKS                       R3 R0 K0 ["currentScreen"]
        8 SETTABLEKS                       R3 R2 K0 ["currentScreen"]
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K9 ["Components"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K10 ["AssetConfiguration"]
       31 GETTABLEKS                       R6 R6 K11 ["AssetConfig"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R4 K10 ["AssetConfiguration"]
       38 GETTABLEKS                       R7 R7 K12 ["AssetTypeSelection"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R4 K10 ["AssetConfiguration"]
       45 GETTABLEKS                       R8 R8 K13 ["AssetUpload"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R4 K10 ["AssetConfiguration"]
       52 GETTABLEKS                       R9 R9 K14 ["AssetUploadResult"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R10 R0 K8 ["Src"]
       59 GETTABLEKS                       R10 R10 K15 ["Util"]
       61 GETTABLEKS                       R10 R10 K16 ["AssetConfigConstants"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K5 [require]
       66 GETTABLEKS                       R11 R0 K8 ["Src"]
       68 GETTABLEKS                       R11 R11 K17 ["Flags"]
       70 GETTABLEKS                       R11 R11 K18 ["getFFlagToolboxAssetConfigSaveDefaults"]
       72 CALL                             R10 1 1
       73 DUPCLOSURE                       R11 K19 [PROTO_0]
       74 CAPTURE                          VAL R9
       75 DUPCLOSURE                       R12 K20 [PROTO_1]
       76 CAPTURE                          VAL R9
       77 DUPCLOSURE                       R13 K21 [PROTO_2]
       78 CAPTURE                          VAL R9
       79 DUPCLOSURE                       R14 K22 [PROTO_3]
       80 CAPTURE                          VAL R9
       81 GETTABLEKS                       R15 R2 K23 ["PureComponent"]
       83 LOADK                            R17 K24 ["ScreenSelect"]
       84 NAMECALL                         R15 R15 K25 ["extend"]
       86 CALL                             R15 2 1
       87 DUPCLOSURE                       R16 K26 [PROTO_4]
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R8
       95 SETTABLEKS                       R16 R15 K27 ["render"]
       97 DUPCLOSURE                       R16 K28 [PROTO_5]
       98 GETTABLEKS                       R17 R3 K29 ["connect"]
      100 MOVE                             R18 R16
      101 CALL                             R17 1 1
      102 MOVE                             R18 R15
      103 CALL                             R17 1 -1
      104 RETURN                           R17 -1
