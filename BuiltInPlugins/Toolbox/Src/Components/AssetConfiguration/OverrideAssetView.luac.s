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
      107 GETUPVAL                         R6 1
      108 CALL                             R6 0 1
      109 JUMPIFNOT                        R6 ; [+8]
      110 GETUPVAL                         R6 2
      111 GETTABLEKS                       R6 R6 K41 ["isTextDocumentAsset"]
      113 GETTABLEKS                       R7 R0 K39 ["props"]
      115 GETTABLEKS                       R7 R7 K42 ["assetTypeEnum"]
      117 CALL                             R6 1 1
      118 GETTABLEKS                       R8 R0 K39 ["props"]
      120 GETTABLEKS                       R8 R8 K43 ["selectedAssetId"]
      122 JUMPIFEQKNIL                     R8 ; [+6]
      124 GETTABLEKS                       R7 R0 K39 ["props"]
      126 GETTABLEKS                       R7 R7 K43 ["selectedAssetId"]
      128 JUMP                             ; [+4]
      129 GETTABLEKS                       R7 R0 K44 ["state"]
      131 GETTABLEKS                       R7 R7 K43 ["selectedAssetId"]
      133 GETIMPORT                        R8 K46 [pairs]
      135 MOVE                             R9 R1
      136 CALL                             R8 1 3
      137 FORGPREP_NEXT                    R8
      138 GETTABLEKS                       R13 R12 K47 ["Asset"]
      140 GETTABLEKS                       R13 R13 K48 ["Id"]
      142 GETUPVAL                         R14 3
      143 GETTABLEKS                       R14 R14 K49 ["constructAssetThumbnailUrl"]
      145 MOVE                             R15 R13
      146 GETUPVAL                         R16 4
      147 GETTABLEKS                       R16 R16 K50 ["THUMBNAIL_SIZE_LARGE"]
      149 GETUPVAL                         R17 4
      150 GETTABLEKS                       R17 R17 K50 ["THUMBNAIL_SIZE_LARGE"]
      152 CALL                             R14 3 1
      153 JUMPIFEQ                         R7 R13 ; [+2]
      155 LOADB                            R15 0 +1
      156 LOADB                            R15 1
      157 LOADB                            R16 1
      158 LOADB                            R17 1
      159 JUMPIFEQKS                       R5 K51 [""] ; [+12]
      161 FASTCALL1                        TOSTRING R13 ; [+3]
      162 MOVE                             R18 R13
      163 GETIMPORT                        R17 K53 [tostring]
      165 CALL                             R17 1 1
      166 MOVE                             R19 R5
      167 LOADN                            R20 1
      168 LOADB                            R21 1
      169 NAMECALL                         R17 R17 K54 ["find"]
      171 CALL                             R17 4 1
      172 MOVE                             R16 R17
      173 MOVE                             R17 R16
      174 JUMPIFNOT                        R17 ; [+234]
      175 GETUPVAL                         R17 0
      176 GETTABLEKS                       R17 R17 K4 ["createElement"]
      178 LOADK                            R18 K55 ["TextButton"]
      179 NEWTABLE                         R19 8 0
      181 GETUPVAL                         R20 5
      182 GETTABLEKS                       R20 R20 K56 ["OverrideAssetItemSize"]
      184 SETTABLEKS                       R20 R19 K57 ["Size"]
      186 LOADN                            R20 0
      187 SETTABLEKS                       R20 R19 K58 ["BorderSizePixel"]
      189 LOADN                            R20 1
      190 SETTABLEKS                       R20 R19 K59 ["BackgroundTransparency"]
      192 LOADK                            R20 K51 [""]
      193 SETTABLEKS                       R20 R19 K60 ["Text"]
      195 GETUPVAL                         R20 4
      196 GETTABLEKS                       R20 R20 K61 ["FONT"]
      198 SETTABLEKS                       R20 R19 K62 ["Font"]
      200 GETUPVAL                         R20 4
      201 GETTABLEKS                       R20 R20 K63 ["FONT_SIZE_MEDIUM"]
      203 SETTABLEKS                       R20 R19 K64 ["TextSize"]
      205 GETUPVAL                         R20 0
      206 GETTABLEKS                       R20 R20 K65 ["Event"]
      208 GETTABLEKS                       R20 R20 K66 ["Activated"]
      210 NEWCLOSURE                       R21 P0
      211 CAPTURE                          VAL R0
      212 CAPTURE                          VAL R12
      213 SETTABLE                         R21 R19 R20
      214 SETTABLEKS                       R11 R19 K24 ["LayoutOrder"]
      216 DUPTABLE                         R20 K70 [{"UIListLayout", "Border", "Title"}]
      217 GETUPVAL                         R21 0
      218 GETTABLEKS                       R21 R21 K4 ["createElement"]
      220 LOADK                            R22 K67 ["UIListLayout"]
      221 CALL                             R21 1 1
      222 SETTABLEKS                       R21 R20 K67 ["UIListLayout"]
      224 GETUPVAL                         R21 0
      225 GETTABLEKS                       R21 R21 K4 ["createElement"]
      227 LOADK                            R22 K71 ["Frame"]
      228 DUPTABLE                         R23 K76 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["LayoutOrder"] = 1}]
      229 GETIMPORT                        R24 K27 [UDim2.new]
      231 LOADN                            R25 1
      232 LOADN                            R26 0
      233 LOADN                            R27 1
      234 LOADN                            R28 -48
      235 CALL                             R24 4 1
      236 SETTABLEKS                       R24 R23 K57 ["Size"]
      238 JUMPIFNOT                        R6 ; [+5]
      239 GETTABLEKS                       R24 R2 K77 ["thumbnailPreview"]
      241 GETTABLEKS                       R24 R24 K78 ["background"]
      243 JUMP                             ; [+3]
      244 GETUPVAL                         R24 6
      245 GETTABLEKS                       R24 R24 K79 ["WHITE"]
      247 SETTABLEKS                       R24 R23 K73 ["BackgroundColor3"]
      249 JUMPIFNOT                        R15 ; [+4]
      250 GETUPVAL                         R24 6
      251 GETTABLEKS                       R24 R24 K80 ["BLUE_PRIMARY"]
      253 JUMPIF                           R24 ; [+3]
      254 GETUPVAL                         R24 6
      255 GETTABLEKS                       R24 R24 K81 ["GRAY_3"]
      257 SETTABLEKS                       R24 R23 K75 ["BorderColor3"]
      259 DUPTABLE                         R24 K85 [{"ThumbNail", "CheckedIcon", "Tooltip"}]
      260 JUMPIFNOT                        R6 ; [+6]
      261 GETUPVAL                         R25 0
      262 GETTABLEKS                       R25 R25 K4 ["createElement"]
      264 GETUPVAL                         R26 7
      265 CALL                             R25 1 1
      266 JUMP                             ; [+26]
      267 GETUPVAL                         R25 0
      268 GETTABLEKS                       R25 R25 K4 ["createElement"]
      270 LOADK                            R26 K86 ["ImageLabel"]
      271 DUPTABLE                         R27 K89 [{["Size"], ["Position"], ["BorderSizePixel"] = 1, ["BackgroundTransparency"] = 1, ["Image"]}]
      272 GETIMPORT                        R28 K27 [UDim2.new]
      274 LOADN                            R29 1
      275 LOADN                            R30 0
      276 LOADN                            R31 1
      277 LOADN                            R32 0
      278 CALL                             R28 4 1
      279 SETTABLEKS                       R28 R27 K57 ["Size"]
      281 GETIMPORT                        R28 K27 [UDim2.new]
      283 LOADN                            R29 0
      284 LOADN                            R30 0
      285 LOADN                            R31 0
      286 LOADN                            R32 0
      287 CALL                             R28 4 1
      288 SETTABLEKS                       R28 R27 K87 ["Position"]
      290 SETTABLEKS                       R14 R27 K88 ["Image"]
      292 CALL                             R25 2 1
      293 SETTABLEKS                       R25 R24 K82 ["ThumbNail"]
      295 MOVE                             R25 R15
      296 JUMPIFNOT                        R25 ; [+34]
      297 GETUPVAL                         R25 0
      298 GETTABLEKS                       R25 R25 K4 ["createElement"]
      300 LOADK                            R26 K86 ["ImageLabel"]
      301 DUPTABLE                         R27 K91 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Image"], ["ImageColor3"]}]
      302 GETIMPORT                        R28 K27 [UDim2.new]
      304 LOADN                            R29 0
      305 LOADN                            R30 4
      306 LOADN                            R31 0
      307 LOADN                            R32 4
      308 CALL                             R28 4 1
      309 SETTABLEKS                       R28 R27 K87 ["Position"]
      311 GETIMPORT                        R28 K27 [UDim2.new]
      313 LOADN                            R29 0
      314 LOADN                            R30 28
      315 LOADN                            R31 0
      316 LOADN                            R32 28
      317 CALL                             R28 4 1
      318 SETTABLEKS                       R28 R27 K57 ["Size"]
      320 GETUPVAL                         R28 8
      321 GETTABLEKS                       R28 R28 K92 ["SELECTED_CHECK"]
      323 SETTABLEKS                       R28 R27 K88 ["Image"]
      325 GETUPVAL                         R28 6
      326 GETTABLEKS                       R28 R28 K80 ["BLUE_PRIMARY"]
      328 SETTABLEKS                       R28 R27 K90 ["ImageColor3"]
      330 CALL                             R25 2 1
      331 SETTABLEKS                       R25 R24 K83 ["CheckedIcon"]
      333 GETUPVAL                         R26 0
      334 GETTABLEKS                       R26 R26 K4 ["createElement"]
      336 GETUPVAL                         R27 9
      337 DUPTABLE                         R28 K94 [{"Text"}]
      338 GETTABLEKS                       R29 R12 K47 ["Asset"]
      340 GETTABLEKS                       R29 R29 K95 ["Name"]
      342 SETTABLEKS                       R29 R28 K60 ["Text"]
      344 CALL                             R26 2 1
      345 ORK                              R25 R26 K93 []
      346 SETTABLEKS                       R25 R24 K84 ["Tooltip"]
      348 CALL                             R21 3 1
      349 SETTABLEKS                       R21 R20 K68 ["Border"]
      351 GETUPVAL                         R21 0
      352 GETTABLEKS                       R21 R21 K4 ["createElement"]
      354 LOADK                            R22 K96 ["TextLabel"]
      355 DUPTABLE                         R23 K100 [{["Size"], ["Text"], ["Font"], ["TextColor3"], ["TextSize"], ["TextTruncate"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2}]
      356 GETIMPORT                        R24 K27 [UDim2.new]
      358 LOADN                            R25 1
      359 LOADN                            R26 0
      360 LOADN                            R27 0
      361 LOADN                            R28 48
      362 CALL                             R24 4 1
      363 SETTABLEKS                       R24 R23 K57 ["Size"]
      365 GETTABLEKS                       R24 R12 K47 ["Asset"]
      367 GETTABLEKS                       R24 R24 K95 ["Name"]
      369 SETTABLEKS                       R24 R23 K60 ["Text"]
      371 GETUPVAL                         R24 4
      372 GETTABLEKS                       R24 R24 K61 ["FONT"]
      374 SETTABLEKS                       R24 R23 K62 ["Font"]
      376 GETTABLEKS                       R24 R3 K101 ["textColor"]
      378 SETTABLEKS                       R24 R23 K97 ["TextColor3"]
      380 GETUPVAL                         R24 4
      381 GETTABLEKS                       R24 R24 K63 ["FONT_SIZE_MEDIUM"]
      383 SETTABLEKS                       R24 R23 K64 ["TextSize"]
      385 GETIMPORT                        R24 K103 [Enum.TextTruncate.AtEnd]
      387 SETTABLEKS                       R24 R23 K98 ["TextTruncate"]
      389 DUPTABLE                         R24 K104 [{"Tooltip"}]
      390 GETUPVAL                         R26 0
      391 GETTABLEKS                       R26 R26 K4 ["createElement"]
      393 GETUPVAL                         R27 9
      394 DUPTABLE                         R28 K94 [{"Text"}]
      395 GETTABLEKS                       R29 R12 K47 ["Asset"]
      397 GETTABLEKS                       R29 R29 K95 ["Name"]
      399 SETTABLEKS                       R29 R28 K60 ["Text"]
      401 CALL                             R26 2 1
      402 ORK                              R25 R26 K93 []
      403 SETTABLEKS                       R25 R24 K84 ["Tooltip"]
      405 CALL                             R21 3 1
      406 SETTABLEKS                       R21 R20 K69 ["Title"]
      408 CALL                             R17 3 1
      409 SETTABLE                         R17 R4 R13
      410 FORGLOOP                         R8 2 ; [-273]
      412 RETURN                           R4 1

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
       74 GETTABLEKS                       R15 R8 K21 ["AssetConfigUtil"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K5 [require]
       79 GETTABLEKS                       R16 R0 K11 ["Src"]
       81 GETTABLEKS                       R16 R16 K22 ["Flags"]
       83 GETTABLEKS                       R16 R16 K23 ["getEngineFeatureStudioTextDocumentUploadAsset"]
       85 CALL                             R15 1 1
       86 GETIMPORT                        R16 K5 [require]
       88 GETTABLEKS                       R17 R0 K11 ["Src"]
       90 GETTABLEKS                       R17 R17 K24 ["Components"]
       92 GETTABLEKS                       R17 R17 K25 ["InfiniteScrollingFrame"]
       94 CALL                             R16 1 1
       95 GETIMPORT                        R17 K5 [require]
       97 GETTABLEKS                       R18 R0 K11 ["Src"]
       99 GETTABLEKS                       R18 R18 K24 ["Components"]
      101 GETTABLEKS                       R18 R18 K26 ["AssetConfiguration"]
      103 GETTABLEKS                       R18 R18 K27 ["TextDocumentIcon"]
      105 CALL                             R17 1 1
      106 GETTABLEKS                       R18 R4 K28 ["ContextServices"]
      108 GETTABLEKS                       R19 R18 K29 ["withContext"]
      110 GETTABLEKS                       R20 R2 K30 ["PureComponent"]
      112 LOADK                            R22 K31 ["OverrideAssetView"]
      113 NAMECALL                         R20 R20 K32 ["extend"]
      115 CALL                             R20 2 1
      116 DUPCLOSURE                       R21 K33 [PROTO_4]
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R13
      119 SETTABLEKS                       R21 R20 K34 ["init"]
      121 DUPCLOSURE                       R21 K35 [PROTO_6]
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R5
      132 SETTABLEKS                       R21 R20 K36 ["createAssets"]
      134 DUPCLOSURE                       R21 K37 [PROTO_7]
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R16
      137 SETTABLEKS                       R21 R20 K38 ["render"]
      139 DUPCLOSURE                       R21 K39 [PROTO_9]
      140 CAPTURE                          VAL R7
      141 MOVE                             R22 R19
      142 DUPTABLE                         R23 K41 [{"Stylizer"}]
      143 GETTABLEKS                       R24 R18 K40 ["Stylizer"]
      145 SETTABLEKS                       R24 R23 K40 ["Stylizer"]
      147 CALL                             R22 1 1
      148 MOVE                             R23 R20
      149 CALL                             R22 1 1
      150 MOVE                             R20 R22
      151 GETTABLEKS                       R22 R3 K42 ["connect"]
      153 LOADNIL                          R23
      154 MOVE                             R24 R21
      155 CALL                             R22 2 1
      156 MOVE                             R23 R20
      157 CALL                             R22 1 -1
      158 RETURN                           R22 -1
