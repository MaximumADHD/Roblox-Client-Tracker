PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["scrollLayoutRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["scrollRef"]
        8 GETTABLEKS                       R2 R2 K1 ["current"]
       10 JUMPIFNOT                        R2 ; [+1]
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 0
       13 GETIMPORT                        R3 K5 [UDim.new]
       15 LOADN                            R4 0
       16 GETTABLEKS                       R5 R1 K6 ["AbsoluteContentSize"]
       18 GETTABLEKS                       R5 R5 K7 ["Y"]
       20 CALL                             R3 2 1
       21 GETIMPORT                        R4 K9 [UDim2.new]
       23 GETTABLEKS                       R5 R2 K10 ["CanvasSize"]
       25 GETTABLEKS                       R5 R5 K11 ["X"]
       27 MOVE                             R6 R3
       28 CALL                             R4 2 1
       29 SETTABLEKS                       R4 R2 K10 ["CanvasSize"]
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["scrollLayoutRef"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K2 ["scrollRef"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K3 ["resizeScrollingFrameCanvas"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["resizeScrollingFrameCanvas"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"assetId", "httpPermissions"}]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K1 ["assetId"]
        8 GETUPVAL                         R3 3
        9 SETTABLEKS                       R3 R2 K2 ["httpPermissions"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"assetId", "scriptInjectionPermissions"}]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K1 ["assetId"]
        8 GETUPVAL                         R3 3
        9 SETTABLEKS                       R3 R2 K2 ["scriptInjectionPermissions"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["assetId"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Size"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["Localization"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["httpPermissions"]
       16 GETTABLEKS                       R5 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R5 K5 ["scriptInjectionPermissions"]
       20 GETTABLEKS                       R6 R0 K0 ["props"]
       22 GETTABLEKS                       R6 R6 K6 ["pluginData"]
       24 GETTABLEKS                       R7 R0 K0 ["props"]
       26 GETTABLEKS                       R7 R7 K7 ["Stylizer"]
       28 LOADN                            R9 40
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R10 R10 K8 ["DETAILS_THUMBNAIL_SIZE"]
       32 ADD                              R8 R9 R10
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R9 R9 K9 ["createElement"]
       36 LOADK                            R10 K10 ["Frame"]
       37 DUPTABLE                         R11 K13 [{"BackgroundColor3", "BorderSizePixel", "Size"}]
       38 GETTABLEKS                       R12 R7 K14 ["BackgroundColor"]
       40 SETTABLEKS                       R12 R11 K11 ["BackgroundColor3"]
       42 LOADN                            R12 0
       43 SETTABLEKS                       R12 R11 K12 ["BorderSizePixel"]
       45 SETTABLEKS                       R2 R11 K2 ["Size"]
       47 DUPTABLE                         R12 K19 [{"Padding", "Layout", "PlugnEntryContainer", "ScrollingFrame"}]
       48 GETUPVAL                         R13 1
       49 GETTABLEKS                       R13 R13 K9 ["createElement"]
       51 LOADK                            R14 K20 ["UIPadding"]
       52 DUPTABLE                         R15 K24 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
       53 GETIMPORT                        R16 K27 [UDim.new]
       55 LOADN                            R17 0
       56 LOADN                            R18 40
       57 CALL                             R16 2 1
       58 SETTABLEKS                       R16 R15 K21 ["PaddingBottom"]
       60 GETIMPORT                        R16 K27 [UDim.new]
       62 LOADN                            R17 0
       63 LOADN                            R18 40
       64 CALL                             R16 2 1
       65 SETTABLEKS                       R16 R15 K22 ["PaddingLeft"]
       67 GETIMPORT                        R16 K27 [UDim.new]
       69 LOADN                            R17 0
       70 LOADN                            R18 40
       71 CALL                             R16 2 1
       72 SETTABLEKS                       R16 R15 K23 ["PaddingRight"]
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K15 ["Padding"]
       77 GETUPVAL                         R13 1
       78 GETTABLEKS                       R13 R13 K9 ["createElement"]
       80 LOADK                            R14 K28 ["UIListLayout"]
       81 DUPTABLE                         R15 K32 [{"HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
       82 GETIMPORT                        R16 K35 [Enum.HorizontalAlignment.Left]
       84 SETTABLEKS                       R16 R15 K29 ["HorizontalAlignment"]
       86 GETIMPORT                        R16 K27 [UDim.new]
       88 LOADN                            R17 0
       89 LOADN                            R18 20
       90 CALL                             R16 2 1
       91 SETTABLEKS                       R16 R15 K15 ["Padding"]
       93 GETIMPORT                        R16 K37 [Enum.SortOrder.LayoutOrder]
       95 SETTABLEKS                       R16 R15 K30 ["SortOrder"]
       97 GETIMPORT                        R16 K39 [Enum.VerticalAlignment.Top]
       99 SETTABLEKS                       R16 R15 K31 ["VerticalAlignment"]
      101 CALL                             R13 2 1
      102 SETTABLEKS                       R13 R12 K16 ["Layout"]
      104 GETUPVAL                         R13 1
      105 GETTABLEKS                       R13 R13 K9 ["createElement"]
      107 GETUPVAL                         R14 2
      108 DUPTABLE                         R15 K42 [{"BackgroundTransparency", "LayoutOrder", "width"}]
      109 LOADN                            R16 1
      110 SETTABLEKS                       R16 R15 K40 ["BackgroundTransparency"]
      112 LOADN                            R16 2
      113 SETTABLEKS                       R16 R15 K36 ["LayoutOrder"]
      115 GETIMPORT                        R16 K27 [UDim.new]
      117 LOADN                            R17 1
      118 LOADN                            R18 0
      119 CALL                             R16 2 1
      120 SETTABLEKS                       R16 R15 K41 ["width"]
      122 DUPTABLE                         R16 K45 [{"DetailsTopBar", "Border"}]
      123 GETUPVAL                         R17 1
      124 GETTABLEKS                       R17 R17 K9 ["createElement"]
      126 GETUPVAL                         R18 3
      127 DUPTABLE                         R19 K47 [{"assetId", "name", "LayoutOrder"}]
      128 SETTABLEKS                       R1 R19 K1 ["assetId"]
      130 GETTABLEKS                       R20 R6 K46 ["name"]
      132 SETTABLEKS                       R20 R19 K46 ["name"]
      134 LOADN                            R20 1
      135 SETTABLEKS                       R20 R19 K36 ["LayoutOrder"]
      137 CALL                             R17 2 1
      138 SETTABLEKS                       R17 R16 K43 ["DetailsTopBar"]
      140 GETUPVAL                         R17 1
      141 GETTABLEKS                       R17 R17 K9 ["createElement"]
      143 LOADK                            R18 K10 ["Frame"]
      144 DUPTABLE                         R19 K48 [{"LayoutOrder", "BorderSizePixel", "BackgroundColor3", "Size"}]
      145 LOADN                            R20 2
      146 SETTABLEKS                       R20 R19 K36 ["LayoutOrder"]
      148 LOADN                            R20 0
      149 SETTABLEKS                       R20 R19 K12 ["BorderSizePixel"]
      151 GETTABLEKS                       R20 R7 K49 ["BorderColor"]
      153 SETTABLEKS                       R20 R19 K11 ["BackgroundColor3"]
      155 GETIMPORT                        R20 K51 [UDim2.new]
      157 LOADN                            R21 1
      158 LOADN                            R22 0
      159 LOADN                            R23 0
      160 LOADN                            R24 1
      161 CALL                             R20 4 1
      162 SETTABLEKS                       R20 R19 K2 ["Size"]
      164 CALL                             R17 2 1
      165 SETTABLEKS                       R17 R16 K44 ["Border"]
      167 CALL                             R13 3 1
      168 SETTABLEKS                       R13 R12 K17 ["PlugnEntryContainer"]
      170 GETUPVAL                         R13 1
      171 GETTABLEKS                       R13 R13 K9 ["createElement"]
      173 LOADK                            R14 K18 ["ScrollingFrame"]
      174 NEWTABLE                         R15 16 0
      176 LOADN                            R16 1
      177 SETTABLEKS                       R16 R15 K40 ["BackgroundTransparency"]
      179 LOADN                            R16 3
      180 SETTABLEKS                       R16 R15 K36 ["LayoutOrder"]
      182 GETIMPORT                        R16 K51 [UDim2.new]
      184 LOADN                            R17 1
      185 LOADN                            R18 0
      186 LOADN                            R19 0
      187 LOADN                            R20 0
      188 CALL                             R16 4 1
      189 SETTABLEKS                       R16 R15 K52 ["CanvasSize"]
      191 GETIMPORT                        R16 K51 [UDim2.new]
      193 LOADN                            R17 0
      194 LOADN                            R18 200
      195 LOADN                            R19 0
      196 LOADN                            R20 0
      197 CALL                             R16 4 1
      198 SETTABLEKS                       R16 R15 K53 ["Position"]
      200 LOADK                            R16 K54 ["rbxasset://textures/StudioToolbox/ScrollBarTop.png"]
      201 SETTABLEKS                       R16 R15 K55 ["TopImage"]
      203 LOADK                            R16 K56 ["rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"]
      204 SETTABLEKS                       R16 R15 K57 ["MidImage"]
      206 LOADK                            R16 K58 ["rbxasset://textures/StudioToolbox/ScrollBarBottom.png"]
      207 SETTABLEKS                       R16 R15 K59 ["BottomImage"]
      209 GETTABLEKS                       R16 R7 K60 ["ScrollbarColor"]
      211 SETTABLEKS                       R16 R15 K61 ["ScrollBarImageColor3"]
      213 GETTABLEKS                       R16 R7 K62 ["ScrollbarSize"]
      215 SETTABLEKS                       R16 R15 K63 ["ScrollBarThickness"]
      217 GETTABLEKS                       R16 R7 K64 ["ScrollbarTransparency"]
      219 SETTABLEKS                       R16 R15 K65 ["ScrollBarImageTransparency"]
      221 GETIMPORT                        R16 K51 [UDim2.new]
      223 LOADN                            R17 1
      224 LOADN                            R18 0
      225 LOADN                            R19 1
      226 MINUS                            R20 R8
      227 CALL                             R16 4 1
      228 SETTABLEKS                       R16 R15 K2 ["Size"]
      230 GETUPVAL                         R16 1
      231 GETTABLEKS                       R16 R16 K66 ["Ref"]
      233 GETTABLEKS                       R17 R0 K67 ["scrollRef"]
      235 SETTABLE                         R17 R15 R16
      236 DUPTABLE                         R16 K69 [{"Layout", "Content"}]
      237 GETUPVAL                         R17 1
      238 GETTABLEKS                       R17 R17 K9 ["createElement"]
      240 LOADK                            R18 K28 ["UIListLayout"]
      241 NEWTABLE                         R19 8 0
      243 GETIMPORT                        R20 K71 [Enum.HorizontalAlignment.Center]
      245 SETTABLEKS                       R20 R19 K29 ["HorizontalAlignment"]
      247 GETIMPORT                        R20 K37 [Enum.SortOrder.LayoutOrder]
      249 SETTABLEKS                       R20 R19 K30 ["SortOrder"]
      251 GETIMPORT                        R20 K39 [Enum.VerticalAlignment.Top]
      253 SETTABLEKS                       R20 R19 K31 ["VerticalAlignment"]
      255 GETUPVAL                         R20 1
      256 GETTABLEKS                       R20 R20 K72 ["Change"]
      258 GETTABLEKS                       R20 R20 K73 ["AbsoluteContentSize"]
      260 GETTABLEKS                       R21 R0 K74 ["resizeScrollingFrameCanvas"]
      262 SETTABLE                         R21 R19 R20
      263 GETUPVAL                         R20 1
      264 GETTABLEKS                       R20 R20 K66 ["Ref"]
      266 GETTABLEKS                       R21 R0 K75 ["scrollLayoutRef"]
      268 SETTABLE                         R21 R19 R20
      269 CALL                             R17 2 1
      270 SETTABLEKS                       R17 R16 K16 ["Layout"]
      272 GETUPVAL                         R17 1
      273 GETTABLEKS                       R17 R17 K9 ["createElement"]
      275 GETUPVAL                         R18 2
      276 DUPTABLE                         R19 K77 [{"BackgroundTransparency", "contentPadding", "width"}]
      277 LOADN                            R20 1
      278 SETTABLEKS                       R20 R19 K40 ["BackgroundTransparency"]
      280 GETIMPORT                        R20 K27 [UDim.new]
      282 LOADN                            R21 0
      283 LOADN                            R22 20
      284 CALL                             R20 2 1
      285 SETTABLEKS                       R20 R19 K76 ["contentPadding"]
      287 GETIMPORT                        R20 K27 [UDim.new]
      289 LOADN                            R21 1
      290 LOADN                            R22 0
      291 CALL                             R20 2 1
      292 SETTABLEKS                       R20 R19 K41 ["width"]
      294 DUPTABLE                         R20 K80 [{"HttpRequestPermissionContainer", "ScriptInjectionPermissionContainer"}]
      295 GETIMPORT                        R21 K82 [next]
      297 MOVE                             R22 R4
      298 CALL                             R21 1 1
      299 JUMPIFNOT                        R21 ; [+25]
      300 GETUPVAL                         R21 1
      301 GETTABLEKS                       R21 R21 K9 ["createElement"]
      303 GETUPVAL                         R22 4
      304 DUPTABLE                         R23 K86 [{"LayoutOrder", "renderContent", "theme", "title"}]
      305 LOADN                            R24 3
      306 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      308 NEWCLOSURE                       R24 P0
      309 CAPTURE                          UPVAL U1
      310 CAPTURE                          UPVAL U5
      311 CAPTURE                          VAL R1
      312 CAPTURE                          VAL R4
      313 SETTABLEKS                       R24 R23 K83 ["renderContent"]
      315 SETTABLEKS                       R7 R23 K84 ["theme"]
      317 LOADK                            R26 K87 ["Details"]
      318 LOADK                            R27 K88 ["HttpRequests"]
      319 NAMECALL                         R24 R3 K89 ["getText"]
      321 CALL                             R24 3 1
      322 SETTABLEKS                       R24 R23 K85 ["title"]
      324 CALL                             R21 2 1
      325 SETTABLEKS                       R21 R20 K78 ["HttpRequestPermissionContainer"]
      327 GETIMPORT                        R21 K82 [next]
      329 MOVE                             R22 R5
      330 CALL                             R21 1 1
      331 JUMPIFNOT                        R21 ; [+25]
      332 GETUPVAL                         R21 1
      333 GETTABLEKS                       R21 R21 K9 ["createElement"]
      335 GETUPVAL                         R22 4
      336 DUPTABLE                         R23 K86 [{"LayoutOrder", "renderContent", "theme", "title"}]
      337 LOADN                            R24 4
      338 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      340 NEWCLOSURE                       R24 P1
      341 CAPTURE                          UPVAL U1
      342 CAPTURE                          UPVAL U6
      343 CAPTURE                          VAL R1
      344 CAPTURE                          VAL R5
      345 SETTABLEKS                       R24 R23 K83 ["renderContent"]
      347 SETTABLEKS                       R7 R23 K84 ["theme"]
      349 LOADK                            R26 K87 ["Details"]
      350 LOADK                            R27 K90 ["ScriptInjection"]
      351 NAMECALL                         R24 R3 K89 ["getText"]
      353 CALL                             R24 3 1
      354 SETTABLEKS                       R24 R23 K85 ["title"]
      356 CALL                             R21 2 1
      357 SETTABLEKS                       R21 R20 K79 ["ScriptInjectionPermissionContainer"]
      359 CALL                             R17 3 1
      360 SETTABLEKS                       R17 R16 K68 ["Content"]
      362 CALL                             R13 3 1
      363 SETTABLEKS                       R13 R12 K18 ["ScrollingFrame"]
      365 CALL                             R9 3 -1
      366 RETURN                           R9 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["Management"]
        2 GETTABLEKS                       R2 R2 K1 ["plugins"]
        4 GETTABLEKS                       R4 R0 K2 ["PluginPermissions"]
        6 GETTABLEKS                       R5 R1 K3 ["assetId"]
        8 GETTABLE                         R3 R4 R5
        9 DUPTABLE                         R4 K7 [{"pluginData", "httpPermissions", "scriptInjectionPermissions"}]
       10 JUMPIFNOT                        R2 ; [+4]
       11 GETTABLEKS                       R6 R1 K3 ["assetId"]
       13 GETTABLE                         R5 R2 R6
       14 JUMPIF                           R5 ; [+1]
       15 LOADNIL                          R5
       16 SETTABLEKS                       R5 R4 K4 ["pluginData"]
       18 JUMPIFNOT                        R3 ; [+3]
       19 GETTABLEKS                       R5 R3 K5 ["httpPermissions"]
       21 JUMPIF                           R5 ; [+2]
       22 NEWTABLE                         R5 0 0
       24 SETTABLEKS                       R5 R4 K5 ["httpPermissions"]
       26 JUMPIFNOT                        R3 ; [+3]
       27 GETTABLEKS                       R5 R3 K6 ["scriptInjectionPermissions"]
       29 JUMPIF                           R5 ; [+2]
       30 NEWTABLE                         R5 0 0
       32 SETTABLEKS                       R5 R4 K6 ["scriptInjectionPermissions"]
       34 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["FitFrame"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Util"]
       38 GETTABLEKS                       R5 R5 K11 ["Constants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Components"]
       47 GETTABLEKS                       R6 R6 K13 ["PluginDetails"]
       49 GETTABLEKS                       R6 R6 K14 ["DetailsTopBar"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R7 R0 K9 ["Src"]
       56 GETTABLEKS                       R7 R7 K12 ["Components"]
       58 GETTABLEKS                       R7 R7 K13 ["PluginDetails"]
       60 GETTABLEKS                       R7 R7 K15 ["HttpRequestHolder"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K4 [require]
       65 GETTABLEKS                       R8 R0 K9 ["Src"]
       67 GETTABLEKS                       R8 R8 K12 ["Components"]
       69 GETTABLEKS                       R8 R8 K13 ["PluginDetails"]
       71 GETTABLEKS                       R8 R8 K16 ["ScriptInjectionHolder"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K4 [require]
       76 GETTABLEKS                       R9 R0 K9 ["Src"]
       78 GETTABLEKS                       R9 R9 K12 ["Components"]
       80 GETTABLEKS                       R9 R9 K13 ["PluginDetails"]
       82 GETTABLEKS                       R9 R9 K17 ["ListItem"]
       84 CALL                             R8 1 1
       85 GETIMPORT                        R9 K4 [require]
       87 GETTABLEKS                       R10 R0 K5 ["Packages"]
       89 GETTABLEKS                       R10 R10 K18 ["Framework"]
       91 CALL                             R9 1 1
       92 GETTABLEKS                       R9 R9 K19 ["ContextServices"]
       94 GETTABLEKS                       R10 R9 K20 ["withContext"]
       96 GETTABLEKS                       R11 R3 K21 ["FitFrameVertical"]
       98 GETTABLEKS                       R12 R1 K22 ["Component"]
      100 LOADK                            R14 K23 ["PluginDetailsView"]
      101 NAMECALL                         R12 R12 K24 ["extend"]
      103 CALL                             R12 2 1
      104 DUPTABLE                         R13 K26 [{"Size"}]
      105 GETIMPORT                        R14 K29 [UDim2.new]
      107 LOADN                            R15 1
      108 LOADN                            R16 0
      109 LOADN                            R17 1
      110 LOADN                            R18 0
      111 CALL                             R14 4 1
      112 SETTABLEKS                       R14 R13 K25 ["Size"]
      114 SETTABLEKS                       R13 R12 K30 ["defaultProps"]
      116 DUPCLOSURE                       R13 K31 [PROTO_1]
      117 CAPTURE                          VAL R1
      118 SETTABLEKS                       R13 R12 K32 ["init"]
      120 DUPCLOSURE                       R13 K33 [PROTO_2]
      121 SETTABLEKS                       R13 R12 K34 ["didMount"]
      123 DUPCLOSURE                       R13 K35 [PROTO_5]
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R7
      131 SETTABLEKS                       R13 R12 K36 ["render"]
      133 MOVE                             R13 R10
      134 DUPTABLE                         R14 K39 [{"Localization", "Stylizer"}]
      135 GETTABLEKS                       R15 R9 K37 ["Localization"]
      137 SETTABLEKS                       R15 R14 K37 ["Localization"]
      139 GETTABLEKS                       R15 R9 K38 ["Stylizer"]
      141 SETTABLEKS                       R15 R14 K38 ["Stylizer"]
      143 CALL                             R13 1 1
      144 MOVE                             R14 R12
      145 CALL                             R13 1 1
      146 MOVE                             R12 R13
      147 DUPCLOSURE                       R13 K40 [PROTO_6]
      148 GETTABLEKS                       R14 R2 K41 ["connect"]
      150 MOVE                             R15 R13
      151 LOADNIL                          R16
      152 CALL                             R14 2 1
      153 MOVE                             R15 R12
      154 CALL                             R14 1 -1
      155 RETURN                           R14 -1
