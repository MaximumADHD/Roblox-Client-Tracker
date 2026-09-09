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
       28 JUMPIFNOT                        R7 ; [+43]
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
       47 GETTABLEKS                       R10 R1 K19 ["assetTypeEnum"]
       49 SETTABLEKS                       R10 R9 K19 ["assetTypeEnum"]
       51 GETTABLEKS                       R10 R1 K20 ["onClose"]
       53 SETTABLEKS                       R10 R9 K20 ["onClose"]
       55 GETTABLEKS                       R10 R1 K21 ["pluginGui"]
       57 SETTABLEKS                       R10 R9 K21 ["pluginGui"]
       59 GETTABLEKS                       R10 R1 K22 ["owner"]
       61 SETTABLEKS                       R10 R9 K22 ["owner"]
       63 GETTABLEKS                       R10 R1 K23 ["groupId"]
       65 SETTABLEKS                       R10 R9 K23 ["groupId"]
       67 GETTABLEKS                       R10 R1 K24 ["setOwner"]
       69 SETTABLEKS                       R10 R9 K24 ["setOwner"]
       71 CALL                             R7 2 1
       72 SETTABLEKS                       R7 R6 K11 ["AssetConfig"]
       74 GETUPVAL                         R8 1
       75 GETTABLEKS                       R8 R8 K16 ["SCREENS"]
       77 GETTABLEKS                       R8 R8 K26 ["ASSET_TYPE_SELECTION"]
       79 JUMPIFEQ                         R2 R8 ; [+2]
       81 LOADB                            R7 0 +1
       82 LOADB                            R7 1
       83 JUMPIFNOT                        R7 ; [+19]
       84 GETUPVAL                         R7 0
       85 GETTABLEKS                       R7 R7 K2 ["createElement"]
       87 GETUPVAL                         R8 3
       88 DUPTABLE                         R9 K27 [{"Size", "onClose"}]
       89 GETIMPORT                        R10 K10 [UDim2.new]
       91 LOADN                            R11 1
       92 LOADN                            R12 0
       93 LOADN                            R13 1
       94 LOADN                            R14 0
       95 CALL                             R10 4 1
       96 SETTABLEKS                       R10 R9 K4 ["Size"]
       98 GETTABLEKS                       R10 R1 K20 ["onClose"]
      100 SETTABLEKS                       R10 R9 K20 ["onClose"]
      102 CALL                             R7 2 1
      103 SETTABLEKS                       R7 R6 K12 ["AssetTypeSelection"]
      105 GETUPVAL                         R8 1
      106 GETTABLEKS                       R8 R8 K16 ["SCREENS"]
      108 GETTABLEKS                       R8 R8 K28 ["UPLOADING_ASSET"]
      110 JUMPIFEQ                         R2 R8 ; [+2]
      112 LOADB                            R7 0 +1
      113 LOADB                            R7 1
      114 JUMPIFNOT                        R7 ; [+19]
      115 GETUPVAL                         R7 0
      116 GETTABLEKS                       R7 R7 K2 ["createElement"]
      118 GETUPVAL                         R8 4
      119 DUPTABLE                         R9 K27 [{"Size", "onClose"}]
      120 GETIMPORT                        R10 K10 [UDim2.new]
      122 LOADN                            R11 1
      123 LOADN                            R12 0
      124 LOADN                            R13 1
      125 LOADN                            R14 0
      126 CALL                             R10 4 1
      127 SETTABLEKS                       R10 R9 K4 ["Size"]
      129 GETTABLEKS                       R10 R1 K20 ["onClose"]
      131 SETTABLEKS                       R10 R9 K20 ["onClose"]
      133 CALL                             R7 2 1
      134 SETTABLEKS                       R7 R6 K13 ["AssetUpload"]
      136 GETUPVAL                         R8 1
      137 GETTABLEKS                       R8 R8 K16 ["SCREENS"]
      139 GETTABLEKS                       R8 R8 K29 ["UPLOAD_ASSET_RESULT"]
      141 JUMPIFEQ                         R2 R8 ; [+2]
      143 LOADB                            R7 0 +1
      144 LOADB                            R7 1
      145 JUMPIFNOT                        R7 ; [+19]
      146 GETUPVAL                         R7 0
      147 GETTABLEKS                       R7 R7 K2 ["createElement"]
      149 GETUPVAL                         R8 5
      150 DUPTABLE                         R9 K27 [{"Size", "onClose"}]
      151 GETIMPORT                        R10 K10 [UDim2.new]
      153 LOADN                            R11 1
      154 LOADN                            R12 0
      155 LOADN                            R13 1
      156 LOADN                            R14 0
      157 CALL                             R10 4 1
      158 SETTABLEKS                       R10 R9 K4 ["Size"]
      160 GETTABLEKS                       R10 R1 K20 ["onClose"]
      162 SETTABLEKS                       R10 R9 K20 ["onClose"]
      164 CALL                             R7 2 1
      165 SETTABLEKS                       R7 R6 K14 ["AssetUploadResult"]
      167 CALL                             R3 3 -1
      168 RETURN                           R3 -1

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
       64 DUPCLOSURE                       R10 K17 [PROTO_0]
       65 CAPTURE                          VAL R9
       66 DUPCLOSURE                       R11 K18 [PROTO_1]
       67 CAPTURE                          VAL R9
       68 DUPCLOSURE                       R12 K19 [PROTO_2]
       69 CAPTURE                          VAL R9
       70 DUPCLOSURE                       R13 K20 [PROTO_3]
       71 CAPTURE                          VAL R9
       72 GETTABLEKS                       R14 R2 K21 ["PureComponent"]
       74 LOADK                            R16 K22 ["ScreenSelect"]
       75 NAMECALL                         R14 R14 K23 ["extend"]
       77 CALL                             R14 2 1
       78 DUPCLOSURE                       R15 K24 [PROTO_4]
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R8
       85 SETTABLEKS                       R15 R14 K25 ["render"]
       87 DUPCLOSURE                       R15 K26 [PROTO_5]
       88 GETTABLEKS                       R16 R3 K27 ["connect"]
       90 MOVE                             R17 R15
       91 CALL                             R16 1 1
       92 MOVE                             R17 R14
       93 CALL                             R16 1 -1
       94 RETURN                           R16 -1
