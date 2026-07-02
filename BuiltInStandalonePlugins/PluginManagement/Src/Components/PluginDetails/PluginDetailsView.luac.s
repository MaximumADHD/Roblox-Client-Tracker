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
       37 DUPTABLE                         R11 K14 [{["BackgroundColor3"], ["BorderSizePixel"] = 0, ["Size"]}]
       38 GETTABLEKS                       R12 R7 K15 ["BackgroundColor"]
       40 SETTABLEKS                       R12 R11 K11 ["BackgroundColor3"]
       42 SETTABLEKS                       R2 R11 K2 ["Size"]
       44 DUPTABLE                         R12 K20 [{"Padding", "Layout", "PlugnEntryContainer", "ScrollingFrame"}]
       45 GETUPVAL                         R13 1
       46 GETTABLEKS                       R13 R13 K9 ["createElement"]
       48 LOADK                            R14 K21 ["UIPadding"]
       49 DUPTABLE                         R15 K25 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
       50 GETIMPORT                        R16 K28 [UDim.new]
       52 LOADN                            R17 0
       53 LOADN                            R18 40
       54 CALL                             R16 2 1
       55 SETTABLEKS                       R16 R15 K22 ["PaddingBottom"]
       57 GETIMPORT                        R16 K28 [UDim.new]
       59 LOADN                            R17 0
       60 LOADN                            R18 40
       61 CALL                             R16 2 1
       62 SETTABLEKS                       R16 R15 K23 ["PaddingLeft"]
       64 GETIMPORT                        R16 K28 [UDim.new]
       66 LOADN                            R17 0
       67 LOADN                            R18 40
       68 CALL                             R16 2 1
       69 SETTABLEKS                       R16 R15 K24 ["PaddingRight"]
       71 CALL                             R13 2 1
       72 SETTABLEKS                       R13 R12 K16 ["Padding"]
       74 GETUPVAL                         R13 1
       75 GETTABLEKS                       R13 R13 K9 ["createElement"]
       77 LOADK                            R14 K29 ["UIListLayout"]
       78 DUPTABLE                         R15 K33 [{"HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
       79 GETIMPORT                        R16 K36 [Enum.HorizontalAlignment.Left]
       81 SETTABLEKS                       R16 R15 K30 ["HorizontalAlignment"]
       83 GETIMPORT                        R16 K28 [UDim.new]
       85 LOADN                            R17 0
       86 LOADN                            R18 20
       87 CALL                             R16 2 1
       88 SETTABLEKS                       R16 R15 K16 ["Padding"]
       90 GETIMPORT                        R16 K38 [Enum.SortOrder.LayoutOrder]
       92 SETTABLEKS                       R16 R15 K31 ["SortOrder"]
       94 GETIMPORT                        R16 K40 [Enum.VerticalAlignment.Top]
       96 SETTABLEKS                       R16 R15 K32 ["VerticalAlignment"]
       98 CALL                             R13 2 1
       99 SETTABLEKS                       R13 R12 K17 ["Layout"]
      101 GETUPVAL                         R13 1
      102 GETTABLEKS                       R13 R13 K9 ["createElement"]
      104 GETUPVAL                         R14 2
      105 DUPTABLE                         R15 K45 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2, ["width"]}]
      106 GETIMPORT                        R16 K28 [UDim.new]
      108 LOADN                            R17 1
      109 LOADN                            R18 0
      110 CALL                             R16 2 1
      111 SETTABLEKS                       R16 R15 K44 ["width"]
      113 DUPTABLE                         R16 K48 [{"DetailsTopBar", "Border"}]
      114 GETUPVAL                         R17 1
      115 GETTABLEKS                       R17 R17 K9 ["createElement"]
      117 GETUPVAL                         R18 3
      118 DUPTABLE                         R19 K50 [{["assetId"], ["name"], ["LayoutOrder"] = 1}]
      119 SETTABLEKS                       R1 R19 K1 ["assetId"]
      121 GETTABLEKS                       R20 R6 K49 ["name"]
      123 SETTABLEKS                       R20 R19 K49 ["name"]
      125 CALL                             R17 2 1
      126 SETTABLEKS                       R17 R16 K46 ["DetailsTopBar"]
      128 GETUPVAL                         R17 1
      129 GETTABLEKS                       R17 R17 K9 ["createElement"]
      131 LOADK                            R18 K10 ["Frame"]
      132 DUPTABLE                         R19 K51 [{["LayoutOrder"] = 2, ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["Size"]}]
      133 GETTABLEKS                       R20 R7 K52 ["BorderColor"]
      135 SETTABLEKS                       R20 R19 K11 ["BackgroundColor3"]
      137 GETIMPORT                        R20 K54 [UDim2.new]
      139 LOADN                            R21 1
      140 LOADN                            R22 0
      141 LOADN                            R23 0
      142 LOADN                            R24 1
      143 CALL                             R20 4 1
      144 SETTABLEKS                       R20 R19 K2 ["Size"]
      146 CALL                             R17 2 1
      147 SETTABLEKS                       R17 R16 K47 ["Border"]
      149 CALL                             R13 3 1
      150 SETTABLEKS                       R13 R12 K18 ["PlugnEntryContainer"]
      152 GETUPVAL                         R13 1
      153 GETTABLEKS                       R13 R13 K9 ["createElement"]
      155 LOADK                            R14 K19 ["ScrollingFrame"]
      156 NEWTABLE                         R15 16 0
      158 LOADN                            R16 1
      159 SETTABLEKS                       R16 R15 K41 ["BackgroundTransparency"]
      161 LOADN                            R16 3
      162 SETTABLEKS                       R16 R15 K37 ["LayoutOrder"]
      164 GETIMPORT                        R16 K54 [UDim2.new]
      166 LOADN                            R17 1
      167 LOADN                            R18 0
      168 LOADN                            R19 0
      169 LOADN                            R20 0
      170 CALL                             R16 4 1
      171 SETTABLEKS                       R16 R15 K55 ["CanvasSize"]
      173 GETIMPORT                        R16 K54 [UDim2.new]
      175 LOADN                            R17 0
      176 LOADN                            R18 200
      177 LOADN                            R19 0
      178 LOADN                            R20 0
      179 CALL                             R16 4 1
      180 SETTABLEKS                       R16 R15 K56 ["Position"]
      182 LOADK                            R16 K57 ["rbxasset://textures/StudioToolbox/ScrollBarTop.png"]
      183 SETTABLEKS                       R16 R15 K58 ["TopImage"]
      185 LOADK                            R16 K59 ["rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"]
      186 SETTABLEKS                       R16 R15 K60 ["MidImage"]
      188 LOADK                            R16 K61 ["rbxasset://textures/StudioToolbox/ScrollBarBottom.png"]
      189 SETTABLEKS                       R16 R15 K62 ["BottomImage"]
      191 GETTABLEKS                       R16 R7 K63 ["ScrollbarColor"]
      193 SETTABLEKS                       R16 R15 K64 ["ScrollBarImageColor3"]
      195 GETTABLEKS                       R16 R7 K65 ["ScrollbarSize"]
      197 SETTABLEKS                       R16 R15 K66 ["ScrollBarThickness"]
      199 GETTABLEKS                       R16 R7 K67 ["ScrollbarTransparency"]
      201 SETTABLEKS                       R16 R15 K68 ["ScrollBarImageTransparency"]
      203 GETIMPORT                        R16 K54 [UDim2.new]
      205 LOADN                            R17 1
      206 LOADN                            R18 0
      207 LOADN                            R19 1
      208 MINUS                            R20 R8
      209 CALL                             R16 4 1
      210 SETTABLEKS                       R16 R15 K2 ["Size"]
      212 GETUPVAL                         R16 1
      213 GETTABLEKS                       R16 R16 K69 ["Ref"]
      215 GETTABLEKS                       R17 R0 K70 ["scrollRef"]
      217 SETTABLE                         R17 R15 R16
      218 DUPTABLE                         R16 K72 [{"Layout", "Content"}]
      219 GETUPVAL                         R17 1
      220 GETTABLEKS                       R17 R17 K9 ["createElement"]
      222 LOADK                            R18 K29 ["UIListLayout"]
      223 NEWTABLE                         R19 8 0
      225 GETIMPORT                        R20 K74 [Enum.HorizontalAlignment.Center]
      227 SETTABLEKS                       R20 R19 K30 ["HorizontalAlignment"]
      229 GETIMPORT                        R20 K38 [Enum.SortOrder.LayoutOrder]
      231 SETTABLEKS                       R20 R19 K31 ["SortOrder"]
      233 GETIMPORT                        R20 K40 [Enum.VerticalAlignment.Top]
      235 SETTABLEKS                       R20 R19 K32 ["VerticalAlignment"]
      237 GETUPVAL                         R20 1
      238 GETTABLEKS                       R20 R20 K75 ["Change"]
      240 GETTABLEKS                       R20 R20 K76 ["AbsoluteContentSize"]
      242 GETTABLEKS                       R21 R0 K77 ["resizeScrollingFrameCanvas"]
      244 SETTABLE                         R21 R19 R20
      245 GETUPVAL                         R20 1
      246 GETTABLEKS                       R20 R20 K69 ["Ref"]
      248 GETTABLEKS                       R21 R0 K78 ["scrollLayoutRef"]
      250 SETTABLE                         R21 R19 R20
      251 CALL                             R17 2 1
      252 SETTABLEKS                       R17 R16 K17 ["Layout"]
      254 GETUPVAL                         R17 1
      255 GETTABLEKS                       R17 R17 K9 ["createElement"]
      257 GETUPVAL                         R18 2
      258 DUPTABLE                         R19 K80 [{["BackgroundTransparency"] = 1, ["contentPadding"], ["width"]}]
      259 GETIMPORT                        R20 K28 [UDim.new]
      261 LOADN                            R21 0
      262 LOADN                            R22 20
      263 CALL                             R20 2 1
      264 SETTABLEKS                       R20 R19 K79 ["contentPadding"]
      266 GETIMPORT                        R20 K28 [UDim.new]
      268 LOADN                            R21 1
      269 LOADN                            R22 0
      270 CALL                             R20 2 1
      271 SETTABLEKS                       R20 R19 K44 ["width"]
      273 DUPTABLE                         R20 K83 [{"HttpRequestPermissionContainer", "ScriptInjectionPermissionContainer"}]
      274 GETIMPORT                        R21 K85 [next]
      276 MOVE                             R22 R4
      277 CALL                             R21 1 1
      278 JUMPIFNOT                        R21 ; [+22]
      279 GETUPVAL                         R21 1
      280 GETTABLEKS                       R21 R21 K9 ["createElement"]
      282 GETUPVAL                         R22 4
      283 DUPTABLE                         R23 K90 [{["LayoutOrder"] = 3, ["renderContent"], ["theme"], ["title"]}]
      284 NEWCLOSURE                       R24 P0
      285 CAPTURE                          UPVAL U1
      286 CAPTURE                          UPVAL U5
      287 CAPTURE                          VAL R1
      288 CAPTURE                          VAL R4
      289 SETTABLEKS                       R24 R23 K87 ["renderContent"]
      291 SETTABLEKS                       R7 R23 K88 ["theme"]
      293 LOADK                            R26 K91 ["Details"]
      294 LOADK                            R27 K92 ["HttpRequests"]
      295 NAMECALL                         R24 R3 K93 ["getText"]
      297 CALL                             R24 3 1
      298 SETTABLEKS                       R24 R23 K89 ["title"]
      300 CALL                             R21 2 1
      301 SETTABLEKS                       R21 R20 K81 ["HttpRequestPermissionContainer"]
      303 GETIMPORT                        R21 K85 [next]
      305 MOVE                             R22 R5
      306 CALL                             R21 1 1
      307 JUMPIFNOT                        R21 ; [+22]
      308 GETUPVAL                         R21 1
      309 GETTABLEKS                       R21 R21 K9 ["createElement"]
      311 GETUPVAL                         R22 4
      312 DUPTABLE                         R23 K95 [{["LayoutOrder"] = 4, ["renderContent"], ["theme"], ["title"]}]
      313 NEWCLOSURE                       R24 P1
      314 CAPTURE                          UPVAL U1
      315 CAPTURE                          UPVAL U6
      316 CAPTURE                          VAL R1
      317 CAPTURE                          VAL R5
      318 SETTABLEKS                       R24 R23 K87 ["renderContent"]
      320 SETTABLEKS                       R7 R23 K88 ["theme"]
      322 LOADK                            R26 K91 ["Details"]
      323 LOADK                            R27 K96 ["ScriptInjection"]
      324 NAMECALL                         R24 R3 K93 ["getText"]
      326 CALL                             R24 3 1
      327 SETTABLEKS                       R24 R23 K89 ["title"]
      329 CALL                             R21 2 1
      330 SETTABLEKS                       R21 R20 K82 ["ScriptInjectionPermissionContainer"]
      332 CALL                             R17 3 1
      333 SETTABLEKS                       R17 R16 K71 ["Content"]
      335 CALL                             R13 3 1
      336 SETTABLEKS                       R13 R12 K19 ["ScrollingFrame"]
      338 CALL                             R9 3 -1
      339 RETURN                           R9 -1

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
