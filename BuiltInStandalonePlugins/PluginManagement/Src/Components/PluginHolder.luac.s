PROTO_0:
        0 GETIMPORT                        R3 K2 [string.lower]
        2 GETTABLEKS                       R4 R0 K3 ["name"]
        4 CALL                             R3 1 1
        5 GETIMPORT                        R4 K2 [string.lower]
        7 GETTABLEKS                       R5 R1 K3 ["name"]
        9 CALL                             R4 1 1
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.sort]
        2 MOVE                             R2 R0
        3 DUPCLOSURE                       R3 K3 [PROTO_0]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"contentHeight"}]
        2 GETTABLEKS                       R4 R0 K2 ["AbsoluteContentSize"]
        4 GETTABLEKS                       R4 R4 K3 ["Y"]
        6 SETTABLEKS                       R4 R3 K0 ["contentHeight"]
        8 NAMECALL                         R1 R1 K4 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"contentHeight"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["contentHeight"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["resizeContainer"]
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 LOADK                            R4 K1 ["TextLabel"]
        4 DUPTABLE                         R5 K11 [{"Font", "TextColor3", "TextTransparency", "Size", "TextSize", "TextXAlignment", "Text", "LayoutOrder", "BackgroundTransparency"}]
        5 GETIMPORT                        R6 K14 [Enum.Font.SourceSans]
        7 SETTABLEKS                       R6 R5 K2 ["Font"]
        9 GETTABLEKS                       R6 R1 K15 ["SubTitleTextColor"]
       11 SETTABLEKS                       R6 R5 K3 ["TextColor3"]
       13 LOADN                            R6 0
       14 SETTABLEKS                       R6 R5 K4 ["TextTransparency"]
       16 GETIMPORT                        R6 K18 [UDim2.new]
       18 LOADN                            R7 1
       19 LOADN                            R8 0
       20 LOADN                            R9 0
       21 GETUPVAL                         R12 1
       22 GETTABLEKS                       R12 R12 K20 ["SUBTITLE_PADDING"]
       24 ADDK                             R11 R12 K19 [16]
       25 GETUPVAL                         R13 1
       26 GETTABLEKS                       R13 R13 K20 ["SUBTITLE_PADDING"]
       28 GETUPVAL                         R14 1
       29 GETTABLEKS                       R14 R14 K21 ["PLUGIN_ENTRY_PADDING"]
       31 SUB                              R12 R13 R14
       32 ADD                              R10 R11 R12
       33 CALL                             R6 4 1
       34 SETTABLEKS                       R6 R5 K5 ["Size"]
       36 LOADN                            R6 20
       37 SETTABLEKS                       R6 R5 K6 ["TextSize"]
       39 GETIMPORT                        R6 K23 [Enum.TextXAlignment.Left]
       41 SETTABLEKS                       R6 R5 K7 ["TextXAlignment"]
       43 SETTABLEKS                       R2 R5 K8 ["Text"]
       45 GETTABLEKS                       R6 R0 K24 ["order"]
       47 NAMECALL                         R6 R6 K25 ["getNextOrder"]
       49 CALL                             R6 1 1
       50 SETTABLEKS                       R6 R5 K9 ["LayoutOrder"]
       52 LOADN                            R6 1
       53 SETTABLEKS                       R6 R5 K10 ["BackgroundTransparency"]
       55 DUPTABLE                         R6 K27 [{"Padding"}]
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K0 ["createElement"]
       59 LOADK                            R8 K28 ["UIPadding"]
       60 DUPTABLE                         R9 K31 [{"PaddingLeft", "PaddingTop"}]
       61 GETIMPORT                        R10 K33 [UDim.new]
       63 LOADN                            R11 0
       64 GETUPVAL                         R12 1
       65 GETTABLEKS                       R12 R12 K34 ["HEADER_LEFT_PADDING"]
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K29 ["PaddingLeft"]
       70 GETIMPORT                        R10 K33 [UDim.new]
       72 LOADN                            R11 0
       73 GETUPVAL                         R12 1
       74 GETTABLEKS                       R12 R12 K20 ["SUBTITLE_PADDING"]
       76 CALL                             R10 2 1
       77 SETTABLEKS                       R10 R9 K30 ["PaddingTop"]
       79 CALL                             R7 2 1
       80 SETTABLEKS                       R7 R6 K26 ["Padding"]
       82 CALL                             R3 3 -1
       83 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["order"]
        6 GETTABLEKS                       R1 R0 K2 ["props"]
        8 GETTABLEKS                       R2 R0 K3 ["state"]
       10 GETTABLEKS                       R3 R1 K4 ["Localization"]
       12 GETTABLEKS                       R4 R1 K5 ["Stylizer"]
       14 GETTABLEKS                       R5 R2 K6 ["contentHeight"]
       16 GETTABLEKS                       R6 R1 K7 ["plugin"]
       18 GETTABLEKS                       R7 R1 K8 ["pluginList"]
       20 GETTABLEKS                       R8 R1 K9 ["position"]
       22 GETTABLEKS                       R9 R1 K10 ["size"]
       24 GETTABLEKS                       R10 R1 K11 ["anchorPoint"]
       26 GETTABLEKS                       R11 R1 K12 ["onPluginUninstalled"]
       28 LOADK                            R14 K13 ["Header"]
       29 LOADK                            R15 K14 ["PendingUpdates"]
       30 NAMECALL                         R12 R3 K15 ["getText"]
       32 CALL                             R12 3 1
       33 LOADK                            R15 K13 ["Header"]
       34 LOADK                            R16 K16 ["UpToDate"]
       35 NAMECALL                         R13 R3 K15 ["getText"]
       37 CALL                             R13 3 1
       38 DUPTABLE                         R14 K18 [{"Layout"}]
       39 GETUPVAL                         R15 1
       40 GETTABLEKS                       R15 R15 K19 ["createElement"]
       42 LOADK                            R16 K20 ["UIListLayout"]
       43 NEWTABLE                         R17 4 0
       45 GETIMPORT                        R18 K24 [Enum.SortOrder.LayoutOrder]
       47 SETTABLEKS                       R18 R17 K22 ["SortOrder"]
       49 GETIMPORT                        R18 K27 [Enum.HorizontalAlignment.Center]
       51 SETTABLEKS                       R18 R17 K25 ["HorizontalAlignment"]
       53 GETIMPORT                        R18 K30 [Enum.VerticalAlignment.Top]
       55 SETTABLEKS                       R18 R17 K28 ["VerticalAlignment"]
       57 GETUPVAL                         R18 1
       58 GETTABLEKS                       R18 R18 K31 ["Change"]
       60 GETTABLEKS                       R18 R18 K32 ["AbsoluteContentSize"]
       62 GETTABLEKS                       R19 R0 K33 ["resizeContainer"]
       64 SETTABLE                         R19 R17 R18
       65 CALL                             R15 2 1
       66 SETTABLEKS                       R15 R14 K17 ["Layout"]
       68 NEWTABLE                         R15 0 0
       70 NEWTABLE                         R16 0 0
       72 GETIMPORT                        R17 K35 [pairs]
       74 MOVE                             R18 R7
       75 CALL                             R17 1 3
       76 FORGPREP_NEXT                    R17
       77 LOADNIL                          R22
       78 GETUPVAL                         R23 2
       79 CALL                             R23 0 1
       80 JUMPIFNOT                        R23 ; [+12]
       81 GETTABLEKS                       R23 R0 K2 ["props"]
       83 GETTABLEKS                       R23 R23 K36 ["PluginManagementApi"]
       85 MOVE                             R25 R20
       86 GETTABLEKS                       R26 R21 K37 ["latestVersion"]
       88 NAMECALL                         R23 R23 K38 ["IsPluginUpToDate"]
       90 CALL                             R23 3 1
       91 MOVE                             R22 R23
       92 JUMP                             ; [+8]
       93 GETUPVAL                         R23 3
       94 MOVE                             R25 R20
       95 GETTABLEKS                       R26 R21 K37 ["latestVersion"]
       97 NAMECALL                         R23 R23 K38 ["IsPluginUpToDate"]
       99 CALL                             R23 3 1
      100 MOVE                             R22 R23
      101 JUMPIFNOT                        R22 ; [+8]
      102 FASTCALL2                        TABLE_INSERT R16 R21 ; [+5]
      104 MOVE                             R24 R16
      105 MOVE                             R25 R21
      106 GETIMPORT                        R23 K41 [table.insert]
      108 CALL                             R23 2 0
      109 JUMP                             ; [+7]
      110 FASTCALL2                        TABLE_INSERT R15 R21 ; [+5]
      112 MOVE                             R24 R15
      113 MOVE                             R25 R21
      114 GETIMPORT                        R23 K41 [table.insert]
      116 CALL                             R23 2 0
      117 FORGLOOP                         R17 2 ; [-41]
      119 GETIMPORT                        R17 K43 [table.sort]
      121 MOVE                             R18 R16
      122 DUPCLOSURE                       R19 K44 [PROTO_0]
      123 CALL                             R17 2 0
      124 GETIMPORT                        R17 K43 [table.sort]
      126 MOVE                             R18 R15
      127 DUPCLOSURE                       R19 K44 [PROTO_0]
      128 CALL                             R17 2 0
      129 LOADB                            R17 0
      130 LENGTH                           R18 R16
      131 LOADN                            R19 0
      132 JUMPIFNOTLT                      R19 R18 ; [+7]
      134 LENGTH                           R18 R15
      135 LOADN                            R19 0
      136 JUMPIFLT                         R19 R18 ; [+2]
      138 LOADB                            R17 0 +1
      139 LOADB                            R17 1
      140 JUMPIFNOT                        R17 ; [+7]
      141 MOVE                             R20 R4
      142 MOVE                             R21 R12
      143 NAMECALL                         R18 R0 K45 ["createLabel"]
      145 CALL                             R18 3 1
      146 SETTABLEKS                       R18 R14 K14 ["PendingUpdates"]
      148 GETUPVAL                         R21 4
      149 GETTABLEKS                       R21 R21 K46 ["THUMBNAIL_SIZE"]
      151 MINUS                            R20 R21
      152 GETUPVAL                         R21 4
      153 GETTABLEKS                       R21 R21 K47 ["PLUGIN_HORIZONTAL_PADDING"]
      155 SUB                              R19 R20 R21
      156 GETUPVAL                         R21 4
      157 GETTABLEKS                       R21 R21 K49 ["HEADER_RIGHT_PADDING"]
      159 MULK                             R20 R21 K48 [2]
      160 ADD                              R18 R19 R20
      161 GETIMPORT                        R19 K51 [ipairs]
      163 MOVE                             R20 R15
      164 CALL                             R19 1 3
      165 FORGPREP_INEXT                   R19
      166 GETTABLEKS                       R25 R23 K52 ["assetId"]
      168 LOADK                            R26 K53 ["_Entry"]
      169 CONCAT                           R24 R25 R26
      170 GETUPVAL                         R25 1
      171 GETTABLEKS                       R25 R25 K19 ["createElement"]
      173 GETUPVAL                         R26 5
      174 DUPTABLE                         R27 K56 [{"LayoutOrder", "data", "isUpdated", "plugin", "onPluginUninstalled"}]
      175 GETTABLEKS                       R28 R0 K1 ["order"]
      177 NAMECALL                         R28 R28 K57 ["getNextOrder"]
      179 CALL                             R28 1 1
      180 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      182 SETTABLEKS                       R23 R27 K54 ["data"]
      184 LOADB                            R28 0
      185 SETTABLEKS                       R28 R27 K55 ["isUpdated"]
      187 SETTABLEKS                       R6 R27 K7 ["plugin"]
      189 SETTABLEKS                       R11 R27 K12 ["onPluginUninstalled"]
      191 CALL                             R25 2 1
      192 SETTABLE                         R25 R14 R24
      193 GETTABLEKS                       R25 R23 K52 ["assetId"]
      195 LOADK                            R26 K58 ["_Border"]
      196 CONCAT                           R24 R25 R26
      197 GETUPVAL                         R25 1
      198 GETTABLEKS                       R25 R25 K19 ["createElement"]
      200 LOADK                            R26 K59 ["Frame"]
      201 DUPTABLE                         R27 K62 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
      202 GETTABLEKS                       R28 R0 K1 ["order"]
      204 NAMECALL                         R28 R28 K57 ["getNextOrder"]
      206 CALL                             R28 1 1
      207 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      209 GETIMPORT                        R28 K64 [UDim2.new]
      211 LOADN                            R29 1
      212 LOADN                            R30 0
      213 LOADN                            R31 0
      214 LOADN                            R32 1
      215 CALL                             R28 4 1
      216 SETTABLEKS                       R28 R27 K60 ["Size"]
      218 LOADN                            R28 1
      219 SETTABLEKS                       R28 R27 K61 ["BackgroundTransparency"]
      221 DUPTABLE                         R28 K66 [{"Border"}]
      222 GETUPVAL                         R29 1
      223 GETTABLEKS                       R29 R29 K19 ["createElement"]
      225 LOADK                            R30 K59 ["Frame"]
      226 DUPTABLE                         R31 K71 [{"AnchorPoint", "BackgroundColor3", "BorderSizePixel", "Position", "Size"}]
      227 GETIMPORT                        R32 K73 [Vector2.new]
      229 LOADN                            R33 1
      230 LOADK                            R34 K74 [0.5]
      231 CALL                             R32 2 1
      232 SETTABLEKS                       R32 R31 K67 ["AnchorPoint"]
      234 GETTABLEKS                       R32 R4 K75 ["BorderColor"]
      236 SETTABLEKS                       R32 R31 K68 ["BackgroundColor3"]
      238 LOADN                            R32 0
      239 SETTABLEKS                       R32 R31 K69 ["BorderSizePixel"]
      241 GETIMPORT                        R32 K64 [UDim2.new]
      243 LOADN                            R33 1
      244 GETUPVAL                         R34 4
      245 GETTABLEKS                       R34 R34 K49 ["HEADER_RIGHT_PADDING"]
      247 LOADN                            R35 0
      248 LOADN                            R36 0
      249 CALL                             R32 4 1
      250 SETTABLEKS                       R32 R31 K70 ["Position"]
      252 GETIMPORT                        R32 K64 [UDim2.new]
      254 LOADN                            R33 1
      255 MOVE                             R34 R18
      256 LOADN                            R35 0
      257 LOADN                            R36 1
      258 CALL                             R32 4 1
      259 SETTABLEKS                       R32 R31 K60 ["Size"]
      261 CALL                             R29 2 1
      262 SETTABLEKS                       R29 R28 K65 ["Border"]
      264 CALL                             R25 3 1
      265 SETTABLE                         R25 R14 R24
      266 FORGLOOP                         R19 2 [inext] ; [-101]
      268 JUMPIFNOT                        R17 ; [+7]
      269 MOVE                             R21 R4
      270 MOVE                             R22 R13
      271 NAMECALL                         R19 R0 K45 ["createLabel"]
      273 CALL                             R19 3 1
      274 SETTABLEKS                       R19 R14 K16 ["UpToDate"]
      276 GETIMPORT                        R19 K51 [ipairs]
      278 MOVE                             R20 R16
      279 CALL                             R19 1 3
      280 FORGPREP_INEXT                   R19
      281 GETTABLEKS                       R25 R23 K52 ["assetId"]
      283 LOADK                            R26 K53 ["_Entry"]
      284 CONCAT                           R24 R25 R26
      285 GETUPVAL                         R25 1
      286 GETTABLEKS                       R25 R25 K19 ["createElement"]
      288 GETUPVAL                         R26 5
      289 DUPTABLE                         R27 K56 [{"LayoutOrder", "data", "isUpdated", "plugin", "onPluginUninstalled"}]
      290 GETTABLEKS                       R28 R0 K1 ["order"]
      292 NAMECALL                         R28 R28 K57 ["getNextOrder"]
      294 CALL                             R28 1 1
      295 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      297 SETTABLEKS                       R23 R27 K54 ["data"]
      299 LOADB                            R28 1
      300 SETTABLEKS                       R28 R27 K55 ["isUpdated"]
      302 SETTABLEKS                       R6 R27 K7 ["plugin"]
      304 SETTABLEKS                       R11 R27 K12 ["onPluginUninstalled"]
      306 CALL                             R25 2 1
      307 SETTABLE                         R25 R14 R24
      308 GETTABLEKS                       R25 R23 K52 ["assetId"]
      310 LOADK                            R26 K58 ["_Border"]
      311 CONCAT                           R24 R25 R26
      312 GETUPVAL                         R25 1
      313 GETTABLEKS                       R25 R25 K19 ["createElement"]
      315 LOADK                            R26 K59 ["Frame"]
      316 DUPTABLE                         R27 K62 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
      317 GETTABLEKS                       R28 R0 K1 ["order"]
      319 NAMECALL                         R28 R28 K57 ["getNextOrder"]
      321 CALL                             R28 1 1
      322 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      324 GETIMPORT                        R28 K64 [UDim2.new]
      326 LOADN                            R29 1
      327 LOADN                            R30 0
      328 LOADN                            R31 0
      329 LOADN                            R32 1
      330 CALL                             R28 4 1
      331 SETTABLEKS                       R28 R27 K60 ["Size"]
      333 LOADN                            R28 1
      334 SETTABLEKS                       R28 R27 K61 ["BackgroundTransparency"]
      336 DUPTABLE                         R28 K66 [{"Border"}]
      337 GETUPVAL                         R29 1
      338 GETTABLEKS                       R29 R29 K19 ["createElement"]
      340 LOADK                            R30 K59 ["Frame"]
      341 DUPTABLE                         R31 K71 [{"AnchorPoint", "BackgroundColor3", "BorderSizePixel", "Position", "Size"}]
      342 GETIMPORT                        R32 K73 [Vector2.new]
      344 LOADN                            R33 1
      345 LOADK                            R34 K74 [0.5]
      346 CALL                             R32 2 1
      347 SETTABLEKS                       R32 R31 K67 ["AnchorPoint"]
      349 GETTABLEKS                       R32 R4 K75 ["BorderColor"]
      351 SETTABLEKS                       R32 R31 K68 ["BackgroundColor3"]
      353 LOADN                            R32 0
      354 SETTABLEKS                       R32 R31 K69 ["BorderSizePixel"]
      356 GETIMPORT                        R32 K64 [UDim2.new]
      358 LOADN                            R33 1
      359 GETUPVAL                         R34 4
      360 GETTABLEKS                       R34 R34 K49 ["HEADER_RIGHT_PADDING"]
      362 LOADN                            R35 0
      363 LOADN                            R36 0
      364 CALL                             R32 4 1
      365 SETTABLEKS                       R32 R31 K70 ["Position"]
      367 GETIMPORT                        R32 K64 [UDim2.new]
      369 LOADN                            R33 1
      370 MOVE                             R34 R18
      371 LOADN                            R35 0
      372 LOADN                            R36 1
      373 CALL                             R32 4 1
      374 SETTABLEKS                       R32 R31 K60 ["Size"]
      376 CALL                             R29 2 1
      377 SETTABLEKS                       R29 R28 K65 ["Border"]
      379 CALL                             R25 3 1
      380 SETTABLE                         R25 R14 R24
      381 FORGLOOP                         R19 2 [inext] ; [-101]
      383 GETUPVAL                         R19 1
      384 GETTABLEKS                       R19 R19 K19 ["createElement"]
      386 LOADK                            R20 K76 ["ScrollingFrame"]
      387 DUPTABLE                         R21 K84 [{"Size", "CanvasSize", "Position", "AnchorPoint", "BackgroundColor3", "TopImage", "MidImage", "BottomImage", "BorderSizePixel", "ScrollBarImageColor3", "ScrollBarThickness", "ScrollBarImageTransparency"}]
      388 SETTABLEKS                       R9 R21 K60 ["Size"]
      390 GETIMPORT                        R22 K64 [UDim2.new]
      392 LOADN                            R23 0
      393 LOADN                            R24 0
      394 LOADN                            R25 0
      395 MOVE                             R26 R5
      396 CALL                             R22 4 1
      397 SETTABLEKS                       R22 R21 K77 ["CanvasSize"]
      399 SETTABLEKS                       R8 R21 K70 ["Position"]
      401 SETTABLEKS                       R10 R21 K67 ["AnchorPoint"]
      403 GETTABLEKS                       R22 R4 K85 ["BackgroundColor"]
      405 SETTABLEKS                       R22 R21 K68 ["BackgroundColor3"]
      407 LOADK                            R22 K86 ["rbxasset://textures/StudioToolbox/ScrollBarTop.png"]
      408 SETTABLEKS                       R22 R21 K78 ["TopImage"]
      410 LOADK                            R22 K87 ["rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"]
      411 SETTABLEKS                       R22 R21 K79 ["MidImage"]
      413 LOADK                            R22 K88 ["rbxasset://textures/StudioToolbox/ScrollBarBottom.png"]
      414 SETTABLEKS                       R22 R21 K80 ["BottomImage"]
      416 LOADN                            R22 0
      417 SETTABLEKS                       R22 R21 K69 ["BorderSizePixel"]
      419 GETTABLEKS                       R22 R4 K89 ["ScrollbarColor"]
      421 SETTABLEKS                       R22 R21 K81 ["ScrollBarImageColor3"]
      423 GETTABLEKS                       R22 R4 K90 ["ScrollbarSize"]
      425 SETTABLEKS                       R22 R21 K82 ["ScrollBarThickness"]
      427 GETTABLEKS                       R22 R4 K91 ["ScrollbarTransparency"]
      429 SETTABLEKS                       R22 R21 K83 ["ScrollBarImageTransparency"]
      431 MOVE                             R22 R14
      432 CALL                             R19 3 -1
      433 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Bin"]
       19 GETTABLEKS                       R3 R3 K10 ["getFFlagStudioFixPluginManagementPluginTests"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K11 ["Packages"]
       26 GETTABLEKS                       R4 R4 K12 ["Roact"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K11 ["Packages"]
       33 GETTABLEKS                       R5 R5 K13 ["Framework"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R4 R4 K14 ["Util"]
       38 GETIMPORT                        R5 K8 [require]
       40 GETTABLEKS                       R6 R1 K15 ["Src"]
       42 GETTABLEKS                       R6 R6 K16 ["Components"]
       44 GETTABLEKS                       R6 R6 K17 ["PluginEntry"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K8 [require]
       49 GETTABLEKS                       R7 R1 K15 ["Src"]
       51 GETTABLEKS                       R7 R7 K14 ["Util"]
       53 GETTABLEKS                       R7 R7 K18 ["Constants"]
       55 CALL                             R6 1 1
       56 GETTABLEKS                       R7 R4 K19 ["LayoutOrderIterator"]
       58 GETIMPORT                        R8 K8 [require]
       60 GETTABLEKS                       R9 R1 K11 ["Packages"]
       62 GETTABLEKS                       R9 R9 K13 ["Framework"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R8 R8 K20 ["ContextServices"]
       67 GETTABLEKS                       R9 R8 K21 ["withContext"]
       69 LOADNIL                          R10
       70 MOVE                             R11 R2
       71 CALL                             R11 0 1
       72 JUMPIFNOT                        R11 ; [+10]
       73 GETIMPORT                        R11 K8 [require]
       75 GETTABLEKS                       R12 R1 K15 ["Src"]
       77 GETTABLEKS                       R12 R12 K14 ["Util"]
       79 GETTABLEKS                       R12 R12 K22 ["PluginManagementApi"]
       81 CALL                             R11 1 1
       82 MOVE                             R10 R11
       83 GETTABLEKS                       R11 R3 K23 ["Component"]
       85 LOADK                            R13 K24 ["PluginHolder"]
       86 NAMECALL                         R11 R11 K25 ["extend"]
       88 CALL                             R11 2 1
       89 DUPCLOSURE                       R12 K26 [PROTO_1]
       90 DUPCLOSURE                       R13 K27 [PROTO_3]
       91 SETTABLEKS                       R13 R11 K28 ["init"]
       93 DUPCLOSURE                       R13 K29 [PROTO_4]
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R6
       96 SETTABLEKS                       R13 R11 K30 ["createLabel"]
       98 DUPCLOSURE                       R13 K31 [PROTO_5]
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R5
      105 SETTABLEKS                       R13 R11 K32 ["render"]
      107 MOVE                             R13 R9
      108 DUPTABLE                         R14 K35 [{"Localization", "Stylizer", "PluginManagementApi"}]
      109 GETTABLEKS                       R15 R8 K33 ["Localization"]
      111 SETTABLEKS                       R15 R14 K33 ["Localization"]
      113 GETTABLEKS                       R15 R8 K34 ["Stylizer"]
      115 SETTABLEKS                       R15 R14 K34 ["Stylizer"]
      117 MOVE                             R16 R2
      118 CALL                             R16 0 1
      119 JUMPIFNOT                        R16 ; [+2]
      120 MOVE                             R15 R10
      121 JUMPIF                           R15 ; [+1]
      122 LOADNIL                          R15
      123 SETTABLEKS                       R15 R14 K22 ["PluginManagementApi"]
      125 CALL                             R13 1 1
      126 MOVE                             R14 R11
      127 CALL                             R13 1 1
      128 MOVE                             R11 R13
      129 RETURN                           R11 1
