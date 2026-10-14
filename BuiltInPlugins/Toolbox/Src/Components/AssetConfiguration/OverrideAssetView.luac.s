PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"layoutContentSize"}]
        2 GETTABLEKS                       R4 R0 K2 ["AbsoluteContentSize"]
        4 SETTABLEKS                       R4 R3 K0 ["layoutContentSize"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Asset"]
        2 GETTABLEKS                       R1 R1 K1 ["Id"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["props"]
        7 GETTABLEKS                       R3 R3 K3 ["selectedAssetId"]
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 JUMPIFNOT                        R2 ; [+6]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["props"]
       17 GETTABLEKS                       R3 R3 K3 ["selectedAssetId"]
       19 JUMP                             ; [+5]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K4 ["state"]
       23 GETTABLEKS                       R3 R3 K3 ["selectedAssetId"]
       25 JUMPIFNOTEQ                      R1 R3 ; [+24]
       27 JUMPIFNOT                        R2 ; [+21]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K5 ["onOverrideAssetSelected"]
       31 LOADNIL                          R5
       32 CALL                             R4 1 0
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K2 ["props"]
       36 GETTABLEKS                       R4 R4 K6 ["makeChangeRequest"]
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R5 R5 K7 ["OVERRIDE_ASSET_ID"]
       41 MOVE                             R6 R3
       42 MOVE                             R7 R3
       43 CALL                             R4 3 0
       44 GETUPVAL                         R4 0
       45 DUPTABLE                         R6 K9 [{["selectedAssetId"] = 0}]
       46 NAMECALL                         R4 R4 K10 ["setState"]
       48 CALL                             R4 2 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K5 ["onOverrideAssetSelected"]
       53 MOVE                             R5 R1
       54 CALL                             R4 1 0
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R4 R4 K2 ["props"]
       58 GETTABLEKS                       R4 R4 K6 ["makeChangeRequest"]
       60 GETUPVAL                         R5 2
       61 GETTABLEKS                       R5 R5 K7 ["OVERRIDE_ASSET_ID"]
       63 MOVE                             R6 R3
       64 MOVE                             R7 R1
       65 CALL                             R4 3 0
       66 GETUPVAL                         R4 0
       67 DUPTABLE                         R6 K11 [{"selectedAssetId"}]
       68 SETTABLEKS                       R1 R6 K3 ["selectedAssetId"]
       70 NAMECALL                         R4 R4 K10 ["setState"]
       72 CALL                             R4 2 0
       73 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getOverrideAssets"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETTABLEKS                       R1 R1 K2 ["pageIndex"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 1
       10 DUPTABLE                         R2 K3 [{"pageIndex"}]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K1 ["state"]
       14 GETTABLEKS                       R4 R4 K2 ["pageIndex"]
       16 ADDK                             R3 R4 K4 [1]
       17 SETTABLEKS                       R3 R2 K2 ["pageIndex"]
       19 NAMECALL                         R0 R0 K5 ["setState"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getOverrideAssets"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["state"]
        8 GETTABLEKS                       R1 R1 K2 ["pageIndex"]
       10 JUMPIFEQ                         R1 R0 ; [+8]
       12 GETUPVAL                         R1 1
       13 DUPTABLE                         R3 K3 [{"pageIndex"}]
       14 SETTABLEKS                       R0 R3 K2 ["pageIndex"]
       16 NAMECALL                         R1 R1 K4 ["setState"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K5 [{[1] = 0, ["pageIndex"] = 1, ["layoutContentSize"]}]
        1 GETIMPORT                        R3 K8 [Vector2.new]
        3 CALL                             R3 0 1
        4 SETTABLEKS                       R3 R2 K4 ["layoutContentSize"]
        6 SETTABLEKS                       R2 R0 K9 ["state"]
        8 DUPTABLE                         R2 K12 [{"assetTypeEnum", "instances"}]
        9 GETTABLEKS                       R3 R1 K10 ["assetTypeEnum"]
       11 SETTABLEKS                       R3 R2 K10 ["assetTypeEnum"]
       13 GETTABLEKS                       R3 R1 K11 ["instances"]
       15 SETTABLEKS                       R3 R2 K11 ["instances"]
       17 SETTABLEKS                       R2 R0 K13 ["newAssetInfo"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K14 ["createRef"]
       22 CALL                             R2 0 1
       23 SETTABLEKS                       R2 R0 K15 ["layouterRef"]
       25 NEWCLOSURE                       R2 P0
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R2 R0 K16 ["onLayoutContentSizeChange"]
       29 NEWCLOSURE                       R2 P1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U1
       33 SETTABLEKS                       R2 R0 K17 ["onAssetActivated"]
       35 NEWCLOSURE                       R2 P2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R2 R0 K18 ["requestOverrideAsset"]
       40 NEWCLOSURE                       R2 P3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R2 R0 K19 ["DEPRECATED_requestOverrideAsset"]
       45 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onAssetActivated"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R2 K0 ["assetConfig"]
        2 DUPTABLE                         R4 K3 [{"UIPadding", "UIGridLayout"}]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K4 ["createElement"]
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
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K4 ["createElement"]
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
       86 GETUPVAL                         R8 0
       87 GETTABLEKS                       R8 R8 K34 ["Ref"]
       89 GETTABLEKS                       R9 R0 K35 ["layouterRef"]
       91 SETTABLE                         R9 R7 R8
       92 GETUPVAL                         R8 0
       93 GETTABLEKS                       R8 R8 K36 ["Change"]
       95 GETTABLEKS                       R8 R8 K37 ["AbsoluteContentSize"]
       97 GETTABLEKS                       R9 R0 K38 ["onLayoutContentSizeChange"]
       99 SETTABLE                         R9 R7 R8
      100 CALL                             R5 2 1
      101 SETTABLEKS                       R5 R4 K2 ["UIGridLayout"]
      103 GETTABLEKS                       R5 R0 K39 ["props"]
      105 GETTABLEKS                       R5 R5 K40 ["filterID"]
      107 GETTABLEKS                       R7 R0 K39 ["props"]
      109 GETTABLEKS                       R7 R7 K41 ["selectedAssetId"]
      111 JUMPIFEQKNIL                     R7 ; [+6]
      113 GETTABLEKS                       R6 R0 K39 ["props"]
      115 GETTABLEKS                       R6 R6 K41 ["selectedAssetId"]
      117 JUMP                             ; [+4]
      118 GETTABLEKS                       R6 R0 K42 ["state"]
      120 GETTABLEKS                       R6 R6 K41 ["selectedAssetId"]
      122 GETIMPORT                        R7 K44 [pairs]
      124 MOVE                             R8 R1
      125 CALL                             R7 1 3
      126 FORGPREP_NEXT                    R7
      127 GETTABLEKS                       R12 R11 K45 ["Asset"]
      129 GETTABLEKS                       R12 R12 K46 ["Id"]
      131 GETUPVAL                         R13 1
      132 GETTABLEKS                       R13 R13 K47 ["constructAssetThumbnailUrl"]
      134 MOVE                             R14 R12
      135 GETUPVAL                         R15 2
      136 GETTABLEKS                       R15 R15 K48 ["THUMBNAIL_SIZE_LARGE"]
      138 GETUPVAL                         R16 2
      139 GETTABLEKS                       R16 R16 K48 ["THUMBNAIL_SIZE_LARGE"]
      141 CALL                             R13 3 1
      142 JUMPIFEQ                         R6 R12 ; [+2]
      144 LOADB                            R14 0 +1
      145 LOADB                            R14 1
      146 LOADB                            R15 1
      147 LOADB                            R16 1
      148 JUMPIFEQKS                       R5 K49 [""] ; [+12]
      150 FASTCALL1                        TOSTRING R12 ; [+3]
      151 MOVE                             R17 R12
      152 GETIMPORT                        R16 K51 [tostring]
      154 CALL                             R16 1 1
      155 MOVE                             R18 R5
      156 LOADN                            R19 1
      157 LOADB                            R20 1
      158 NAMECALL                         R16 R16 K52 ["find"]
      160 CALL                             R16 4 1
      161 MOVE                             R15 R16
      162 MOVE                             R16 R15
      163 JUMPIFNOT                        R16 ; [+221]
      164 GETUPVAL                         R16 0
      165 GETTABLEKS                       R16 R16 K4 ["createElement"]
      167 LOADK                            R17 K53 ["TextButton"]
      168 NEWTABLE                         R18 8 0
      170 GETUPVAL                         R19 3
      171 GETTABLEKS                       R19 R19 K54 ["OverrideAssetItemSize"]
      173 SETTABLEKS                       R19 R18 K55 ["Size"]
      175 LOADN                            R19 0
      176 SETTABLEKS                       R19 R18 K56 ["BorderSizePixel"]
      178 LOADN                            R19 1
      179 SETTABLEKS                       R19 R18 K57 ["BackgroundTransparency"]
      181 LOADK                            R19 K49 [""]
      182 SETTABLEKS                       R19 R18 K58 ["Text"]
      184 GETUPVAL                         R19 2
      185 GETTABLEKS                       R19 R19 K59 ["FONT"]
      187 SETTABLEKS                       R19 R18 K60 ["Font"]
      189 GETUPVAL                         R19 2
      190 GETTABLEKS                       R19 R19 K61 ["FONT_SIZE_MEDIUM"]
      192 SETTABLEKS                       R19 R18 K62 ["TextSize"]
      194 GETUPVAL                         R19 0
      195 GETTABLEKS                       R19 R19 K63 ["Event"]
      197 GETTABLEKS                       R19 R19 K64 ["Activated"]
      199 NEWCLOSURE                       R20 P0
      200 CAPTURE                          VAL R0
      201 CAPTURE                          VAL R11
      202 SETTABLE                         R20 R18 R19
      203 SETTABLEKS                       R10 R18 K24 ["LayoutOrder"]
      205 DUPTABLE                         R19 K68 [{"UIListLayout", "Border", "Title"}]
      206 GETUPVAL                         R20 0
      207 GETTABLEKS                       R20 R20 K4 ["createElement"]
      209 LOADK                            R21 K65 ["UIListLayout"]
      210 CALL                             R20 1 1
      211 SETTABLEKS                       R20 R19 K65 ["UIListLayout"]
      213 GETUPVAL                         R20 0
      214 GETTABLEKS                       R20 R20 K4 ["createElement"]
      216 LOADK                            R21 K69 ["Frame"]
      217 DUPTABLE                         R22 K74 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["LayoutOrder"] = 1}]
      218 GETIMPORT                        R23 K27 [UDim2.new]
      220 LOADN                            R24 1
      221 LOADN                            R25 0
      222 LOADN                            R26 1
      223 LOADN                            R27 -48
      224 CALL                             R23 4 1
      225 SETTABLEKS                       R23 R22 K55 ["Size"]
      227 GETUPVAL                         R23 4
      228 GETTABLEKS                       R23 R23 K75 ["WHITE"]
      230 SETTABLEKS                       R23 R22 K71 ["BackgroundColor3"]
      232 JUMPIFNOT                        R14 ; [+4]
      233 GETUPVAL                         R23 4
      234 GETTABLEKS                       R23 R23 K76 ["BLUE_PRIMARY"]
      236 JUMPIF                           R23 ; [+3]
      237 GETUPVAL                         R23 4
      238 GETTABLEKS                       R23 R23 K77 ["GRAY_3"]
      240 SETTABLEKS                       R23 R22 K73 ["BorderColor3"]
      242 DUPTABLE                         R23 K81 [{"ThumbNail", "CheckedIcon", "Tooltip"}]
      243 GETUPVAL                         R24 0
      244 GETTABLEKS                       R24 R24 K4 ["createElement"]
      246 LOADK                            R25 K82 ["ImageLabel"]
      247 DUPTABLE                         R26 K85 [{["Size"], ["Position"], ["BorderSizePixel"] = 1, ["BackgroundTransparency"] = 1, ["Image"]}]
      248 GETIMPORT                        R27 K27 [UDim2.new]
      250 LOADN                            R28 1
      251 LOADN                            R29 0
      252 LOADN                            R30 1
      253 LOADN                            R31 0
      254 CALL                             R27 4 1
      255 SETTABLEKS                       R27 R26 K55 ["Size"]
      257 GETIMPORT                        R27 K27 [UDim2.new]
      259 LOADN                            R28 0
      260 LOADN                            R29 0
      261 LOADN                            R30 0
      262 LOADN                            R31 0
      263 CALL                             R27 4 1
      264 SETTABLEKS                       R27 R26 K83 ["Position"]
      266 SETTABLEKS                       R13 R26 K84 ["Image"]
      268 CALL                             R24 2 1
      269 SETTABLEKS                       R24 R23 K78 ["ThumbNail"]
      271 MOVE                             R24 R14
      272 JUMPIFNOT                        R24 ; [+34]
      273 GETUPVAL                         R24 0
      274 GETTABLEKS                       R24 R24 K4 ["createElement"]
      276 LOADK                            R25 K82 ["ImageLabel"]
      277 DUPTABLE                         R26 K87 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Image"], ["ImageColor3"]}]
      278 GETIMPORT                        R27 K27 [UDim2.new]
      280 LOADN                            R28 0
      281 LOADN                            R29 4
      282 LOADN                            R30 0
      283 LOADN                            R31 4
      284 CALL                             R27 4 1
      285 SETTABLEKS                       R27 R26 K83 ["Position"]
      287 GETIMPORT                        R27 K27 [UDim2.new]
      289 LOADN                            R28 0
      290 LOADN                            R29 28
      291 LOADN                            R30 0
      292 LOADN                            R31 28
      293 CALL                             R27 4 1
      294 SETTABLEKS                       R27 R26 K55 ["Size"]
      296 GETUPVAL                         R27 5
      297 GETTABLEKS                       R27 R27 K88 ["SELECTED_CHECK"]
      299 SETTABLEKS                       R27 R26 K84 ["Image"]
      301 GETUPVAL                         R27 4
      302 GETTABLEKS                       R27 R27 K76 ["BLUE_PRIMARY"]
      304 SETTABLEKS                       R27 R26 K86 ["ImageColor3"]
      306 CALL                             R24 2 1
      307 SETTABLEKS                       R24 R23 K79 ["CheckedIcon"]
      309 GETUPVAL                         R25 0
      310 GETTABLEKS                       R25 R25 K4 ["createElement"]
      312 GETUPVAL                         R26 6
      313 DUPTABLE                         R27 K90 [{"Text"}]
      314 GETTABLEKS                       R28 R11 K45 ["Asset"]
      316 GETTABLEKS                       R28 R28 K91 ["Name"]
      318 SETTABLEKS                       R28 R27 K58 ["Text"]
      320 CALL                             R25 2 1
      321 ORK                              R24 R25 K89 []
      322 SETTABLEKS                       R24 R23 K80 ["Tooltip"]
      324 CALL                             R20 3 1
      325 SETTABLEKS                       R20 R19 K66 ["Border"]
      327 GETUPVAL                         R20 0
      328 GETTABLEKS                       R20 R20 K4 ["createElement"]
      330 LOADK                            R21 K92 ["TextLabel"]
      331 DUPTABLE                         R22 K96 [{["Size"], ["Text"], ["Font"], ["TextColor3"], ["TextSize"], ["TextTruncate"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2}]
      332 GETIMPORT                        R23 K27 [UDim2.new]
      334 LOADN                            R24 1
      335 LOADN                            R25 0
      336 LOADN                            R26 0
      337 LOADN                            R27 48
      338 CALL                             R23 4 1
      339 SETTABLEKS                       R23 R22 K55 ["Size"]
      341 GETTABLEKS                       R23 R11 K45 ["Asset"]
      343 GETTABLEKS                       R23 R23 K91 ["Name"]
      345 SETTABLEKS                       R23 R22 K58 ["Text"]
      347 GETUPVAL                         R23 2
      348 GETTABLEKS                       R23 R23 K59 ["FONT"]
      350 SETTABLEKS                       R23 R22 K60 ["Font"]
      352 GETTABLEKS                       R23 R3 K97 ["textColor"]
      354 SETTABLEKS                       R23 R22 K93 ["TextColor3"]
      356 GETUPVAL                         R23 2
      357 GETTABLEKS                       R23 R23 K61 ["FONT_SIZE_MEDIUM"]
      359 SETTABLEKS                       R23 R22 K62 ["TextSize"]
      361 GETIMPORT                        R23 K99 [Enum.TextTruncate.AtEnd]
      363 SETTABLEKS                       R23 R22 K94 ["TextTruncate"]
      365 DUPTABLE                         R23 K100 [{"Tooltip"}]
      366 GETUPVAL                         R25 0
      367 GETTABLEKS                       R25 R25 K4 ["createElement"]
      369 GETUPVAL                         R26 6
      370 DUPTABLE                         R27 K90 [{"Text"}]
      371 GETTABLEKS                       R28 R11 K45 ["Asset"]
      373 GETTABLEKS                       R28 R28 K91 ["Name"]
      375 SETTABLEKS                       R28 R27 K58 ["Text"]
      377 CALL                             R25 2 1
      378 ORK                              R24 R25 K89 []
      379 SETTABLEKS                       R24 R23 K80 ["Tooltip"]
      381 CALL                             R20 3 1
      382 SETTABLEKS                       R20 R19 K67 ["Title"]
      384 CALL                             R16 3 1
      385 SETTABLE                         R16 R4 R12
      386 FORGLOOP                         R7 2 ; [-260]
      388 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R1 K3 ["Size"]
       10 GETTABLEKS                       R7 R1 K4 ["resultsArray"]
       12 JUMPIF                           R7 ; [+2]
       13 NEWTABLE                         R7 0 0
       15 MOVE                             R8 R3
       16 NAMECALL                         R5 R0 K5 ["createAssets"]
       18 CALL                             R5 3 1
       19 GETTABLEKS                       R6 R3 K6 ["publishAsset"]
       21 GETTABLEKS                       R7 R0 K7 ["layouterRef"]
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K8 ["createElement"]
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
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R4 K9 ["UI"]
       30 GETTABLEKS                       R5 R5 K10 ["Tooltip"]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Networking"]
       36 GETTABLEKS                       R6 R6 K13 ["Requests"]
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R6 K14 ["MakeChangeRequest"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R8 R0 K11 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Util"]
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
       74 GETTABLEKS                       R15 R0 K11 ["Src"]
       76 GETTABLEKS                       R15 R15 K21 ["Components"]
       78 GETTABLEKS                       R15 R15 K22 ["InfiniteScrollingFrame"]
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
