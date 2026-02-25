PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"layoutContentSize"}]
        2 GETTABLEKS                       R4 R0 K2 ["AbsoluteContentSize"]
        4 SETTABLEKS                       R4 R3 K0 ["layoutContentSize"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Asset"]
        2 GETTABLEKS                       R1 R2 K1 ["Id"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["state"]
        7 GETTABLEKS                       R2 R3 K3 ["selectedAssetId"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K4 ["onOverrideAssetSelected"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K5 ["props"]
       20 GETTABLEKS                       R2 R3 K6 ["makeChangeRequest"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R3 R4 K7 ["OVERRIDE_ASSET_ID"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K2 ["state"]
       28 GETTABLEKS                       R4 R5 K3 ["selectedAssetId"]
       30 MOVE                             R5 R1
       31 CALL                             R2 3 0
       32 GETUPVAL                         R2 0
       33 DUPTABLE                         R4 K8 [{"selectedAssetId"}]
       34 SETTABLEKS                       R1 R4 K3 ["selectedAssetId"]
       36 NAMECALL                         R2 R2 K9 ["setState"]
       38 CALL                             R2 2 0
       39 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getOverrideAssets"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["state"]
        6 GETTABLEKS                       R1 R2 K2 ["pageIndex"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 1
       10 DUPTABLE                         R2 K3 [{"pageIndex"}]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K1 ["state"]
       14 GETTABLEKS                       R4 R5 K2 ["pageIndex"]
       16 ADDK                             R3 R4 K4 [1]
       17 SETTABLEKS                       R3 R2 K2 ["pageIndex"]
       19 NAMECALL                         R0 R0 K5 ["setState"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getOverrideAssets"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["state"]
        8 GETTABLEKS                       R1 R2 K2 ["pageIndex"]
       10 JUMPIFEQ                         R1 R0 ; [+8]
       12 GETUPVAL                         R1 1
       13 DUPTABLE                         R3 K3 [{"pageIndex"}]
       14 SETTABLEKS                       R0 R3 K2 ["pageIndex"]
       16 NAMECALL                         R1 R1 K4 ["setState"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K3 [{"selectedAssetId", "pageIndex", "layoutContentSize"}]
        1 LOADN                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["selectedAssetId"]
        4 LOADN                            R3 1
        5 SETTABLEKS                       R3 R2 K1 ["pageIndex"]
        7 GETIMPORT                        R3 K6 [Vector2.new]
        9 CALL                             R3 0 1
       10 SETTABLEKS                       R3 R2 K2 ["layoutContentSize"]
       12 SETTABLEKS                       R2 R0 K7 ["state"]
       14 DUPTABLE                         R2 K10 [{"assetTypeEnum", "instances"}]
       15 GETTABLEKS                       R3 R1 K8 ["assetTypeEnum"]
       17 SETTABLEKS                       R3 R2 K8 ["assetTypeEnum"]
       19 GETTABLEKS                       R3 R1 K9 ["instances"]
       21 SETTABLEKS                       R3 R2 K9 ["instances"]
       23 SETTABLEKS                       R2 R0 K11 ["newAssetInfo"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R2 R3 K12 ["createRef"]
       28 CALL                             R2 0 1
       29 SETTABLEKS                       R2 R0 K13 ["layouterRef"]
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R2 R0 K14 ["onLayoutContentSizeChange"]
       35 NEWCLOSURE                       R2 P1
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U1
       39 SETTABLEKS                       R2 R0 K15 ["onAssetActivated"]
       41 NEWCLOSURE                       R2 P2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R2 R0 K16 ["requestOverrideAsset"]
       46 NEWCLOSURE                       R2 P3
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R2 R0 K17 ["DEPRECATED_requestOverrideAsset"]
       51 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onAssetActivated"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R2 K0 ["assetConfig"]
        2 DUPTABLE                         R4 K3 [{"UIPadding", "UIGridLayout"}]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K4 ["createElement"]
        6 LOADK                            R6 K1 ["UIPadding"]
        7 DUPTABLE                         R7 K9 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
        8 GETIMPORT                        R8 K12 [UDim.new]
       10 LOADN                            R9 0
       11 LOADN                            R10 12
       12 CALL                             R8 2 1
       13 SETTABLEKS                       R8 R7 K5 ["PaddingBottom"]
       15 GETIMPORT                        R8 K12 [UDim.new]
       17 LOADN                            R9 0
       18 LOADN                            R10 1
       19 CALL                             R8 2 1
       20 SETTABLEKS                       R8 R7 K6 ["PaddingLeft"]
       22 GETIMPORT                        R8 K12 [UDim.new]
       24 LOADN                            R9 0
       25 LOADN                            R10 1
       26 CALL                             R8 2 1
       27 SETTABLEKS                       R8 R7 K7 ["PaddingRight"]
       29 GETIMPORT                        R8 K12 [UDim.new]
       31 LOADN                            R9 0
       32 LOADN                            R10 12
       33 CALL                             R8 2 1
       34 SETTABLEKS                       R8 R7 K8 ["PaddingTop"]
       36 CALL                             R5 2 1
       37 SETTABLEKS                       R5 R4 K1 ["UIPadding"]
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R5 R6 K4 ["createElement"]
       42 LOADK                            R6 K2 ["UIGridLayout"]
       43 NEWTABLE                         R7 16 0
       45 GETIMPORT                        R8 K16 [Enum.FillDirection.Horizontal]
       47 SETTABLEKS                       R8 R7 K14 ["FillDirection"]
       49 GETIMPORT                        R8 K19 [Enum.HorizontalAlignment.Left]
       51 SETTABLEKS                       R8 R7 K17 ["HorizontalAlignment"]
       53 GETIMPORT                        R8 K22 [Enum.VerticalAlignment.Top]
       55 SETTABLEKS                       R8 R7 K20 ["VerticalAlignment"]
       57 GETIMPORT                        R8 K25 [Enum.SortOrder.LayoutOrder]
       59 SETTABLEKS                       R8 R7 K23 ["SortOrder"]
       61 GETIMPORT                        R8 K27 [UDim2.new]
       63 LOADN                            R9 0
       64 LOADN                            R10 24
       65 LOADN                            R11 0
       66 LOADN                            R12 26
       67 CALL                             R8 4 1
       68 SETTABLEKS                       R8 R7 K28 ["CellPadding"]
       70 GETIMPORT                        R8 K27 [UDim2.new]
       72 LOADN                            R9 0
       73 LOADN                            R10 150
       74 LOADN                            R11 0
       75 LOADN                            R12 198
       76 CALL                             R8 4 1
       77 SETTABLEKS                       R8 R7 K29 ["CellSize"]
       79 LOADN                            R8 4
       80 SETTABLEKS                       R8 R7 K30 ["FillDirectionMaxCells"]
       82 GETIMPORT                        R8 K33 [Enum.StartCorner.TopLeft]
       84 SETTABLEKS                       R8 R7 K31 ["StartCorner"]
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R8 R9 K34 ["Ref"]
       89 GETTABLEKS                       R9 R0 K35 ["layouterRef"]
       91 SETTABLE                         R9 R7 R8
       92 GETUPVAL                         R10 0
       93 GETTABLEKS                       R9 R10 K36 ["Change"]
       95 GETTABLEKS                       R8 R9 K37 ["AbsoluteContentSize"]
       97 GETTABLEKS                       R9 R0 K38 ["onLayoutContentSizeChange"]
       99 SETTABLE                         R9 R7 R8
      100 CALL                             R5 2 1
      101 SETTABLEKS                       R5 R4 K2 ["UIGridLayout"]
      103 GETTABLEKS                       R6 R0 K39 ["props"]
      105 GETTABLEKS                       R5 R6 K40 ["filterID"]
      107 GETTABLEKS                       R7 R0 K41 ["state"]
      109 GETTABLEKS                       R6 R7 K42 ["selectedAssetId"]
      111 GETIMPORT                        R7 K44 [pairs]
      113 MOVE                             R8 R1
      114 CALL                             R7 1 3
      115 FORGPREP_NEXT                    R7
      116 GETTABLEKS                       R13 R11 K45 ["Asset"]
      118 GETTABLEKS                       R12 R13 K46 ["Id"]
      120 GETUPVAL                         R14 1
      121 GETTABLEKS                       R13 R14 K47 ["constructAssetThumbnailUrl"]
      123 MOVE                             R14 R12
      124 GETUPVAL                         R16 2
      125 GETTABLEKS                       R15 R16 K48 ["THUMBNAIL_SIZE_LARGE"]
      127 GETUPVAL                         R17 2
      128 GETTABLEKS                       R16 R17 K48 ["THUMBNAIL_SIZE_LARGE"]
      130 CALL                             R13 3 1
      131 JUMPIFEQ                         R6 R12 ; [+2]
      133 LOADB                            R14 0 +1
      134 LOADB                            R14 1
      135 LOADB                            R15 1
      136 LOADB                            R16 1
      137 JUMPIFEQKS                       R5 K49 [""] ; [+12]
      139 FASTCALL1                        TOSTRING R12 ; [+3]
      140 MOVE                             R17 R12
      141 GETIMPORT                        R16 K51 [tostring]
      143 CALL                             R16 1 1
      144 MOVE                             R18 R5
      145 LOADN                            R19 1
      146 LOADB                            R20 1
      147 NAMECALL                         R16 R16 K52 ["find"]
      149 CALL                             R16 4 1
      150 MOVE                             R15 R16
      151 MOVE                             R16 R15
      152 JUMPIFNOT                        R16 ; [+251]
      153 GETUPVAL                         R17 0
      154 GETTABLEKS                       R16 R17 K4 ["createElement"]
      156 LOADK                            R17 K53 ["TextButton"]
      157 NEWTABLE                         R18 8 0
      159 GETUPVAL                         R20 3
      160 GETTABLEKS                       R19 R20 K54 ["OverrideAssetItemSize"]
      162 SETTABLEKS                       R19 R18 K55 ["Size"]
      164 LOADN                            R19 0
      165 SETTABLEKS                       R19 R18 K56 ["BorderSizePixel"]
      167 LOADN                            R19 1
      168 SETTABLEKS                       R19 R18 K57 ["BackgroundTransparency"]
      170 LOADK                            R19 K49 [""]
      171 SETTABLEKS                       R19 R18 K58 ["Text"]
      173 GETUPVAL                         R20 2
      174 GETTABLEKS                       R19 R20 K59 ["FONT"]
      176 SETTABLEKS                       R19 R18 K60 ["Font"]
      178 GETUPVAL                         R20 2
      179 GETTABLEKS                       R19 R20 K61 ["FONT_SIZE_MEDIUM"]
      181 SETTABLEKS                       R19 R18 K62 ["TextSize"]
      183 GETUPVAL                         R21 0
      184 GETTABLEKS                       R20 R21 K63 ["Event"]
      186 GETTABLEKS                       R19 R20 K64 ["Activated"]
      188 NEWCLOSURE                       R20 P0
      189 CAPTURE                          VAL R0
      190 CAPTURE                          VAL R11
      191 SETTABLE                         R20 R18 R19
      192 SETTABLEKS                       R10 R18 K24 ["LayoutOrder"]
      194 DUPTABLE                         R19 K68 [{"UIListLayout", "Border", "Title"}]
      195 GETUPVAL                         R21 0
      196 GETTABLEKS                       R20 R21 K4 ["createElement"]
      198 LOADK                            R21 K65 ["UIListLayout"]
      199 CALL                             R20 1 1
      200 SETTABLEKS                       R20 R19 K65 ["UIListLayout"]
      202 GETUPVAL                         R21 0
      203 GETTABLEKS                       R20 R21 K4 ["createElement"]
      205 LOADK                            R21 K69 ["Frame"]
      206 DUPTABLE                         R22 K72 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "LayoutOrder"}]
      207 GETIMPORT                        R23 K27 [UDim2.new]
      209 LOADN                            R24 1
      210 LOADN                            R25 0
      211 LOADN                            R26 1
      212 LOADN                            R27 208
      213 CALL                             R23 4 1
      214 SETTABLEKS                       R23 R22 K55 ["Size"]
      216 LOADN                            R23 0
      217 SETTABLEKS                       R23 R22 K57 ["BackgroundTransparency"]
      219 GETUPVAL                         R24 4
      220 GETTABLEKS                       R23 R24 K73 ["WHITE"]
      222 SETTABLEKS                       R23 R22 K70 ["BackgroundColor3"]
      224 LOADN                            R23 1
      225 SETTABLEKS                       R23 R22 K56 ["BorderSizePixel"]
      227 JUMPIFNOT                        R14 ; [+4]
      228 GETUPVAL                         R24 4
      229 GETTABLEKS                       R23 R24 K74 ["BLUE_PRIMARY"]
      231 JUMPIF                           R23 ; [+3]
      232 GETUPVAL                         R24 4
      233 GETTABLEKS                       R23 R24 K75 ["GRAY_3"]
      235 SETTABLEKS                       R23 R22 K71 ["BorderColor3"]
      237 LOADN                            R23 1
      238 SETTABLEKS                       R23 R22 K24 ["LayoutOrder"]
      240 DUPTABLE                         R23 K79 [{"ThumbNail", "CheckedIcon", "Tooltip"}]
      241 GETUPVAL                         R25 0
      242 GETTABLEKS                       R24 R25 K4 ["createElement"]
      244 LOADK                            R25 K80 ["ImageLabel"]
      245 DUPTABLE                         R26 K83 [{"Size", "Position", "BorderSizePixel", "BackgroundTransparency", "Image"}]
      246 GETIMPORT                        R27 K27 [UDim2.new]
      248 LOADN                            R28 1
      249 LOADN                            R29 0
      250 LOADN                            R30 1
      251 LOADN                            R31 0
      252 CALL                             R27 4 1
      253 SETTABLEKS                       R27 R26 K55 ["Size"]
      255 GETIMPORT                        R27 K27 [UDim2.new]
      257 LOADN                            R28 0
      258 LOADN                            R29 0
      259 LOADN                            R30 0
      260 LOADN                            R31 0
      261 CALL                             R27 4 1
      262 SETTABLEKS                       R27 R26 K81 ["Position"]
      264 LOADN                            R27 1
      265 SETTABLEKS                       R27 R26 K56 ["BorderSizePixel"]
      267 LOADN                            R27 1
      268 SETTABLEKS                       R27 R26 K57 ["BackgroundTransparency"]
      270 SETTABLEKS                       R13 R26 K82 ["Image"]
      272 CALL                             R24 2 1
      273 SETTABLEKS                       R24 R23 K76 ["ThumbNail"]
      275 MOVE                             R24 R14
      276 JUMPIFNOT                        R24 ; [+40]
      277 GETUPVAL                         R25 0
      278 GETTABLEKS                       R24 R25 K4 ["createElement"]
      280 LOADK                            R25 K80 ["ImageLabel"]
      281 DUPTABLE                         R26 K85 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel", "Image", "ImageColor3"}]
      282 GETIMPORT                        R27 K27 [UDim2.new]
      284 LOADN                            R28 0
      285 LOADN                            R29 4
      286 LOADN                            R30 0
      287 LOADN                            R31 4
      288 CALL                             R27 4 1
      289 SETTABLEKS                       R27 R26 K81 ["Position"]
      291 GETIMPORT                        R27 K27 [UDim2.new]
      293 LOADN                            R28 0
      294 LOADN                            R29 28
      295 LOADN                            R30 0
      296 LOADN                            R31 28
      297 CALL                             R27 4 1
      298 SETTABLEKS                       R27 R26 K55 ["Size"]
      300 LOADN                            R27 1
      301 SETTABLEKS                       R27 R26 K57 ["BackgroundTransparency"]
      303 LOADN                            R27 0
      304 SETTABLEKS                       R27 R26 K56 ["BorderSizePixel"]
      306 GETUPVAL                         R28 5
      307 GETTABLEKS                       R27 R28 K86 ["SELECTED_CHECK"]
      309 SETTABLEKS                       R27 R26 K82 ["Image"]
      311 GETUPVAL                         R28 4
      312 GETTABLEKS                       R27 R28 K74 ["BLUE_PRIMARY"]
      314 SETTABLEKS                       R27 R26 K84 ["ImageColor3"]
      316 CALL                             R24 2 1
      317 SETTABLEKS                       R24 R23 K77 ["CheckedIcon"]
      319 GETUPVAL                         R26 0
      320 GETTABLEKS                       R25 R26 K4 ["createElement"]
      322 GETUPVAL                         R26 6
      323 DUPTABLE                         R27 K88 [{"Text"}]
      324 GETTABLEKS                       R29 R11 K45 ["Asset"]
      326 GETTABLEKS                       R28 R29 K89 ["Name"]
      328 SETTABLEKS                       R28 R27 K58 ["Text"]
      330 CALL                             R25 2 1
      331 ORK                              R24 R25 K87 []
      332 SETTABLEKS                       R24 R23 K78 ["Tooltip"]
      334 CALL                             R20 3 1
      335 SETTABLEKS                       R20 R19 K66 ["Border"]
      337 GETUPVAL                         R21 0
      338 GETTABLEKS                       R20 R21 K4 ["createElement"]
      340 LOADK                            R21 K90 ["TextLabel"]
      341 DUPTABLE                         R22 K93 [{"Size", "Text", "Font", "TextColor3", "TextSize", "TextTruncate", "BorderSizePixel", "BackgroundTransparency", "LayoutOrder"}]
      342 GETIMPORT                        R23 K27 [UDim2.new]
      344 LOADN                            R24 1
      345 LOADN                            R25 0
      346 LOADN                            R26 0
      347 LOADN                            R27 48
      348 CALL                             R23 4 1
      349 SETTABLEKS                       R23 R22 K55 ["Size"]
      351 GETTABLEKS                       R24 R11 K45 ["Asset"]
      353 GETTABLEKS                       R23 R24 K89 ["Name"]
      355 SETTABLEKS                       R23 R22 K58 ["Text"]
      357 GETUPVAL                         R24 2
      358 GETTABLEKS                       R23 R24 K59 ["FONT"]
      360 SETTABLEKS                       R23 R22 K60 ["Font"]
      362 GETTABLEKS                       R23 R3 K94 ["textColor"]
      364 SETTABLEKS                       R23 R22 K91 ["TextColor3"]
      366 GETUPVAL                         R24 2
      367 GETTABLEKS                       R23 R24 K61 ["FONT_SIZE_MEDIUM"]
      369 SETTABLEKS                       R23 R22 K62 ["TextSize"]
      371 GETIMPORT                        R23 K96 [Enum.TextTruncate.AtEnd]
      373 SETTABLEKS                       R23 R22 K92 ["TextTruncate"]
      375 LOADN                            R23 0
      376 SETTABLEKS                       R23 R22 K56 ["BorderSizePixel"]
      378 LOADN                            R23 1
      379 SETTABLEKS                       R23 R22 K57 ["BackgroundTransparency"]
      381 LOADN                            R23 2
      382 SETTABLEKS                       R23 R22 K24 ["LayoutOrder"]
      384 DUPTABLE                         R23 K97 [{"Tooltip"}]
      385 GETUPVAL                         R26 0
      386 GETTABLEKS                       R25 R26 K4 ["createElement"]
      388 GETUPVAL                         R26 6
      389 DUPTABLE                         R27 K88 [{"Text"}]
      390 GETTABLEKS                       R29 R11 K45 ["Asset"]
      392 GETTABLEKS                       R28 R29 K89 ["Name"]
      394 SETTABLEKS                       R28 R27 K58 ["Text"]
      396 CALL                             R25 2 1
      397 ORK                              R24 R25 K87 []
      398 SETTABLEKS                       R24 R23 K78 ["Tooltip"]
      400 CALL                             R20 3 1
      401 SETTABLEKS                       R20 R19 K67 ["Title"]
      403 CALL                             R16 3 1
      404 SETTABLE                         R16 R4 R12
      405 FORGLOOP                         R7 2 ; [-290]
      407 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R4 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R1 K3 ["Size"]
       10 GETTABLEKS                       R7 R1 K4 ["resultsArray"]
       12 JUMPIF                           R7 ; [+2]
       13 NEWTABLE                         R7 0 0
       15 MOVE                             R8 R3
       16 NAMECALL                         R5 R0 K5 ["createAssets"]
       18 CALL                             R5 3 1
       19 GETTABLEKS                       R6 R3 K6 ["publishAsset"]
       21 GETTABLEKS                       R7 R0 K7 ["layouterRef"]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R8 R9 K8 ["createElement"]
       26 GETUPVAL                         R9 1
       27 DUPTABLE                         R10 K12 [{"Size", "BackgroundColor3", "layouterRef", "nextPageFunc", "LayoutOrder"}]
       28 SETTABLEKS                       R4 R10 K3 ["Size"]
       30 GETTABLEKS                       R11 R6 K13 ["backgroundColor"]
       32 SETTABLEKS                       R11 R10 K9 ["BackgroundColor3"]
       34 SETTABLEKS                       R7 R10 K7 ["layouterRef"]
       36 GETTABLEKS                       R11 R0 K14 ["DEPRECATED_requestOverrideAsset"]
       38 SETTABLEKS                       R11 R10 K10 ["nextPageFunc"]
       40 GETTABLEKS                       R11 R1 K11 ["LayoutOrder"]
       42 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       44 MOVE                             R11 R5
       45 CALL                             R8 3 -1
       46 RETURN                           R8 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K1 [{"makeChangeRequest"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["makeChangeRequest"]
        6 RETURN                           R1 1

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
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R6 R4 K9 ["UI"]
       30 GETTABLEKS                       R5 R6 K10 ["Tooltip"]
       32 GETTABLEKS                       R8 R0 K11 ["Src"]
       34 GETTABLEKS                       R7 R8 K12 ["Networking"]
       36 GETTABLEKS                       R6 R7 K13 ["Requests"]
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R6 K14 ["MakeChangeRequest"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R9 R0 K11 ["Src"]
       45 GETTABLEKS                       R8 R9 K15 ["Util"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R8 K16 ["Constants"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R8 K17 ["Urls"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R8 K18 ["Images"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K5 [require]
       64 GETTABLEKS                       R13 R8 K19 ["Colors"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R14 R8 K20 ["AssetConfigConstants"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K5 [require]
       74 GETTABLEKS                       R17 R0 K11 ["Src"]
       76 GETTABLEKS                       R16 R17 K21 ["Components"]
       78 GETTABLEKS                       R15 R16 K22 ["InfiniteScrollingFrame"]
       80 CALL                             R14 1 1
       81 GETTABLEKS                       R15 R4 K23 ["ContextServices"]
       83 GETTABLEKS                       R16 R15 K24 ["withContext"]
       85 GETTABLEKS                       R17 R2 K25 ["PureComponent"]
       87 LOADK                            R19 K26 ["OverrideAssetView"]
       88 NAMECALL                         R17 R17 K27 ["extend"]
       90 CALL                             R17 2 1
       91 DUPCLOSURE                       R18 K28 [PROTO_4]
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R13
       94 SETTABLEKS                       R18 R17 K29 ["init"]
       96 DUPCLOSURE                       R18 K30 [PROTO_6]
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R5
      104 SETTABLEKS                       R18 R17 K31 ["createAssets"]
      106 DUPCLOSURE                       R18 K32 [PROTO_7]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R14
      109 SETTABLEKS                       R18 R17 K33 ["render"]
      111 DUPCLOSURE                       R18 K34 [PROTO_9]
      112 CAPTURE                          VAL R7
      113 MOVE                             R19 R16
      114 DUPTABLE                         R20 K36 [{"Stylizer"}]
      115 GETTABLEKS                       R21 R15 K35 ["Stylizer"]
      117 SETTABLEKS                       R21 R20 K35 ["Stylizer"]
      119 CALL                             R19 1 1
      120 MOVE                             R20 R17
      121 CALL                             R19 1 1
      122 MOVE                             R17 R19
      123 GETTABLEKS                       R19 R3 K37 ["connect"]
      125 LOADNIL                          R20
      126 MOVE                             R21 R18
      127 CALL                             R19 2 1
      128 MOVE                             R20 R17
      129 CALL                             R19 1 -1
      130 RETURN                           R19 -1
