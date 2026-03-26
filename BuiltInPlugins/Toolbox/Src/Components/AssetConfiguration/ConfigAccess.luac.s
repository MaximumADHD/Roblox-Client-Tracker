PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["screenFlowType"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["FLOW_TYPE"]
        5 GETTABLEKS                       R4 R5 K2 ["UPLOAD_FLOW"]
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R0 K3 ["allowOwnerEdit"]
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+35]
        3 GETTABLEKS                       R2 R0 K0 ["props"]
        5 GETTABLEKS                       R1 R2 K1 ["groupBundlesUploadEnabledForUser"]
        7 JUMPIFNOT                        R1 ; [+30]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K2 ["isCatalogAsset"]
       11 GETTABLEKS                       R3 R0 K0 ["props"]
       13 GETTABLEKS                       R2 R3 K3 ["assetTypeEnum"]
       15 CALL                             R1 1 1
       16 JUMPIF                           R1 ; [+9]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K4 ["isUGCBundleType"]
       20 GETTABLEKS                       R3 R0 K0 ["props"]
       22 GETTABLEKS                       R2 R3 K3 ["assetTypeEnum"]
       24 CALL                             R1 1 1
       25 JUMPIFNOT                        R1 ; [+12]
       26 GETTABLEKS                       R2 R0 K0 ["props"]
       28 GETTABLEKS                       R1 R2 K5 ["getAllowedGroupsForUpload"]
       30 GETTABLEKS                       R4 R0 K0 ["props"]
       32 GETTABLEKS                       R3 R4 K6 ["Network"]
       34 GETTABLEKS                       R2 R3 K7 ["networkInterface"]
       36 CALL                             R1 1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R1 R2 K2 ["isCatalogAsset"]
       41 GETTABLEKS                       R3 R0 K0 ["props"]
       43 GETTABLEKS                       R2 R3 K3 ["assetTypeEnum"]
       45 CALL                             R1 1 1
       46 JUMPIFNOT                        R1 ; [+16]
       47 GETTABLEKS                       R2 R0 K0 ["props"]
       49 GETTABLEKS                       R1 R2 K8 ["getAssetTypeAgents"]
       51 GETTABLEKS                       R4 R0 K0 ["props"]
       53 GETTABLEKS                       R3 R4 K6 ["Network"]
       55 GETTABLEKS                       R2 R3 K7 ["networkInterface"]
       57 GETTABLEKS                       R4 R0 K0 ["props"]
       59 GETTABLEKS                       R3 R4 K3 ["assetTypeEnum"]
       61 CALL                             R1 2 0
       62 RETURN                           R0 0
       63 GETTABLEKS                       R2 R0 K0 ["props"]
       65 GETTABLEKS                       R1 R2 K9 ["getManageableGroups"]
       67 GETTABLEKS                       R4 R0 K0 ["props"]
       69 GETTABLEKS                       R3 R4 K6 ["Network"]
       71 GETTABLEKS                       R2 R3 K7 ["networkInterface"]
       73 CALL                             R1 1 0
       74 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["Title"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["TotalHeight"]
       12 GETTABLEKS                       R7 R1 K6 ["owner"]
       14 JUMPIF                           R7 ; [+2]
       15 NEWTABLE                         R7 0 0
       17 GETTABLEKS                       R9 R7 K8 ["typeId"]
       19 ORK                              R8 R9 K7 [1]
       20 LOADNIL                          R9
       21 GETUPVAL                         R10 0
       22 CALL                             R10 0 1
       23 JUMPIFNOT                        R10 ; [+26]
       24 GETTABLEKS                       R11 R0 K0 ["props"]
       26 GETTABLEKS                       R10 R11 K9 ["groupBundlesUploadEnabledForUser"]
       28 JUMPIFNOT                        R10 ; [+21]
       29 GETUPVAL                         R11 1
       30 GETTABLEKS                       R10 R11 K10 ["isCatalogAsset"]
       32 GETTABLEKS                       R12 R0 K0 ["props"]
       34 GETTABLEKS                       R11 R12 K11 ["assetTypeEnum"]
       36 CALL                             R10 1 1
       37 JUMPIF                           R10 ; [+9]
       38 GETUPVAL                         R11 1
       39 GETTABLEKS                       R10 R11 K12 ["isUGCBundleType"]
       41 GETTABLEKS                       R12 R0 K0 ["props"]
       43 GETTABLEKS                       R11 R12 K11 ["assetTypeEnum"]
       45 CALL                             R10 1 1
       46 JUMPIFNOT                        R10 ; [+3]
       47 GETTABLEKS                       R9 R1 K13 ["allowedGroupsForUpload"]
       49 JUMP                             ; [+12]
       50 GETUPVAL                         R11 1
       51 GETTABLEKS                       R10 R11 K10 ["isCatalogAsset"]
       53 GETTABLEKS                       R11 R1 K11 ["assetTypeEnum"]
       55 CALL                             R10 1 1
       56 JUMPIFNOT                        R10 ; [+3]
       57 GETTABLEKS                       R9 R1 K14 ["assetTypeAgents"]
       59 JUMP                             ; [+2]
       60 GETTABLEKS                       R9 R1 K15 ["manageableGroups"]
       62 GETUPVAL                         R11 1
       63 GETTABLEKS                       R10 R11 K16 ["getOwnerDropDownContent"]
       65 MOVE                             R11 R9
       66 GETTABLEKS                       R12 R1 K17 ["Localization"]
       68 CALL                             R10 2 1
       69 SETTABLEKS                       R10 R0 K18 ["dropdownContent"]
       71 GETTABLEKS                       R10 R1 K19 ["onDropDownSelect"]
       73 GETTABLEKS                       R11 R3 K20 ["publishAsset"]
       75 LOADK                            R12 K21 [""]
       76 GETTABLEKS                       R13 R0 K22 ["allowOwnerEdit"]
       78 JUMPIF                           R13 ; [+37]
       79 GETTABLEKS                       R13 R7 K8 ["typeId"]
       81 JUMPIFNOT                        R13 ; [+34]
       82 GETTABLEKS                       R13 R7 K8 ["typeId"]
       84 GETUPVAL                         R16 2
       85 GETTABLEKS                       R15 R16 K23 ["OWNER_TYPES"]
       87 GETTABLEKS                       R14 R15 K24 ["User"]
       89 JUMPIFNOTEQ                      R13 R14 ; [+19]
       91 GETTABLEKS                       R13 R7 K25 ["targetId"]
       93 GETUPVAL                         R14 3
       94 CALL                             R14 0 1
       95 JUMPIFEQ                         R13 R14 ; [+4]
       97 GETTABLEKS                       R12 R7 K26 ["username"]
       99 JUMP                             ; [+16]
      100 GETTABLEKS                       R13 R1 K17 ["Localization"]
      102 LOADK                            R15 K27 ["General"]
      103 LOADK                            R16 K28 ["Me"]
      104 NAMECALL                         R13 R13 K29 ["getText"]
      106 CALL                             R13 3 1
      107 MOVE                             R12 R13
      108 JUMP                             ; [+7]
      109 GETTABLEKS                       R13 R1 K30 ["assetGroupData"]
      111 JUMPIFNOT                        R13 ; [+4]
      112 GETTABLEKS                       R13 R1 K30 ["assetGroupData"]
      114 GETTABLEKS                       R12 R13 K31 ["Name"]
      116 GETUPVAL                         R13 4
      117 CALL                             R13 0 1
      118 JUMPIFNOT                        R13 ; [+123]
      119 GETUPVAL                         R14 5
      120 GETTABLEKS                       R13 R14 K32 ["createElement"]
      122 GETUPVAL                         R14 6
      123 DUPTABLE                         R15 K34 [{"LayoutOrder", "Size", "Title"}]
      124 SETTABLEKS                       R5 R15 K4 ["LayoutOrder"]
      126 GETIMPORT                        R16 K37 [UDim2.new]
      128 LOADN                            R17 1
      129 LOADN                            R18 0
      130 LOADN                            R19 0
      131 MOVE                             R20 R6
      132 CALL                             R16 4 1
      133 SETTABLEKS                       R16 R15 K33 ["Size"]
      135 SETTABLEKS                       R4 R15 K3 ["Title"]
      137 DUPTABLE                         R16 K40 [{"DropDown", "OwnerType"}]
      138 GETTABLEKS                       R18 R0 K22 ["allowOwnerEdit"]
      140 JUMPIFNOT                        R18 ; [+59]
      141 GETUPVAL                         R18 5
      142 GETTABLEKS                       R17 R18 K32 ["createElement"]
      144 GETUPVAL                         R19 7
      145 GETTABLEKS                       R18 R19 K41 ["View"]
      147 DUPTABLE                         R19 K43 [{"tag", "Size", "LayoutOrder"}]
      148 LOADK                            R20 K44 ["bg-transparency-100"]
      149 SETTABLEKS                       R20 R19 K42 ["tag"]
      151 GETIMPORT                        R20 K37 [UDim2.new]
      153 LOADN                            R21 0
      154 GETUPVAL                         R22 8
      155 LOADN                            R23 0
      156 LOADN                            R24 38
      157 CALL                             R20 4 1
      158 SETTABLEKS                       R20 R19 K33 ["Size"]
      160 LOADN                            R20 1
      161 SETTABLEKS                       R20 R19 K4 ["LayoutOrder"]
      163 DUPTABLE                         R20 K46 [{"Dropdown"}]
      164 GETUPVAL                         R22 5
      165 GETTABLEKS                       R21 R22 K32 ["createElement"]
      167 GETUPVAL                         R22 9
      168 DUPTABLE                         R23 K53 [{"LayoutOrder", "items", "selectedDropDownIndex", "onItemClicked", "placeholder", "isDisabled", "width"}]
      169 LOADN                            R24 1
      170 SETTABLEKS                       R24 R23 K4 ["LayoutOrder"]
      172 GETTABLEKS                       R24 R0 K18 ["dropdownContent"]
      174 SETTABLEKS                       R24 R23 K47 ["items"]
      176 SETTABLEKS                       R8 R23 K48 ["selectedDropDownIndex"]
      178 SETTABLEKS                       R10 R23 K49 ["onItemClicked"]
      180 GETTABLEKS                       R24 R1 K17 ["Localization"]
      182 LOADK                            R26 K45 ["Dropdown"]
      183 LOADK                            R27 K54 ["ChooseOne"]
      184 NAMECALL                         R24 R24 K29 ["getText"]
      186 CALL                             R24 3 1
      187 SETTABLEKS                       R24 R23 K50 ["placeholder"]
      189 LOADB                            R24 0
      190 SETTABLEKS                       R24 R23 K51 ["isDisabled"]
      192 GETUPVAL                         R24 8
      193 SETTABLEKS                       R24 R23 K52 ["width"]
      195 CALL                             R21 2 1
      196 SETTABLEKS                       R21 R20 K45 ["Dropdown"]
      198 CALL                             R17 3 1
      199 JUMPIF                           R17 ; [+1]
      200 LOADNIL                          R17
      201 SETTABLEKS                       R17 R16 K38 ["DropDown"]
      203 GETTABLEKS                       R18 R0 K22 ["allowOwnerEdit"]
      205 JUMPIF                           R18 ; [+31]
      206 GETUPVAL                         R18 5
      207 GETTABLEKS                       R17 R18 K32 ["createElement"]
      209 GETUPVAL                         R19 7
      210 GETTABLEKS                       R18 R19 K55 ["Text"]
      212 DUPTABLE                         R19 K56 [{"tag", "Text", "LayoutOrder", "Size"}]
      213 LOADK                            R20 K57 ["text-title-small text-align-x-left text-align-y-center content-default"]
      214 SETTABLEKS                       R20 R19 K42 ["tag"]
      216 SETTABLEKS                       R12 R19 K55 ["Text"]
      218 LOADN                            R20 1
      219 SETTABLEKS                       R20 R19 K4 ["LayoutOrder"]
      221 GETIMPORT                        R20 K37 [UDim2.new]
      223 LOADN                            R21 1
      224 GETUPVAL                         R24 10
      225 GETTABLEKS                       R23 R24 K58 ["TITLE_GUTTER_WIDTH"]
      227 MINUS                            R22 R23
      228 LOADN                            R23 0
      229 GETUPVAL                         R25 11
      230 GETTABLEKS                       R24 R25 K59 ["FONT_SIZE_TITLE"]
      232 CALL                             R20 4 1
      233 SETTABLEKS                       R20 R19 K33 ["Size"]
      235 CALL                             R17 2 1
      236 JUMPIF                           R17 ; [+1]
      237 LOADNIL                          R17
      238 SETTABLEKS                       R17 R16 K39 ["OwnerType"]
      240 CALL                             R13 3 -1
      241 RETURN                           R13 -1
      242 GETUPVAL                         R14 12
      243 GETTABLEKS                       R13 R14 K32 ["createElement"]
      245 LOADK                            R14 K60 ["Frame"]
      246 DUPTABLE                         R15 K64 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      247 GETIMPORT                        R16 K37 [UDim2.new]
      249 LOADN                            R17 1
      250 LOADN                            R18 0
      251 LOADN                            R19 0
      252 MOVE                             R20 R6
      253 CALL                             R16 4 1
      254 SETTABLEKS                       R16 R15 K33 ["Size"]
      256 LOADN                            R16 1
      257 SETTABLEKS                       R16 R15 K61 ["BackgroundTransparency"]
      259 GETIMPORT                        R16 K67 [Color3.fromRGB]
      261 LOADN                            R17 227
      262 LOADN                            R18 227
      263 LOADN                            R19 227
      264 CALL                             R16 3 1
      265 SETTABLEKS                       R16 R15 K62 ["BackgroundColor3"]
      267 LOADN                            R16 0
      268 SETTABLEKS                       R16 R15 K63 ["BorderSizePixel"]
      270 SETTABLEKS                       R5 R15 K4 ["LayoutOrder"]
      272 DUPTABLE                         R16 K69 [{"UIListLayout", "Title", "DropDown", "OwnerType"}]
      273 GETUPVAL                         R18 12
      274 GETTABLEKS                       R17 R18 K32 ["createElement"]
      276 LOADK                            R18 K68 ["UIListLayout"]
      277 DUPTABLE                         R19 K75 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      278 GETIMPORT                        R20 K78 [Enum.FillDirection.Horizontal]
      280 SETTABLEKS                       R20 R19 K70 ["FillDirection"]
      282 GETIMPORT                        R20 K80 [Enum.HorizontalAlignment.Left]
      284 SETTABLEKS                       R20 R19 K71 ["HorizontalAlignment"]
      286 GETIMPORT                        R20 K82 [Enum.VerticalAlignment.Top]
      288 SETTABLEKS                       R20 R19 K72 ["VerticalAlignment"]
      290 GETIMPORT                        R20 K83 [Enum.SortOrder.LayoutOrder]
      292 SETTABLEKS                       R20 R19 K73 ["SortOrder"]
      294 GETIMPORT                        R20 K85 [UDim.new]
      296 LOADN                            R21 0
      297 LOADN                            R22 0
      298 CALL                             R20 2 1
      299 SETTABLEKS                       R20 R19 K74 ["Padding"]
      301 CALL                             R17 2 1
      302 SETTABLEKS                       R17 R16 K68 ["UIListLayout"]
      304 GETUPVAL                         R18 12
      305 GETTABLEKS                       R17 R18 K32 ["createElement"]
      307 LOADK                            R18 K86 ["TextLabel"]
      308 DUPTABLE                         R19 K92 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
      309 GETIMPORT                        R20 K37 [UDim2.new]
      311 LOADN                            R21 0
      312 GETUPVAL                         R23 10
      313 GETTABLEKS                       R22 R23 K58 ["TITLE_GUTTER_WIDTH"]
      315 LOADN                            R23 1
      316 LOADN                            R24 0
      317 CALL                             R20 4 1
      318 SETTABLEKS                       R20 R19 K33 ["Size"]
      320 LOADN                            R20 1
      321 SETTABLEKS                       R20 R19 K61 ["BackgroundTransparency"]
      323 LOADN                            R20 0
      324 SETTABLEKS                       R20 R19 K63 ["BorderSizePixel"]
      326 SETTABLEKS                       R4 R19 K55 ["Text"]
      328 GETIMPORT                        R20 K93 [Enum.TextXAlignment.Left]
      330 SETTABLEKS                       R20 R19 K87 ["TextXAlignment"]
      332 GETIMPORT                        R20 K94 [Enum.TextYAlignment.Top]
      334 SETTABLEKS                       R20 R19 K88 ["TextYAlignment"]
      336 GETUPVAL                         R21 11
      337 GETTABLEKS                       R20 R21 K59 ["FONT_SIZE_TITLE"]
      339 SETTABLEKS                       R20 R19 K89 ["TextSize"]
      341 GETTABLEKS                       R20 R11 K95 ["titleTextColor"]
      343 SETTABLEKS                       R20 R19 K90 ["TextColor3"]
      345 GETUPVAL                         R21 11
      346 GETTABLEKS                       R20 R21 K96 ["FONT"]
      348 SETTABLEKS                       R20 R19 K91 ["Font"]
      350 LOADN                            R20 1
      351 SETTABLEKS                       R20 R19 K4 ["LayoutOrder"]
      353 CALL                             R17 2 1
      354 SETTABLEKS                       R17 R16 K3 ["Title"]
      356 GETTABLEKS                       R17 R0 K22 ["allowOwnerEdit"]
      358 JUMPIFNOT                        R17 ; [+34]
      359 GETUPVAL                         R18 12
      360 GETTABLEKS                       R17 R18 K32 ["createElement"]
      362 GETUPVAL                         R18 13
      363 DUPTABLE                         R19 K99 [{"Size", "visibleDropDownCount", "selectedDropDownIndex", "fontSize", "items", "onItemClicked", "LayoutOrder"}]
      364 GETIMPORT                        R20 K37 [UDim2.new]
      366 LOADN                            R21 0
      367 GETUPVAL                         R22 8
      368 LOADN                            R23 0
      369 LOADN                            R24 38
      370 CALL                             R20 4 1
      371 SETTABLEKS                       R20 R19 K33 ["Size"]
      373 GETUPVAL                         R20 14
      374 SETTABLEKS                       R20 R19 K97 ["visibleDropDownCount"]
      376 SETTABLEKS                       R8 R19 K48 ["selectedDropDownIndex"]
      378 GETUPVAL                         R21 11
      379 GETTABLEKS                       R20 R21 K100 ["FONT_SIZE_LARGE"]
      381 SETTABLEKS                       R20 R19 K98 ["fontSize"]
      383 GETTABLEKS                       R20 R0 K18 ["dropdownContent"]
      385 SETTABLEKS                       R20 R19 K47 ["items"]
      387 SETTABLEKS                       R10 R19 K49 ["onItemClicked"]
      389 LOADN                            R20 2
      390 SETTABLEKS                       R20 R19 K4 ["LayoutOrder"]
      392 CALL                             R17 2 1
      393 SETTABLEKS                       R17 R16 K38 ["DropDown"]
      395 GETTABLEKS                       R18 R0 K22 ["allowOwnerEdit"]
      397 NOT                              R17 R18
      398 JUMPIFNOT                        R17 ; [+53]
      399 GETUPVAL                         R18 12
      400 GETTABLEKS                       R17 R18 K32 ["createElement"]
      402 LOADK                            R18 K86 ["TextLabel"]
      403 DUPTABLE                         R19 K101 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "Font", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "LayoutOrder"}]
      404 GETIMPORT                        R20 K37 [UDim2.new]
      406 LOADN                            R21 1
      407 GETUPVAL                         R24 10
      408 GETTABLEKS                       R23 R24 K58 ["TITLE_GUTTER_WIDTH"]
      410 MINUS                            R22 R23
      411 LOADN                            R23 0
      412 GETUPVAL                         R25 11
      413 GETTABLEKS                       R24 R25 K59 ["FONT_SIZE_TITLE"]
      415 CALL                             R20 4 1
      416 SETTABLEKS                       R20 R19 K33 ["Size"]
      418 LOADN                            R20 1
      419 SETTABLEKS                       R20 R19 K61 ["BackgroundTransparency"]
      421 LOADN                            R20 0
      422 SETTABLEKS                       R20 R19 K63 ["BorderSizePixel"]
      424 SETTABLEKS                       R12 R19 K55 ["Text"]
      426 GETUPVAL                         R21 11
      427 GETTABLEKS                       R20 R21 K96 ["FONT"]
      429 SETTABLEKS                       R20 R19 K91 ["Font"]
      431 GETIMPORT                        R20 K93 [Enum.TextXAlignment.Left]
      433 SETTABLEKS                       R20 R19 K87 ["TextXAlignment"]
      435 GETIMPORT                        R20 K103 [Enum.TextYAlignment.Center]
      437 SETTABLEKS                       R20 R19 K88 ["TextYAlignment"]
      439 GETUPVAL                         R21 11
      440 GETTABLEKS                       R20 R21 K59 ["FONT_SIZE_TITLE"]
      442 SETTABLEKS                       R20 R19 K89 ["TextSize"]
      444 GETTABLEKS                       R20 R11 K104 ["textColor"]
      446 SETTABLEKS                       R20 R19 K90 ["TextColor3"]
      448 LOADN                            R20 2
      449 SETTABLEKS                       R20 R19 K4 ["LayoutOrder"]
      451 CALL                             R17 2 1
      452 SETTABLEKS                       R17 R16 K39 ["OwnerType"]
      454 CALL                             R13 3 -1
      455 RETURN                           R13 -1

