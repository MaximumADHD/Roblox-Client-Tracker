PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"filterID"}]
        2 SETTABLEKS                       R0 R3 K0 ["filterID"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["dropdownContent"]
        3 GETTABLE                         R1 R2 R0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["props"]
        7 GETTABLEKS                       R2 R3 K2 ["updateStore"]
        9 DUPTABLE                         R3 K6 [{"fetchedAll", "loadingPage", "overrideCursor"}]
       10 LOADB                            R4 0
       11 SETTABLEKS                       R4 R3 K3 ["fetchedAll"]
       13 LOADN                            R4 0
       14 SETTABLEKS                       R4 R3 K4 ["loadingPage"]
       16 LOADK                            R4 K7 [""]
       17 SETTABLEKS                       R4 R3 K5 ["overrideCursor"]
       19 CALL                             R2 1 0
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K1 ["props"]
       23 GETTABLEKS                       R2 R3 K8 ["getOverrideAssets"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K1 ["props"]
       28 GETTABLEKS                       R4 R5 K9 ["Network"]
       30 GETTABLEKS                       R3 R4 K10 ["networkInterface"]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R5 R6 K1 ["props"]
       35 GETTABLEKS                       R4 R5 K11 ["assetTypeEnum"]
       37 GETTABLEKS                       R5 R1 K12 ["creatorType"]
       39 GETTABLEKS                       R6 R1 K13 ["creatorId"]
       41 LOADN                            R7 1
       42 CALL                             R2 5 0
       43 GETUPVAL                         R2 0
       44 DUPTABLE                         R4 K16 [{"selectIndex", "selectItem"}]
       45 SETTABLEKS                       R0 R4 K14 ["selectIndex"]
       47 SETTABLEKS                       R1 R4 K15 ["selectItem"]
       49 NAMECALL                         R2 R2 K17 ["setState"]
       51 CALL                             R2 2 0
       52 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETTABLEKS                       R1 R2 K1 ["selectItem"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["props"]
        8 GETTABLEKS                       R2 R3 K3 ["getOverrideAssets"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K2 ["props"]
       13 GETTABLEKS                       R4 R5 K4 ["Network"]
       15 GETTABLEKS                       R3 R4 K5 ["networkInterface"]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K2 ["props"]
       20 GETTABLEKS                       R4 R5 K6 ["assetTypeEnum"]
       22 GETTABLEKS                       R5 R1 K7 ["creatorType"]
       24 GETTABLEKS                       R6 R1 K8 ["creatorId"]
       26 MOVE                             R7 R0
       27 CALL                             R2 5 0
       28 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R2 0 1
        2 DUPTABLE                         R3 K3 [{"name", "creatorType", "creatorId"}]
        3 LOADK                            R4 K4 ["Me"]
        4 SETTABLEKS                       R4 R3 K0 ["name"]
        6 LOADK                            R4 K5 ["User"]
        7 SETTABLEKS                       R4 R3 K1 ["creatorType"]
        9 GETUPVAL                         R4 0
       10 CALL                             R4 0 1
       11 SETTABLEKS                       R4 R3 K2 ["creatorId"]
       13 SETLIST                          R2 R3 1 [1]
       15 SETTABLEKS                       R2 R0 K6 ["dropdownContent"]
       17 LOADB                            R2 0
       18 SETTABLEKS                       R2 R0 K7 ["groupAdded"]
       20 DUPTABLE                         R2 K11 [{"selectIndex", "selectItem", "filterID"}]
       21 LOADN                            R3 1
       22 SETTABLEKS                       R3 R2 K8 ["selectIndex"]
       24 GETTABLEKS                       R4 R0 K6 ["dropdownContent"]
       26 GETTABLEN                        R3 R4 1
       27 SETTABLEKS                       R3 R2 K9 ["selectItem"]
       29 LOADK                            R3 K12 [""]
       30 SETTABLEKS                       R3 R2 K10 ["filterID"]
       32 SETTABLEKS                       R2 R0 K13 ["state"]
       34 NEWCLOSURE                       R2 P0
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R2 R0 K14 ["onFilterIDChanged"]
       38 NEWCLOSURE                       R2 P1
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R2 R0 K15 ["onDropDownSelect"]
       42 NEWCLOSURE                       R2 P2
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R2 R0 K16 ["getOverrideAssetsFunc"]
       46 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["dropdownContent"]
        2 GETTABLEN                        R1 R2 1
        3 GETTABLEKS                       R3 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R3 K2 ["getOverrideAssets"]
        7 GETTABLEKS                       R5 R0 K1 ["props"]
        9 GETTABLEKS                       R4 R5 K3 ["Network"]
       11 GETTABLEKS                       R3 R4 K4 ["networkInterface"]
       13 GETTABLEKS                       R5 R0 K1 ["props"]
       15 GETTABLEKS                       R4 R5 K5 ["assetTypeEnum"]
       17 GETTABLEKS                       R5 R1 K6 ["creatorType"]
       19 GETTABLEKS                       R6 R1 K7 ["creatorId"]
       21 LOADN                            R7 1
       22 CALL                             R2 5 0
       23 GETTABLEKS                       R3 R0 K1 ["props"]
       25 GETTABLEKS                       R2 R3 K8 ["getManageableGroups"]
       27 GETTABLEKS                       R5 R0 K1 ["props"]
       29 GETTABLEKS                       R4 R5 K3 ["Network"]
       31 GETTABLEKS                       R3 R4 K4 ["networkInterface"]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

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
       22 GETUPVAL                         R13 0
       23 GETTABLEKS                       R12 R13 K11 ["getOwnerDropDownContent"]
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
       40 GETUPVAL                         R16 1
       41 GETTABLEKS                       R15 R16 K19 ["FLOW_TYPE"]
       43 GETTABLEKS                       R14 R15 K20 ["DOWNLOAD_FLOW"]
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
       64 GETUPVAL                         R17 2
       65 GETTABLEKS                       R16 R17 K26 ["createElement"]
       67 LOADK                            R17 K27 ["Frame"]
       68 DUPTABLE                         R18 K30 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
       69 SETTABLEKS                       R6 R18 K5 ["Size"]
       71 LOADN                            R19 1
       72 SETTABLEKS                       R19 R18 K28 ["BackgroundTransparency"]
       74 LOADN                            R19 0
       75 SETTABLEKS                       R19 R18 K29 ["BorderSizePixel"]
       77 SETTABLEKS                       R5 R18 K4 ["LayoutOrder"]
       79 DUPTABLE                         R19 K37 [{"UIPadding", "UIListLayout", "Title", "DropdownAndAnimationIdContainer", "DropdownMenu", "ScrollingItems"}]
       80 GETUPVAL                         R21 2
       81 GETTABLEKS                       R20 R21 K26 ["createElement"]
       83 LOADK                            R21 K31 ["UIPadding"]
       84 DUPTABLE                         R22 K42 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
       85 GETIMPORT                        R23 K45 [UDim.new]
       87 LOADN                            R24 0
       88 LOADN                            R25 46
       89 CALL                             R23 2 1
       90 SETTABLEKS                       R23 R22 K38 ["PaddingBottom"]
       92 GETIMPORT                        R23 K45 [UDim.new]
       94 LOADN                            R24 0
       95 LOADN                            R25 24
       96 CALL                             R23 2 1
       97 SETTABLEKS                       R23 R22 K39 ["PaddingLeft"]
       99 GETIMPORT                        R23 K45 [UDim.new]
      101 LOADN                            R24 0
      102 LOADN                            R25 24
      103 CALL                             R23 2 1
      104 SETTABLEKS                       R23 R22 K40 ["PaddingRight"]
      106 GETIMPORT                        R23 K45 [UDim.new]
      108 LOADN                            R24 0
      109 LOADN                            R25 46
      110 CALL                             R23 2 1
      111 SETTABLEKS                       R23 R22 K41 ["PaddingTop"]
      113 CALL                             R20 2 1
      114 SETTABLEKS                       R20 R19 K31 ["UIPadding"]
      116 GETUPVAL                         R21 2
      117 GETTABLEKS                       R20 R21 K26 ["createElement"]
      119 LOADK                            R21 K32 ["UIListLayout"]
      120 DUPTABLE                         R22 K51 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      121 GETIMPORT                        R23 K53 [Enum.FillDirection.Vertical]
      123 SETTABLEKS                       R23 R22 K46 ["FillDirection"]
      125 GETIMPORT                        R23 K55 [Enum.HorizontalAlignment.Left]
      127 SETTABLEKS                       R23 R22 K47 ["HorizontalAlignment"]
      129 GETIMPORT                        R23 K57 [Enum.VerticalAlignment.Top]
      131 SETTABLEKS                       R23 R22 K48 ["VerticalAlignment"]
      133 GETIMPORT                        R23 K58 [Enum.SortOrder.LayoutOrder]
      135 SETTABLEKS                       R23 R22 K49 ["SortOrder"]
      137 GETIMPORT                        R23 K45 [UDim.new]
      139 LOADN                            R24 0
      140 LOADN                            R25 20
      141 CALL                             R23 2 1
      142 SETTABLEKS                       R23 R22 K50 ["Padding"]
      144 CALL                             R20 2 1
      145 SETTABLEKS                       R20 R19 K32 ["UIListLayout"]
      147 GETUPVAL                         R21 2
      148 GETTABLEKS                       R20 R21 K26 ["createElement"]
      150 LOADK                            R21 K59 ["TextLabel"]
      151 DUPTABLE                         R22 K66 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "Font", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
      152 GETIMPORT                        R23 K68 [UDim2.new]
      154 LOADN                            R24 1
      155 LOADN                            R25 0
      156 LOADN                            R26 0
      157 LOADN                            R27 30
      158 CALL                             R23 4 1
      159 SETTABLEKS                       R23 R22 K5 ["Size"]
      161 LOADN                            R23 1
      162 SETTABLEKS                       R23 R22 K28 ["BackgroundTransparency"]
      164 LOADN                            R23 0
      165 SETTABLEKS                       R23 R22 K29 ["BorderSizePixel"]
      167 JUMPIFNOT                        R13 ; [+8]
      168 GETTABLEKS                       R23 R1 K13 ["Localization"]
      170 LOADK                            R25 K69 ["AssetConfigFooter"]
      171 LOADK                            R26 K70 ["ImportTitle"]
      172 NAMECALL                         R23 R23 K71 ["getText"]
      174 CALL                             R23 3 1
      175 JUMP                             ; [+7]
      176 GETTABLEKS                       R23 R1 K13 ["Localization"]
      178 LOADK                            R25 K69 ["AssetConfigFooter"]
      179 LOADK                            R26 K72 ["OverrideTitle"]
      180 NAMECALL                         R23 R23 K71 ["getText"]
      182 CALL                             R23 3 1
      183 SETTABLEKS                       R23 R22 K60 ["Text"]
      185 GETUPVAL                         R24 3
      186 GETTABLEKS                       R23 R24 K73 ["FONT"]
      188 SETTABLEKS                       R23 R22 K61 ["Font"]
      190 GETUPVAL                         R24 3
      191 GETTABLEKS                       R23 R24 K74 ["FONT_SIZE_LARGE"]
      193 SETTABLEKS                       R23 R22 K62 ["TextSize"]
      195 GETTABLEKS                       R23 R4 K75 ["textColor"]
      197 SETTABLEKS                       R23 R22 K63 ["TextColor3"]
      199 GETIMPORT                        R23 K76 [Enum.TextXAlignment.Left]
      201 SETTABLEKS                       R23 R22 K64 ["TextXAlignment"]
      203 GETIMPORT                        R23 K78 [Enum.TextYAlignment.Center]
      205 SETTABLEKS                       R23 R22 K65 ["TextYAlignment"]
      207 LOADN                            R23 1
      208 SETTABLEKS                       R23 R22 K4 ["LayoutOrder"]
      210 CALL                             R20 2 1
      211 SETTABLEKS                       R20 R19 K33 ["Title"]
      213 MOVE                             R20 R12
      214 JUMPIFNOT                        R20 ; [+156]
      215 GETUPVAL                         R21 2
      216 GETTABLEKS                       R20 R21 K26 ["createElement"]
      218 LOADK                            R21 K27 ["Frame"]
      219 DUPTABLE                         R22 K79 [{"LayoutOrder", "BackgroundTransparency", "Size"}]
      220 LOADN                            R23 2
      221 SETTABLEKS                       R23 R22 K4 ["LayoutOrder"]
      223 LOADN                            R23 1
      224 SETTABLEKS                       R23 R22 K28 ["BackgroundTransparency"]
      226 GETIMPORT                        R23 K68 [UDim2.new]
      228 LOADN                            R24 1
      229 LOADN                            R25 236
      230 LOADN                            R26 0
      231 LOADN                            R27 40
      232 CALL                             R23 4 1
      233 SETTABLEKS                       R23 R22 K5 ["Size"]
      235 DUPTABLE                         R23 K81 [{"UIListLayout", "DropdownMenu", "AnimationIdFilter"}]
      236 GETUPVAL                         R25 2
      237 GETTABLEKS                       R24 R25 K26 ["createElement"]
      239 LOADK                            R25 K32 ["UIListLayout"]
      240 DUPTABLE                         R26 K51 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      241 GETIMPORT                        R27 K83 [Enum.FillDirection.Horizontal]
      243 SETTABLEKS                       R27 R26 K46 ["FillDirection"]
      245 GETIMPORT                        R27 K55 [Enum.HorizontalAlignment.Left]
      247 SETTABLEKS                       R27 R26 K47 ["HorizontalAlignment"]
      249 GETIMPORT                        R27 K57 [Enum.VerticalAlignment.Top]
      251 SETTABLEKS                       R27 R26 K48 ["VerticalAlignment"]
      253 GETIMPORT                        R27 K58 [Enum.SortOrder.LayoutOrder]
      255 SETTABLEKS                       R27 R26 K49 ["SortOrder"]
      257 GETIMPORT                        R27 K45 [UDim.new]
      259 LOADN                            R28 0
      260 LOADN                            R29 20
      261 CALL                             R27 2 1
      262 SETTABLEKS                       R27 R26 K50 ["Padding"]
      264 CALL                             R24 2 1
      265 SETTABLEKS                       R24 R23 K32 ["UIListLayout"]
      267 GETUPVAL                         R25 2
      268 GETTABLEKS                       R24 R25 K26 ["createElement"]
      270 GETUPVAL                         R25 4
      271 DUPTABLE                         R26 K88 [{"Size", "selectedDropDownIndex", "rowHeight", "items", "onItemClicked", "LayoutOrder"}]
      272 GETIMPORT                        R27 K68 [UDim2.new]
      274 LOADN                            R28 0
      275 LOADN                            R29 80
      276 LOADN                            R30 0
      277 LOADN                            R31 40
      278 CALL                             R27 4 1
      279 SETTABLEKS                       R27 R26 K5 ["Size"]
      281 SETTABLEKS                       R11 R26 K84 ["selectedDropDownIndex"]
      283 LOADN                            R27 40
      284 SETTABLEKS                       R27 R26 K85 ["rowHeight"]
      286 GETTABLEKS                       R27 R0 K14 ["dropdownContent"]
      288 SETTABLEKS                       R27 R26 K86 ["items"]
      290 GETTABLEKS                       R27 R0 K89 ["onDropDownSelect"]
      292 SETTABLEKS                       R27 R26 K87 ["onItemClicked"]
      294 LOADN                            R27 1
      295 SETTABLEKS                       R27 R26 K4 ["LayoutOrder"]
      297 CALL                             R24 2 1
      298 SETTABLEKS                       R24 R23 K35 ["DropdownMenu"]
      300 NOT                              R24 R13
      301 JUMPIFNOT                        R24 ; [+66]
      302 GETUPVAL                         R25 2
      303 GETTABLEKS                       R24 R25 K26 ["createElement"]
      305 LOADK                            R25 K27 ["Frame"]
      306 DUPTABLE                         R26 K30 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
      307 GETIMPORT                        R27 K68 [UDim2.new]
      309 LOADN                            R28 1
      310 LOADN                            R29 176
      311 LOADN                            R30 0
      312 LOADN                            R31 90
      313 CALL                             R27 4 1
      314 SETTABLEKS                       R27 R26 K5 ["Size"]
      316 LOADN                            R27 1
      317 SETTABLEKS                       R27 R26 K28 ["BackgroundTransparency"]
      319 LOADN                            R27 0
      320 SETTABLEKS                       R27 R26 K29 ["BorderSizePixel"]
      322 LOADN                            R27 2
      323 SETTABLEKS                       R27 R26 K4 ["LayoutOrder"]
      325 DUPTABLE                         R27 K91 [{"TextField"}]
      326 GETUPVAL                         R29 2
      327 GETTABLEKS                       R28 R29 K26 ["createElement"]
      329 GETUPVAL                         R29 5
      330 DUPTABLE                         R30 K95 [{"OnTextChanged", "PlaceholderText", "Size", "Style", "Text"}]
      331 GETTABLEKS                       R31 R0 K96 ["onFilterIDChanged"]
      333 SETTABLEKS                       R31 R30 K92 ["OnTextChanged"]
      335 GETTABLEKS                       R31 R1 K13 ["Localization"]
      337 LOADK                            R33 K97 ["AssetConfigAnimation"]
      338 LOADK                            R34 K98 ["FilterID"]
      339 NAMECALL                         R31 R31 K71 ["getText"]
      341 CALL                             R31 3 1
      342 SETTABLEKS                       R31 R30 K93 ["PlaceholderText"]
      344 GETIMPORT                        R31 K68 [UDim2.new]
      346 LOADN                            R32 1
      347 GETUPVAL                         R35 1
      348 GETTABLEKS                       R34 R35 K99 ["TITLE_GUTTER_WIDTH"]
      350 MINUS                            R33 R34
      351 LOADN                            R34 0
      352 LOADN                            R35 40
      353 CALL                             R31 4 1
      354 SETTABLEKS                       R31 R30 K5 ["Size"]
      356 JUMPIFNOT                        R15 ; [+2]
      357 LOADK                            R31 K100 ["FilledRoundedRedBorder"]
      358 JUMP                             ; [+1]
      359 LOADK                            R31 K101 ["FilledRoundedBorder"]
      360 SETTABLEKS                       R31 R30 K94 ["Style"]
      362 SETTABLEKS                       R14 R30 K60 ["Text"]
      364 CALL                             R28 2 1
      365 SETTABLEKS                       R28 R27 K90 ["TextField"]
      367 CALL                             R24 3 1
      368 SETTABLEKS                       R24 R23 K80 ["AnimationIdFilter"]
      370 CALL                             R20 3 1
      371 SETTABLEKS                       R20 R19 K34 ["DropdownAndAnimationIdContainer"]
      373 NOT                              R20 R12
      374 JUMPIFNOT                        R20 ; [+31]
      375 GETUPVAL                         R21 2
      376 GETTABLEKS                       R20 R21 K26 ["createElement"]
      378 GETUPVAL                         R21 4
      379 DUPTABLE                         R22 K88 [{"Size", "selectedDropDownIndex", "rowHeight", "items", "onItemClicked", "LayoutOrder"}]
      380 GETIMPORT                        R23 K68 [UDim2.new]
      382 LOADN                            R24 0
      383 LOADN                            R25 80
      384 LOADN                            R26 0
      385 LOADN                            R27 40
      386 CALL                             R23 4 1
      387 SETTABLEKS                       R23 R22 K5 ["Size"]
      389 SETTABLEKS                       R11 R22 K84 ["selectedDropDownIndex"]
      391 LOADN                            R23 40
      392 SETTABLEKS                       R23 R22 K85 ["rowHeight"]
      394 GETTABLEKS                       R23 R0 K14 ["dropdownContent"]
      396 SETTABLEKS                       R23 R22 K86 ["items"]
      398 GETTABLEKS                       R23 R0 K89 ["onDropDownSelect"]
      400 SETTABLEKS                       R23 R22 K87 ["onItemClicked"]
      402 LOADN                            R23 2
      403 SETTABLEKS                       R23 R22 K4 ["LayoutOrder"]
      405 CALL                             R20 2 1
      406 SETTABLEKS                       R20 R19 K35 ["DropdownMenu"]
      408 GETUPVAL                         R21 2
      409 GETTABLEKS                       R20 R21 K26 ["createElement"]
      411 GETUPVAL                         R21 6
      412 DUPTABLE                         R22 K103 [{"Size", "assetTypeEnum", "instances", "resultsArray", "onOverrideAssetSelected", "getOverrideAssets", "filterID", "LayoutOrder"}]
      413 GETIMPORT                        R23 K68 [UDim2.new]
      415 LOADN                            R24 1
      416 LOADN                            R25 0
      417 LOADN                            R26 1
      418 LOADN                            R27 186
      419 CALL                             R23 4 1
      420 SETTABLEKS                       R23 R22 K5 ["Size"]
      422 SETTABLEKS                       R7 R22 K6 ["assetTypeEnum"]
      424 SETTABLEKS                       R8 R22 K7 ["instances"]
      426 SETTABLEKS                       R10 R22 K9 ["resultsArray"]
      428 SETTABLEKS                       R9 R22 K8 ["onOverrideAssetSelected"]
      430 GETTABLEKS                       R23 R0 K104 ["getOverrideAssetsFunc"]
      432 SETTABLEKS                       R23 R22 K102 ["getOverrideAssets"]
      434 GETTABLEKS                       R23 R2 K22 ["filterID"]
      436 SETTABLEKS                       R23 R22 K22 ["filterID"]
      438 LOADN                            R23 3
      439 SETTABLEKS                       R23 R22 K4 ["LayoutOrder"]
      441 CALL                             R20 2 1
      442 SETTABLEKS                       R20 R19 K36 ["ScrollingItems"]
      444 CALL                             R16 3 -1
      445 RETURN                           R16 -1

PROTO_6:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K4 [{"totalResults", "resultsArray", "manageableGroups", "assetTypeEnum"}]
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
       25 GETTABLEKS                       R3 R0 K5 ["screenFlowType"]
       27 SETTABLEKS                       R3 R2 K5 ["screenFlowType"]
       29 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 MOVE                             R10 R3
        6 MOVE                             R11 R4
        7 CALL                             R6 5 -1
        8 CALL                             R5 -1 0
        9 RETURN                           R0 0

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
       23 GETTABLEKS                       R6 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R6 K9 ["Components"]
       27 GETTABLEKS                       R4 R5 K10 ["AssetConfiguration"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R4 K11 ["OverrideAssetView"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R9 R0 K8 ["Src"]
       38 GETTABLEKS                       R8 R9 K9 ["Components"]
       40 GETTABLEKS                       R7 R8 K12 ["DropdownMenu"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K13 ["Util"]
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R7 K14 ["Constants"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R7 K15 ["AssetConfigUtil"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R7 K16 ["getUserId"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETTABLEKS                       R12 R7 K17 ["AssetConfigConstants"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R13 R1 K18 ["Framework"]
       71 CALL                             R12 1 1
       72 GETTABLEKS                       R13 R12 K19 ["UI"]
       74 GETTABLEKS                       R14 R13 K20 ["DEPRECATED_TextInput"]
       76 GETTABLEKS                       R15 R12 K21 ["ContextServices"]
       78 GETTABLEKS                       R16 R15 K22 ["withContext"]
       80 GETIMPORT                        R17 K5 [require]
       82 GETTABLEKS                       R20 R0 K8 ["Src"]
       84 GETTABLEKS                       R19 R20 K21 ["ContextServices"]
       86 GETTABLEKS                       R18 R19 K23 ["NetworkContext"]
       88 CALL                             R17 1 1
       89 GETTABLEKS                       R20 R0 K8 ["Src"]
       91 GETTABLEKS                       R19 R20 K24 ["Networking"]
       93 GETTABLEKS                       R18 R19 K25 ["Requests"]
       95 GETIMPORT                        R19 K5 [require]
       97 GETTABLEKS                       R20 R18 K26 ["GetOverrideAssetRequest"]
       99 CALL                             R19 1 1
      100 GETIMPORT                        R20 K5 [require]
      102 GETTABLEKS                       R21 R18 K27 ["GetAssetConfigManageableGroupsRequest"]
      104 CALL                             R20 1 1
      105 GETIMPORT                        R21 K5 [require]
      107 GETTABLEKS                       R24 R0 K8 ["Src"]
      109 GETTABLEKS                       R23 R24 K28 ["Actions"]
      111 GETTABLEKS                       R22 R23 K29 ["UpdateAssetConfigStore"]
      113 CALL                             R21 1 1
      114 GETTABLEKS                       R22 R2 K30 ["PureComponent"]
      116 LOADK                            R24 K31 ["OverrideAsset"]
      117 NAMECALL                         R22 R22 K32 ["extend"]
      119 CALL                             R22 2 1
      120 DUPCLOSURE                       R23 K33 [PROTO_3]
      121 CAPTURE                          VAL R10
      122 SETTABLEKS                       R23 R22 K34 ["init"]
      124 DUPCLOSURE                       R23 K35 [PROTO_4]
      125 SETTABLEKS                       R23 R22 K36 ["didMount"]
      127 DUPCLOSURE                       R23 K37 [PROTO_5]
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R5
      135 SETTABLEKS                       R23 R22 K38 ["render"]
      137 DUPCLOSURE                       R23 K39 [PROTO_6]
      138 DUPCLOSURE                       R24 K40 [PROTO_10]
      139 CAPTURE                          VAL R19
      140 CAPTURE                          VAL R20
      141 CAPTURE                          VAL R21
      142 MOVE                             R25 R16
      143 DUPTABLE                         R26 K44 [{"Stylizer", "Localization", "Network"}]
      144 GETTABLEKS                       R27 R15 K41 ["Stylizer"]
      146 SETTABLEKS                       R27 R26 K41 ["Stylizer"]
      148 GETTABLEKS                       R27 R15 K42 ["Localization"]
      150 SETTABLEKS                       R27 R26 K42 ["Localization"]
      152 SETTABLEKS                       R17 R26 K43 ["Network"]
      154 CALL                             R25 1 1
      155 MOVE                             R26 R22
      156 CALL                             R25 1 1
      157 MOVE                             R22 R25
      158 GETTABLEKS                       R25 R3 K45 ["connect"]
      160 MOVE                             R26 R23
      161 MOVE                             R27 R24
      162 CALL                             R25 2 1
      163 MOVE                             R26 R22
      164 CALL                             R25 1 -1
      165 RETURN                           R25 -1
