PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"selectedPreviewInstance"}]
        2 SETTABLEKS                       R0 R3 K0 ["selectedPreviewInstance"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Analytics"]
        5 GETTABLEKS                       R2 R0 K2 ["AssetData"]
        7 GETTABLEKS                       R3 R0 K3 ["dispatchOnAssetDoubleClick"]
        9 MOVE                             R4 R1
       10 MOVE                             R5 R2
       11 LOADB                            R6 1
       12 CALL                             R3 3 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["AssetData"]
        5 GETTABLEKS                       R1 R2 K2 ["id"]
        7 GETTABLEKS                       R2 R0 K3 ["API"]
        9 NAMECALL                         R2 R2 K4 ["get"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R0 K5 ["dispatchGetAssetFavoriteCount"]
       14 MOVE                             R4 R2
       15 MOVE                             R5 R1
       16 CALL                             R3 2 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["AssetData"]
        5 GETTABLEKS                       R1 R2 K2 ["id"]
        7 GETTABLEKS                       R2 R0 K3 ["API"]
        9 NAMECALL                         R2 R2 K4 ["get"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R0 K5 ["dispatchGetAssetFavorited"]
       14 MOVE                             R4 R2
       15 MOVE                             R5 R1
       16 GETUPVAL                         R6 1
       17 CALL                             R3 3 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R1 K1 ["AssetData"]
        5 GETTABLEKS                       R2 R3 K2 ["id"]
        7 GETTABLEKS                       R3 R1 K3 ["API"]
        9 NAMECALL                         R3 R3 K4 ["get"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R4 R1 K5 ["Favorited"]
       14 GETTABLEKS                       R5 R1 K6 ["dispatchToggleFavoriteStatus"]
       16 MOVE                             R6 R3
       17 MOVE                             R7 R2
       18 GETUPVAL                         R8 1
       19 MOVE                             R9 R4
       20 CALL                             R5 4 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["dispatchOnAssetRightClick"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ClickDetectorRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R1 R0 K2 ["AbsoluteSize"]
        9 GETTABLEKS                       R2 R1 K3 ["x"]
       11 GETTABLEKS                       R3 R1 K4 ["y"]
       13 GETUPVAL                         R4 0
       14 DUPTABLE                         R6 K7 [{"maxPreviewWidth", "maxPreviewHeight"}]
       15 SUBK                             R7 R2 K8 [64]
       16 SETTABLEKS                       R7 R6 K5 ["maxPreviewWidth"]
       18 SUBK                             R7 R3 K8 [64]
       19 SETTABLEKS                       R7 R6 K6 ["maxPreviewHeight"]
       21 NAMECALL                         R4 R4 K9 ["setState"]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K3 [{"selectedPreviewInstance", "maxPreviewHeight", "maxPreviewWidth"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["selectedPreviewInstance"]
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["maxPreviewHeight"]
        7 LOADN                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["maxPreviewWidth"]
       10 SETTABLEKS                       R1 R0 K4 ["state"]
       12 GETUPVAL                         R1 0
       13 NAMECALL                         R1 R1 K5 ["GetUserId"]
       15 CALL                             R1 1 1
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R0 K6 ["onTreeItemClicked"]
       20 NEWCLOSURE                       R2 P1
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R0 K7 ["tryInsert"]
       24 NEWCLOSURE                       R2 P2
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R2 R0 K8 ["requestFavoriteCounts"]
       28 NEWCLOSURE                       R2 P3
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R2 R0 K9 ["checkFavorited"]
       33 NEWCLOSURE                       R2 P4
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R2 R0 K10 ["onFavoritedActivated"]
       38 NEWCLOSURE                       R2 P5
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R2 R0 K11 ["tryCreateContextMenu"]
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R2 R3 K12 ["createRef"]
       45 CALL                             R2 0 1
       46 SETTABLEKS                       R2 R0 K13 ["ClickDetectorRef"]
       48 NEWCLOSURE                       R2 P6
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R2 R0 K14 ["onDetectorABSSizeChange"]
       52 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["checkFavorited"]
        2 CALL                             R1 0 0
        3 GETTABLEKS                       R1 R0 K1 ["requestFavoriteCounts"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Focus"]
        6 NAMECALL                         R3 R3 K3 ["get"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R1 K4 ["Localization"]
       11 GETTABLEKS                       R5 R1 K5 ["Stylizer"]
       13 GETTABLEKS                       R6 R1 K6 ["AssetPreviewData"]
       15 GETTABLEKS                       R9 R0 K1 ["state"]
       17 GETTABLEKS                       R8 R9 K7 ["selectedPreviewInstance"]
       19 JUMPIFNOT                        R8 ; [+5]
       20 GETTABLEKS                       R8 R0 K1 ["state"]
       22 GETTABLEKS                       R7 R8 K7 ["selectedPreviewInstance"]
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R7 R6 K8 ["rootTreeViewInstance"]
       27 GETTABLEKS                       R9 R6 K9 ["favoriteCount"]
       29 JUMPIFNOT                        R9 ; [+7]
       30 GETTABLEKS                       R9 R6 K9 ["favoriteCount"]
       32 FASTCALL1                        TONUMBER R9 ; [+2]
       33 GETIMPORT                        R8 K11 [tonumber]
       35 CALL                             R8 1 1
       36 JUMP                             ; [+1]
       37 LOADN                            R8 0
       38 GETTABLEKS                       R10 R6 K12 ["favorited"]
       40 JUMPIFNOT                        R10 ; [+3]
       41 GETTABLEKS                       R9 R6 K12 ["favorited"]
       43 JUMP                             ; [+1]
       44 LOADB                            R9 0
       45 GETTABLEKS                       R11 R2 K13 ["maxPreviewWidth"]
       47 FASTCALL2K                       MATH_MIN R11 K14 ; [+4]
       49 LOADK                            R12 K14 [640]
       50 GETIMPORT                        R10 K17 [math.min]
       52 CALL                             R10 2 1
       53 GETTABLEKS                       R11 R2 K18 ["maxPreviewHeight"]
       55 GETTABLEKS                       R12 R1 K19 ["OnAssetPreviewClose"]
       57 GETUPVAL                         R14 0
       58 GETTABLEKS                       R13 R14 K20 ["createElement"]
       60 GETUPVAL                         R15 0
       61 GETTABLEKS                       R14 R15 K21 ["Portal"]
       63 DUPTABLE                         R15 K23 [{"target"}]
       64 SETTABLEKS                       R3 R15 K22 ["target"]
       66 DUPTABLE                         R16 K25 [{"AssetPreview"}]
       67 GETUPVAL                         R18 0
       68 GETTABLEKS                       R17 R18 K20 ["createElement"]
       70 LOADK                            R18 K26 ["Frame"]
       71 DUPTABLE                         R19 K30 [{"Size", "BackgroundTransparency", "BorderSizePixel"}]
       72 GETIMPORT                        R20 K33 [UDim2.new]
       74 LOADN                            R21 1
       75 LOADN                            R22 0
       76 LOADN                            R23 1
       77 LOADN                            R24 0
       78 CALL                             R20 4 1
       79 SETTABLEKS                       R20 R19 K27 ["Size"]
       81 LOADN                            R20 1
       82 SETTABLEKS                       R20 R19 K28 ["BackgroundTransparency"]
       84 LOADN                            R20 0
       85 SETTABLEKS                       R20 R19 K29 ["BorderSizePixel"]
       87 DUPTABLE                         R20 K36 [{"Background", "Contents"}]
       88 GETUPVAL                         R22 0
       89 GETTABLEKS                       R21 R22 K20 ["createElement"]
       91 LOADK                            R22 K37 ["ImageButton"]
       92 NEWTABLE                         R23 16 0
       94 GETIMPORT                        R24 K33 [UDim2.new]
       96 LOADN                            R25 1
       97 LOADN                            R26 0
       98 LOADN                            R27 1
       99 LOADN                            R28 0
      100 CALL                             R24 4 1
      101 SETTABLEKS                       R24 R23 K27 ["Size"]
      103 LOADB                            R24 0
      104 SETTABLEKS                       R24 R23 K38 ["AutoButtonColor"]
      106 LOADN                            R24 0
      107 SETTABLEKS                       R24 R23 K29 ["BorderSizePixel"]
      109 GETIMPORT                        R24 K40 [Color3.new]
      111 LOADN                            R25 0
      112 LOADN                            R26 0
      113 LOADN                            R27 0
      114 CALL                             R24 3 1
      115 SETTABLEKS                       R24 R23 K41 ["BackgroundColor3"]
      117 GETTABLEKS                       R26 R5 K42 ["Overlay"]
      119 GETTABLEKS                       R25 R26 K34 ["Background"]
      121 GETTABLEKS                       R24 R25 K43 ["Transparency"]
      123 SETTABLEKS                       R24 R23 K28 ["BackgroundTransparency"]
      125 LOADN                            R24 1
      126 SETTABLEKS                       R24 R23 K44 ["ZIndex"]
      128 GETUPVAL                         R26 0
      129 GETTABLEKS                       R25 R26 K45 ["Event"]
      131 GETTABLEKS                       R24 R25 K46 ["Activated"]
      133 SETTABLE                         R12 R23 R24
      134 GETUPVAL                         R25 0
      135 GETTABLEKS                       R24 R25 K47 ["Ref"]
      137 GETTABLEKS                       R25 R0 K48 ["ClickDetectorRef"]
      139 SETTABLE                         R25 R23 R24
      140 GETUPVAL                         R26 0
      141 GETTABLEKS                       R25 R26 K49 ["Change"]
      143 GETTABLEKS                       R24 R25 K50 ["AbsoluteSize"]
      145 GETTABLEKS                       R25 R0 K51 ["onDetectorABSSizeChange"]
      147 SETTABLE                         R25 R23 R24
      148 CALL                             R21 2 1
      149 SETTABLEKS                       R21 R20 K34 ["Background"]
      151 GETUPVAL                         R22 0
      152 GETTABLEKS                       R21 R22 K20 ["createElement"]
      154 GETUPVAL                         R22 1
      155 DUPTABLE                         R23 K61 [{"Position", "AnchorPoint", "Size", "AssetData", "AssetInstance", "OnClickContext", "ActionText", "OnClickAction", "Favorites", "HideCreatorSearch", "ZIndex"}]
      156 GETIMPORT                        R24 K33 [UDim2.new]
      158 LOADK                            R25 K62 [0.5]
      159 LOADN                            R26 0
      160 LOADK                            R27 K62 [0.5]
      161 LOADN                            R28 0
      162 CALL                             R24 4 1
      163 SETTABLEKS                       R24 R23 K52 ["Position"]
      165 GETIMPORT                        R24 K64 [Vector2.new]
      167 LOADK                            R25 K62 [0.5]
      168 LOADK                            R26 K62 [0.5]
      169 CALL                             R24 2 1
      170 SETTABLEKS                       R24 R23 K53 ["AnchorPoint"]
      172 GETIMPORT                        R24 K66 [UDim2.fromOffset]
      174 MOVE                             R25 R10
      175 MOVE                             R26 R11
      176 CALL                             R24 2 1
      177 SETTABLEKS                       R24 R23 K27 ["Size"]
      179 SETTABLEKS                       R6 R23 K54 ["AssetData"]
      181 SETTABLEKS                       R7 R23 K55 ["AssetInstance"]
      183 GETTABLEKS                       R24 R0 K67 ["tryCreateContextMenu"]
      185 SETTABLEKS                       R24 R23 K56 ["OnClickContext"]
      187 LOADK                            R26 K24 ["AssetPreview"]
      188 LOADK                            R27 K68 ["Insert"]
      189 NAMECALL                         R24 R4 K69 ["getText"]
      191 CALL                             R24 3 1
      192 SETTABLEKS                       R24 R23 K57 ["ActionText"]
      194 GETTABLEKS                       R24 R0 K70 ["tryInsert"]
      196 SETTABLEKS                       R24 R23 K58 ["OnClickAction"]
      198 DUPTABLE                         R24 K74 [{"OnClick", "Count", "IsFavorited"}]
      199 GETTABLEKS                       R25 R0 K75 ["onFavoritedActivated"]
      201 SETTABLEKS                       R25 R24 K71 ["OnClick"]
      203 SETTABLEKS                       R8 R24 K72 ["Count"]
      205 SETTABLEKS                       R9 R24 K73 ["IsFavorited"]
      207 SETTABLEKS                       R24 R23 K59 ["Favorites"]
      209 LOADB                            R24 1
      210 SETTABLEKS                       R24 R23 K60 ["HideCreatorSearch"]
      212 LOADN                            R24 2
      213 SETTABLEKS                       R24 R23 K44 ["ZIndex"]
      215 CALL                             R21 2 1
      216 SETTABLEKS                       R21 R20 K35 ["Contents"]
      218 CALL                             R17 3 1
      219 SETTABLEKS                       R17 R16 K24 ["AssetPreview"]
      221 CALL                             R13 3 -1
      222 RETURN                           R13 -1

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_12:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["IsAssetPreviewMenu"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R1 K5 [{"dispatchOnAssetDoubleClick", "dispatchOnAssetRightClick", "dispatchGetAssetFavorited", "dispatchGetAssetFavoriteCount", "dispatchToggleFavoriteStatus"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchOnAssetDoubleClick"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["dispatchOnAssetRightClick"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["dispatchGetAssetFavorited"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["dispatchGetAssetFavoriteCount"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["dispatchToggleFavoriteStatus"]
       26 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["UI"]
       36 GETTABLEKS                       R7 R6 K12 ["AssetPreview"]
       38 GETIMPORT                        R8 K4 [require]
       40 GETTABLEKS                       R11 R0 K13 ["Src"]
       42 GETTABLEKS                       R10 R11 K14 ["Thunks"]
       44 GETTABLEKS                       R9 R10 K15 ["OnAssetDoubleClick"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R12 R0 K13 ["Src"]
       51 GETTABLEKS                       R11 R12 K14 ["Thunks"]
       53 GETTABLEKS                       R10 R11 K16 ["OnAssetRightClick"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K4 [require]
       58 GETTABLEKS                       R13 R0 K13 ["Src"]
       60 GETTABLEKS                       R12 R13 K14 ["Thunks"]
       62 GETTABLEKS                       R11 R12 K17 ["GetAssetFavorited"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K4 [require]
       67 GETTABLEKS                       R14 R0 K13 ["Src"]
       69 GETTABLEKS                       R13 R14 K14 ["Thunks"]
       71 GETTABLEKS                       R12 R13 K18 ["GetAssetFavoriteCount"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K4 [require]
       76 GETTABLEKS                       R15 R0 K13 ["Src"]
       78 GETTABLEKS                       R14 R15 K14 ["Thunks"]
       80 GETTABLEKS                       R13 R14 K19 ["ToggleFavoriteStatus"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K21 [game]
       85 LOADK                            R15 K22 ["StudioService"]
       86 NAMECALL                         R13 R13 K23 ["GetService"]
       88 CALL                             R13 2 1
       89 GETTABLEKS                       R14 R1 K24 ["PureComponent"]
       91 LOADK                            R16 K25 ["AssetPreviewWrapper"]
       92 NAMECALL                         R14 R14 K26 ["extend"]
       94 CALL                             R14 2 1
       95 DUPCLOSURE                       R15 K27 [PROTO_7]
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R1
       98 SETTABLEKS                       R15 R14 K28 ["init"]
      100 DUPCLOSURE                       R15 K29 [PROTO_8]
      101 SETTABLEKS                       R15 R14 K30 ["didMount"]
      103 DUPCLOSURE                       R15 K31 [PROTO_9]
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R7
      106 SETTABLEKS                       R15 R14 K32 ["render"]
      108 DUPCLOSURE                       R15 K33 [PROTO_10]
      109 MOVE                             R16 R5
      110 DUPTABLE                         R17 K40 [{"Analytics", "API", "Focus", "Localization", "Plugin", "Stylizer"}]
      111 GETTABLEKS                       R18 R4 K34 ["Analytics"]
      113 SETTABLEKS                       R18 R17 K34 ["Analytics"]
      115 GETTABLEKS                       R18 R4 K35 ["API"]
      117 SETTABLEKS                       R18 R17 K35 ["API"]
      119 GETTABLEKS                       R18 R4 K36 ["Focus"]
      121 SETTABLEKS                       R18 R17 K36 ["Focus"]
      123 GETTABLEKS                       R18 R4 K37 ["Localization"]
      125 SETTABLEKS                       R18 R17 K37 ["Localization"]
      127 GETTABLEKS                       R18 R4 K38 ["Plugin"]
      129 SETTABLEKS                       R18 R17 K38 ["Plugin"]
      131 GETTABLEKS                       R18 R4 K39 ["Stylizer"]
      133 SETTABLEKS                       R18 R17 K39 ["Stylizer"]
      135 CALL                             R16 1 1
      136 MOVE                             R17 R14
      137 CALL                             R16 1 1
      138 MOVE                             R14 R16
      139 DUPCLOSURE                       R16 K41 [PROTO_16]
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R12
      145 GETTABLEKS                       R17 R2 K42 ["connect"]
      147 MOVE                             R18 R15
      148 MOVE                             R19 R16
      149 CALL                             R17 2 1
      150 MOVE                             R18 R14
      151 CALL                             R17 1 -1
      152 RETURN                           R17 -1
