PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["screenFlowType"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["FLOW_TYPE"]
        5 GETTABLEKS                       R4 R4 K2 ["UPLOAD_FLOW"]
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R0 K3 ["allowOwnerEdit"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R0 K4 ["preselectionApplied"]
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K0 ["allowOwnerEdit"]
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETTABLEKS                       R1 R0 K1 ["preselectionApplied"]
        9 JUMPIFNOT                        R1 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R1 R0 K2 ["props"]
       13 GETTABLEKS                       R1 R1 K3 ["preselectedGroupId"]
       15 JUMPIFNOTEQKNIL                  R1 ; [+2]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R2 R0 K4 ["dropdownContent"]
       20 JUMPIF                           R2 ; [+2]
       21 NEWTABLE                         R2 0 0
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 GETTABLEKS                       R7 R6 K5 ["creatorType"]
       28 JUMPIFNOTEQKS                    R7 K6 ["Group"] ; [+16]
       30 GETTABLEKS                       R7 R6 K7 ["creatorId"]
       32 JUMPIFNOTEQ                      R7 R1 ; [+12]
       34 LOADB                            R7 1
       35 SETTABLEKS                       R7 R0 K1 ["preselectionApplied"]
       37 GETTABLEKS                       R7 R0 K2 ["props"]
       39 GETTABLEKS                       R7 R7 K8 ["onDropDownSelect"]
       41 MOVE                             R8 R5
       42 MOVE                             R9 R6
       43 CALL                             R7 2 0
       44 RETURN                           R0 0
       45 FORGLOOP                         R2 2 ; [-20]
       47 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["groupBundlesUploadEnabledForUser"]
        4 JUMPIFNOT                        R1 ; [+30]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["isCatalogAsset"]
        8 GETTABLEKS                       R2 R0 K0 ["props"]
       10 GETTABLEKS                       R2 R2 K3 ["assetTypeEnum"]
       12 CALL                             R1 1 1
       13 JUMPIF                           R1 ; [+9]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K4 ["isUGCBundleType"]
       17 GETTABLEKS                       R2 R0 K0 ["props"]
       19 GETTABLEKS                       R2 R2 K3 ["assetTypeEnum"]
       21 CALL                             R1 1 1
       22 JUMPIFNOT                        R1 ; [+12]
       23 GETTABLEKS                       R1 R0 K0 ["props"]
       25 GETTABLEKS                       R1 R1 K5 ["getAllowedGroupsForUpload"]
       27 GETTABLEKS                       R2 R0 K0 ["props"]
       29 GETTABLEKS                       R2 R2 K6 ["Network"]
       31 GETTABLEKS                       R2 R2 K7 ["networkInterface"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K2 ["isCatalogAsset"]
       38 GETTABLEKS                       R2 R0 K0 ["props"]
       40 GETTABLEKS                       R2 R2 K3 ["assetTypeEnum"]
       42 CALL                             R1 1 1
       43 JUMPIFNOT                        R1 ; [+16]
       44 GETTABLEKS                       R1 R0 K0 ["props"]
       46 GETTABLEKS                       R1 R1 K8 ["getAssetTypeAgents"]
       48 GETTABLEKS                       R2 R0 K0 ["props"]
       50 GETTABLEKS                       R2 R2 K6 ["Network"]
       52 GETTABLEKS                       R2 R2 K7 ["networkInterface"]
       54 GETTABLEKS                       R3 R0 K0 ["props"]
       56 GETTABLEKS                       R3 R3 K3 ["assetTypeEnum"]
       58 CALL                             R1 2 0
       59 RETURN                           R0 0
       60 GETTABLEKS                       R1 R0 K0 ["props"]
       62 GETTABLEKS                       R1 R1 K9 ["getManageableGroups"]
       64 GETTABLEKS                       R2 R0 K0 ["props"]
       66 GETTABLEKS                       R2 R2 K6 ["Network"]
       68 GETTABLEKS                       R2 R2 K7 ["networkInterface"]
       70 CALL                             R1 1 0
       71 RETURN                           R0 0

PROTO_3:
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
       21 GETTABLEKS                       R10 R0 K0 ["props"]
       23 GETTABLEKS                       R10 R10 K9 ["groupBundlesUploadEnabledForUser"]
       25 JUMPIFNOT                        R10 ; [+21]
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R10 R10 K10 ["isCatalogAsset"]
       29 GETTABLEKS                       R11 R0 K0 ["props"]
       31 GETTABLEKS                       R11 R11 K11 ["assetTypeEnum"]
       33 CALL                             R10 1 1
       34 JUMPIF                           R10 ; [+9]
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R10 R10 K12 ["isUGCBundleType"]
       38 GETTABLEKS                       R11 R0 K0 ["props"]
       40 GETTABLEKS                       R11 R11 K11 ["assetTypeEnum"]
       42 CALL                             R10 1 1
       43 JUMPIFNOT                        R10 ; [+3]
       44 GETTABLEKS                       R9 R1 K13 ["allowedGroupsForUpload"]
       46 JUMP                             ; [+12]
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K10 ["isCatalogAsset"]
       50 GETTABLEKS                       R11 R1 K11 ["assetTypeEnum"]
       52 CALL                             R10 1 1
       53 JUMPIFNOT                        R10 ; [+3]
       54 GETTABLEKS                       R9 R1 K14 ["assetTypeAgents"]
       56 JUMP                             ; [+2]
       57 GETTABLEKS                       R9 R1 K15 ["manageableGroups"]
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R10 R10 K16 ["getOwnerDropDownContent"]
       62 MOVE                             R11 R9
       63 GETTABLEKS                       R12 R1 K17 ["Localization"]
       65 CALL                             R10 2 1
       66 SETTABLEKS                       R10 R0 K18 ["dropdownContent"]
       68 GETTABLEKS                       R10 R1 K19 ["onDropDownSelect"]
       70 GETTABLEKS                       R11 R3 K20 ["publishAsset"]
       72 LOADK                            R12 K21 [""]
       73 GETTABLEKS                       R13 R0 K22 ["allowOwnerEdit"]
       75 JUMPIF                           R13 ; [+37]
       76 GETTABLEKS                       R13 R7 K8 ["typeId"]
       78 JUMPIFNOT                        R13 ; [+34]
       79 GETTABLEKS                       R13 R7 K8 ["typeId"]
       81 GETUPVAL                         R14 1
       82 GETTABLEKS                       R14 R14 K23 ["OWNER_TYPES"]
       84 GETTABLEKS                       R14 R14 K24 ["User"]
       86 JUMPIFNOTEQ                      R13 R14 ; [+19]
       88 GETTABLEKS                       R13 R7 K25 ["targetId"]
       90 GETUPVAL                         R14 2
       91 CALL                             R14 0 1
       92 JUMPIFEQ                         R13 R14 ; [+4]
       94 GETTABLEKS                       R12 R7 K26 ["username"]
       96 JUMP                             ; [+16]
       97 GETTABLEKS                       R13 R1 K17 ["Localization"]
       99 LOADK                            R15 K27 ["General"]
      100 LOADK                            R16 K28 ["Me"]
      101 NAMECALL                         R13 R13 K29 ["getText"]
      103 CALL                             R13 3 1
      104 MOVE                             R12 R13
      105 JUMP                             ; [+7]
      106 GETTABLEKS                       R13 R1 K30 ["assetGroupData"]
      108 JUMPIFNOT                        R13 ; [+4]
      109 GETTABLEKS                       R13 R1 K30 ["assetGroupData"]
      111 GETTABLEKS                       R12 R13 K31 ["Name"]
      113 GETUPVAL                         R13 3
      114 CALL                             R13 0 1
      115 JUMPIFNOT                        R13 ; [+123]
      116 GETUPVAL                         R13 4
      117 GETTABLEKS                       R13 R13 K32 ["createElement"]
      119 GETUPVAL                         R14 5
      120 DUPTABLE                         R15 K34 [{"LayoutOrder", "Size", "Title"}]
      121 SETTABLEKS                       R5 R15 K4 ["LayoutOrder"]
      123 GETIMPORT                        R16 K37 [UDim2.new]
      125 LOADN                            R17 1
      126 LOADN                            R18 0
      127 LOADN                            R19 0
      128 MOVE                             R20 R6
      129 CALL                             R16 4 1
      130 SETTABLEKS                       R16 R15 K33 ["Size"]
      132 SETTABLEKS                       R4 R15 K3 ["Title"]
      134 DUPTABLE                         R16 K40 [{"DropDown", "OwnerType"}]
      135 GETTABLEKS                       R18 R0 K22 ["allowOwnerEdit"]
      137 JUMPIFNOT                        R18 ; [+59]
      138 GETUPVAL                         R17 4
      139 GETTABLEKS                       R17 R17 K32 ["createElement"]
      141 GETUPVAL                         R18 6
      142 GETTABLEKS                       R18 R18 K41 ["View"]
      144 DUPTABLE                         R19 K43 [{"tag", "Size", "LayoutOrder"}]
      145 LOADK                            R20 K44 ["bg-transparency-100"]
      146 SETTABLEKS                       R20 R19 K42 ["tag"]
      148 GETIMPORT                        R20 K37 [UDim2.new]
      150 LOADN                            R21 0
      151 GETUPVAL                         R22 7
      152 LOADN                            R23 0
      153 LOADN                            R24 38
      154 CALL                             R20 4 1
      155 SETTABLEKS                       R20 R19 K33 ["Size"]
      157 LOADN                            R20 1
      158 SETTABLEKS                       R20 R19 K4 ["LayoutOrder"]
      160 DUPTABLE                         R20 K46 [{"Dropdown"}]
      161 GETUPVAL                         R21 4
      162 GETTABLEKS                       R21 R21 K32 ["createElement"]
      164 GETUPVAL                         R22 8
      165 DUPTABLE                         R23 K53 [{"LayoutOrder", "items", "selectedDropDownIndex", "onItemClicked", "placeholder", "isDisabled", "width"}]
      166 LOADN                            R24 1
      167 SETTABLEKS                       R24 R23 K4 ["LayoutOrder"]
      169 GETTABLEKS                       R24 R0 K18 ["dropdownContent"]
      171 SETTABLEKS                       R24 R23 K47 ["items"]
      173 SETTABLEKS                       R8 R23 K48 ["selectedDropDownIndex"]
      175 SETTABLEKS                       R10 R23 K49 ["onItemClicked"]
      177 GETTABLEKS                       R24 R1 K17 ["Localization"]
      179 LOADK                            R26 K45 ["Dropdown"]
      180 LOADK                            R27 K54 ["ChooseOne"]
      181 NAMECALL                         R24 R24 K29 ["getText"]
      183 CALL                             R24 3 1
      184 SETTABLEKS                       R24 R23 K50 ["placeholder"]
      186 LOADB                            R24 0
      187 SETTABLEKS                       R24 R23 K51 ["isDisabled"]
      189 GETUPVAL                         R24 7
      190 SETTABLEKS                       R24 R23 K52 ["width"]
      192 CALL                             R21 2 1
      193 SETTABLEKS                       R21 R20 K45 ["Dropdown"]
      195 CALL                             R17 3 1
      196 JUMPIF                           R17 ; [+1]
      197 LOADNIL                          R17
      198 SETTABLEKS                       R17 R16 K38 ["DropDown"]
      200 GETTABLEKS                       R18 R0 K22 ["allowOwnerEdit"]
      202 JUMPIF                           R18 ; [+31]
      203 GETUPVAL                         R17 4
      204 GETTABLEKS                       R17 R17 K32 ["createElement"]
      206 GETUPVAL                         R18 6
      207 GETTABLEKS                       R18 R18 K55 ["Text"]
      209 DUPTABLE                         R19 K56 [{"tag", "Text", "LayoutOrder", "Size"}]
      210 LOADK                            R20 K57 ["text-title-small text-align-x-left text-align-y-center content-default"]
      211 SETTABLEKS                       R20 R19 K42 ["tag"]
      213 SETTABLEKS                       R12 R19 K55 ["Text"]
      215 LOADN                            R20 1
      216 SETTABLEKS                       R20 R19 K4 ["LayoutOrder"]
      218 GETIMPORT                        R20 K37 [UDim2.new]
      220 LOADN                            R21 1
      221 GETUPVAL                         R23 9
      222 GETTABLEKS                       R23 R23 K58 ["TITLE_GUTTER_WIDTH"]
      224 MINUS                            R22 R23
      225 LOADN                            R23 0
      226 GETUPVAL                         R24 10
      227 GETTABLEKS                       R24 R24 K59 ["FONT_SIZE_TITLE"]
      229 CALL                             R20 4 1
      230 SETTABLEKS                       R20 R19 K33 ["Size"]
      232 CALL                             R17 2 1
      233 JUMPIF                           R17 ; [+1]
      234 LOADNIL                          R17
      235 SETTABLEKS                       R17 R16 K39 ["OwnerType"]
      237 CALL                             R13 3 -1
      238 RETURN                           R13 -1
      239 GETUPVAL                         R13 11
      240 GETTABLEKS                       R13 R13 K32 ["createElement"]
      242 LOADK                            R14 K60 ["Frame"]
      243 DUPTABLE                         R15 K64 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      244 GETIMPORT                        R16 K37 [UDim2.new]
      246 LOADN                            R17 1
      247 LOADN                            R18 0
      248 LOADN                            R19 0
      249 MOVE                             R20 R6
      250 CALL                             R16 4 1
      251 SETTABLEKS                       R16 R15 K33 ["Size"]
      253 LOADN                            R16 1
      254 SETTABLEKS                       R16 R15 K61 ["BackgroundTransparency"]
      256 GETIMPORT                        R16 K67 [Color3.fromRGB]
      258 LOADN                            R17 227
      259 LOADN                            R18 227
      260 LOADN                            R19 227
      261 CALL                             R16 3 1
      262 SETTABLEKS                       R16 R15 K62 ["BackgroundColor3"]
      264 LOADN                            R16 0
      265 SETTABLEKS                       R16 R15 K63 ["BorderSizePixel"]
      267 SETTABLEKS                       R5 R15 K4 ["LayoutOrder"]
      269 DUPTABLE                         R16 K69 [{"UIListLayout", "Title", "DropDown", "OwnerType"}]
      270 GETUPVAL                         R17 11
      271 GETTABLEKS                       R17 R17 K32 ["createElement"]
      273 LOADK                            R18 K68 ["UIListLayout"]
      274 DUPTABLE                         R19 K75 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      275 GETIMPORT                        R20 K78 [Enum.FillDirection.Horizontal]
      277 SETTABLEKS                       R20 R19 K70 ["FillDirection"]
      279 GETIMPORT                        R20 K80 [Enum.HorizontalAlignment.Left]
      281 SETTABLEKS                       R20 R19 K71 ["HorizontalAlignment"]
      283 GETIMPORT                        R20 K82 [Enum.VerticalAlignment.Top]
      285 SETTABLEKS                       R20 R19 K72 ["VerticalAlignment"]
      287 GETIMPORT                        R20 K83 [Enum.SortOrder.LayoutOrder]
      289 SETTABLEKS                       R20 R19 K73 ["SortOrder"]
      291 GETIMPORT                        R20 K85 [UDim.new]
      293 LOADN                            R21 0
      294 LOADN                            R22 0
      295 CALL                             R20 2 1
      296 SETTABLEKS                       R20 R19 K74 ["Padding"]
      298 CALL                             R17 2 1
      299 SETTABLEKS                       R17 R16 K68 ["UIListLayout"]
      301 GETUPVAL                         R17 11
      302 GETTABLEKS                       R17 R17 K32 ["createElement"]
      304 LOADK                            R18 K86 ["TextLabel"]
      305 DUPTABLE                         R19 K92 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
      306 GETIMPORT                        R20 K37 [UDim2.new]
      308 LOADN                            R21 0
      309 GETUPVAL                         R22 9
      310 GETTABLEKS                       R22 R22 K58 ["TITLE_GUTTER_WIDTH"]
      312 LOADN                            R23 1
      313 LOADN                            R24 0
      314 CALL                             R20 4 1
      315 SETTABLEKS                       R20 R19 K33 ["Size"]
      317 LOADN                            R20 1
      318 SETTABLEKS                       R20 R19 K61 ["BackgroundTransparency"]
      320 LOADN                            R20 0
      321 SETTABLEKS                       R20 R19 K63 ["BorderSizePixel"]
      323 SETTABLEKS                       R4 R19 K55 ["Text"]
      325 GETIMPORT                        R20 K93 [Enum.TextXAlignment.Left]
      327 SETTABLEKS                       R20 R19 K87 ["TextXAlignment"]
      329 GETIMPORT                        R20 K94 [Enum.TextYAlignment.Top]
      331 SETTABLEKS                       R20 R19 K88 ["TextYAlignment"]
      333 GETUPVAL                         R20 10
      334 GETTABLEKS                       R20 R20 K59 ["FONT_SIZE_TITLE"]
      336 SETTABLEKS                       R20 R19 K89 ["TextSize"]
      338 GETTABLEKS                       R20 R11 K95 ["titleTextColor"]
      340 SETTABLEKS                       R20 R19 K90 ["TextColor3"]
      342 GETUPVAL                         R20 10
      343 GETTABLEKS                       R20 R20 K96 ["FONT"]
      345 SETTABLEKS                       R20 R19 K91 ["Font"]
      347 LOADN                            R20 1
      348 SETTABLEKS                       R20 R19 K4 ["LayoutOrder"]
      350 CALL                             R17 2 1
      351 SETTABLEKS                       R17 R16 K3 ["Title"]
      353 GETTABLEKS                       R17 R0 K22 ["allowOwnerEdit"]
      355 JUMPIFNOT                        R17 ; [+34]
      356 GETUPVAL                         R17 11
      357 GETTABLEKS                       R17 R17 K32 ["createElement"]
      359 GETUPVAL                         R18 12
      360 DUPTABLE                         R19 K99 [{"Size", "visibleDropDownCount", "selectedDropDownIndex", "fontSize", "items", "onItemClicked", "LayoutOrder"}]
      361 GETIMPORT                        R20 K37 [UDim2.new]
      363 LOADN                            R21 0
      364 GETUPVAL                         R22 7
      365 LOADN                            R23 0
      366 LOADN                            R24 38
      367 CALL                             R20 4 1
      368 SETTABLEKS                       R20 R19 K33 ["Size"]
      370 GETUPVAL                         R20 13
      371 SETTABLEKS                       R20 R19 K97 ["visibleDropDownCount"]
      373 SETTABLEKS                       R8 R19 K48 ["selectedDropDownIndex"]
      375 GETUPVAL                         R20 10
      376 GETTABLEKS                       R20 R20 K100 ["FONT_SIZE_LARGE"]
      378 SETTABLEKS                       R20 R19 K98 ["fontSize"]
      380 GETTABLEKS                       R20 R0 K18 ["dropdownContent"]
      382 SETTABLEKS                       R20 R19 K47 ["items"]
      384 SETTABLEKS                       R10 R19 K49 ["onItemClicked"]
      386 LOADN                            R20 2
      387 SETTABLEKS                       R20 R19 K4 ["LayoutOrder"]
      389 CALL                             R17 2 1
      390 SETTABLEKS                       R17 R16 K38 ["DropDown"]
      392 GETTABLEKS                       R18 R0 K22 ["allowOwnerEdit"]
      394 NOT                              R17 R18
      395 JUMPIFNOT                        R17 ; [+53]
      396 GETUPVAL                         R17 11
      397 GETTABLEKS                       R17 R17 K32 ["createElement"]
      399 LOADK                            R18 K86 ["TextLabel"]
      400 DUPTABLE                         R19 K101 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "Font", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "LayoutOrder"}]
      401 GETIMPORT                        R20 K37 [UDim2.new]
      403 LOADN                            R21 1
      404 GETUPVAL                         R23 9
      405 GETTABLEKS                       R23 R23 K58 ["TITLE_GUTTER_WIDTH"]
      407 MINUS                            R22 R23
      408 LOADN                            R23 0
      409 GETUPVAL                         R24 10
      410 GETTABLEKS                       R24 R24 K59 ["FONT_SIZE_TITLE"]
      412 CALL                             R20 4 1
      413 SETTABLEKS                       R20 R19 K33 ["Size"]
      415 LOADN                            R20 1
      416 SETTABLEKS                       R20 R19 K61 ["BackgroundTransparency"]
      418 LOADN                            R20 0
      419 SETTABLEKS                       R20 R19 K63 ["BorderSizePixel"]
      421 SETTABLEKS                       R12 R19 K55 ["Text"]
      423 GETUPVAL                         R20 10
      424 GETTABLEKS                       R20 R20 K96 ["FONT"]
      426 SETTABLEKS                       R20 R19 K91 ["Font"]
      428 GETIMPORT                        R20 K93 [Enum.TextXAlignment.Left]
      430 SETTABLEKS                       R20 R19 K87 ["TextXAlignment"]
      432 GETIMPORT                        R20 K103 [Enum.TextYAlignment.Center]
      434 SETTABLEKS                       R20 R19 K88 ["TextYAlignment"]
      436 GETUPVAL                         R20 10
      437 GETTABLEKS                       R20 R20 K59 ["FONT_SIZE_TITLE"]
      439 SETTABLEKS                       R20 R19 K89 ["TextSize"]
      441 GETTABLEKS                       R20 R11 K104 ["textColor"]
      443 SETTABLEKS                       R20 R19 K90 ["TextColor3"]
      445 LOADN                            R20 2
      446 SETTABLEKS                       R20 R19 K4 ["LayoutOrder"]
      448 CALL                             R17 2 1
      449 SETTABLEKS                       R17 R16 K39 ["OwnerType"]
      451 CALL                             R13 3 -1
      452 RETURN                           R13 -1

PROTO_4:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R3 R1 K0 ["owner"]
        7 JUMPIFNOT                        R3 ; [+14]
        8 GETTABLEKS                       R4 R1 K0 ["owner"]
       10 GETTABLEKS                       R4 R4 K1 ["targetId"]
       12 GETTABLE                         R3 R0 R4
       13 JUMPIFNOT                        R3 ; [+8]
       14 GETTABLEKS                       R3 R1 K0 ["owner"]
       16 GETTABLEKS                       R3 R3 K1 ["targetId"]
       18 GETTABLE                         R2 R0 R3
       19 GETTABLEKS                       R2 R2 K2 ["groupMetadata"]
       21 JUMPIF                           R2 ; [+2]
       22 GETTABLEKS                       R2 R1 K3 ["assetGroupData"]
       24 GETTABLEKS                       R4 R0 K4 ["assetConfigData"]
       26 JUMPIFNOT                        R4 ; [+5]
       27 GETTABLEKS                       R3 R0 K4 ["assetConfigData"]
       29 GETTABLEKS                       R3 R3 K5 ["Creator"]
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
       61 GETTABLEKS                       R5 R0 K10 ["groupBundlesUploadEnabledForUser"]
       63 SETTABLEKS                       R5 R4 K10 ["groupBundlesUploadEnabledForUser"]
       65 GETTABLEKS                       R5 R0 K11 ["allowedGroupsForUpload"]
       67 JUMPIF                           R5 ; [+2]
       68 NEWTABLE                         R5 0 0
       70 SETTABLEKS                       R5 R4 K11 ["allowedGroupsForUpload"]
       72 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R4 R4 K0 ["MARKETPLACE_ACTION_TYPE_UPLOAD"]
        6 CALL                             R2 2 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K3 [{"getManageableGroups", "getAssetTypeAgents", "getAllowedGroupsForUpload"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getManageableGroups"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["getAssetTypeAgents"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R2 R1 K2 ["getAllowedGroupsForUpload"]
       17 RETURN                           R1 1

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
       30 GETTABLEKS                       R6 R1 K9 ["Framework"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K5 [require]
       35 GETTABLEKS                       R7 R1 K10 ["Foundation"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R0 K11 ["Src"]
       42 GETTABLEKS                       R8 R8 K12 ["Flags"]
       44 GETTABLEKS                       R8 R8 K13 ["getFFlagToolboxAssetConfigFoundationMigration"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R0 K11 ["Src"]
       49 GETTABLEKS                       R8 R8 K14 ["Util"]
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
       71 GETTABLEKS                       R13 R0 K11 ["Src"]
       73 GETTABLEKS                       R13 R13 K19 ["Components"]
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
       92 GETTABLEKS                       R18 R0 K11 ["Src"]
       94 GETTABLEKS                       R18 R18 K24 ["Networking"]
       96 GETTABLEKS                       R18 R18 K25 ["Requests"]
       98 GETIMPORT                        R19 K5 [require]
      100 GETTABLEKS                       R20 R18 K26 ["GetAssetConfigManageableGroupsRequest"]
      102 CALL                             R19 1 1
      103 GETIMPORT                        R20 K5 [require]
      105 GETTABLEKS                       R21 R18 K27 ["GetAssetTypeAgentsRequest"]
      107 CALL                             R20 1 1
      108 GETIMPORT                        R21 K5 [require]
      110 GETTABLEKS                       R22 R0 K11 ["Src"]
      112 GETTABLEKS                       R22 R22 K28 ["Thunks"]
      114 GETTABLEKS                       R22 R22 K29 ["GetGroupMetadata"]
      116 CALL                             R21 1 1
      117 GETIMPORT                        R22 K5 [require]
      119 GETTABLEKS                       R23 R18 K30 ["GetAllowedGroupsForAction"]
      121 CALL                             R22 1 1
      122 GETIMPORT                        R23 K5 [require]
      124 GETTABLEKS                       R24 R0 K11 ["Src"]
      126 GETTABLEKS                       R24 R24 K31 ["Types"]
      128 GETTABLEKS                       R24 R24 K32 ["ConfigTypes"]
      130 CALL                             R23 1 1
      131 GETIMPORT                        R24 K5 [require]
      133 GETTABLEKS                       R25 R0 K11 ["Src"]
      135 GETTABLEKS                       R25 R25 K31 ["Types"]
      137 GETTABLEKS                       R25 R25 K33 ["MarketplaceActionTypes"]
      139 CALL                             R24 1 1
      140 GETTABLEKS                       R25 R5 K34 ["ContextServices"]
      142 GETTABLEKS                       R26 R25 K35 ["withContext"]
      144 GETIMPORT                        R27 K5 [require]
      146 GETTABLEKS                       R28 R0 K11 ["Src"]
      148 GETTABLEKS                       R28 R28 K34 ["ContextServices"]
      150 GETTABLEKS                       R28 R28 K36 ["NetworkContext"]
      152 CALL                             R27 1 1
      153 GETIMPORT                        R28 K5 [require]
      155 GETTABLEKS                       R29 R0 K11 ["Src"]
      157 GETTABLEKS                       R29 R29 K12 ["Flags"]
      159 GETTABLEKS                       R29 R29 K37 ["getFFlagEnableUploadingMakeup"]
      161 CALL                             R28 1 1
      162 GETIMPORT                        R29 K5 [require]
      164 GETTABLEKS                       R30 R0 K11 ["Src"]
      166 GETTABLEKS                       R30 R30 K12 ["Flags"]
      168 GETTABLEKS                       R30 R30 K38 ["getFFlagToolboxAssetConfigGroupOwnership"]
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
      184 MOVE                             R32 R28
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
      205 CAPTURE                          VAL R29
      206 SETTABLEKS                       R33 R30 K50 ["didUpdate"]
      208 DUPCLOSURE                       R33 K51 [PROTO_2]
      209 CAPTURE                          VAL R12
      210 SETTABLEKS                       R33 R30 K52 ["didMount"]
      212 DUPCLOSURE                       R33 K53 [PROTO_3]
      213 CAPTURE                          VAL R12
      214 CAPTURE                          VAL R23
      215 CAPTURE                          VAL R11
      216 CAPTURE                          VAL R7
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R6
      220 CAPTURE                          VAL R31
      221 CAPTURE                          VAL R15
      222 CAPTURE                          VAL R10
      223 CAPTURE                          VAL R9
      224 CAPTURE                          VAL R3
      225 CAPTURE                          VAL R17
      226 CAPTURE                          VAL R32
      227 SETTABLEKS                       R33 R30 K54 ["render"]
      229 DUPCLOSURE                       R33 K55 [PROTO_4]
      230 DUPCLOSURE                       R34 K56 [PROTO_8]
      231 CAPTURE                          VAL R19
      232 CAPTURE                          VAL R20
      233 CAPTURE                          VAL R22
      234 CAPTURE                          VAL R24
      235 MOVE                             R35 R26
      236 DUPTABLE                         R36 K60 [{"Stylizer", "Localization", "Network"}]
      237 GETTABLEKS                       R37 R25 K57 ["Stylizer"]
      239 SETTABLEKS                       R37 R36 K57 ["Stylizer"]
      241 GETTABLEKS                       R37 R25 K58 ["Localization"]
      243 SETTABLEKS                       R37 R36 K58 ["Localization"]
      245 SETTABLEKS                       R27 R36 K59 ["Network"]
      247 CALL                             R35 1 1
      248 MOVE                             R36 R30
      249 CALL                             R35 1 1
      250 MOVE                             R30 R35
      251 GETTABLEKS                       R35 R4 K61 ["connect"]
      253 MOVE                             R36 R33
      254 MOVE                             R37 R34
      255 CALL                             R35 2 1
      256 MOVE                             R36 R30
      257 CALL                             R35 1 -1
      258 RETURN                           R35 -1
