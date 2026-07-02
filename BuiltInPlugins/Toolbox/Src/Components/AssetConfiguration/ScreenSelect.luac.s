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
        3 GETTABLEKS                       R2 R2 K1 ["ASSET_VALIDATION"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R2 K1 ["UPLOADING_ASSET"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R2 K1 ["UPLOAD_ASSET_RESULT"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_5:
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
       18 DUPTABLE                         R6 K16 [{"AssetConfig", "AssetTypeSelection", "AssetValidation", "AssetUpload", "AssetUploadResult"}]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R8 R8 K17 ["SCREENS"]
       22 GETTABLEKS                       R8 R8 K18 ["CONFIGURE_ASSET"]
       24 JUMPIFEQ                         R2 R8 ; [+2]
       26 LOADB                            R7 0 +1
       27 LOADB                            R7 1
       28 JUMPIFNOT                        R7 ; [+43]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K2 ["createElement"]
       32 GETUPVAL                         R8 2
       33 DUPTABLE                         R9 K26 [{"Size", "assetId", "assetTypeEnum", "onClose", "pluginGui", "owner", "groupId", "setOwner"}]
       34 GETIMPORT                        R10 K10 [UDim2.new]
       36 LOADN                            R11 1
       37 LOADN                            R12 0
       38 LOADN                            R13 1
       39 LOADN                            R14 0
       40 CALL                             R10 4 1
       41 SETTABLEKS                       R10 R9 K4 ["Size"]
       43 GETTABLEKS                       R10 R1 K19 ["assetId"]
       45 SETTABLEKS                       R10 R9 K19 ["assetId"]
       47 GETTABLEKS                       R10 R1 K20 ["assetTypeEnum"]
       49 SETTABLEKS                       R10 R9 K20 ["assetTypeEnum"]
       51 GETTABLEKS                       R10 R1 K21 ["onClose"]
       53 SETTABLEKS                       R10 R9 K21 ["onClose"]
       55 GETTABLEKS                       R10 R1 K22 ["pluginGui"]
       57 SETTABLEKS                       R10 R9 K22 ["pluginGui"]
       59 GETTABLEKS                       R10 R1 K23 ["owner"]
       61 SETTABLEKS                       R10 R9 K23 ["owner"]
       63 GETTABLEKS                       R10 R1 K24 ["groupId"]
       65 SETTABLEKS                       R10 R9 K24 ["groupId"]
       67 GETTABLEKS                       R10 R1 K25 ["setOwner"]
       69 SETTABLEKS                       R10 R9 K25 ["setOwner"]
       71 CALL                             R7 2 1
       72 SETTABLEKS                       R7 R6 K11 ["AssetConfig"]
       74 GETUPVAL                         R8 1
       75 GETTABLEKS                       R8 R8 K17 ["SCREENS"]
       77 GETTABLEKS                       R8 R8 K27 ["ASSET_TYPE_SELECTION"]
       79 JUMPIFEQ                         R2 R8 ; [+2]
       81 LOADB                            R7 0 +1
       82 LOADB                            R7 1
       83 JUMPIFNOT                        R7 ; [+19]
       84 GETUPVAL                         R7 0
       85 GETTABLEKS                       R7 R7 K2 ["createElement"]
       87 GETUPVAL                         R8 3
       88 DUPTABLE                         R9 K28 [{"Size", "onClose"}]
       89 GETIMPORT                        R10 K10 [UDim2.new]
       91 LOADN                            R11 1
       92 LOADN                            R12 0
       93 LOADN                            R13 1
       94 LOADN                            R14 0
       95 CALL                             R10 4 1
       96 SETTABLEKS                       R10 R9 K4 ["Size"]
       98 GETTABLEKS                       R10 R1 K21 ["onClose"]
      100 SETTABLEKS                       R10 R9 K21 ["onClose"]
      102 CALL                             R7 2 1
      103 SETTABLEKS                       R7 R6 K12 ["AssetTypeSelection"]
      105 GETUPVAL                         R8 4
      106 CALL                             R8 0 1
      107 JUMPIF                           R8 ; [+24]
      108 GETUPVAL                         R7 5
      109 MOVE                             R8 R2
      110 CALL                             R7 1 1
      111 JUMPIFNOT                        R7 ; [+21]
      112 GETUPVAL                         R7 0
      113 GETTABLEKS                       R7 R7 K2 ["createElement"]
      115 GETUPVAL                         R8 6
      116 DUPTABLE                         R9 K28 [{"Size", "onClose"}]
      117 GETIMPORT                        R10 K10 [UDim2.new]
      119 LOADN                            R11 1
      120 LOADN                            R12 0
      121 LOADN                            R13 1
      122 LOADN                            R14 0
      123 CALL                             R10 4 1
      124 SETTABLEKS                       R10 R9 K4 ["Size"]
      126 GETTABLEKS                       R10 R1 K21 ["onClose"]
      128 SETTABLEKS                       R10 R9 K21 ["onClose"]
      130 CALL                             R7 2 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R7
      133 SETTABLEKS                       R7 R6 K13 ["AssetValidation"]
      135 GETUPVAL                         R8 1
      136 GETTABLEKS                       R8 R8 K17 ["SCREENS"]
      138 GETTABLEKS                       R8 R8 K29 ["UPLOADING_ASSET"]
      140 JUMPIFEQ                         R2 R8 ; [+2]
      142 LOADB                            R7 0 +1
      143 LOADB                            R7 1
      144 JUMPIFNOT                        R7 ; [+19]
      145 GETUPVAL                         R7 0
      146 GETTABLEKS                       R7 R7 K2 ["createElement"]
      148 GETUPVAL                         R8 7
      149 DUPTABLE                         R9 K28 [{"Size", "onClose"}]
      150 GETIMPORT                        R10 K10 [UDim2.new]
      152 LOADN                            R11 1
      153 LOADN                            R12 0
      154 LOADN                            R13 1
      155 LOADN                            R14 0
      156 CALL                             R10 4 1
      157 SETTABLEKS                       R10 R9 K4 ["Size"]
      159 GETTABLEKS                       R10 R1 K21 ["onClose"]
      161 SETTABLEKS                       R10 R9 K21 ["onClose"]
      163 CALL                             R7 2 1
      164 SETTABLEKS                       R7 R6 K14 ["AssetUpload"]
      166 GETUPVAL                         R8 1
      167 GETTABLEKS                       R8 R8 K17 ["SCREENS"]
      169 GETTABLEKS                       R8 R8 K30 ["UPLOAD_ASSET_RESULT"]
      171 JUMPIFEQ                         R2 R8 ; [+2]
      173 LOADB                            R7 0 +1
      174 LOADB                            R7 1
      175 JUMPIFNOT                        R7 ; [+19]
      176 GETUPVAL                         R7 0
      177 GETTABLEKS                       R7 R7 K2 ["createElement"]
      179 GETUPVAL                         R8 8
      180 DUPTABLE                         R9 K28 [{"Size", "onClose"}]
      181 GETIMPORT                        R10 K10 [UDim2.new]
      183 LOADN                            R11 1
      184 LOADN                            R12 0
      185 LOADN                            R13 1
      186 LOADN                            R14 0
      187 CALL                             R10 4 1
      188 SETTABLEKS                       R10 R9 K4 ["Size"]
      190 GETTABLEKS                       R10 R1 K21 ["onClose"]
      192 SETTABLEKS                       R10 R9 K21 ["onClose"]
      194 CALL                             R7 2 1
      195 SETTABLEKS                       R7 R6 K15 ["AssetUploadResult"]
      197 CALL                             R3 3 -1
      198 RETURN                           R3 -1

PROTO_6:
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
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R8 R8 K13 ["Flags"]
       47 GETTABLEKS                       R8 R8 K14 ["getFFlagToolboxDeprecateAssetSelection"]
       49 CALL                             R7 1 1
       50 LOADNIL                          R8
       51 MOVE                             R9 R7
       52 CALL                             R9 0 1
       53 JUMPIF                           R9 ; [+8]
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R4 K10 ["AssetConfiguration"]
       58 GETTABLEKS                       R10 R10 K15 ["AssetValidation"]
       60 CALL                             R9 1 1
       61 MOVE                             R8 R9
       62 GETIMPORT                        R9 K5 [require]
       64 GETTABLEKS                       R10 R4 K10 ["AssetConfiguration"]
       66 GETTABLEKS                       R10 R10 K16 ["AssetUpload"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K5 [require]
       71 GETTABLEKS                       R11 R4 K10 ["AssetConfiguration"]
       73 GETTABLEKS                       R11 R11 K17 ["AssetUploadResult"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K5 [require]
       78 GETTABLEKS                       R12 R0 K8 ["Src"]
       80 GETTABLEKS                       R12 R12 K18 ["Util"]
       82 GETTABLEKS                       R12 R12 K19 ["AssetConfigConstants"]
       84 CALL                             R11 1 1
       85 DUPCLOSURE                       R12 K20 [PROTO_0]
       86 CAPTURE                          VAL R11
       87 DUPCLOSURE                       R13 K21 [PROTO_1]
       88 CAPTURE                          VAL R11
       89 LOADNIL                          R14
       90 MOVE                             R15 R7
       91 CALL                             R15 0 1
       92 JUMPIF                           R15 ; [+2]
       93 DUPCLOSURE                       R14 K22 [PROTO_2]
       94 CAPTURE                          VAL R11
       95 DUPCLOSURE                       R15 K23 [PROTO_3]
       96 CAPTURE                          VAL R11
       97 DUPCLOSURE                       R16 K24 [PROTO_4]
       98 CAPTURE                          VAL R11
       99 GETTABLEKS                       R17 R2 K25 ["PureComponent"]
      101 LOADK                            R19 K26 ["ScreenSelect"]
      102 NAMECALL                         R17 R17 K27 ["extend"]
      104 CALL                             R17 2 1
      105 NEWCLOSURE                       R18 P5
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R7
      111 CAPTURE                          REF R14
      112 CAPTURE                          REF R8
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R10
      115 SETTABLEKS                       R18 R17 K28 ["render"]
      117 DUPCLOSURE                       R18 K29 [PROTO_6]
      118 GETTABLEKS                       R19 R3 K30 ["connect"]
      120 MOVE                             R20 R18
      121 CALL                             R19 1 1
      122 MOVE                             R20 R17
      123 CALL                             R19 1 -1
      124 CLOSEUPVALS                      R8
      125 RETURN                           R19 -1
