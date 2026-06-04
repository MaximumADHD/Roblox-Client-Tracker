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
       77 GETTABLEKS                       R22 R0 K2 ["props"]
       79 GETTABLEKS                       R22 R22 K36 ["PluginManagementApi"]
       81 MOVE                             R24 R20
       82 GETTABLEKS                       R25 R21 K37 ["latestVersion"]
       84 NAMECALL                         R22 R22 K38 ["IsPluginUpToDate"]
       86 CALL                             R22 3 1
       87 JUMPIFNOT                        R22 ; [+8]
       88 FASTCALL2                        TABLE_INSERT R16 R21 ; [+5]
       90 MOVE                             R24 R16
       91 MOVE                             R25 R21
       92 GETIMPORT                        R23 K41 [table.insert]
       94 CALL                             R23 2 0
       95 JUMP                             ; [+7]
       96 FASTCALL2                        TABLE_INSERT R15 R21 ; [+5]
       98 MOVE                             R24 R15
       99 MOVE                             R25 R21
      100 GETIMPORT                        R23 K41 [table.insert]
      102 CALL                             R23 2 0
      103 FORGLOOP                         R17 2 ; [-27]
      105 GETIMPORT                        R17 K43 [table.sort]
      107 MOVE                             R18 R16
      108 DUPCLOSURE                       R19 K44 [PROTO_0]
      109 CALL                             R17 2 0
      110 GETIMPORT                        R17 K43 [table.sort]
      112 MOVE                             R18 R15
      113 DUPCLOSURE                       R19 K44 [PROTO_0]
      114 CALL                             R17 2 0
      115 LOADB                            R17 0
      116 LENGTH                           R18 R16
      117 LOADN                            R19 0
      118 JUMPIFNOTLT                      R19 R18 ; [+7]
      120 LENGTH                           R18 R15
      121 LOADN                            R19 0
      122 JUMPIFLT                         R19 R18 ; [+2]
      124 LOADB                            R17 0 +1
      125 LOADB                            R17 1
      126 JUMPIFNOT                        R17 ; [+7]
      127 MOVE                             R20 R4
      128 MOVE                             R21 R12
      129 NAMECALL                         R18 R0 K45 ["createLabel"]
      131 CALL                             R18 3 1
      132 SETTABLEKS                       R18 R14 K14 ["PendingUpdates"]
      134 GETUPVAL                         R21 2
      135 GETTABLEKS                       R21 R21 K46 ["THUMBNAIL_SIZE"]
      137 MINUS                            R20 R21
      138 GETUPVAL                         R21 2
      139 GETTABLEKS                       R21 R21 K47 ["PLUGIN_HORIZONTAL_PADDING"]
      141 SUB                              R19 R20 R21
      142 GETUPVAL                         R21 2
      143 GETTABLEKS                       R21 R21 K49 ["HEADER_RIGHT_PADDING"]
      145 MULK                             R20 R21 K48 [2]
      146 ADD                              R18 R19 R20
      147 GETIMPORT                        R19 K51 [ipairs]
      149 MOVE                             R20 R15
      150 CALL                             R19 1 3
      151 FORGPREP_INEXT                   R19
      152 GETTABLEKS                       R25 R23 K52 ["assetId"]
      154 LOADK                            R26 K53 ["_Entry"]
      155 CONCAT                           R24 R25 R26
      156 GETUPVAL                         R25 1
      157 GETTABLEKS                       R25 R25 K19 ["createElement"]
      159 GETUPVAL                         R26 3
      160 DUPTABLE                         R27 K56 [{"LayoutOrder", "data", "isUpdated", "plugin", "onPluginUninstalled"}]
      161 GETTABLEKS                       R28 R0 K1 ["order"]
      163 NAMECALL                         R28 R28 K57 ["getNextOrder"]
      165 CALL                             R28 1 1
      166 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      168 SETTABLEKS                       R23 R27 K54 ["data"]
      170 LOADB                            R28 0
      171 SETTABLEKS                       R28 R27 K55 ["isUpdated"]
      173 SETTABLEKS                       R6 R27 K7 ["plugin"]
      175 SETTABLEKS                       R11 R27 K12 ["onPluginUninstalled"]
      177 CALL                             R25 2 1
      178 SETTABLE                         R25 R14 R24
      179 GETTABLEKS                       R25 R23 K52 ["assetId"]
      181 LOADK                            R26 K58 ["_Border"]
      182 CONCAT                           R24 R25 R26
      183 GETUPVAL                         R25 1
      184 GETTABLEKS                       R25 R25 K19 ["createElement"]
      186 LOADK                            R26 K59 ["Frame"]
      187 DUPTABLE                         R27 K62 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
      188 GETTABLEKS                       R28 R0 K1 ["order"]
      190 NAMECALL                         R28 R28 K57 ["getNextOrder"]
      192 CALL                             R28 1 1
      193 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      195 GETIMPORT                        R28 K64 [UDim2.new]
      197 LOADN                            R29 1
      198 LOADN                            R30 0
      199 LOADN                            R31 0
      200 LOADN                            R32 1
      201 CALL                             R28 4 1
      202 SETTABLEKS                       R28 R27 K60 ["Size"]
      204 LOADN                            R28 1
      205 SETTABLEKS                       R28 R27 K61 ["BackgroundTransparency"]
      207 DUPTABLE                         R28 K66 [{"Border"}]
      208 GETUPVAL                         R29 1
      209 GETTABLEKS                       R29 R29 K19 ["createElement"]
      211 LOADK                            R30 K59 ["Frame"]
      212 DUPTABLE                         R31 K71 [{"AnchorPoint", "BackgroundColor3", "BorderSizePixel", "Position", "Size"}]
      213 GETIMPORT                        R32 K73 [Vector2.new]
      215 LOADN                            R33 1
      216 LOADK                            R34 K74 [0.5]
      217 CALL                             R32 2 1
      218 SETTABLEKS                       R32 R31 K67 ["AnchorPoint"]
      220 GETTABLEKS                       R32 R4 K75 ["BorderColor"]
      222 SETTABLEKS                       R32 R31 K68 ["BackgroundColor3"]
      224 LOADN                            R32 0
      225 SETTABLEKS                       R32 R31 K69 ["BorderSizePixel"]
      227 GETIMPORT                        R32 K64 [UDim2.new]
      229 LOADN                            R33 1
      230 GETUPVAL                         R34 2
      231 GETTABLEKS                       R34 R34 K49 ["HEADER_RIGHT_PADDING"]
      233 LOADN                            R35 0
      234 LOADN                            R36 0
      235 CALL                             R32 4 1
      236 SETTABLEKS                       R32 R31 K70 ["Position"]
      238 GETIMPORT                        R32 K64 [UDim2.new]
      240 LOADN                            R33 1
      241 MOVE                             R34 R18
      242 LOADN                            R35 0
      243 LOADN                            R36 1
      244 CALL                             R32 4 1
      245 SETTABLEKS                       R32 R31 K60 ["Size"]
      247 CALL                             R29 2 1
      248 SETTABLEKS                       R29 R28 K65 ["Border"]
      250 CALL                             R25 3 1
      251 SETTABLE                         R25 R14 R24
      252 FORGLOOP                         R19 2 [inext] ; [-101]
      254 JUMPIFNOT                        R17 ; [+7]
      255 MOVE                             R21 R4
      256 MOVE                             R22 R13
      257 NAMECALL                         R19 R0 K45 ["createLabel"]
      259 CALL                             R19 3 1
      260 SETTABLEKS                       R19 R14 K16 ["UpToDate"]
      262 GETIMPORT                        R19 K51 [ipairs]
      264 MOVE                             R20 R16
      265 CALL                             R19 1 3
      266 FORGPREP_INEXT                   R19
      267 GETTABLEKS                       R25 R23 K52 ["assetId"]
      269 LOADK                            R26 K53 ["_Entry"]
      270 CONCAT                           R24 R25 R26
      271 GETUPVAL                         R25 1
      272 GETTABLEKS                       R25 R25 K19 ["createElement"]
      274 GETUPVAL                         R26 3
      275 DUPTABLE                         R27 K56 [{"LayoutOrder", "data", "isUpdated", "plugin", "onPluginUninstalled"}]
      276 GETTABLEKS                       R28 R0 K1 ["order"]
      278 NAMECALL                         R28 R28 K57 ["getNextOrder"]
      280 CALL                             R28 1 1
      281 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      283 SETTABLEKS                       R23 R27 K54 ["data"]
      285 LOADB                            R28 1
      286 SETTABLEKS                       R28 R27 K55 ["isUpdated"]
      288 SETTABLEKS                       R6 R27 K7 ["plugin"]
      290 SETTABLEKS                       R11 R27 K12 ["onPluginUninstalled"]
      292 CALL                             R25 2 1
      293 SETTABLE                         R25 R14 R24
      294 GETTABLEKS                       R25 R23 K52 ["assetId"]
      296 LOADK                            R26 K58 ["_Border"]
      297 CONCAT                           R24 R25 R26
      298 GETUPVAL                         R25 1
      299 GETTABLEKS                       R25 R25 K19 ["createElement"]
      301 LOADK                            R26 K59 ["Frame"]
      302 DUPTABLE                         R27 K62 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
      303 GETTABLEKS                       R28 R0 K1 ["order"]
      305 NAMECALL                         R28 R28 K57 ["getNextOrder"]
      307 CALL                             R28 1 1
      308 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      310 GETIMPORT                        R28 K64 [UDim2.new]
      312 LOADN                            R29 1
      313 LOADN                            R30 0
      314 LOADN                            R31 0
      315 LOADN                            R32 1
      316 CALL                             R28 4 1
      317 SETTABLEKS                       R28 R27 K60 ["Size"]
      319 LOADN                            R28 1
      320 SETTABLEKS                       R28 R27 K61 ["BackgroundTransparency"]
      322 DUPTABLE                         R28 K66 [{"Border"}]
      323 GETUPVAL                         R29 1
      324 GETTABLEKS                       R29 R29 K19 ["createElement"]
      326 LOADK                            R30 K59 ["Frame"]
      327 DUPTABLE                         R31 K71 [{"AnchorPoint", "BackgroundColor3", "BorderSizePixel", "Position", "Size"}]
      328 GETIMPORT                        R32 K73 [Vector2.new]
      330 LOADN                            R33 1
      331 LOADK                            R34 K74 [0.5]
      332 CALL                             R32 2 1
      333 SETTABLEKS                       R32 R31 K67 ["AnchorPoint"]
      335 GETTABLEKS                       R32 R4 K75 ["BorderColor"]
      337 SETTABLEKS                       R32 R31 K68 ["BackgroundColor3"]
      339 LOADN                            R32 0
      340 SETTABLEKS                       R32 R31 K69 ["BorderSizePixel"]
      342 GETIMPORT                        R32 K64 [UDim2.new]
      344 LOADN                            R33 1
      345 GETUPVAL                         R34 2
      346 GETTABLEKS                       R34 R34 K49 ["HEADER_RIGHT_PADDING"]
      348 LOADN                            R35 0
      349 LOADN                            R36 0
      350 CALL                             R32 4 1
      351 SETTABLEKS                       R32 R31 K70 ["Position"]
      353 GETIMPORT                        R32 K64 [UDim2.new]
      355 LOADN                            R33 1
      356 MOVE                             R34 R18
      357 LOADN                            R35 0
      358 LOADN                            R36 1
      359 CALL                             R32 4 1
      360 SETTABLEKS                       R32 R31 K60 ["Size"]
      362 CALL                             R29 2 1
      363 SETTABLEKS                       R29 R28 K65 ["Border"]
      365 CALL                             R25 3 1
      366 SETTABLE                         R25 R14 R24
      367 FORGLOOP                         R19 2 [inext] ; [-101]
      369 GETUPVAL                         R19 1
      370 GETTABLEKS                       R19 R19 K19 ["createElement"]
      372 LOADK                            R20 K76 ["ScrollingFrame"]
      373 DUPTABLE                         R21 K84 [{"Size", "CanvasSize", "Position", "AnchorPoint", "BackgroundColor3", "TopImage", "MidImage", "BottomImage", "BorderSizePixel", "ScrollBarImageColor3", "ScrollBarThickness", "ScrollBarImageTransparency"}]
      374 SETTABLEKS                       R9 R21 K60 ["Size"]
      376 GETIMPORT                        R22 K64 [UDim2.new]
      378 LOADN                            R23 0
      379 LOADN                            R24 0
      380 LOADN                            R25 0
      381 MOVE                             R26 R5
      382 CALL                             R22 4 1
      383 SETTABLEKS                       R22 R21 K77 ["CanvasSize"]
      385 SETTABLEKS                       R8 R21 K70 ["Position"]
      387 SETTABLEKS                       R10 R21 K67 ["AnchorPoint"]
      389 GETTABLEKS                       R22 R4 K85 ["BackgroundColor"]
      391 SETTABLEKS                       R22 R21 K68 ["BackgroundColor3"]
      393 LOADK                            R22 K86 ["rbxasset://textures/StudioToolbox/ScrollBarTop.png"]
      394 SETTABLEKS                       R22 R21 K78 ["TopImage"]
      396 LOADK                            R22 K87 ["rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"]
      397 SETTABLEKS                       R22 R21 K79 ["MidImage"]
      399 LOADK                            R22 K88 ["rbxasset://textures/StudioToolbox/ScrollBarBottom.png"]
      400 SETTABLEKS                       R22 R21 K80 ["BottomImage"]
      402 LOADN                            R22 0
      403 SETTABLEKS                       R22 R21 K69 ["BorderSizePixel"]
      405 GETTABLEKS                       R22 R4 K89 ["ScrollbarColor"]
      407 SETTABLEKS                       R22 R21 K81 ["ScrollBarImageColor3"]
      409 GETTABLEKS                       R22 R4 K90 ["ScrollbarSize"]
      411 SETTABLEKS                       R22 R21 K82 ["ScrollBarThickness"]
      413 GETTABLEKS                       R22 R4 K91 ["ScrollbarTransparency"]
      415 SETTABLEKS                       R22 R21 K83 ["ScrollBarImageTransparency"]
      417 MOVE                             R22 R14
      418 CALL                             R19 3 -1
      419 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R2 R2 K8 ["Util"]
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K9 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Components"]
       31 GETTABLEKS                       R4 R4 K11 ["PluginEntry"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K9 ["Src"]
       38 GETTABLEKS                       R5 R5 K8 ["Util"]
       40 GETTABLEKS                       R5 R5 K12 ["Constants"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R2 K13 ["LayoutOrderIterator"]
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R0 K5 ["Packages"]
       49 GETTABLEKS                       R7 R7 K7 ["Framework"]
       51 CALL                             R6 1 1
       52 GETTABLEKS                       R6 R6 K14 ["ContextServices"]
       54 GETTABLEKS                       R7 R6 K15 ["withContext"]
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K9 ["Src"]
       60 GETTABLEKS                       R9 R9 K8 ["Util"]
       62 GETTABLEKS                       R9 R9 K16 ["PluginManagementApi"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R1 K17 ["Component"]
       67 LOADK                            R11 K18 ["PluginHolder"]
       68 NAMECALL                         R9 R9 K19 ["extend"]
       70 CALL                             R9 2 1
       71 DUPCLOSURE                       R10 K20 [PROTO_1]
       72 DUPCLOSURE                       R11 K21 [PROTO_3]
       73 SETTABLEKS                       R11 R9 K22 ["init"]
       75 DUPCLOSURE                       R11 K23 [PROTO_4]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R4
       78 SETTABLEKS                       R11 R9 K24 ["createLabel"]
       80 DUPCLOSURE                       R11 K25 [PROTO_5]
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R3
       85 SETTABLEKS                       R11 R9 K26 ["render"]
       87 MOVE                             R11 R7
       88 DUPTABLE                         R12 K29 [{"Localization", "Stylizer", "PluginManagementApi"}]
       89 GETTABLEKS                       R13 R6 K27 ["Localization"]
       91 SETTABLEKS                       R13 R12 K27 ["Localization"]
       93 GETTABLEKS                       R13 R6 K28 ["Stylizer"]
       95 SETTABLEKS                       R13 R12 K28 ["Stylizer"]
       97 SETTABLEKS                       R8 R12 K16 ["PluginManagementApi"]
       99 CALL                             R11 1 1
      100 MOVE                             R12 R9
      101 CALL                             R11 1 1
      102 MOVE                             R9 R11
      103 RETURN                           R9 1
