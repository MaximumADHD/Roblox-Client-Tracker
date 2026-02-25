PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R3 K1 ["CONFIGURE_ASSET"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R3 K1 ["ASSET_TYPE_SELECTION"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R3 K1 ["ASSET_VALIDATION"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R3 K1 ["UPLOADING_ASSET"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R3 K1 ["UPLOAD_ASSET_RESULT"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["currentScreen"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 LOADK                            R4 K3 ["Frame"]
        8 DUPTABLE                         R5 K6 [{"Size", "BackgroundTransparency"}]
        9 GETIMPORT                        R6 K9 [UDim2.new]
       11 LOADN                            R7 1
       12 LOADN                            R8 0
       13 LOADN                            R9 1
       14 LOADN                            R10 0
       15 CALL                             R6 4 1
       16 SETTABLEKS                       R6 R5 K4 ["Size"]
       18 LOADN                            R6 1
       19 SETTABLEKS                       R6 R5 K5 ["BackgroundTransparency"]
       21 DUPTABLE                         R6 K15 [{"AssetConfig", "AssetTypeSelection", "AssetValidation", "AssetUpload", "AssetUploadResult"}]
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R9 R10 K16 ["SCREENS"]
       25 GETTABLEKS                       R8 R9 K17 ["CONFIGURE_ASSET"]
       27 JUMPIFEQ                         R2 R8 ; [+2]
       29 LOADB                            R7 0 +1
       30 LOADB                            R7 1
       31 JUMPIFNOT                        R7 ; [+43]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K2 ["createElement"]
       35 GETUPVAL                         R8 2
       36 DUPTABLE                         R9 K25 [{"Size", "assetId", "assetTypeEnum", "onClose", "pluginGui", "owner", "groupId", "setOwner"}]
       37 GETIMPORT                        R10 K9 [UDim2.new]
       39 LOADN                            R11 1
       40 LOADN                            R12 0
       41 LOADN                            R13 1
       42 LOADN                            R14 0
       43 CALL                             R10 4 1
       44 SETTABLEKS                       R10 R9 K4 ["Size"]
       46 GETTABLEKS                       R10 R1 K18 ["assetId"]
       48 SETTABLEKS                       R10 R9 K18 ["assetId"]
       50 GETTABLEKS                       R10 R1 K19 ["assetTypeEnum"]
       52 SETTABLEKS                       R10 R9 K19 ["assetTypeEnum"]
       54 GETTABLEKS                       R10 R1 K20 ["onClose"]
       56 SETTABLEKS                       R10 R9 K20 ["onClose"]
       58 GETTABLEKS                       R10 R1 K21 ["pluginGui"]
       60 SETTABLEKS                       R10 R9 K21 ["pluginGui"]
       62 GETTABLEKS                       R10 R1 K22 ["owner"]
       64 SETTABLEKS                       R10 R9 K22 ["owner"]
       66 GETTABLEKS                       R10 R1 K23 ["groupId"]
       68 SETTABLEKS                       R10 R9 K23 ["groupId"]
       70 GETTABLEKS                       R10 R1 K24 ["setOwner"]
       72 SETTABLEKS                       R10 R9 K24 ["setOwner"]
       74 CALL                             R7 2 1
       75 SETTABLEKS                       R7 R6 K10 ["AssetConfig"]
       77 GETUPVAL                         R10 1
       78 GETTABLEKS                       R9 R10 K16 ["SCREENS"]
       80 GETTABLEKS                       R8 R9 K26 ["ASSET_TYPE_SELECTION"]
       82 JUMPIFEQ                         R2 R8 ; [+2]
       84 LOADB                            R7 0 +1
       85 LOADB                            R7 1
       86 JUMPIFNOT                        R7 ; [+19]
       87 GETUPVAL                         R8 0
       88 GETTABLEKS                       R7 R8 K2 ["createElement"]
       90 GETUPVAL                         R8 3
       91 DUPTABLE                         R9 K27 [{"Size", "onClose"}]
       92 GETIMPORT                        R10 K9 [UDim2.new]
       94 LOADN                            R11 1
       95 LOADN                            R12 0
       96 LOADN                            R13 1
       97 LOADN                            R14 0
       98 CALL                             R10 4 1
       99 SETTABLEKS                       R10 R9 K4 ["Size"]
      101 GETTABLEKS                       R10 R1 K20 ["onClose"]
      103 SETTABLEKS                       R10 R9 K20 ["onClose"]
      105 CALL                             R7 2 1
      106 SETTABLEKS                       R7 R6 K11 ["AssetTypeSelection"]
      108 GETUPVAL                         R8 4
      109 CALL                             R8 0 1
      110 JUMPIF                           R8 ; [+24]
      111 GETUPVAL                         R7 5
      112 MOVE                             R8 R2
      113 CALL                             R7 1 1
      114 JUMPIFNOT                        R7 ; [+21]
      115 GETUPVAL                         R8 0
      116 GETTABLEKS                       R7 R8 K2 ["createElement"]
      118 GETUPVAL                         R8 6
      119 DUPTABLE                         R9 K27 [{"Size", "onClose"}]
      120 GETIMPORT                        R10 K9 [UDim2.new]
      122 LOADN                            R11 1
      123 LOADN                            R12 0
      124 LOADN                            R13 1
      125 LOADN                            R14 0
      126 CALL                             R10 4 1
      127 SETTABLEKS                       R10 R9 K4 ["Size"]
      129 GETTABLEKS                       R10 R1 K20 ["onClose"]
      131 SETTABLEKS                       R10 R9 K20 ["onClose"]
      133 CALL                             R7 2 1
      134 JUMP                             ; [+1]
      135 LOADNIL                          R7
      136 SETTABLEKS                       R7 R6 K12 ["AssetValidation"]
      138 GETUPVAL                         R10 1
      139 GETTABLEKS                       R9 R10 K16 ["SCREENS"]
      141 GETTABLEKS                       R8 R9 K28 ["UPLOADING_ASSET"]
      143 JUMPIFEQ                         R2 R8 ; [+2]
      145 LOADB                            R7 0 +1
      146 LOADB                            R7 1
      147 JUMPIFNOT                        R7 ; [+19]
      148 GETUPVAL                         R8 0
      149 GETTABLEKS                       R7 R8 K2 ["createElement"]
      151 GETUPVAL                         R8 7
      152 DUPTABLE                         R9 K27 [{"Size", "onClose"}]
      153 GETIMPORT                        R10 K9 [UDim2.new]
      155 LOADN                            R11 1
      156 LOADN                            R12 0
      157 LOADN                            R13 1
      158 LOADN                            R14 0
      159 CALL                             R10 4 1
      160 SETTABLEKS                       R10 R9 K4 ["Size"]
      162 GETTABLEKS                       R10 R1 K20 ["onClose"]
      164 SETTABLEKS                       R10 R9 K20 ["onClose"]
      166 CALL                             R7 2 1
      167 SETTABLEKS                       R7 R6 K13 ["AssetUpload"]
      169 GETUPVAL                         R10 1
      170 GETTABLEKS                       R9 R10 K16 ["SCREENS"]
      172 GETTABLEKS                       R8 R9 K29 ["UPLOAD_ASSET_RESULT"]
      174 JUMPIFEQ                         R2 R8 ; [+2]
      176 LOADB                            R7 0 +1
      177 LOADB                            R7 1
      178 JUMPIFNOT                        R7 ; [+19]
      179 GETUPVAL                         R8 0
      180 GETTABLEKS                       R7 R8 K2 ["createElement"]
      182 GETUPVAL                         R8 8
      183 DUPTABLE                         R9 K27 [{"Size", "onClose"}]
      184 GETIMPORT                        R10 K9 [UDim2.new]
      186 LOADN                            R11 1
      187 LOADN                            R12 0
      188 LOADN                            R13 1
      189 LOADN                            R14 0
      190 CALL                             R10 4 1
      191 SETTABLEKS                       R10 R9 K4 ["Size"]
      193 GETTABLEKS                       R10 R1 K20 ["onClose"]
      195 SETTABLEKS                       R10 R9 K20 ["onClose"]
      197 CALL                             R7 2 1
      198 SETTABLEKS                       R7 R6 K14 ["AssetUploadResult"]
      200 CALL                             R3 3 -1
      201 RETURN                           R3 -1

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
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R5 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R5 K9 ["Components"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R7 R4 K10 ["AssetConfiguration"]
       31 GETTABLEKS                       R6 R7 K11 ["AssetConfig"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R8 R4 K10 ["AssetConfiguration"]
       38 GETTABLEKS                       R7 R8 K12 ["AssetTypeSelection"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R10 R0 K8 ["Src"]
       45 GETTABLEKS                       R9 R10 K13 ["Flags"]
       47 GETTABLEKS                       R8 R9 K14 ["getFFlagToolboxDeprecateAssetSelection"]
       49 CALL                             R7 1 1
       50 LOADNIL                          R8
       51 MOVE                             R9 R7
       52 CALL                             R9 0 1
       53 JUMPIF                           R9 ; [+8]
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R11 R4 K10 ["AssetConfiguration"]
       58 GETTABLEKS                       R10 R11 K15 ["AssetValidation"]
       60 CALL                             R9 1 1
       61 MOVE                             R8 R9
       62 GETIMPORT                        R9 K5 [require]
       64 GETTABLEKS                       R11 R4 K10 ["AssetConfiguration"]
       66 GETTABLEKS                       R10 R11 K16 ["AssetUpload"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K5 [require]
       71 GETTABLEKS                       R12 R4 K10 ["AssetConfiguration"]
       73 GETTABLEKS                       R11 R12 K17 ["AssetUploadResult"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K5 [require]
       78 GETTABLEKS                       R14 R0 K8 ["Src"]
       80 GETTABLEKS                       R13 R14 K18 ["Util"]
       82 GETTABLEKS                       R12 R13 K19 ["AssetConfigConstants"]
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
