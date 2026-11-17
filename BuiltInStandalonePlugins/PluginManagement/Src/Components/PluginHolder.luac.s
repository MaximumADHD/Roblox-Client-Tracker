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
        0 DUPTABLE                         R1 K2 [{[1] = 0}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["resizeContainer"]
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 LOADK                            R4 K1 ["TextLabel"]
        4 DUPTABLE                         R5 K14 [{["Font"], ["TextColor3"], ["TextTransparency"] = 0, ["Size"], ["TextSize"] = 20, ["TextXAlignment"], ["Text"], ["LayoutOrder"], ["BackgroundTransparency"] = 1}]
        5 GETIMPORT                        R6 K17 [Enum.Font.SourceSans]
        7 SETTABLEKS                       R6 R5 K2 ["Font"]
        9 GETTABLEKS                       R6 R1 K18 ["SubTitleTextColor"]
       11 SETTABLEKS                       R6 R5 K3 ["TextColor3"]
       13 GETIMPORT                        R6 K21 [UDim2.new]
       15 LOADN                            R7 1
       16 LOADN                            R8 0
       17 LOADN                            R9 0
       18 GETUPVAL                         R12 1
       19 GETTABLEKS                       R12 R12 K23 ["SUBTITLE_PADDING"]
       21 ADDK                             R11 R12 K22 [16]
       22 GETUPVAL                         R13 1
       23 GETTABLEKS                       R13 R13 K23 ["SUBTITLE_PADDING"]
       25 GETUPVAL                         R14 1
       26 GETTABLEKS                       R14 R14 K24 ["PLUGIN_ENTRY_PADDING"]
       28 SUB                              R12 R13 R14
       29 ADD                              R10 R11 R12
       30 CALL                             R6 4 1
       31 SETTABLEKS                       R6 R5 K6 ["Size"]
       33 GETIMPORT                        R6 K26 [Enum.TextXAlignment.Left]
       35 SETTABLEKS                       R6 R5 K9 ["TextXAlignment"]
       37 SETTABLEKS                       R2 R5 K10 ["Text"]
       39 GETTABLEKS                       R6 R0 K27 ["order"]
       41 NAMECALL                         R6 R6 K28 ["getNextOrder"]
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R6 R5 K11 ["LayoutOrder"]
       46 DUPTABLE                         R6 K30 [{"Padding"}]
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K0 ["createElement"]
       50 LOADK                            R8 K31 ["UIPadding"]
       51 DUPTABLE                         R9 K34 [{"PaddingLeft", "PaddingTop"}]
       52 GETIMPORT                        R10 K36 [UDim.new]
       54 LOADN                            R11 0
       55 GETUPVAL                         R12 1
       56 GETTABLEKS                       R12 R12 K37 ["HEADER_LEFT_PADDING"]
       58 CALL                             R10 2 1
       59 SETTABLEKS                       R10 R9 K32 ["PaddingLeft"]
       61 GETIMPORT                        R10 K36 [UDim.new]
       63 LOADN                            R11 0
       64 GETUPVAL                         R12 1
       65 GETTABLEKS                       R12 R12 K23 ["SUBTITLE_PADDING"]
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K33 ["PaddingTop"]
       70 CALL                             R7 2 1
       71 SETTABLEKS                       R7 R6 K29 ["Padding"]
       73 CALL                             R3 3 -1
       74 RETURN                           R3 -1

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
       16 GETTABLEKS                       R6 R1 K7 ["pluginList"]
       18 GETTABLEKS                       R7 R1 K8 ["position"]
       20 GETTABLEKS                       R8 R1 K9 ["size"]
       22 GETTABLEKS                       R9 R1 K10 ["anchorPoint"]
       24 GETTABLEKS                       R10 R1 K11 ["onPluginUninstalled"]
       26 LOADK                            R13 K12 ["Header"]
       27 LOADK                            R14 K13 ["PendingUpdates"]
       28 NAMECALL                         R11 R3 K14 ["getText"]
       30 CALL                             R11 3 1
       31 LOADK                            R14 K12 ["Header"]
       32 LOADK                            R15 K15 ["UpToDate"]
       33 NAMECALL                         R12 R3 K14 ["getText"]
       35 CALL                             R12 3 1
       36 DUPTABLE                         R13 K17 [{"Layout"}]
       37 GETUPVAL                         R14 1
       38 GETTABLEKS                       R14 R14 K18 ["createElement"]
       40 LOADK                            R15 K19 ["UIListLayout"]
       41 NEWTABLE                         R16 4 0
       43 GETIMPORT                        R17 K23 [Enum.SortOrder.LayoutOrder]
       45 SETTABLEKS                       R17 R16 K21 ["SortOrder"]
       47 GETIMPORT                        R17 K26 [Enum.HorizontalAlignment.Center]
       49 SETTABLEKS                       R17 R16 K24 ["HorizontalAlignment"]
       51 GETIMPORT                        R17 K29 [Enum.VerticalAlignment.Top]
       53 SETTABLEKS                       R17 R16 K27 ["VerticalAlignment"]
       55 GETUPVAL                         R17 1
       56 GETTABLEKS                       R17 R17 K30 ["Change"]
       58 GETTABLEKS                       R17 R17 K31 ["AbsoluteContentSize"]
       60 GETTABLEKS                       R18 R0 K32 ["resizeContainer"]
       62 SETTABLE                         R18 R16 R17
       63 CALL                             R14 2 1
       64 SETTABLEKS                       R14 R13 K16 ["Layout"]
       66 NEWTABLE                         R14 0 0
       68 NEWTABLE                         R15 0 0
       70 GETIMPORT                        R16 K34 [pairs]
       72 MOVE                             R17 R6
       73 CALL                             R16 1 3
       74 FORGPREP_NEXT                    R16
       75 GETTABLEKS                       R21 R0 K2 ["props"]
       77 GETTABLEKS                       R21 R21 K35 ["PluginManagementApi"]
       79 MOVE                             R23 R19
       80 GETTABLEKS                       R24 R20 K36 ["latestVersion"]
       82 NAMECALL                         R21 R21 K37 ["IsPluginUpToDate"]
       84 CALL                             R21 3 1
       85 JUMPIFNOT                        R21 ; [+8]
       86 FASTCALL2                        TABLE_INSERT R15 R20 ; [+5]
       88 MOVE                             R23 R15
       89 MOVE                             R24 R20
       90 GETIMPORT                        R22 K40 [table.insert]
       92 CALL                             R22 2 0
       93 JUMP                             ; [+7]
       94 FASTCALL2                        TABLE_INSERT R14 R20 ; [+5]
       96 MOVE                             R23 R14
       97 MOVE                             R24 R20
       98 GETIMPORT                        R22 K40 [table.insert]
      100 CALL                             R22 2 0
      101 FORGLOOP                         R16 2 ; [-27]
      103 GETIMPORT                        R16 K42 [table.sort]
      105 MOVE                             R17 R15
      106 DUPCLOSURE                       R18 K43 [PROTO_0]
      107 CALL                             R16 2 0
      108 GETIMPORT                        R16 K42 [table.sort]
      110 MOVE                             R17 R14
      111 DUPCLOSURE                       R18 K43 [PROTO_0]
      112 CALL                             R16 2 0
      113 LOADB                            R16 0
      114 LENGTH                           R17 R15
      115 LOADN                            R18 0
      116 JUMPIFNOTLT                      R18 R17 ; [+7]
      118 LENGTH                           R17 R14
      119 LOADN                            R18 0
      120 JUMPIFLT                         R18 R17 ; [+2]
      122 LOADB                            R16 0 +1
      123 LOADB                            R16 1
      124 JUMPIFNOT                        R16 ; [+7]
      125 MOVE                             R19 R4
      126 MOVE                             R20 R11
      127 NAMECALL                         R17 R0 K44 ["createLabel"]
      129 CALL                             R17 3 1
      130 SETTABLEKS                       R17 R13 K13 ["PendingUpdates"]
      132 GETUPVAL                         R20 2
      133 GETTABLEKS                       R20 R20 K45 ["THUMBNAIL_SIZE"]
      135 MINUS                            R19 R20
      136 GETUPVAL                         R20 2
      137 GETTABLEKS                       R20 R20 K46 ["PLUGIN_HORIZONTAL_PADDING"]
      139 SUB                              R18 R19 R20
      140 GETUPVAL                         R20 2
      141 GETTABLEKS                       R20 R20 K48 ["HEADER_RIGHT_PADDING"]
      143 MULK                             R19 R20 K47 [2]
      144 ADD                              R17 R18 R19
      145 GETIMPORT                        R18 K50 [ipairs]
      147 MOVE                             R19 R14
      148 CALL                             R18 1 3
      149 FORGPREP_INEXT                   R18
      150 GETTABLEKS                       R24 R22 K51 ["assetId"]
      152 LOADK                            R25 K52 ["_Entry"]
      153 CONCAT                           R23 R24 R25
      154 GETUPVAL                         R24 1
      155 GETTABLEKS                       R24 R24 K18 ["createElement"]
      157 GETUPVAL                         R25 3
      158 DUPTABLE                         R26 K56 [{["LayoutOrder"], ["data"], ["isUpdated"] = False, ["onPluginUninstalled"]}]
      159 GETTABLEKS                       R27 R0 K1 ["order"]
      161 NAMECALL                         R27 R27 K57 ["getNextOrder"]
      163 CALL                             R27 1 1
      164 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      166 SETTABLEKS                       R22 R26 K53 ["data"]
      168 SETTABLEKS                       R10 R26 K11 ["onPluginUninstalled"]
      170 CALL                             R24 2 1
      171 SETTABLE                         R24 R13 R23
      172 GETTABLEKS                       R24 R22 K51 ["assetId"]
      174 LOADK                            R25 K58 ["_Border"]
      175 CONCAT                           R23 R24 R25
      176 GETUPVAL                         R24 1
      177 GETTABLEKS                       R24 R24 K18 ["createElement"]
      179 LOADK                            R25 K59 ["Frame"]
      180 DUPTABLE                         R26 K63 [{["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1}]
      181 GETTABLEKS                       R27 R0 K1 ["order"]
      183 NAMECALL                         R27 R27 K57 ["getNextOrder"]
      185 CALL                             R27 1 1
      186 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      188 GETIMPORT                        R27 K65 [UDim2.new]
      190 LOADN                            R28 1
      191 LOADN                            R29 0
      192 LOADN                            R30 0
      193 LOADN                            R31 1
      194 CALL                             R27 4 1
      195 SETTABLEKS                       R27 R26 K60 ["Size"]
      197 DUPTABLE                         R27 K67 [{"Border"}]
      198 GETUPVAL                         R28 1
      199 GETTABLEKS                       R28 R28 K18 ["createElement"]
      201 LOADK                            R29 K59 ["Frame"]
      202 DUPTABLE                         R30 K73 [{["AnchorPoint"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["Position"], ["Size"]}]
      203 GETIMPORT                        R31 K75 [Vector2.new]
      205 LOADN                            R32 1
      206 LOADK                            R33 K76 [0.5]
      207 CALL                             R31 2 1
      208 SETTABLEKS                       R31 R30 K68 ["AnchorPoint"]
      210 GETTABLEKS                       R31 R4 K77 ["BorderColor"]
      212 SETTABLEKS                       R31 R30 K69 ["BackgroundColor3"]
      214 GETIMPORT                        R31 K65 [UDim2.new]
      216 LOADN                            R32 1
      217 GETUPVAL                         R33 2
      218 GETTABLEKS                       R33 R33 K48 ["HEADER_RIGHT_PADDING"]
      220 LOADN                            R34 0
      221 LOADN                            R35 0
      222 CALL                             R31 4 1
      223 SETTABLEKS                       R31 R30 K72 ["Position"]
      225 GETIMPORT                        R31 K65 [UDim2.new]
      227 LOADN                            R32 1
      228 MOVE                             R33 R17
      229 LOADN                            R34 0
      230 LOADN                            R35 1
      231 CALL                             R31 4 1
      232 SETTABLEKS                       R31 R30 K60 ["Size"]
      234 CALL                             R28 2 1
      235 SETTABLEKS                       R28 R27 K66 ["Border"]
      237 CALL                             R24 3 1
      238 SETTABLE                         R24 R13 R23
      239 FORGLOOP                         R18 2 [inext] ; [-90]
      241 JUMPIFNOT                        R16 ; [+7]
      242 MOVE                             R20 R4
      243 MOVE                             R21 R12
      244 NAMECALL                         R18 R0 K44 ["createLabel"]
      246 CALL                             R18 3 1
      247 SETTABLEKS                       R18 R13 K15 ["UpToDate"]
      249 GETIMPORT                        R18 K50 [ipairs]
      251 MOVE                             R19 R15
      252 CALL                             R18 1 3
      253 FORGPREP_INEXT                   R18
      254 GETTABLEKS                       R24 R22 K51 ["assetId"]
      256 LOADK                            R25 K52 ["_Entry"]
      257 CONCAT                           R23 R24 R25
      258 GETUPVAL                         R24 1
      259 GETTABLEKS                       R24 R24 K18 ["createElement"]
      261 GETUPVAL                         R25 3
      262 DUPTABLE                         R26 K79 [{["LayoutOrder"], ["data"], ["isUpdated"] = True, ["onPluginUninstalled"]}]
      263 GETTABLEKS                       R27 R0 K1 ["order"]
      265 NAMECALL                         R27 R27 K57 ["getNextOrder"]
      267 CALL                             R27 1 1
      268 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      270 SETTABLEKS                       R22 R26 K53 ["data"]
      272 SETTABLEKS                       R10 R26 K11 ["onPluginUninstalled"]
      274 CALL                             R24 2 1
      275 SETTABLE                         R24 R13 R23
      276 GETTABLEKS                       R24 R22 K51 ["assetId"]
      278 LOADK                            R25 K58 ["_Border"]
      279 CONCAT                           R23 R24 R25
      280 GETUPVAL                         R24 1
      281 GETTABLEKS                       R24 R24 K18 ["createElement"]
      283 LOADK                            R25 K59 ["Frame"]
      284 DUPTABLE                         R26 K63 [{["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1}]
      285 GETTABLEKS                       R27 R0 K1 ["order"]
      287 NAMECALL                         R27 R27 K57 ["getNextOrder"]
      289 CALL                             R27 1 1
      290 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      292 GETIMPORT                        R27 K65 [UDim2.new]
      294 LOADN                            R28 1
      295 LOADN                            R29 0
      296 LOADN                            R30 0
      297 LOADN                            R31 1
      298 CALL                             R27 4 1
      299 SETTABLEKS                       R27 R26 K60 ["Size"]
      301 DUPTABLE                         R27 K67 [{"Border"}]
      302 GETUPVAL                         R28 1
      303 GETTABLEKS                       R28 R28 K18 ["createElement"]
      305 LOADK                            R29 K59 ["Frame"]
      306 DUPTABLE                         R30 K73 [{["AnchorPoint"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["Position"], ["Size"]}]
      307 GETIMPORT                        R31 K75 [Vector2.new]
      309 LOADN                            R32 1
      310 LOADK                            R33 K76 [0.5]
      311 CALL                             R31 2 1
      312 SETTABLEKS                       R31 R30 K68 ["AnchorPoint"]
      314 GETTABLEKS                       R31 R4 K77 ["BorderColor"]
      316 SETTABLEKS                       R31 R30 K69 ["BackgroundColor3"]
      318 GETIMPORT                        R31 K65 [UDim2.new]
      320 LOADN                            R32 1
      321 GETUPVAL                         R33 2
      322 GETTABLEKS                       R33 R33 K48 ["HEADER_RIGHT_PADDING"]
      324 LOADN                            R34 0
      325 LOADN                            R35 0
      326 CALL                             R31 4 1
      327 SETTABLEKS                       R31 R30 K72 ["Position"]
      329 GETIMPORT                        R31 K65 [UDim2.new]
      331 LOADN                            R32 1
      332 MOVE                             R33 R17
      333 LOADN                            R34 0
      334 LOADN                            R35 1
      335 CALL                             R31 4 1
      336 SETTABLEKS                       R31 R30 K60 ["Size"]
      338 CALL                             R28 2 1
      339 SETTABLEKS                       R28 R27 K66 ["Border"]
      341 CALL                             R24 3 1
      342 SETTABLE                         R24 R13 R23
      343 FORGLOOP                         R18 2 [inext] ; [-90]
      345 GETUPVAL                         R18 1
      346 GETTABLEKS                       R18 R18 K18 ["createElement"]
      348 LOADK                            R19 K80 ["ScrollingFrame"]
      349 DUPTABLE                         R20 K91 [{["Size"], ["CanvasSize"], ["Position"], ["AnchorPoint"], ["BackgroundColor3"], ["TopImage"] = "rbxasset://textures/StudioToolbox/ScrollBarTop.png", ["MidImage"] = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png", ["BottomImage"] = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png", ["BorderSizePixel"] = 0, ["ScrollBarImageColor3"], ["ScrollBarThickness"], ["ScrollBarImageTransparency"]}]
      350 SETTABLEKS                       R8 R20 K60 ["Size"]
      352 GETIMPORT                        R21 K65 [UDim2.new]
      354 LOADN                            R22 0
      355 LOADN                            R23 0
      356 LOADN                            R24 0
      357 MOVE                             R25 R5
      358 CALL                             R21 4 1
      359 SETTABLEKS                       R21 R20 K81 ["CanvasSize"]
      361 SETTABLEKS                       R7 R20 K72 ["Position"]
      363 SETTABLEKS                       R9 R20 K68 ["AnchorPoint"]
      365 GETTABLEKS                       R21 R4 K92 ["BackgroundColor"]
      367 SETTABLEKS                       R21 R20 K69 ["BackgroundColor3"]
      369 GETTABLEKS                       R21 R4 K93 ["ScrollbarColor"]
      371 SETTABLEKS                       R21 R20 K88 ["ScrollBarImageColor3"]
      373 GETTABLEKS                       R21 R4 K94 ["ScrollbarSize"]
      375 SETTABLEKS                       R21 R20 K89 ["ScrollBarThickness"]
      377 GETTABLEKS                       R21 R4 K95 ["ScrollbarTransparency"]
      379 SETTABLEKS                       R21 R20 K90 ["ScrollBarImageTransparency"]
      381 MOVE                             R21 R13
      382 CALL                             R18 3 -1
      383 RETURN                           R18 -1

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
