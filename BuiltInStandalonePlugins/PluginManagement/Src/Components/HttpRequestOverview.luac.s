PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Navigation"]
        5 NAMECALL                         R0 R0 K2 ["get"]
        7 CALL                             R0 1 1
        8 GETTABLEKS                       R1 R0 K3 ["navigation"]
       10 GETTABLEKS                       R1 R1 K4 ["navigate"]
       12 DUPTABLE                         R2 K7 [{"routeName", "params"}]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K8 ["APP_PAGE"]
       16 GETTABLEKS                       R3 R3 K9 ["Detail"]
       18 SETTABLEKS                       R3 R2 K5 ["routeName"]
       20 DUPTABLE                         R3 K11 [{"assetId"}]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["props"]
       24 GETTABLEKS                       R4 R4 K10 ["assetId"]
       26 SETTABLEKS                       R4 R3 K10 ["assetId"]
       28 SETTABLEKS                       R3 R2 K6 ["params"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["openPluginDetails"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["acceptedRequestsCount"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["deniedRequestsCount"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["allowedScriptInjection"]
       12 LOADB                            R4 1
       13 LOADN                            R5 0
       14 JUMPIFLT                         R5 R1 ; [+6]
       16 LOADN                            R5 0
       17 JUMPIFLT                         R5 R2 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 JUMPIFNOTEQKNIL                  R3 ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 OR                               R6 R4 R5
       26 GETTABLEKS                       R7 R0 K0 ["props"]
       28 GETTABLEKS                       R7 R7 K4 ["LayoutOrder"]
       30 GETTABLEKS                       R8 R0 K0 ["props"]
       32 GETTABLEKS                       R8 R8 K5 ["Localization"]
       34 GETTABLEKS                       R9 R0 K0 ["props"]
       36 GETTABLEKS                       R9 R9 K6 ["Stylizer"]
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R10 R10 K7 ["new"]
       41 CALL                             R10 0 1
       42 GETUPVAL                         R11 1
       43 GETTABLEKS                       R11 R11 K8 ["createElement"]
       45 LOADK                            R12 K9 ["TextButton"]
       46 NEWTABLE                         R13 8 0
       48 LOADN                            R14 1
       49 SETTABLEKS                       R14 R13 K10 ["BackgroundTransparency"]
       51 SETTABLEKS                       R7 R13 K4 ["LayoutOrder"]
       53 GETIMPORT                        R14 K12 [UDim2.new]
       55 LOADN                            R15 1
       56 LOADN                            R16 0
       57 LOADN                            R17 0
       58 GETUPVAL                         R18 2
       59 GETTABLEKS                       R18 R18 K13 ["PLUGIN_HTTP_REQUEST_OVERVIEW_HEIGHT"]
       61 CALL                             R14 4 1
       62 SETTABLEKS                       R14 R13 K14 ["Size"]
       64 LOADK                            R14 K15 [""]
       65 SETTABLEKS                       R14 R13 K16 ["Text"]
       67 GETUPVAL                         R14 1
       68 GETTABLEKS                       R14 R14 K17 ["Event"]
       70 GETTABLEKS                       R14 R14 K18 ["Activated"]
       72 GETTABLEKS                       R15 R0 K19 ["openPluginDetails"]
       74 SETTABLE                         R15 R13 R14
       75 DUPTABLE                         R14 K29 [{"Layout", "NoPermissionsRequested", "Label", "Allowed", "Denied", "Border", "ScriptInjection", "Border2", "EditButton"}]
       76 GETUPVAL                         R15 1
       77 GETTABLEKS                       R15 R15 K8 ["createElement"]
       79 LOADK                            R16 K30 ["UIListLayout"]
       80 DUPTABLE                         R17 K35 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
       81 GETIMPORT                        R18 K38 [Enum.FillDirection.Horizontal]
       83 SETTABLEKS                       R18 R17 K31 ["FillDirection"]
       85 GETIMPORT                        R18 K40 [UDim.new]
       87 LOADN                            R19 0
       88 LOADN                            R20 8
       89 CALL                             R18 2 1
       90 SETTABLEKS                       R18 R17 K32 ["Padding"]
       92 GETIMPORT                        R18 K41 [Enum.SortOrder.LayoutOrder]
       94 SETTABLEKS                       R18 R17 K33 ["SortOrder"]
       96 GETIMPORT                        R18 K43 [Enum.VerticalAlignment.Top]
       98 SETTABLEKS                       R18 R17 K34 ["VerticalAlignment"]
      100 CALL                             R15 2 1
      101 SETTABLEKS                       R15 R14 K20 ["Layout"]
      103 NOT                              R15 R6
      104 JUMPIFNOT                        R15 ; [+46]
      105 GETUPVAL                         R15 1
      106 GETTABLEKS                       R15 R15 K8 ["createElement"]
      108 GETUPVAL                         R16 3
      109 DUPTABLE                         R17 K51 [{["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"], ["Size"], ["TextSize"] = 16, ["Text"], ["TextXAlignment"], ["TextColor3"], ["width"]}]
      110 GETTABLEKS                       R18 R9 K45 ["Font"]
      112 SETTABLEKS                       R18 R17 K45 ["Font"]
      114 NAMECALL                         R18 R10 K52 ["getNextOrder"]
      116 CALL                             R18 1 1
      117 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      119 GETIMPORT                        R18 K12 [UDim2.new]
      121 LOADN                            R19 1
      122 LOADN                            R20 0
      123 LOADN                            R21 0
      124 LOADN                            R22 16
      125 CALL                             R18 4 1
      126 SETTABLEKS                       R18 R17 K14 ["Size"]
      128 LOADK                            R20 K53 ["PluginEntry"]
      129 LOADK                            R21 K21 ["NoPermissionsRequested"]
      130 NAMECALL                         R18 R8 K54 ["getText"]
      132 CALL                             R18 3 1
      133 SETTABLEKS                       R18 R17 K16 ["Text"]
      135 GETIMPORT                        R18 K56 [Enum.TextXAlignment.Left]
      137 SETTABLEKS                       R18 R17 K48 ["TextXAlignment"]
      139 GETTABLEKS                       R18 R9 K57 ["HttpOverviewTextColor"]
      141 SETTABLEKS                       R18 R17 K49 ["TextColor3"]
      143 GETUPVAL                         R18 3
      144 GETTABLEKS                       R18 R18 K58 ["Width"]
      146 GETTABLEKS                       R18 R18 K59 ["FitToText"]
      148 SETTABLEKS                       R18 R17 K50 ["width"]
      150 CALL                             R15 2 1
      151 SETTABLEKS                       R15 R14 K21 ["NoPermissionsRequested"]
      153 MOVE                             R15 R4
      154 JUMPIFNOT                        R15 ; [+46]
      155 GETUPVAL                         R15 1
      156 GETTABLEKS                       R15 R15 K8 ["createElement"]
      158 GETUPVAL                         R16 3
      159 DUPTABLE                         R17 K51 [{["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"], ["Size"], ["TextSize"] = 16, ["Text"], ["TextXAlignment"], ["TextColor3"], ["width"]}]
      160 GETTABLEKS                       R18 R9 K45 ["Font"]
      162 SETTABLEKS                       R18 R17 K45 ["Font"]
      164 NAMECALL                         R18 R10 K52 ["getNextOrder"]
      166 CALL                             R18 1 1
      167 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      169 GETIMPORT                        R18 K12 [UDim2.new]
      171 LOADN                            R19 1
      172 LOADN                            R20 0
      173 LOADN                            R21 0
      174 LOADN                            R22 16
      175 CALL                             R18 4 1
      176 SETTABLEKS                       R18 R17 K14 ["Size"]
      178 LOADK                            R20 K53 ["PluginEntry"]
      179 LOADK                            R21 K60 ["HttpRequest"]
      180 NAMECALL                         R18 R8 K54 ["getText"]
      182 CALL                             R18 3 1
      183 SETTABLEKS                       R18 R17 K16 ["Text"]
      185 GETIMPORT                        R18 K56 [Enum.TextXAlignment.Left]
      187 SETTABLEKS                       R18 R17 K48 ["TextXAlignment"]
      189 GETTABLEKS                       R18 R9 K57 ["HttpOverviewTextColor"]
      191 SETTABLEKS                       R18 R17 K49 ["TextColor3"]
      193 GETUPVAL                         R18 3
      194 GETTABLEKS                       R18 R18 K58 ["Width"]
      196 GETTABLEKS                       R18 R18 K59 ["FitToText"]
      198 SETTABLEKS                       R18 R17 K50 ["width"]
      200 CALL                             R15 2 1
      201 SETTABLEKS                       R15 R14 K22 ["Label"]
      203 LOADB                            R15 0
      204 LOADN                            R16 0
      205 JUMPIFNOTLT                      R16 R1 ; [+23]
      207 GETUPVAL                         R15 1
      208 GETTABLEKS                       R15 R15 K8 ["createElement"]
      210 GETUPVAL                         R16 4
      211 DUPTABLE                         R17 K65 [{["Image"] = "rbxasset://textures/PluginManagement/allowed.png", ["imageSize"], ["imageTopPadding"] = 1, ["LayoutOrder"], ["Text"], ["TextColor3"], ["TextSize"] = 16}]
      212 GETUPVAL                         R18 2
      213 GETTABLEKS                       R18 R18 K66 ["HTTP_OVERVIEW_ICON_SIZE"]
      215 SETTABLEKS                       R18 R17 K63 ["imageSize"]
      217 NAMECALL                         R18 R10 K52 ["getNextOrder"]
      219 CALL                             R18 1 1
      220 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      222 SETTABLEKS                       R1 R17 K16 ["Text"]
      224 GETTABLEKS                       R18 R9 K57 ["HttpOverviewTextColor"]
      226 SETTABLEKS                       R18 R17 K49 ["TextColor3"]
      228 CALL                             R15 2 1
      229 SETTABLEKS                       R15 R14 K23 ["Allowed"]
      231 LOADB                            R15 0
      232 LOADN                            R16 0
      233 JUMPIFNOTLT                      R16 R2 ; [+23]
      235 GETUPVAL                         R15 1
      236 GETTABLEKS                       R15 R15 K8 ["createElement"]
      238 GETUPVAL                         R16 4
      239 DUPTABLE                         R17 K68 [{["Image"] = "rbxasset://textures/PluginManagement/declined.png", ["imageSize"], ["imageTopPadding"] = 1, ["LayoutOrder"], ["Text"], ["TextColor3"], ["TextSize"] = 16}]
      240 GETUPVAL                         R18 2
      241 GETTABLEKS                       R18 R18 K66 ["HTTP_OVERVIEW_ICON_SIZE"]
      243 SETTABLEKS                       R18 R17 K63 ["imageSize"]
      245 NAMECALL                         R18 R10 K52 ["getNextOrder"]
      247 CALL                             R18 1 1
      248 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      250 SETTABLEKS                       R2 R17 K16 ["Text"]
      252 GETTABLEKS                       R18 R9 K57 ["HttpOverviewTextColor"]
      254 SETTABLEKS                       R18 R17 K49 ["TextColor3"]
      256 CALL                             R15 2 1
      257 SETTABLEKS                       R15 R14 K24 ["Denied"]
      259 MOVE                             R15 R4
      260 JUMPIFNOT                        R15 ; [+26]
      261 GETUPVAL                         R15 1
      262 GETTABLEKS                       R15 R15 K8 ["createElement"]
      264 LOADK                            R16 K69 ["Frame"]
      265 DUPTABLE                         R17 K73 [{["BorderSizePixel"] = 0, ["BackgroundColor3"], ["LayoutOrder"], ["Size"]}]
      266 GETTABLEKS                       R18 R9 K74 ["BorderColor"]
      268 SETTABLEKS                       R18 R17 K72 ["BackgroundColor3"]
      270 NAMECALL                         R18 R10 K52 ["getNextOrder"]
      272 CALL                             R18 1 1
      273 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      275 GETIMPORT                        R18 K12 [UDim2.new]
      277 LOADN                            R19 0
      278 LOADN                            R20 1
      279 LOADN                            R21 0
      280 GETUPVAL                         R22 2
      281 GETTABLEKS                       R22 R22 K66 ["HTTP_OVERVIEW_ICON_SIZE"]
      283 CALL                             R18 4 1
      284 SETTABLEKS                       R18 R17 K14 ["Size"]
      286 CALL                             R15 2 1
      287 SETTABLEKS                       R15 R14 K25 ["Border"]
      289 MOVE                             R15 R5
      290 JUMPIFNOT                        R15 ; [+49]
      291 GETUPVAL                         R15 1
      292 GETTABLEKS                       R15 R15 K8 ["createElement"]
      294 GETUPVAL                         R16 3
      295 DUPTABLE                         R17 K51 [{["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"], ["Size"], ["TextSize"] = 16, ["Text"], ["TextXAlignment"], ["TextColor3"], ["width"]}]
      296 GETTABLEKS                       R18 R9 K45 ["Font"]
      298 SETTABLEKS                       R18 R17 K45 ["Font"]
      300 NAMECALL                         R18 R10 K52 ["getNextOrder"]
      302 CALL                             R18 1 1
      303 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      305 GETIMPORT                        R18 K12 [UDim2.new]
      307 LOADN                            R19 1
      308 LOADN                            R20 0
      309 LOADN                            R21 0
      310 LOADN                            R22 16
      311 CALL                             R18 4 1
      312 SETTABLEKS                       R18 R17 K14 ["Size"]
      314 LOADK                            R20 K53 ["PluginEntry"]
      315 JUMPIFNOT                        R3 ; [+2]
      316 LOADK                            R21 K75 ["ScriptInjectionAllowed"]
      317 JUMP                             ; [+1]
      318 LOADK                            R21 K76 ["ScriptInjectionDenied"]
      319 NAMECALL                         R18 R8 K54 ["getText"]
      321 CALL                             R18 3 1
      322 SETTABLEKS                       R18 R17 K16 ["Text"]
      324 GETIMPORT                        R18 K56 [Enum.TextXAlignment.Left]
      326 SETTABLEKS                       R18 R17 K48 ["TextXAlignment"]
      328 GETTABLEKS                       R18 R9 K57 ["HttpOverviewTextColor"]
      330 SETTABLEKS                       R18 R17 K49 ["TextColor3"]
      332 GETUPVAL                         R18 3
      333 GETTABLEKS                       R18 R18 K58 ["Width"]
      335 GETTABLEKS                       R18 R18 K59 ["FitToText"]
      337 SETTABLEKS                       R18 R17 K50 ["width"]
      339 CALL                             R15 2 1
      340 SETTABLEKS                       R15 R14 K26 ["ScriptInjection"]
      342 MOVE                             R15 R5
      343 JUMPIFNOT                        R15 ; [+26]
      344 GETUPVAL                         R15 1
      345 GETTABLEKS                       R15 R15 K8 ["createElement"]
      347 LOADK                            R16 K69 ["Frame"]
      348 DUPTABLE                         R17 K73 [{["BorderSizePixel"] = 0, ["BackgroundColor3"], ["LayoutOrder"], ["Size"]}]
      349 GETTABLEKS                       R18 R9 K74 ["BorderColor"]
      351 SETTABLEKS                       R18 R17 K72 ["BackgroundColor3"]
      353 NAMECALL                         R18 R10 K52 ["getNextOrder"]
      355 CALL                             R18 1 1
      356 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      358 GETIMPORT                        R18 K12 [UDim2.new]
      360 LOADN                            R19 0
      361 LOADN                            R20 1
      362 LOADN                            R21 0
      363 GETUPVAL                         R22 2
      364 GETTABLEKS                       R22 R22 K66 ["HTTP_OVERVIEW_ICON_SIZE"]
      366 CALL                             R18 4 1
      367 SETTABLEKS                       R18 R17 K14 ["Size"]
      369 CALL                             R15 2 1
      370 SETTABLEKS                       R15 R14 K27 ["Border2"]
      372 MOVE                             R15 R6
      373 JUMPIFNOT                        R15 ; [+28]
      374 GETUPVAL                         R15 1
      375 GETTABLEKS                       R15 R15 K8 ["createElement"]
      377 LOADK                            R16 K77 ["ImageLabel"]
      378 DUPTABLE                         R17 K80 [{["BackgroundTransparency"] = 1, ["Image"] = "rbxasset://textures/PluginManagement/edit.png", ["ImageColor3"], ["LayoutOrder"], ["Size"]}]
      379 GETTABLEKS                       R18 R9 K57 ["HttpOverviewTextColor"]
      381 SETTABLEKS                       R18 R17 K79 ["ImageColor3"]
      383 NAMECALL                         R18 R10 K52 ["getNextOrder"]
      385 CALL                             R18 1 1
      386 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      388 GETIMPORT                        R18 K12 [UDim2.new]
      390 LOADN                            R19 0
      391 GETUPVAL                         R20 2
      392 GETTABLEKS                       R20 R20 K66 ["HTTP_OVERVIEW_ICON_SIZE"]
      394 LOADN                            R21 0
      395 GETUPVAL                         R22 2
      396 GETTABLEKS                       R22 R22 K66 ["HTTP_OVERVIEW_ICON_SIZE"]
      398 CALL                             R18 4 1
      399 SETTABLEKS                       R18 R17 K14 ["Size"]
      401 CALL                             R15 2 1
      402 SETTABLEKS                       R15 R14 K28 ["EditButton"]
      404 CALL                             R11 3 -1
      405 RETURN                           R11 -1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["PluginPermissions"]
        2 GETTABLEKS                       R4 R1 K1 ["assetId"]
        4 GETTABLE                         R2 R3 R4
        5 DUPTABLE                         R3 K5 [{"acceptedRequestsCount", "deniedRequestsCount", "allowedScriptInjection"}]
        6 JUMPIFNOT                        R2 ; [+3]
        7 GETTABLEKS                       R4 R2 K6 ["allowedHttpCount"]
        9 JUMPIF                           R4 ; [+1]
       10 LOADN                            R4 0
       11 SETTABLEKS                       R4 R3 K2 ["acceptedRequestsCount"]
       13 JUMPIFNOT                        R2 ; [+3]
       14 GETTABLEKS                       R4 R2 K7 ["deniedHttpCount"]
       16 JUMPIF                           R4 ; [+1]
       17 LOADN                            R4 0
       18 SETTABLEKS                       R4 R3 K3 ["deniedRequestsCount"]
       20 MOVE                             R4 R2
       21 JUMPIFNOT                        R4 ; [+2]
       22 GETTABLEKS                       R4 R2 K4 ["allowedScriptInjection"]
       24 SETTABLEKS                       R4 R3 K4 ["allowedScriptInjection"]
       26 RETURN                           R3 1

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
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["FitFrame"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R4 R4 K10 ["ContextServices"]
       39 GETTABLEKS                       R5 R4 K11 ["withContext"]
       41 GETIMPORT                        R6 K4 [require]
       43 GETTABLEKS                       R7 R0 K5 ["Packages"]
       45 GETTABLEKS                       R7 R7 K9 ["Framework"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R6 R6 K12 ["Util"]
       50 GETTABLEKS                       R6 R6 K13 ["LayoutOrderIterator"]
       52 GETIMPORT                        R7 K4 [require]
       54 GETTABLEKS                       R8 R0 K14 ["Src"]
       56 GETTABLEKS                       R8 R8 K12 ["Util"]
       58 GETTABLEKS                       R8 R8 K15 ["Constants"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K4 [require]
       63 GETTABLEKS                       R9 R0 K14 ["Src"]
       65 GETTABLEKS                       R9 R9 K10 ["ContextServices"]
       67 GETTABLEKS                       R9 R9 K16 ["Navigation"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K4 [require]
       72 GETTABLEKS                       R10 R0 K14 ["Src"]
       74 GETTABLEKS                       R10 R10 K17 ["Components"]
       76 GETTABLEKS                       R10 R10 K18 ["IconWithText"]
       78 CALL                             R9 1 1
       79 GETTABLEKS                       R10 R3 K19 ["FitTextLabel"]
       81 GETTABLEKS                       R11 R1 K20 ["PureComponent"]
       83 LOADK                            R13 K21 ["HttpRequestOverview"]
       84 NAMECALL                         R11 R11 K22 ["extend"]
       86 CALL                             R11 2 1
       87 DUPTABLE                         R12 K28 [{["assetId"] = , ["LayoutOrder"] = 1, ["navigation"] = }]
       88 SETTABLEKS                       R12 R11 K29 ["defaultProps"]
       90 DUPCLOSURE                       R12 K30 [PROTO_1]
       91 CAPTURE                          VAL R7
       92 SETTABLEKS                       R12 R11 K31 ["init"]
       94 DUPCLOSURE                       R12 K32 [PROTO_2]
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R9
      100 SETTABLEKS                       R12 R11 K33 ["render"]
      102 DUPCLOSURE                       R12 K34 [PROTO_3]
      103 MOVE                             R13 R5
      104 DUPTABLE                         R14 K37 [{"Navigation", "Localization", "Stylizer"}]
      105 SETTABLEKS                       R8 R14 K16 ["Navigation"]
      107 GETTABLEKS                       R15 R4 K35 ["Localization"]
      109 SETTABLEKS                       R15 R14 K35 ["Localization"]
      111 GETTABLEKS                       R15 R4 K36 ["Stylizer"]
      113 SETTABLEKS                       R15 R14 K36 ["Stylizer"]
      115 CALL                             R13 1 1
      116 MOVE                             R14 R11
      117 CALL                             R13 1 1
      118 MOVE                             R11 R13
      119 GETTABLEKS                       R13 R2 K38 ["connect"]
      121 MOVE                             R14 R12
      122 LOADNIL                          R15
      123 CALL                             R13 2 1
      124 MOVE                             R14 R11
      125 CALL                             R13 1 -1
      126 RETURN                           R13 -1
