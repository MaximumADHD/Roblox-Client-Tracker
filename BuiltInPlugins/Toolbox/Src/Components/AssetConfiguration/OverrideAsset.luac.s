PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"filterID"}]
        2 SETTABLEKS                       R0 R3 K0 ["filterID"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dropdownContent"]
        3 GETTABLE                         R1 R2 R0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["props"]
        7 GETTABLEKS                       R2 R2 K2 ["updateStore"]
        9 DUPTABLE                         R3 K9 [{["fetchedAll"] = False, ["loadingPage"] = 0, ["overrideCursor"] = ""}]
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["props"]
       14 GETTABLEKS                       R2 R2 K10 ["getOverrideAssets"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K1 ["props"]
       19 GETTABLEKS                       R3 R3 K11 ["Network"]
       21 GETTABLEKS                       R3 R3 K12 ["networkInterface"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K1 ["props"]
       26 GETTABLEKS                       R4 R4 K13 ["assetTypeEnum"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K1 ["props"]
       31 GETTABLEKS                       R5 R5 K14 ["assetSubType"]
       33 GETTABLEKS                       R6 R1 K15 ["creatorType"]
       35 GETTABLEKS                       R7 R1 K16 ["creatorId"]
       37 LOADN                            R8 1
       38 CALL                             R2 6 0
       39 GETUPVAL                         R2 0
       40 DUPTABLE                         R4 K19 [{"selectIndex", "selectItem"}]
       41 SETTABLEKS                       R0 R4 K17 ["selectIndex"]
       43 SETTABLEKS                       R1 R4 K18 ["selectItem"]
       45 NAMECALL                         R2 R2 K20 ["setState"]
       47 CALL                             R2 2 0
       48 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["selectItem"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["props"]
        8 GETTABLEKS                       R2 R2 K3 ["getOverrideAssets"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["props"]
       13 GETTABLEKS                       R3 R3 K4 ["Network"]
       15 GETTABLEKS                       R3 R3 K5 ["networkInterface"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K2 ["props"]
       20 GETTABLEKS                       R4 R4 K6 ["assetTypeEnum"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K2 ["props"]
       25 GETTABLEKS                       R5 R5 K7 ["assetSubType"]
       27 GETTABLEKS                       R6 R1 K8 ["creatorType"]
       29 GETTABLEKS                       R7 R1 K9 ["creatorId"]
       31 MOVE                             R8 R0
       32 CALL                             R2 6 0
       33 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R2 0 1
        2 DUPTABLE                         R3 K5 [{[1] = "Me", ["creatorType"] = "User", ["creatorId"]}]
        3 GETUPVAL                         R4 0
        4 CALL                             R4 0 1
        5 SETTABLEKS                       R4 R3 K4 ["creatorId"]
        7 SETLIST                          R2 R3 1 [1]
        9 SETTABLEKS                       R2 R0 K6 ["dropdownContent"]
       11 LOADB                            R2 0
       12 SETTABLEKS                       R2 R0 K7 ["groupAdded"]
       14 DUPTABLE                         R2 K13 [{["selectIndex"] = 1, ["selectItem"], ["filterID"] = ""}]
       15 GETTABLEKS                       R4 R0 K6 ["dropdownContent"]
       17 GETTABLEN                        R3 R4 1
       18 SETTABLEKS                       R3 R2 K10 ["selectItem"]
       20 SETTABLEKS                       R2 R0 K14 ["state"]
       22 NEWCLOSURE                       R2 P0
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R0 K15 ["onFilterIDChanged"]
       26 NEWCLOSURE                       R2 P1
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R2 R0 K16 ["onDropDownSelect"]
       30 NEWCLOSURE                       R2 P2
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R2 R0 K17 ["getOverrideAssetsFunc"]
       34 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["dropdownContent"]
        2 GETTABLEN                        R1 R2 1
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R2 K2 ["getOverrideAssets"]
        7 GETTABLEKS                       R3 R0 K1 ["props"]
        9 GETTABLEKS                       R3 R3 K3 ["Network"]
       11 GETTABLEKS                       R3 R3 K4 ["networkInterface"]
       13 GETTABLEKS                       R4 R0 K1 ["props"]
       15 GETTABLEKS                       R4 R4 K5 ["assetTypeEnum"]
       17 GETTABLEKS                       R5 R0 K1 ["props"]
       19 GETTABLEKS                       R5 R5 K6 ["assetSubType"]
       21 GETTABLEKS                       R6 R1 K7 ["creatorType"]
       23 GETTABLEKS                       R7 R1 K8 ["creatorId"]
       25 LOADN                            R8 1
       26 CALL                             R2 6 0
       27 GETTABLEKS                       R2 R0 K1 ["props"]
       29 GETTABLEKS                       R2 R2 K9 ["getManageableGroups"]
       31 GETTABLEKS                       R3 R0 K1 ["props"]
       33 GETTABLEKS                       R3 R3 K3 ["Network"]
       35 GETTABLEKS                       R3 R3 K4 ["networkInterface"]
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R3 K3 ["assetConfig"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["Size"]
       12 GETTABLEKS                       R7 R1 K6 ["assetTypeEnum"]
       14 GETTABLEKS                       R8 R1 K7 ["instances"]
       16 GETTABLEKS                       R9 R1 K8 ["onOverrideAssetSelected"]
       18 GETTABLEKS                       R10 R1 K9 ["resultsArray"]
       20 GETTABLEKS                       R11 R2 K10 ["selectIndex"]
       22 GETUPVAL                         R12 0
       23 GETTABLEKS                       R12 R12 K11 ["getOwnerDropDownContent"]
       25 GETTABLEKS                       R13 R1 K12 ["manageableGroups"]
       27 GETTABLEKS                       R14 R1 K13 ["Localization"]
       29 CALL                             R12 2 1
       30 SETTABLEKS                       R12 R0 K14 ["dropdownContent"]
       32 GETIMPORT                        R13 K18 [Enum.AssetType.Animation]
       34 JUMPIFEQ                         R7 R13 ; [+2]
       36 LOADB                            R12 0 +1
       37 LOADB                            R12 1
       38 MOVE                             R13 R12
       39 JUMPIFNOT                        R13 ; [+11]
       40 GETUPVAL                         R14 1
       41 GETTABLEKS                       R14 R14 K19 ["FLOW_TYPE"]
       43 GETTABLEKS                       R14 R14 K20 ["DOWNLOAD_FLOW"]
       45 GETTABLEKS                       R15 R1 K21 ["screenFlowType"]
       47 JUMPIFEQ                         R14 R15 ; [+2]
       49 LOADB                            R13 0 +1
       50 LOADB                            R13 1
       51 GETTABLEKS                       R14 R2 K22 ["filterID"]
       53 LOADB                            R15 0
       54 JUMPIFNOT                        R14 ; [+9]
       55 GETIMPORT                        R16 K25 [utf8.len]
       57 MOVE                             R17 R14
       58 CALL                             R16 1 1
       59 LOADN                            R17 10
       60 JUMPIFLT                         R17 R16 ; [+2]
       62 LOADB                            R15 0 +1
       63 LOADB                            R15 1
       64 GETUPVAL                         R16 2
       65 GETTABLEKS                       R16 R16 K26 ["createElement"]
       67 LOADK                            R17 K27 ["Frame"]
       68 DUPTABLE                         R18 K32 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
       69 SETTABLEKS                       R6 R18 K5 ["Size"]
       71 SETTABLEKS                       R5 R18 K4 ["LayoutOrder"]
       73 DUPTABLE                         R19 K39 [{"UIPadding", "UIListLayout", "Title", "DropdownAndAnimationIdContainer", "DropdownMenu", "ScrollingItems"}]
       74 GETUPVAL                         R20 2
       75 GETTABLEKS                       R20 R20 K26 ["createElement"]
       77 LOADK                            R21 K33 ["UIPadding"]
       78 DUPTABLE                         R22 K44 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
       79 GETIMPORT                        R23 K47 [UDim.new]
       81 LOADN                            R24 0
       82 LOADN                            R25 46
       83 CALL                             R23 2 1
       84 SETTABLEKS                       R23 R22 K40 ["PaddingBottom"]
       86 GETIMPORT                        R23 K47 [UDim.new]
       88 LOADN                            R24 0
       89 LOADN                            R25 24
       90 CALL                             R23 2 1
       91 SETTABLEKS                       R23 R22 K41 ["PaddingLeft"]
       93 GETIMPORT                        R23 K47 [UDim.new]
       95 LOADN                            R24 0
       96 LOADN                            R25 24
       97 CALL                             R23 2 1
       98 SETTABLEKS                       R23 R22 K42 ["PaddingRight"]
      100 GETIMPORT                        R23 K47 [UDim.new]
      102 LOADN                            R24 0
      103 LOADN                            R25 46
      104 CALL                             R23 2 1
      105 SETTABLEKS                       R23 R22 K43 ["PaddingTop"]
      107 CALL                             R20 2 1
      108 SETTABLEKS                       R20 R19 K33 ["UIPadding"]
      110 GETUPVAL                         R20 2
      111 GETTABLEKS                       R20 R20 K26 ["createElement"]
      113 LOADK                            R21 K34 ["UIListLayout"]
      114 DUPTABLE                         R22 K53 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      115 GETIMPORT                        R23 K55 [Enum.FillDirection.Vertical]
      117 SETTABLEKS                       R23 R22 K48 ["FillDirection"]
      119 GETIMPORT                        R23 K57 [Enum.HorizontalAlignment.Left]
      121 SETTABLEKS                       R23 R22 K49 ["HorizontalAlignment"]
      123 GETIMPORT                        R23 K59 [Enum.VerticalAlignment.Top]
      125 SETTABLEKS                       R23 R22 K50 ["VerticalAlignment"]
      127 GETIMPORT                        R23 K60 [Enum.SortOrder.LayoutOrder]
      129 SETTABLEKS                       R23 R22 K51 ["SortOrder"]
      131 GETIMPORT                        R23 K47 [UDim.new]
      133 LOADN                            R24 0
      134 LOADN                            R25 20
      135 CALL                             R23 2 1
      136 SETTABLEKS                       R23 R22 K52 ["Padding"]
      138 CALL                             R20 2 1
      139 SETTABLEKS                       R20 R19 K34 ["UIListLayout"]
      141 GETUPVAL                         R20 2
      142 GETTABLEKS                       R20 R20 K26 ["createElement"]
      144 LOADK                            R21 K61 ["TextLabel"]
      145 DUPTABLE                         R22 K68 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["LayoutOrder"] = 1}]
      146 GETIMPORT                        R23 K70 [UDim2.new]
      148 LOADN                            R24 1
      149 LOADN                            R25 0
      150 LOADN                            R26 0
      151 LOADN                            R27 30
      152 CALL                             R23 4 1
      153 SETTABLEKS                       R23 R22 K5 ["Size"]
      155 JUMPIFNOT                        R13 ; [+8]
      156 GETTABLEKS                       R23 R1 K13 ["Localization"]
      158 LOADK                            R25 K71 ["AssetConfigFooter"]
      159 LOADK                            R26 K72 ["ImportTitle"]
      160 NAMECALL                         R23 R23 K73 ["getText"]
      162 CALL                             R23 3 1
      163 JUMP                             ; [+7]
      164 GETTABLEKS                       R23 R1 K13 ["Localization"]
      166 LOADK                            R25 K71 ["AssetConfigFooter"]
      167 LOADK                            R26 K74 ["OverrideTitle"]
      168 NAMECALL                         R23 R23 K73 ["getText"]
      170 CALL                             R23 3 1
      171 SETTABLEKS                       R23 R22 K62 ["Text"]
      173 GETUPVAL                         R23 3
      174 GETTABLEKS                       R23 R23 K75 ["FONT"]
      176 SETTABLEKS                       R23 R22 K63 ["Font"]
      178 GETUPVAL                         R23 3
      179 GETTABLEKS                       R23 R23 K76 ["FONT_SIZE_LARGE"]
      181 SETTABLEKS                       R23 R22 K64 ["TextSize"]
      183 GETTABLEKS                       R23 R4 K77 ["textColor"]
      185 SETTABLEKS                       R23 R22 K65 ["TextColor3"]
      187 GETIMPORT                        R23 K78 [Enum.TextXAlignment.Left]
      189 SETTABLEKS                       R23 R22 K66 ["TextXAlignment"]
      191 GETIMPORT                        R23 K80 [Enum.TextYAlignment.Center]
      193 SETTABLEKS                       R23 R22 K67 ["TextYAlignment"]
      195 CALL                             R20 2 1
      196 SETTABLEKS                       R20 R19 K35 ["Title"]
      198 MOVE                             R20 R12
      199 JUMPIFNOT                        R20 ; [+135]
      200 GETUPVAL                         R20 2
      201 GETTABLEKS                       R20 R20 K26 ["createElement"]
      203 LOADK                            R21 K27 ["Frame"]
      204 DUPTABLE                         R22 K82 [{["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["Size"]}]
      205 GETIMPORT                        R23 K70 [UDim2.new]
      207 LOADN                            R24 1
      208 LOADN                            R25 -20
      209 LOADN                            R26 0
      210 LOADN                            R27 40
      211 CALL                             R23 4 1
      212 SETTABLEKS                       R23 R22 K5 ["Size"]
      214 DUPTABLE                         R23 K84 [{"UIListLayout", "DropdownMenu", "AnimationIdFilter"}]
      215 GETUPVAL                         R24 2
      216 GETTABLEKS                       R24 R24 K26 ["createElement"]
      218 LOADK                            R25 K34 ["UIListLayout"]
      219 DUPTABLE                         R26 K53 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      220 GETIMPORT                        R27 K86 [Enum.FillDirection.Horizontal]
      222 SETTABLEKS                       R27 R26 K48 ["FillDirection"]
      224 GETIMPORT                        R27 K57 [Enum.HorizontalAlignment.Left]
      226 SETTABLEKS                       R27 R26 K49 ["HorizontalAlignment"]
      228 GETIMPORT                        R27 K59 [Enum.VerticalAlignment.Top]
      230 SETTABLEKS                       R27 R26 K50 ["VerticalAlignment"]
      232 GETIMPORT                        R27 K60 [Enum.SortOrder.LayoutOrder]
      234 SETTABLEKS                       R27 R26 K51 ["SortOrder"]
      236 GETIMPORT                        R27 K47 [UDim.new]
      238 LOADN                            R28 0
      239 LOADN                            R29 20
      240 CALL                             R27 2 1
      241 SETTABLEKS                       R27 R26 K52 ["Padding"]
      243 CALL                             R24 2 1
      244 SETTABLEKS                       R24 R23 K34 ["UIListLayout"]
      246 GETUPVAL                         R24 2
      247 GETTABLEKS                       R24 R24 K26 ["createElement"]
      249 GETUPVAL                         R25 4
      250 DUPTABLE                         R26 K92 [{["Size"], ["selectedDropDownIndex"], ["rowHeight"] = 40, ["items"], ["onItemClicked"], ["LayoutOrder"] = 1}]
      251 GETIMPORT                        R27 K70 [UDim2.new]
      253 LOADN                            R28 0
      254 LOADN                            R29 336
      255 LOADN                            R30 0
      256 LOADN                            R31 40
      257 CALL                             R27 4 1
      258 SETTABLEKS                       R27 R26 K5 ["Size"]
      260 SETTABLEKS                       R11 R26 K87 ["selectedDropDownIndex"]
      262 GETTABLEKS                       R27 R0 K14 ["dropdownContent"]
      264 SETTABLEKS                       R27 R26 K90 ["items"]
      266 GETTABLEKS                       R27 R0 K93 ["onDropDownSelect"]
      268 SETTABLEKS                       R27 R26 K91 ["onItemClicked"]
      270 CALL                             R24 2 1
      271 SETTABLEKS                       R24 R23 K37 ["DropdownMenu"]
      273 NOT                              R24 R13
      274 JUMPIFNOT                        R24 ; [+57]
      275 GETUPVAL                         R24 2
      276 GETTABLEKS                       R24 R24 K26 ["createElement"]
      278 LOADK                            R25 K27 ["Frame"]
      279 DUPTABLE                         R26 K94 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 2}]
      280 GETIMPORT                        R27 K70 [UDim2.new]
      282 LOADN                            R28 1
      283 LOADN                            R29 -336
      284 LOADN                            R30 0
      285 LOADN                            R31 90
      286 CALL                             R27 4 1
      287 SETTABLEKS                       R27 R26 K5 ["Size"]
      289 DUPTABLE                         R27 K96 [{"TextField"}]
      290 GETUPVAL                         R28 2
      291 GETTABLEKS                       R28 R28 K26 ["createElement"]
      293 GETUPVAL                         R29 5
      294 DUPTABLE                         R30 K100 [{"OnTextChanged", "PlaceholderText", "Size", "Style", "Text"}]
      295 GETTABLEKS                       R31 R0 K101 ["onFilterIDChanged"]
      297 SETTABLEKS                       R31 R30 K97 ["OnTextChanged"]
      299 GETTABLEKS                       R31 R1 K13 ["Localization"]
      301 LOADK                            R33 K102 ["AssetConfigAnimation"]
      302 LOADK                            R34 K103 ["FilterID"]
      303 NAMECALL                         R31 R31 K73 ["getText"]
      305 CALL                             R31 3 1
      306 SETTABLEKS                       R31 R30 K98 ["PlaceholderText"]
      308 GETIMPORT                        R31 K70 [UDim2.new]
      310 LOADN                            R32 1
      311 GETUPVAL                         R34 1
      312 GETTABLEKS                       R34 R34 K104 ["TITLE_GUTTER_WIDTH"]
      314 MINUS                            R33 R34
      315 LOADN                            R34 0
      316 LOADN                            R35 40
      317 CALL                             R31 4 1
      318 SETTABLEKS                       R31 R30 K5 ["Size"]
      320 JUMPIFNOT                        R15 ; [+2]
      321 LOADK                            R31 K105 ["FilledRoundedRedBorder"]
      322 JUMP                             ; [+1]
      323 LOADK                            R31 K106 ["FilledRoundedBorder"]
      324 SETTABLEKS                       R31 R30 K99 ["Style"]
      326 SETTABLEKS                       R14 R30 K62 ["Text"]
      328 CALL                             R28 2 1
      329 SETTABLEKS                       R28 R27 K95 ["TextField"]
      331 CALL                             R24 3 1
      332 SETTABLEKS                       R24 R23 K83 ["AnimationIdFilter"]
      334 CALL                             R20 3 1
      335 SETTABLEKS                       R20 R19 K36 ["DropdownAndAnimationIdContainer"]
      337 NOT                              R20 R12
      338 JUMPIFNOT                        R20 ; [+25]
      339 GETUPVAL                         R20 2
      340 GETTABLEKS                       R20 R20 K26 ["createElement"]
      342 GETUPVAL                         R21 4
      343 DUPTABLE                         R22 K107 [{["Size"], ["selectedDropDownIndex"], ["rowHeight"] = 40, ["items"], ["onItemClicked"], ["LayoutOrder"] = 2}]
      344 GETIMPORT                        R23 K70 [UDim2.new]
      346 LOADN                            R24 0
      347 LOADN                            R25 336
      348 LOADN                            R26 0
      349 LOADN                            R27 40
      350 CALL                             R23 4 1
      351 SETTABLEKS                       R23 R22 K5 ["Size"]
      353 SETTABLEKS                       R11 R22 K87 ["selectedDropDownIndex"]
      355 GETTABLEKS                       R23 R0 K14 ["dropdownContent"]
      357 SETTABLEKS                       R23 R22 K90 ["items"]
      359 GETTABLEKS                       R23 R0 K93 ["onDropDownSelect"]
      361 SETTABLEKS                       R23 R22 K91 ["onItemClicked"]
      363 CALL                             R20 2 1
      364 SETTABLEKS                       R20 R19 K37 ["DropdownMenu"]
      366 GETUPVAL                         R21 6
      367 CALL                             R21 0 1
      368 JUMPIFNOT                        R21 ; [+45]
      369 GETTABLEKS                       R21 R1 K108 ["loadingPage"]
      371 JUMPIFNOTEQKN                    R21 K29 [1] ; [+42]
      373 GETUPVAL                         R20 2
      374 GETTABLEKS                       R20 R20 K26 ["createElement"]
      376 LOADK                            R21 K27 ["Frame"]
      377 DUPTABLE                         R22 K110 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 3}]
      378 GETIMPORT                        R23 K70 [UDim2.new]
      380 LOADN                            R24 1
      381 LOADN                            R25 0
      382 LOADN                            R26 1
      383 LOADN                            R27 -70
      384 CALL                             R23 4 1
      385 SETTABLEKS                       R23 R22 K5 ["Size"]
      387 DUPTABLE                         R23 K112 [{"LoadingIndicator"}]
      388 GETUPVAL                         R24 7
      389 GETTABLEKS                       R24 R24 K26 ["createElement"]
      391 GETUPVAL                         R25 8
      392 GETTABLEKS                       R25 R25 K113 ["Loading"]
      394 DUPTABLE                         R26 K116 [{"AnchorPoint", "Position"}]
      395 GETIMPORT                        R27 K118 [Vector2.new]
      397 LOADK                            R28 K119 [0.5]
      398 LOADK                            R29 K119 [0.5]
      399 CALL                             R27 2 1
      400 SETTABLEKS                       R27 R26 K114 ["AnchorPoint"]
      402 GETIMPORT                        R27 K121 [UDim2.fromScale]
      404 LOADK                            R28 K119 [0.5]
      405 LOADK                            R29 K119 [0.5]
      406 CALL                             R27 2 1
      407 SETTABLEKS                       R27 R26 K115 ["Position"]
      409 CALL                             R24 2 1
      410 SETTABLEKS                       R24 R23 K111 ["LoadingIndicator"]
      412 CALL                             R20 3 1
      413 JUMP                             ; [+31]
      414 GETUPVAL                         R20 2
      415 GETTABLEKS                       R20 R20 K26 ["createElement"]
      417 GETUPVAL                         R21 9
      418 DUPTABLE                         R22 K123 [{["Size"], ["assetTypeEnum"], ["instances"], ["resultsArray"], ["onOverrideAssetSelected"], ["getOverrideAssets"], ["filterID"], ["LayoutOrder"] = 3}]
      419 GETIMPORT                        R23 K70 [UDim2.new]
      421 LOADN                            R24 1
      422 LOADN                            R25 0
      423 LOADN                            R26 1
      424 LOADN                            R27 -70
      425 CALL                             R23 4 1
      426 SETTABLEKS                       R23 R22 K5 ["Size"]
      428 SETTABLEKS                       R7 R22 K6 ["assetTypeEnum"]
      430 SETTABLEKS                       R8 R22 K7 ["instances"]
      432 SETTABLEKS                       R10 R22 K9 ["resultsArray"]
      434 SETTABLEKS                       R9 R22 K8 ["onOverrideAssetSelected"]
      436 GETTABLEKS                       R23 R0 K124 ["getOverrideAssetsFunc"]
      438 SETTABLEKS                       R23 R22 K122 ["getOverrideAssets"]
      440 GETTABLEKS                       R23 R2 K22 ["filterID"]
      442 SETTABLEKS                       R23 R22 K22 ["filterID"]
      444 CALL                             R20 2 1
      445 SETTABLEKS                       R20 R19 K38 ["ScrollingItems"]
      447 CALL                             R16 3 -1
      448 RETURN                           R16 -1

PROTO_6:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K6 [{"totalResults", "resultsArray", "manageableGroups", "assetTypeEnum", "assetSubType", "loadingPage"}]
        6 GETTABLEKS                       R3 R0 K0 ["totalResults"]
        8 SETTABLEKS                       R3 R2 K0 ["totalResults"]
       10 GETTABLEKS                       R3 R0 K1 ["resultsArray"]
       12 SETTABLEKS                       R3 R2 K1 ["resultsArray"]
       14 GETTABLEKS                       R3 R0 K2 ["manageableGroups"]
       16 JUMPIF                           R3 ; [+2]
       17 NEWTABLE                         R3 0 0
       19 SETTABLEKS                       R3 R2 K2 ["manageableGroups"]
       21 GETTABLEKS                       R3 R0 K3 ["assetTypeEnum"]
       23 SETTABLEKS                       R3 R2 K3 ["assetTypeEnum"]
       25 GETTABLEKS                       R3 R0 K4 ["assetSubType"]
       27 SETTABLEKS                       R3 R2 K4 ["assetSubType"]
       29 GETUPVAL                         R4 0
       30 CALL                             R4 0 1
       31 JUMPIFNOT                        R4 ; [+4]
       32 GETTABLEKS                       R4 R0 K5 ["loadingPage"]
       34 ORK                              R3 R4 K7 [0]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R3
       37 SETTABLEKS                       R3 R2 K5 ["loadingPage"]
       39 GETTABLEKS                       R3 R0 K8 ["screenFlowType"]
       41 SETTABLEKS                       R3 R2 K8 ["screenFlowType"]
       43 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R6 0
        1 GETUPVAL                         R7 1
        2 MOVE                             R8 R0
        3 MOVE                             R9 R1
        4 MOVE                             R10 R2
        5 MOVE                             R11 R3
        6 MOVE                             R12 R4
        7 MOVE                             R13 R5
        8 CALL                             R7 6 -1
        9 CALL                             R6 -1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K3 [{"getOverrideAssets", "getManageableGroups", "updateStore"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getOverrideAssets"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["getManageableGroups"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["updateStore"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["React"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Roact"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["RoactRodux"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R1 K9 ["Foundation"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R0 K10 ["Src"]
       35 GETTABLEKS                       R6 R6 K11 ["Components"]
       37 GETTABLEKS                       R6 R6 K12 ["AssetConfiguration"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R6 K13 ["OverrideAssetView"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K5 [require]
       46 GETTABLEKS                       R9 R0 K10 ["Src"]
       48 GETTABLEKS                       R9 R9 K11 ["Components"]
       50 GETTABLEKS                       R9 R9 K14 ["DropdownMenu"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R9 R0 K10 ["Src"]
       55 GETTABLEKS                       R9 R9 K15 ["Util"]
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R9 K16 ["Constants"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETTABLEKS                       R12 R9 K17 ["AssetConfigUtil"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R13 R9 K18 ["getUserId"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K5 [require]
       74 GETTABLEKS                       R14 R9 K19 ["AssetConfigConstants"]
       76 CALL                             R13 1 1
       77 GETIMPORT                        R14 K5 [require]
       79 GETTABLEKS                       R15 R1 K20 ["Framework"]
       81 CALL                             R14 1 1
       82 GETTABLEKS                       R15 R14 K21 ["UI"]
       84 GETTABLEKS                       R16 R15 K22 ["DEPRECATED_TextInput"]
       86 GETTABLEKS                       R17 R14 K23 ["ContextServices"]
       88 GETTABLEKS                       R18 R17 K24 ["withContext"]
       90 GETIMPORT                        R19 K5 [require]
       92 GETTABLEKS                       R20 R0 K10 ["Src"]
       94 GETTABLEKS                       R20 R20 K23 ["ContextServices"]
       96 GETTABLEKS                       R20 R20 K25 ["NetworkContext"]
       98 CALL                             R19 1 1
       99 GETTABLEKS                       R20 R0 K10 ["Src"]
      101 GETTABLEKS                       R20 R20 K26 ["Networking"]
      103 GETTABLEKS                       R20 R20 K27 ["Requests"]
      105 GETIMPORT                        R21 K5 [require]
      107 GETTABLEKS                       R22 R20 K28 ["GetOverrideAssetRequest"]
      109 CALL                             R21 1 1
      110 GETIMPORT                        R22 K5 [require]
      112 GETTABLEKS                       R23 R20 K29 ["GetAssetConfigManageableGroupsRequest"]
      114 CALL                             R22 1 1
      115 GETIMPORT                        R23 K5 [require]
      117 GETTABLEKS                       R24 R0 K10 ["Src"]
      119 GETTABLEKS                       R24 R24 K30 ["Actions"]
      121 GETTABLEKS                       R24 R24 K31 ["UpdateAssetConfigStore"]
      123 CALL                             R23 1 1
      124 GETIMPORT                        R24 K5 [require]
      126 GETTABLEKS                       R25 R0 K10 ["Src"]
      128 GETTABLEKS                       R25 R25 K32 ["Flags"]
      130 GETTABLEKS                       R25 R25 K33 ["getEngineFeatureToolboxPassThroughAssetType"]
      132 CALL                             R24 1 1
      133 GETTABLEKS                       R25 R3 K34 ["PureComponent"]
      135 LOADK                            R27 K35 ["OverrideAsset"]
      136 NAMECALL                         R25 R25 K36 ["extend"]
      138 CALL                             R25 2 1
      139 DUPCLOSURE                       R26 K37 [PROTO_3]
      140 CAPTURE                          VAL R12
      141 SETTABLEKS                       R26 R25 K38 ["init"]
      143 DUPCLOSURE                       R26 K39 [PROTO_4]
      144 SETTABLEKS                       R26 R25 K40 ["didMount"]
      146 DUPCLOSURE                       R26 K41 [PROTO_5]
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R24
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R7
      157 SETTABLEKS                       R26 R25 K42 ["render"]
      159 DUPCLOSURE                       R26 K43 [PROTO_6]
      160 CAPTURE                          VAL R24
      161 DUPCLOSURE                       R27 K44 [PROTO_10]
      162 CAPTURE                          VAL R21
      163 CAPTURE                          VAL R22
      164 CAPTURE                          VAL R23
      165 MOVE                             R28 R18
      166 DUPTABLE                         R29 K48 [{"Stylizer", "Localization", "Network"}]
      167 GETTABLEKS                       R30 R17 K45 ["Stylizer"]
      169 SETTABLEKS                       R30 R29 K45 ["Stylizer"]
      171 GETTABLEKS                       R30 R17 K46 ["Localization"]
      173 SETTABLEKS                       R30 R29 K46 ["Localization"]
      175 SETTABLEKS                       R19 R29 K47 ["Network"]
      177 CALL                             R28 1 1
      178 MOVE                             R29 R25
      179 CALL                             R28 1 1
      180 MOVE                             R25 R28
      181 GETTABLEKS                       R28 R4 K49 ["connect"]
      183 MOVE                             R29 R26
      184 MOVE                             R30 R27
      185 CALL                             R28 2 1
      186 MOVE                             R29 R25
      187 CALL                             R28 1 -1
      188 RETURN                           R28 -1
