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
        2 GETTABLEKS                       R5 R0 K2 ["AbsoluteContentSize"]
        4 GETTABLEKS                       R4 R5 K3 ["Y"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["createElement"]
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
       21 GETUPVAL                         R13 1
       22 GETTABLEKS                       R12 R13 K20 ["SUBTITLE_PADDING"]
       24 ADDK                             R11 R12 K19 [16]
       25 GETUPVAL                         R14 1
       26 GETTABLEKS                       R13 R14 K20 ["SUBTITLE_PADDING"]
       28 GETUPVAL                         R15 1
       29 GETTABLEKS                       R14 R15 K21 ["PLUGIN_ENTRY_PADDING"]
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
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R7 R8 K0 ["createElement"]
       59 LOADK                            R8 K28 ["UIPadding"]
       60 DUPTABLE                         R9 K31 [{"PaddingLeft", "PaddingTop"}]
       61 GETIMPORT                        R10 K33 [UDim.new]
       63 LOADN                            R11 0
       64 GETUPVAL                         R13 1
       65 GETTABLEKS                       R12 R13 K34 ["HEADER_LEFT_PADDING"]
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K29 ["PaddingLeft"]
       70 GETIMPORT                        R10 K33 [UDim.new]
       72 LOADN                            R11 0
       73 GETUPVAL                         R13 1
       74 GETTABLEKS                       R12 R13 K20 ["SUBTITLE_PADDING"]
       76 CALL                             R10 2 1
       77 SETTABLEKS                       R10 R9 K30 ["PaddingTop"]
       79 CALL                             R7 2 1
       80 SETTABLEKS                       R7 R6 K26 ["Padding"]
       82 CALL                             R3 3 -1
       83 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
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
       39 GETUPVAL                         R16 1
       40 GETTABLEKS                       R15 R16 K19 ["createElement"]
       42 LOADK                            R16 K20 ["UIListLayout"]
       43 NEWTABLE                         R17 4 0
       45 GETIMPORT                        R18 K24 [Enum.SortOrder.LayoutOrder]
       47 SETTABLEKS                       R18 R17 K22 ["SortOrder"]
       49 GETIMPORT                        R18 K27 [Enum.HorizontalAlignment.Center]
       51 SETTABLEKS                       R18 R17 K25 ["HorizontalAlignment"]
       53 GETIMPORT                        R18 K30 [Enum.VerticalAlignment.Top]
       55 SETTABLEKS                       R18 R17 K28 ["VerticalAlignment"]
       57 GETUPVAL                         R20 1
       58 GETTABLEKS                       R19 R20 K31 ["Change"]
       60 GETTABLEKS                       R18 R19 K32 ["AbsoluteContentSize"]
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
       77 GETUPVAL                         R22 2
       78 MOVE                             R24 R20
       79 GETTABLEKS                       R25 R21 K36 ["latestVersion"]
       81 NAMECALL                         R22 R22 K37 ["IsPluginUpToDate"]
       83 CALL                             R22 3 1
       84 JUMPIFNOT                        R22 ; [+8]
       85 FASTCALL2                        TABLE_INSERT R16 R21 ; [+5]
       87 MOVE                             R24 R16
       88 MOVE                             R25 R21
       89 GETIMPORT                        R23 K40 [table.insert]
       91 CALL                             R23 2 0
       92 JUMP                             ; [+7]
       93 FASTCALL2                        TABLE_INSERT R15 R21 ; [+5]
       95 MOVE                             R24 R15
       96 MOVE                             R25 R21
       97 GETIMPORT                        R23 K40 [table.insert]
       99 CALL                             R23 2 0
      100 FORGLOOP                         R17 2 ; [-24]
      102 GETIMPORT                        R17 K42 [table.sort]
      104 MOVE                             R18 R16
      105 DUPCLOSURE                       R19 K43 [PROTO_0]
      106 CALL                             R17 2 0
      107 GETIMPORT                        R17 K42 [table.sort]
      109 MOVE                             R18 R15
      110 DUPCLOSURE                       R19 K43 [PROTO_0]
      111 CALL                             R17 2 0
      112 LOADB                            R17 0
      113 LENGTH                           R18 R16
      114 LOADN                            R19 0
      115 JUMPIFNOTLT                      R19 R18 ; [+7]
      117 LENGTH                           R18 R15
      118 LOADN                            R19 0
      119 JUMPIFLT                         R19 R18 ; [+2]
      121 LOADB                            R17 0 +1
      122 LOADB                            R17 1
      123 JUMPIFNOT                        R17 ; [+7]
      124 MOVE                             R20 R4
      125 MOVE                             R21 R12
      126 NAMECALL                         R18 R0 K44 ["createLabel"]
      128 CALL                             R18 3 1
      129 SETTABLEKS                       R18 R14 K14 ["PendingUpdates"]
      131 GETUPVAL                         R22 3
      132 GETTABLEKS                       R21 R22 K45 ["THUMBNAIL_SIZE"]
      134 MINUS                            R20 R21
      135 GETUPVAL                         R22 3
      136 GETTABLEKS                       R21 R22 K46 ["PLUGIN_HORIZONTAL_PADDING"]
      138 SUB                              R19 R20 R21
      139 GETUPVAL                         R22 3
      140 GETTABLEKS                       R21 R22 K48 ["HEADER_RIGHT_PADDING"]
      142 MULK                             R20 R21 K47 [2]
      143 ADD                              R18 R19 R20
      144 GETIMPORT                        R19 K50 [ipairs]
      146 MOVE                             R20 R15
      147 CALL                             R19 1 3
      148 FORGPREP_INEXT                   R19
      149 GETTABLEKS                       R25 R23 K51 ["assetId"]
      151 LOADK                            R26 K52 ["_Entry"]
      152 CONCAT                           R24 R25 R26
      153 GETUPVAL                         R26 1
      154 GETTABLEKS                       R25 R26 K19 ["createElement"]
      156 GETUPVAL                         R26 4
      157 DUPTABLE                         R27 K55 [{"LayoutOrder", "data", "isUpdated", "plugin", "onPluginUninstalled"}]
      158 GETTABLEKS                       R28 R0 K1 ["order"]
      160 NAMECALL                         R28 R28 K56 ["getNextOrder"]
      162 CALL                             R28 1 1
      163 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      165 SETTABLEKS                       R23 R27 K53 ["data"]
      167 LOADB                            R28 0
      168 SETTABLEKS                       R28 R27 K54 ["isUpdated"]
      170 SETTABLEKS                       R6 R27 K7 ["plugin"]
      172 SETTABLEKS                       R11 R27 K12 ["onPluginUninstalled"]
      174 CALL                             R25 2 1
      175 SETTABLE                         R25 R14 R24
      176 GETTABLEKS                       R25 R23 K51 ["assetId"]
      178 LOADK                            R26 K57 ["_Border"]
      179 CONCAT                           R24 R25 R26
      180 GETUPVAL                         R26 1
      181 GETTABLEKS                       R25 R26 K19 ["createElement"]
      183 LOADK                            R26 K58 ["Frame"]
      184 DUPTABLE                         R27 K61 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
      185 GETTABLEKS                       R28 R0 K1 ["order"]
      187 NAMECALL                         R28 R28 K56 ["getNextOrder"]
      189 CALL                             R28 1 1
      190 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      192 GETIMPORT                        R28 K63 [UDim2.new]
      194 LOADN                            R29 1
      195 LOADN                            R30 0
      196 LOADN                            R31 0
      197 LOADN                            R32 1
      198 CALL                             R28 4 1
      199 SETTABLEKS                       R28 R27 K59 ["Size"]
      201 LOADN                            R28 1
      202 SETTABLEKS                       R28 R27 K60 ["BackgroundTransparency"]
      204 DUPTABLE                         R28 K65 [{"Border"}]
      205 GETUPVAL                         R30 1
      206 GETTABLEKS                       R29 R30 K19 ["createElement"]
      208 LOADK                            R30 K58 ["Frame"]
      209 DUPTABLE                         R31 K70 [{"AnchorPoint", "BackgroundColor3", "BorderSizePixel", "Position", "Size"}]
      210 GETIMPORT                        R32 K72 [Vector2.new]
      212 LOADN                            R33 1
      213 LOADK                            R34 K73 [0.5]
      214 CALL                             R32 2 1
      215 SETTABLEKS                       R32 R31 K66 ["AnchorPoint"]
      217 GETTABLEKS                       R32 R4 K74 ["BorderColor"]
      219 SETTABLEKS                       R32 R31 K67 ["BackgroundColor3"]
      221 LOADN                            R32 0
      222 SETTABLEKS                       R32 R31 K68 ["BorderSizePixel"]
      224 GETIMPORT                        R32 K63 [UDim2.new]
      226 LOADN                            R33 1
      227 GETUPVAL                         R35 3
      228 GETTABLEKS                       R34 R35 K48 ["HEADER_RIGHT_PADDING"]
      230 LOADN                            R35 0
      231 LOADN                            R36 0
      232 CALL                             R32 4 1
      233 SETTABLEKS                       R32 R31 K69 ["Position"]
      235 GETIMPORT                        R32 K63 [UDim2.new]
      237 LOADN                            R33 1
      238 MOVE                             R34 R18
      239 LOADN                            R35 0
      240 LOADN                            R36 1
      241 CALL                             R32 4 1
      242 SETTABLEKS                       R32 R31 K59 ["Size"]
      244 CALL                             R29 2 1
      245 SETTABLEKS                       R29 R28 K64 ["Border"]
      247 CALL                             R25 3 1
      248 SETTABLE                         R25 R14 R24
      249 FORGLOOP                         R19 2 [inext] ; [-101]
      251 JUMPIFNOT                        R17 ; [+7]
      252 MOVE                             R21 R4
      253 MOVE                             R22 R13
      254 NAMECALL                         R19 R0 K44 ["createLabel"]
      256 CALL                             R19 3 1
      257 SETTABLEKS                       R19 R14 K16 ["UpToDate"]
      259 GETIMPORT                        R19 K50 [ipairs]
      261 MOVE                             R20 R16
      262 CALL                             R19 1 3
      263 FORGPREP_INEXT                   R19
      264 GETTABLEKS                       R25 R23 K51 ["assetId"]
      266 LOADK                            R26 K52 ["_Entry"]
      267 CONCAT                           R24 R25 R26
      268 GETUPVAL                         R26 1
      269 GETTABLEKS                       R25 R26 K19 ["createElement"]
      271 GETUPVAL                         R26 4
      272 DUPTABLE                         R27 K55 [{"LayoutOrder", "data", "isUpdated", "plugin", "onPluginUninstalled"}]
      273 GETTABLEKS                       R28 R0 K1 ["order"]
      275 NAMECALL                         R28 R28 K56 ["getNextOrder"]
      277 CALL                             R28 1 1
      278 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      280 SETTABLEKS                       R23 R27 K53 ["data"]
      282 LOADB                            R28 1
      283 SETTABLEKS                       R28 R27 K54 ["isUpdated"]
      285 SETTABLEKS                       R6 R27 K7 ["plugin"]
      287 SETTABLEKS                       R11 R27 K12 ["onPluginUninstalled"]
      289 CALL                             R25 2 1
      290 SETTABLE                         R25 R14 R24
      291 GETTABLEKS                       R25 R23 K51 ["assetId"]
      293 LOADK                            R26 K57 ["_Border"]
      294 CONCAT                           R24 R25 R26
      295 GETUPVAL                         R26 1
      296 GETTABLEKS                       R25 R26 K19 ["createElement"]
      298 LOADK                            R26 K58 ["Frame"]
      299 DUPTABLE                         R27 K61 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
      300 GETTABLEKS                       R28 R0 K1 ["order"]
      302 NAMECALL                         R28 R28 K56 ["getNextOrder"]
      304 CALL                             R28 1 1
      305 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      307 GETIMPORT                        R28 K63 [UDim2.new]
      309 LOADN                            R29 1
      310 LOADN                            R30 0
      311 LOADN                            R31 0
      312 LOADN                            R32 1
      313 CALL                             R28 4 1
      314 SETTABLEKS                       R28 R27 K59 ["Size"]
      316 LOADN                            R28 1
      317 SETTABLEKS                       R28 R27 K60 ["BackgroundTransparency"]
      319 DUPTABLE                         R28 K65 [{"Border"}]
      320 GETUPVAL                         R30 1
      321 GETTABLEKS                       R29 R30 K19 ["createElement"]
      323 LOADK                            R30 K58 ["Frame"]
      324 DUPTABLE                         R31 K70 [{"AnchorPoint", "BackgroundColor3", "BorderSizePixel", "Position", "Size"}]
      325 GETIMPORT                        R32 K72 [Vector2.new]
      327 LOADN                            R33 1
      328 LOADK                            R34 K73 [0.5]
      329 CALL                             R32 2 1
      330 SETTABLEKS                       R32 R31 K66 ["AnchorPoint"]
      332 GETTABLEKS                       R32 R4 K74 ["BorderColor"]
      334 SETTABLEKS                       R32 R31 K67 ["BackgroundColor3"]
      336 LOADN                            R32 0
      337 SETTABLEKS                       R32 R31 K68 ["BorderSizePixel"]
      339 GETIMPORT                        R32 K63 [UDim2.new]
      341 LOADN                            R33 1
      342 GETUPVAL                         R35 3
      343 GETTABLEKS                       R34 R35 K48 ["HEADER_RIGHT_PADDING"]
      345 LOADN                            R35 0
      346 LOADN                            R36 0
      347 CALL                             R32 4 1
      348 SETTABLEKS                       R32 R31 K69 ["Position"]
      350 GETIMPORT                        R32 K63 [UDim2.new]
      352 LOADN                            R33 1
      353 MOVE                             R34 R18
      354 LOADN                            R35 0
      355 LOADN                            R36 1
      356 CALL                             R32 4 1
      357 SETTABLEKS                       R32 R31 K59 ["Size"]
      359 CALL                             R29 2 1
      360 SETTABLEKS                       R29 R28 K64 ["Border"]
      362 CALL                             R25 3 1
      363 SETTABLE                         R25 R14 R24
      364 FORGLOOP                         R19 2 [inext] ; [-101]
      366 GETUPVAL                         R20 1
      367 GETTABLEKS                       R19 R20 K19 ["createElement"]
      369 LOADK                            R20 K75 ["ScrollingFrame"]
      370 DUPTABLE                         R21 K83 [{"Size", "CanvasSize", "Position", "AnchorPoint", "BackgroundColor3", "TopImage", "MidImage", "BottomImage", "BorderSizePixel", "ScrollBarImageColor3", "ScrollBarThickness", "ScrollBarImageTransparency"}]
      371 SETTABLEKS                       R9 R21 K59 ["Size"]
      373 GETIMPORT                        R22 K63 [UDim2.new]
      375 LOADN                            R23 0
      376 LOADN                            R24 0
      377 LOADN                            R25 0
      378 MOVE                             R26 R5
      379 CALL                             R22 4 1
      380 SETTABLEKS                       R22 R21 K76 ["CanvasSize"]
      382 SETTABLEKS                       R8 R21 K69 ["Position"]
      384 SETTABLEKS                       R10 R21 K66 ["AnchorPoint"]
      386 GETTABLEKS                       R22 R4 K84 ["BackgroundColor"]
      388 SETTABLEKS                       R22 R21 K67 ["BackgroundColor3"]
      390 LOADK                            R22 K85 ["rbxasset://textures/StudioToolbox/ScrollBarTop.png"]
      391 SETTABLEKS                       R22 R21 K77 ["TopImage"]
      393 LOADK                            R22 K86 ["rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"]
      394 SETTABLEKS                       R22 R21 K78 ["MidImage"]
      396 LOADK                            R22 K87 ["rbxasset://textures/StudioToolbox/ScrollBarBottom.png"]
      397 SETTABLEKS                       R22 R21 K79 ["BottomImage"]
      399 LOADN                            R22 0
      400 SETTABLEKS                       R22 R21 K68 ["BorderSizePixel"]
      402 GETTABLEKS                       R22 R4 K88 ["ScrollbarColor"]
      404 SETTABLEKS                       R22 R21 K80 ["ScrollBarImageColor3"]
      406 GETTABLEKS                       R22 R4 K89 ["ScrollbarSize"]
      408 SETTABLEKS                       R22 R21 K81 ["ScrollBarThickness"]
      410 GETTABLEKS                       R22 R4 K90 ["ScrollbarTransparency"]
      412 SETTABLEKS                       R22 R21 K82 ["ScrollBarImageTransparency"]
      414 MOVE                             R22 R14
      415 CALL                             R19 3 -1
      416 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R4 K8 [require]
       24 GETTABLEKS                       R6 R1 K9 ["Packages"]
       26 GETTABLEKS                       R5 R6 K11 ["Framework"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R3 R4 K12 ["Util"]
       31 GETIMPORT                        R4 K8 [require]
       33 GETTABLEKS                       R7 R1 K13 ["Src"]
       35 GETTABLEKS                       R6 R7 K14 ["Components"]
       37 GETTABLEKS                       R5 R6 K15 ["PluginEntry"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K8 [require]
       42 GETTABLEKS                       R8 R1 K13 ["Src"]
       44 GETTABLEKS                       R7 R8 K12 ["Util"]
       46 GETTABLEKS                       R6 R7 K16 ["Constants"]
       48 CALL                             R5 1 1
       49 GETTABLEKS                       R6 R3 K17 ["LayoutOrderIterator"]
       51 GETIMPORT                        R8 K8 [require]
       53 GETTABLEKS                       R10 R1 K9 ["Packages"]
       55 GETTABLEKS                       R9 R10 K11 ["Framework"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R7 R8 K18 ["ContextServices"]
       60 GETTABLEKS                       R8 R7 K19 ["withContext"]
       62 GETTABLEKS                       R9 R2 K20 ["Component"]
       64 LOADK                            R11 K21 ["PluginHolder"]
       65 NAMECALL                         R9 R9 K22 ["extend"]
       67 CALL                             R9 2 1
       68 DUPCLOSURE                       R10 K23 [PROTO_1]
       69 DUPCLOSURE                       R11 K24 [PROTO_3]
       70 SETTABLEKS                       R11 R9 K25 ["init"]
       72 DUPCLOSURE                       R11 K26 [PROTO_4]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R5
       75 SETTABLEKS                       R11 R9 K27 ["createLabel"]
       77 DUPCLOSURE                       R11 K28 [PROTO_5]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R4
       83 SETTABLEKS                       R11 R9 K29 ["render"]
       85 MOVE                             R11 R8
       86 DUPTABLE                         R12 K32 [{"Localization", "Stylizer"}]
       87 GETTABLEKS                       R13 R7 K30 ["Localization"]
       89 SETTABLEKS                       R13 R12 K30 ["Localization"]
       91 GETTABLEKS                       R13 R7 K31 ["Stylizer"]
       93 SETTABLEKS                       R13 R12 K31 ["Stylizer"]
       95 CALL                             R11 1 1
       96 MOVE                             R12 R9
       97 CALL                             R11 1 1
       98 MOVE                             R9 R11
       99 RETURN                           R9 1
