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
      104 JUMPIFNOT                        R15 ; [+52]
      105 GETUPVAL                         R15 1
      106 GETTABLEKS                       R15 R15 K8 ["createElement"]
      108 GETUPVAL                         R16 3
      109 DUPTABLE                         R17 K49 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "TextSize", "Text", "TextXAlignment", "TextColor3", "width"}]
      110 LOADN                            R18 1
      111 SETTABLEKS                       R18 R17 K10 ["BackgroundTransparency"]
      113 GETTABLEKS                       R18 R9 K44 ["Font"]
      115 SETTABLEKS                       R18 R17 K44 ["Font"]
      117 NAMECALL                         R18 R10 K50 ["getNextOrder"]
      119 CALL                             R18 1 1
      120 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      122 GETIMPORT                        R18 K12 [UDim2.new]
      124 LOADN                            R19 1
      125 LOADN                            R20 0
      126 LOADN                            R21 0
      127 LOADN                            R22 16
      128 CALL                             R18 4 1
      129 SETTABLEKS                       R18 R17 K14 ["Size"]
      131 LOADN                            R18 16
      132 SETTABLEKS                       R18 R17 K45 ["TextSize"]
      134 LOADK                            R20 K51 ["PluginEntry"]
      135 LOADK                            R21 K21 ["NoPermissionsRequested"]
      136 NAMECALL                         R18 R8 K52 ["getText"]
      138 CALL                             R18 3 1
      139 SETTABLEKS                       R18 R17 K16 ["Text"]
      141 GETIMPORT                        R18 K54 [Enum.TextXAlignment.Left]
      143 SETTABLEKS                       R18 R17 K46 ["TextXAlignment"]
      145 GETTABLEKS                       R18 R9 K55 ["HttpOverviewTextColor"]
      147 SETTABLEKS                       R18 R17 K47 ["TextColor3"]
      149 GETUPVAL                         R18 3
      150 GETTABLEKS                       R18 R18 K56 ["Width"]
      152 GETTABLEKS                       R18 R18 K57 ["FitToText"]
      154 SETTABLEKS                       R18 R17 K48 ["width"]
      156 CALL                             R15 2 1
      157 SETTABLEKS                       R15 R14 K21 ["NoPermissionsRequested"]
      159 MOVE                             R15 R4
      160 JUMPIFNOT                        R15 ; [+52]
      161 GETUPVAL                         R15 1
      162 GETTABLEKS                       R15 R15 K8 ["createElement"]
      164 GETUPVAL                         R16 3
      165 DUPTABLE                         R17 K49 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "TextSize", "Text", "TextXAlignment", "TextColor3", "width"}]
      166 LOADN                            R18 1
      167 SETTABLEKS                       R18 R17 K10 ["BackgroundTransparency"]
      169 GETTABLEKS                       R18 R9 K44 ["Font"]
      171 SETTABLEKS                       R18 R17 K44 ["Font"]
      173 NAMECALL                         R18 R10 K50 ["getNextOrder"]
      175 CALL                             R18 1 1
      176 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      178 GETIMPORT                        R18 K12 [UDim2.new]
      180 LOADN                            R19 1
      181 LOADN                            R20 0
      182 LOADN                            R21 0
      183 LOADN                            R22 16
      184 CALL                             R18 4 1
      185 SETTABLEKS                       R18 R17 K14 ["Size"]
      187 LOADN                            R18 16
      188 SETTABLEKS                       R18 R17 K45 ["TextSize"]
      190 LOADK                            R20 K51 ["PluginEntry"]
      191 LOADK                            R21 K58 ["HttpRequest"]
      192 NAMECALL                         R18 R8 K52 ["getText"]
      194 CALL                             R18 3 1
      195 SETTABLEKS                       R18 R17 K16 ["Text"]
      197 GETIMPORT                        R18 K54 [Enum.TextXAlignment.Left]
      199 SETTABLEKS                       R18 R17 K46 ["TextXAlignment"]
      201 GETTABLEKS                       R18 R9 K55 ["HttpOverviewTextColor"]
      203 SETTABLEKS                       R18 R17 K47 ["TextColor3"]
      205 GETUPVAL                         R18 3
      206 GETTABLEKS                       R18 R18 K56 ["Width"]
      208 GETTABLEKS                       R18 R18 K57 ["FitToText"]
      210 SETTABLEKS                       R18 R17 K48 ["width"]
      212 CALL                             R15 2 1
      213 SETTABLEKS                       R15 R14 K22 ["Label"]
      215 LOADB                            R15 0
      216 LOADN                            R16 0
      217 JUMPIFNOTLT                      R16 R1 ; [+32]
      219 GETUPVAL                         R15 1
      220 GETTABLEKS                       R15 R15 K8 ["createElement"]
      222 GETUPVAL                         R16 4
      223 DUPTABLE                         R17 K62 [{"Image", "imageSize", "imageTopPadding", "LayoutOrder", "Text", "TextColor3", "TextSize"}]
      224 LOADK                            R18 K63 ["rbxasset://textures/PluginManagement/allowed.png"]
      225 SETTABLEKS                       R18 R17 K59 ["Image"]
      227 GETUPVAL                         R18 2
      228 GETTABLEKS                       R18 R18 K64 ["HTTP_OVERVIEW_ICON_SIZE"]
      230 SETTABLEKS                       R18 R17 K60 ["imageSize"]
      232 LOADN                            R18 1
      233 SETTABLEKS                       R18 R17 K61 ["imageTopPadding"]
      235 NAMECALL                         R18 R10 K50 ["getNextOrder"]
      237 CALL                             R18 1 1
      238 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      240 SETTABLEKS                       R1 R17 K16 ["Text"]
      242 GETTABLEKS                       R18 R9 K55 ["HttpOverviewTextColor"]
      244 SETTABLEKS                       R18 R17 K47 ["TextColor3"]
      246 LOADN                            R18 16
      247 SETTABLEKS                       R18 R17 K45 ["TextSize"]
      249 CALL                             R15 2 1
      250 SETTABLEKS                       R15 R14 K23 ["Allowed"]
      252 LOADB                            R15 0
      253 LOADN                            R16 0
      254 JUMPIFNOTLT                      R16 R2 ; [+32]
      256 GETUPVAL                         R15 1
      257 GETTABLEKS                       R15 R15 K8 ["createElement"]
      259 GETUPVAL                         R16 4
      260 DUPTABLE                         R17 K62 [{"Image", "imageSize", "imageTopPadding", "LayoutOrder", "Text", "TextColor3", "TextSize"}]
      261 LOADK                            R18 K65 ["rbxasset://textures/PluginManagement/declined.png"]
      262 SETTABLEKS                       R18 R17 K59 ["Image"]
      264 GETUPVAL                         R18 2
      265 GETTABLEKS                       R18 R18 K64 ["HTTP_OVERVIEW_ICON_SIZE"]
      267 SETTABLEKS                       R18 R17 K60 ["imageSize"]
      269 LOADN                            R18 1
      270 SETTABLEKS                       R18 R17 K61 ["imageTopPadding"]
      272 NAMECALL                         R18 R10 K50 ["getNextOrder"]
      274 CALL                             R18 1 1
      275 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      277 SETTABLEKS                       R2 R17 K16 ["Text"]
      279 GETTABLEKS                       R18 R9 K55 ["HttpOverviewTextColor"]
      281 SETTABLEKS                       R18 R17 K47 ["TextColor3"]
      283 LOADN                            R18 16
      284 SETTABLEKS                       R18 R17 K45 ["TextSize"]
      286 CALL                             R15 2 1
      287 SETTABLEKS                       R15 R14 K24 ["Denied"]
      289 MOVE                             R15 R4
      290 JUMPIFNOT                        R15 ; [+29]
      291 GETUPVAL                         R15 1
      292 GETTABLEKS                       R15 R15 K8 ["createElement"]
      294 LOADK                            R16 K66 ["Frame"]
      295 DUPTABLE                         R17 K69 [{"BorderSizePixel", "BackgroundColor3", "LayoutOrder", "Size"}]
      296 LOADN                            R18 0
      297 SETTABLEKS                       R18 R17 K67 ["BorderSizePixel"]
      299 GETTABLEKS                       R18 R9 K70 ["BorderColor"]
      301 SETTABLEKS                       R18 R17 K68 ["BackgroundColor3"]
      303 NAMECALL                         R18 R10 K50 ["getNextOrder"]
      305 CALL                             R18 1 1
      306 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      308 GETIMPORT                        R18 K12 [UDim2.new]
      310 LOADN                            R19 0
      311 LOADN                            R20 1
      312 LOADN                            R21 0
      313 GETUPVAL                         R22 2
      314 GETTABLEKS                       R22 R22 K64 ["HTTP_OVERVIEW_ICON_SIZE"]
      316 CALL                             R18 4 1
      317 SETTABLEKS                       R18 R17 K14 ["Size"]
      319 CALL                             R15 2 1
      320 SETTABLEKS                       R15 R14 K25 ["Border"]
      322 MOVE                             R15 R5
      323 JUMPIFNOT                        R15 ; [+55]
      324 GETUPVAL                         R15 1
      325 GETTABLEKS                       R15 R15 K8 ["createElement"]
      327 GETUPVAL                         R16 3
      328 DUPTABLE                         R17 K49 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "TextSize", "Text", "TextXAlignment", "TextColor3", "width"}]
      329 LOADN                            R18 1
      330 SETTABLEKS                       R18 R17 K10 ["BackgroundTransparency"]
      332 GETTABLEKS                       R18 R9 K44 ["Font"]
      334 SETTABLEKS                       R18 R17 K44 ["Font"]
      336 NAMECALL                         R18 R10 K50 ["getNextOrder"]
      338 CALL                             R18 1 1
      339 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      341 GETIMPORT                        R18 K12 [UDim2.new]
      343 LOADN                            R19 1
      344 LOADN                            R20 0
      345 LOADN                            R21 0
      346 LOADN                            R22 16
      347 CALL                             R18 4 1
      348 SETTABLEKS                       R18 R17 K14 ["Size"]
      350 LOADN                            R18 16
      351 SETTABLEKS                       R18 R17 K45 ["TextSize"]
      353 LOADK                            R20 K51 ["PluginEntry"]
      354 JUMPIFNOT                        R3 ; [+2]
      355 LOADK                            R21 K71 ["ScriptInjectionAllowed"]
      356 JUMP                             ; [+1]
      357 LOADK                            R21 K72 ["ScriptInjectionDenied"]
      358 NAMECALL                         R18 R8 K52 ["getText"]
      360 CALL                             R18 3 1
      361 SETTABLEKS                       R18 R17 K16 ["Text"]
      363 GETIMPORT                        R18 K54 [Enum.TextXAlignment.Left]
      365 SETTABLEKS                       R18 R17 K46 ["TextXAlignment"]
      367 GETTABLEKS                       R18 R9 K55 ["HttpOverviewTextColor"]
      369 SETTABLEKS                       R18 R17 K47 ["TextColor3"]
      371 GETUPVAL                         R18 3
      372 GETTABLEKS                       R18 R18 K56 ["Width"]
      374 GETTABLEKS                       R18 R18 K57 ["FitToText"]
      376 SETTABLEKS                       R18 R17 K48 ["width"]
      378 CALL                             R15 2 1
      379 SETTABLEKS                       R15 R14 K26 ["ScriptInjection"]
      381 MOVE                             R15 R5
      382 JUMPIFNOT                        R15 ; [+29]
      383 GETUPVAL                         R15 1
      384 GETTABLEKS                       R15 R15 K8 ["createElement"]
      386 LOADK                            R16 K66 ["Frame"]
      387 DUPTABLE                         R17 K69 [{"BorderSizePixel", "BackgroundColor3", "LayoutOrder", "Size"}]
      388 LOADN                            R18 0
      389 SETTABLEKS                       R18 R17 K67 ["BorderSizePixel"]
      391 GETTABLEKS                       R18 R9 K70 ["BorderColor"]
      393 SETTABLEKS                       R18 R17 K68 ["BackgroundColor3"]
      395 NAMECALL                         R18 R10 K50 ["getNextOrder"]
      397 CALL                             R18 1 1
      398 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      400 GETIMPORT                        R18 K12 [UDim2.new]
      402 LOADN                            R19 0
      403 LOADN                            R20 1
      404 LOADN                            R21 0
      405 GETUPVAL                         R22 2
      406 GETTABLEKS                       R22 R22 K64 ["HTTP_OVERVIEW_ICON_SIZE"]
      408 CALL                             R18 4 1
      409 SETTABLEKS                       R18 R17 K14 ["Size"]
      411 CALL                             R15 2 1
      412 SETTABLEKS                       R15 R14 K27 ["Border2"]
      414 MOVE                             R15 R6
      415 JUMPIFNOT                        R15 ; [+34]
      416 GETUPVAL                         R15 1
      417 GETTABLEKS                       R15 R15 K8 ["createElement"]
      419 LOADK                            R16 K73 ["ImageLabel"]
      420 DUPTABLE                         R17 K75 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      421 LOADN                            R18 1
      422 SETTABLEKS                       R18 R17 K10 ["BackgroundTransparency"]
      424 LOADK                            R18 K76 ["rbxasset://textures/PluginManagement/edit.png"]
      425 SETTABLEKS                       R18 R17 K59 ["Image"]
      427 GETTABLEKS                       R18 R9 K55 ["HttpOverviewTextColor"]
      429 SETTABLEKS                       R18 R17 K74 ["ImageColor3"]
      431 NAMECALL                         R18 R10 K50 ["getNextOrder"]
      433 CALL                             R18 1 1
      434 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      436 GETIMPORT                        R18 K12 [UDim2.new]
      438 LOADN                            R19 0
      439 GETUPVAL                         R20 2
      440 GETTABLEKS                       R20 R20 K64 ["HTTP_OVERVIEW_ICON_SIZE"]
      442 LOADN                            R21 0
      443 GETUPVAL                         R22 2
      444 GETTABLEKS                       R22 R22 K64 ["HTTP_OVERVIEW_ICON_SIZE"]
      446 CALL                             R18 4 1
      447 SETTABLEKS                       R18 R17 K14 ["Size"]
      449 CALL                             R15 2 1
      450 SETTABLEKS                       R15 R14 K28 ["EditButton"]
      452 CALL                             R11 3 -1
      453 RETURN                           R11 -1

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
       67 GETTABLEKS                       R9 R9 K16 ["PluginAPI2"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K4 [require]
       72 GETTABLEKS                       R10 R0 K14 ["Src"]
       74 GETTABLEKS                       R10 R10 K10 ["ContextServices"]
       76 GETTABLEKS                       R10 R10 K17 ["Navigation"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K4 [require]
       81 GETTABLEKS                       R11 R0 K14 ["Src"]
       83 GETTABLEKS                       R11 R11 K18 ["Components"]
       85 GETTABLEKS                       R11 R11 K19 ["IconWithText"]
       87 CALL                             R10 1 1
       88 GETTABLEKS                       R11 R3 K20 ["FitTextLabel"]
       90 GETTABLEKS                       R12 R1 K21 ["PureComponent"]
       92 LOADK                            R14 K22 ["HttpRequestOverview"]
       93 NAMECALL                         R12 R12 K23 ["extend"]
       95 CALL                             R12 2 1
       96 DUPTABLE                         R13 K27 [{"assetId", "LayoutOrder", "navigation"}]
       97 LOADNIL                          R14
       98 SETTABLEKS                       R14 R13 K24 ["assetId"]
      100 LOADN                            R14 1
      101 SETTABLEKS                       R14 R13 K25 ["LayoutOrder"]
      103 LOADNIL                          R14
      104 SETTABLEKS                       R14 R13 K26 ["navigation"]
      106 SETTABLEKS                       R13 R12 K28 ["defaultProps"]
      108 DUPCLOSURE                       R13 K29 [PROTO_1]
      109 CAPTURE                          VAL R7
      110 SETTABLEKS                       R13 R12 K30 ["init"]
      112 DUPCLOSURE                       R13 K31 [PROTO_2]
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R10
      118 SETTABLEKS                       R13 R12 K32 ["render"]
      120 DUPCLOSURE                       R13 K33 [PROTO_3]
      121 MOVE                             R14 R5
      122 DUPTABLE                         R15 K37 [{"Navigation", "Localization", "Stylizer", "API"}]
      123 SETTABLEKS                       R9 R15 K17 ["Navigation"]
      125 GETTABLEKS                       R16 R4 K34 ["Localization"]
      127 SETTABLEKS                       R16 R15 K34 ["Localization"]
      129 GETTABLEKS                       R16 R4 K35 ["Stylizer"]
      131 SETTABLEKS                       R16 R15 K35 ["Stylizer"]
      133 SETTABLEKS                       R8 R15 K36 ["API"]
      135 CALL                             R14 1 1
      136 MOVE                             R15 R12
      137 CALL                             R14 1 1
      138 MOVE                             R12 R14
      139 GETTABLEKS                       R14 R2 K38 ["connect"]
      141 MOVE                             R15 R13
      142 LOADNIL                          R16
      143 CALL                             R14 2 1
      144 MOVE                             R15 R12
      145 CALL                             R14 1 -1
      146 RETURN                           R14 -1