PROTO_3:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R3 R1 K0 ["owner"]
        7 JUMPIFNOT                        R3 ; [+14]
        8 GETTABLEKS                       R5 R1 K0 ["owner"]
       10 GETTABLEKS                       R4 R5 K1 ["targetId"]
       12 GETTABLE                         R3 R0 R4
       13 JUMPIFNOT                        R3 ; [+8]
       14 GETTABLEKS                       R5 R1 K0 ["owner"]
       16 GETTABLEKS                       R4 R5 K1 ["targetId"]
       18 GETTABLE                         R3 R0 R4
       19 GETTABLEKS                       R2 R3 K2 ["groupMetadata"]
       21 JUMPIF                           R2 ; [+2]
       22 GETTABLEKS                       R2 R1 K3 ["assetGroupData"]
       24 GETTABLEKS                       R4 R0 K4 ["assetConfigData"]
       26 JUMPIFNOT                        R4 ; [+5]
       27 GETTABLEKS                       R4 R0 K4 ["assetConfigData"]
       29 GETTABLEKS                       R3 R4 K5 ["Creator"]
       31 JUMPIF                           R3 ; [+2]
       32 GETTABLEKS                       R3 R1 K0 ["owner"]
       34 DUPTABLE                         R4 K12 [{"assetTypeEnum", "screenFlowType", "manageableGroups", "assetTypeAgents", "assetGroupData", "owner", "groupBundlesUploadEnabledForUser", "allowedGroupsForUpload"}]
       35 GETTABLEKS                       R5 R0 K6 ["assetTypeEnum"]
       37 SETTABLEKS                       R5 R4 K6 ["assetTypeEnum"]
       39 GETTABLEKS                       R5 R0 K7 ["screenFlowType"]
       41 SETTABLEKS                       R5 R4 K7 ["screenFlowType"]
       43 GETTABLEKS                       R5 R0 K8 ["manageableGroups"]
       45 JUMPIF                           R5 ; [+2]
       46 NEWTABLE                         R5 0 0
       48 SETTABLEKS                       R5 R4 K8 ["manageableGroups"]
       50 GETTABLEKS                       R5 R0 K9 ["assetTypeAgents"]
       52 JUMPIF                           R5 ; [+2]
       53 NEWTABLE                         R5 0 0
       55 SETTABLEKS                       R5 R4 K9 ["assetTypeAgents"]
       57 SETTABLEKS                       R2 R4 K3 ["assetGroupData"]
       59 SETTABLEKS                       R3 R4 K0 ["owner"]
       61 GETUPVAL                         R6 0
       62 CALL                             R6 0 1
       63 JUMPIFNOT                        R6 ; [+3]
       64 GETTABLEKS                       R5 R0 K10 ["groupBundlesUploadEnabledForUser"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R5
       68 SETTABLEKS                       R5 R4 K10 ["groupBundlesUploadEnabledForUser"]
       70 GETUPVAL                         R6 0
       71 CALL                             R6 0 1
       72 JUMPIFNOT                        R6 ; [+6]
       73 GETTABLEKS                       R5 R0 K11 ["allowedGroupsForUpload"]
       75 JUMPIF                           R5 ; [+4]
       76 NEWTABLE                         R5 0 0
       78 JUMP                             ; [+1]
       79 LOADNIL                          R5
       80 SETTABLEKS                       R5 R4 K11 ["allowedGroupsForUpload"]
       82 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R4 R5 K0 ["MARKETPLACE_ACTION_TYPE_UPLOAD"]
        6 CALL                             R2 2 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K3 [{"getManageableGroups", "getAssetTypeAgents", "getAllowedGroupsForUpload"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getManageableGroups"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["getAssetTypeAgents"]
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+5]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 JUMP                             ; [+1]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K2 ["getAllowedGroupsForUpload"]
       22 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
       30 GETTABLEKS                       R6 R1 K9 ["Framework"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K5 [require]
       35 GETTABLEKS                       R7 R1 K10 ["Foundation"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R10 R0 K11 ["Src"]
       42 GETTABLEKS                       R9 R10 K12 ["Flags"]
       44 GETTABLEKS                       R8 R9 K13 ["getFFlagToolboxAssetConfigFoundationMigration"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R9 R0 K11 ["Src"]
       49 GETTABLEKS                       R8 R9 K14 ["Util"]
       51 GETIMPORT                        R9 K5 [require]
       53 GETTABLEKS                       R10 R8 K15 ["Constants"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R8 K16 ["AssetConfigConstants"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R12 R8 K17 ["getUserId"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R13 R8 K18 ["AssetConfigUtil"]
       70 CALL                             R12 1 1
       71 GETTABLEKS                       R14 R0 K11 ["Src"]
       73 GETTABLEKS                       R13 R14 K19 ["Components"]
       75 GETTABLEKS                       R14 R13 K20 ["AssetConfiguration"]
       77 GETIMPORT                        R15 K5 [require]
       79 GETTABLEKS                       R16 R14 K21 ["AssetConfigDropdown"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K5 [require]
       84 GETTABLEKS                       R17 R14 K22 ["ConfigSectionWrapper"]
       86 CALL                             R16 1 1
       87 GETIMPORT                        R17 K5 [require]
       89 GETTABLEKS                       R18 R13 K23 ["DropdownMenu"]
       91 CALL                             R17 1 1
       92 GETTABLEKS                       R20 R0 K11 ["Src"]
       94 GETTABLEKS                       R19 R20 K24 ["Networking"]
       96 GETTABLEKS                       R18 R19 K25 ["Requests"]
       98 GETIMPORT                        R19 K5 [require]
      100 GETTABLEKS                       R20 R18 K26 ["GetAssetConfigManageableGroupsRequest"]
      102 CALL                             R19 1 1
      103 GETIMPORT                        R20 K5 [require]
      105 GETTABLEKS                       R21 R18 K27 ["GetAssetTypeAgentsRequest"]
      107 CALL                             R20 1 1
      108 GETIMPORT                        R21 K5 [require]
      110 GETTABLEKS                       R24 R0 K11 ["Src"]
      112 GETTABLEKS                       R23 R24 K28 ["Thunks"]
      114 GETTABLEKS                       R22 R23 K29 ["GetGroupMetadata"]
      116 CALL                             R21 1 1
      117 GETIMPORT                        R22 K5 [require]
      119 GETTABLEKS                       R23 R18 K30 ["GetAllowedGroupsForAction"]
      121 CALL                             R22 1 1
      122 GETIMPORT                        R23 K5 [require]
      124 GETTABLEKS                       R26 R0 K11 ["Src"]
      126 GETTABLEKS                       R25 R26 K31 ["Types"]
      128 GETTABLEKS                       R24 R25 K32 ["ConfigTypes"]
      130 CALL                             R23 1 1
      131 GETIMPORT                        R24 K5 [require]
      133 GETTABLEKS                       R27 R0 K11 ["Src"]
      135 GETTABLEKS                       R26 R27 K31 ["Types"]
      137 GETTABLEKS                       R25 R26 K33 ["MarketplaceActionTypes"]
      139 CALL                             R24 1 1
      140 GETTABLEKS                       R25 R5 K34 ["ContextServices"]
      142 GETTABLEKS                       R26 R25 K35 ["withContext"]
      144 GETIMPORT                        R27 K5 [require]
      146 GETTABLEKS                       R30 R0 K11 ["Src"]
      148 GETTABLEKS                       R29 R30 K34 ["ContextServices"]
      150 GETTABLEKS                       R28 R29 K36 ["NetworkContext"]
      152 CALL                             R27 1 1
      153 GETIMPORT                        R28 K5 [require]
      155 GETTABLEKS                       R31 R0 K11 ["Src"]
      157 GETTABLEKS                       R30 R31 K12 ["Flags"]
      159 GETTABLEKS                       R29 R30 K37 ["getFFlagEnableUploadingGroupBundles"]
      161 CALL                             R28 1 1
      162 GETIMPORT                        R29 K5 [require]
      164 GETTABLEKS                       R32 R0 K11 ["Src"]
      166 GETTABLEKS                       R31 R32 K12 ["Flags"]
      168 GETTABLEKS                       R30 R31 K38 ["getFFlagEnableUploadingMakeup"]
      170 CALL                             R29 1 1
      171 GETIMPORT                        R30 K40 [game]
      173 LOADK                            R32 K41 ["IncreaseVisibleCreatorsConfigAccess"]
      174 LOADB                            R33 0
      175 NAMECALL                         R30 R30 K42 ["DefineFastFlag"]
      177 CALL                             R30 3 0
      178 GETTABLEKS                       R30 R3 K43 ["PureComponent"]
      180 LOADK                            R32 K44 ["ConfigAccess"]
      181 NAMECALL                         R30 R30 K45 ["extend"]
      183 CALL                             R30 2 1
      184 MOVE                             R32 R29
      185 CALL                             R32 0 1
      186 JUMPIFNOT                        R32 ; [+2]
      187 LOADN                            R31 144
      188 JUMP                             ; [+1]
      189 LOADN                            R31 220
      190 GETIMPORT                        R33 K40 [game]
      192 LOADK                            R35 K41 ["IncreaseVisibleCreatorsConfigAccess"]
      193 NAMECALL                         R33 R33 K46 ["GetFastFlag"]
      195 CALL                             R33 2 1
      196 JUMPIFNOT                        R33 ; [+2]
      197 LOADN                            R32 6
      198 JUMP                             ; [+1]
      199 LOADN                            R32 5
      200 DUPCLOSURE                       R33 K47 [PROTO_0]
      201 CAPTURE                          VAL R10
      202 SETTABLEKS                       R33 R30 K48 ["init"]
      204 DUPCLOSURE                       R33 K49 [PROTO_1]
      205 CAPTURE                          VAL R28
      206 CAPTURE                          VAL R12
      207 SETTABLEKS                       R33 R30 K50 ["didMount"]
      209 DUPCLOSURE                       R33 K51 [PROTO_2]
      210 CAPTURE                          VAL R28
      211 CAPTURE                          VAL R12
      212 CAPTURE                          VAL R23
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R7
      215 CAPTURE                          VAL R2
      216 CAPTURE                          VAL R16
      217 CAPTURE                          VAL R6
      218 CAPTURE                          VAL R31
      219 CAPTURE                          VAL R15
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R3
      223 CAPTURE                          VAL R17
      224 CAPTURE                          VAL R32
      225 SETTABLEKS                       R33 R30 K52 ["render"]
      227 DUPCLOSURE                       R33 K53 [PROTO_3]
      228 CAPTURE                          VAL R28
      229 DUPCLOSURE                       R34 K54 [PROTO_7]
      230 CAPTURE                          VAL R19
      231 CAPTURE                          VAL R20
      232 CAPTURE                          VAL R28
      233 CAPTURE                          VAL R22
      234 CAPTURE                          VAL R24
      235 MOVE                             R35 R26
      236 DUPTABLE                         R36 K58 [{"Stylizer", "Localization", "Network"}]
      237 GETTABLEKS                       R37 R25 K55 ["Stylizer"]
      239 SETTABLEKS                       R37 R36 K55 ["Stylizer"]
      241 GETTABLEKS                       R37 R25 K56 ["Localization"]
      243 SETTABLEKS                       R37 R36 K56 ["Localization"]
      245 SETTABLEKS                       R27 R36 K57 ["Network"]
      247 CALL                             R35 1 1
      248 MOVE                             R36 R30
      249 CALL                             R35 1 1
      250 MOVE                             R30 R35
      251 GETTABLEKS                       R35 R4 K59 ["connect"]
      253 MOVE                             R36 R33
      254 MOVE                             R37 R34
      255 CALL                             R35 2 1
      256 MOVE                             R36 R30
      257 CALL                             R35 1 -1
      258 RETURN                           R35 -1
