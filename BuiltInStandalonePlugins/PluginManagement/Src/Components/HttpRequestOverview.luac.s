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
       58 GETUPVAL                         R19 2
       59 CALL                             R19 0 1
       60 JUMPIFNOT                        R19 ; [+4]
       61 GETUPVAL                         R18 3
       62 GETTABLEKS                       R18 R18 K13 ["PLUGIN_HTTP_REQUEST_OVERVIEW_HEIGHT"]
       64 JUMP                             ; [+1]
       65 LOADN                            R18 16
       66 CALL                             R14 4 1
       67 SETTABLEKS                       R14 R13 K14 ["Size"]
       69 LOADK                            R14 K15 [""]
       70 SETTABLEKS                       R14 R13 K16 ["Text"]
       72 GETUPVAL                         R14 1
       73 GETTABLEKS                       R14 R14 K17 ["Event"]
       75 GETTABLEKS                       R14 R14 K18 ["Activated"]
       77 GETTABLEKS                       R15 R0 K19 ["openPluginDetails"]
       79 SETTABLE                         R15 R13 R14
       80 DUPTABLE                         R14 K29 [{"Layout", "NoPermissionsRequested", "Label", "Allowed", "Denied", "Border", "ScriptInjection", "Border2", "EditButton"}]
       81 GETUPVAL                         R15 1
       82 GETTABLEKS                       R15 R15 K8 ["createElement"]
       84 LOADK                            R16 K30 ["UIListLayout"]
       85 DUPTABLE                         R17 K35 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
       86 GETIMPORT                        R18 K38 [Enum.FillDirection.Horizontal]
       88 SETTABLEKS                       R18 R17 K31 ["FillDirection"]
       90 GETIMPORT                        R18 K40 [UDim.new]
       92 LOADN                            R19 0
       93 LOADN                            R20 8
       94 CALL                             R18 2 1
       95 SETTABLEKS                       R18 R17 K32 ["Padding"]
       97 GETIMPORT                        R18 K41 [Enum.SortOrder.LayoutOrder]
       99 SETTABLEKS                       R18 R17 K33 ["SortOrder"]
      101 GETIMPORT                        R18 K43 [Enum.VerticalAlignment.Top]
      103 SETTABLEKS                       R18 R17 K34 ["VerticalAlignment"]
      105 CALL                             R15 2 1
      106 SETTABLEKS                       R15 R14 K20 ["Layout"]
      108 NOT                              R15 R6
      109 JUMPIFNOT                        R15 ; [+52]
      110 GETUPVAL                         R15 1
      111 GETTABLEKS                       R15 R15 K8 ["createElement"]
      113 GETUPVAL                         R16 4
      114 DUPTABLE                         R17 K49 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "TextSize", "Text", "TextXAlignment", "TextColor3", "width"}]
      115 LOADN                            R18 1
      116 SETTABLEKS                       R18 R17 K10 ["BackgroundTransparency"]
      118 GETTABLEKS                       R18 R9 K44 ["Font"]
      120 SETTABLEKS                       R18 R17 K44 ["Font"]
      122 NAMECALL                         R18 R10 K50 ["getNextOrder"]
      124 CALL                             R18 1 1
      125 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      127 GETIMPORT                        R18 K12 [UDim2.new]
      129 LOADN                            R19 1
      130 LOADN                            R20 0
      131 LOADN                            R21 0
      132 LOADN                            R22 16
      133 CALL                             R18 4 1
      134 SETTABLEKS                       R18 R17 K14 ["Size"]
      136 LOADN                            R18 16
      137 SETTABLEKS                       R18 R17 K45 ["TextSize"]
      139 LOADK                            R20 K51 ["PluginEntry"]
      140 LOADK                            R21 K21 ["NoPermissionsRequested"]
      141 NAMECALL                         R18 R8 K52 ["getText"]
      143 CALL                             R18 3 1
      144 SETTABLEKS                       R18 R17 K16 ["Text"]
      146 GETIMPORT                        R18 K54 [Enum.TextXAlignment.Left]
      148 SETTABLEKS                       R18 R17 K46 ["TextXAlignment"]
      150 GETTABLEKS                       R18 R9 K55 ["HttpOverviewTextColor"]
      152 SETTABLEKS                       R18 R17 K47 ["TextColor3"]
      154 GETUPVAL                         R18 4
      155 GETTABLEKS                       R18 R18 K56 ["Width"]
      157 GETTABLEKS                       R18 R18 K57 ["FitToText"]
      159 SETTABLEKS                       R18 R17 K48 ["width"]
      161 CALL                             R15 2 1
      162 SETTABLEKS                       R15 R14 K21 ["NoPermissionsRequested"]
      164 MOVE                             R15 R4
      165 JUMPIFNOT                        R15 ; [+52]
      166 GETUPVAL                         R15 1
      167 GETTABLEKS                       R15 R15 K8 ["createElement"]
      169 GETUPVAL                         R16 4
      170 DUPTABLE                         R17 K49 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "TextSize", "Text", "TextXAlignment", "TextColor3", "width"}]
      171 LOADN                            R18 1
      172 SETTABLEKS                       R18 R17 K10 ["BackgroundTransparency"]
      174 GETTABLEKS                       R18 R9 K44 ["Font"]
      176 SETTABLEKS                       R18 R17 K44 ["Font"]
      178 NAMECALL                         R18 R10 K50 ["getNextOrder"]
      180 CALL                             R18 1 1
      181 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      183 GETIMPORT                        R18 K12 [UDim2.new]
      185 LOADN                            R19 1
      186 LOADN                            R20 0
      187 LOADN                            R21 0
      188 LOADN                            R22 16
      189 CALL                             R18 4 1
      190 SETTABLEKS                       R18 R17 K14 ["Size"]
      192 LOADN                            R18 16
      193 SETTABLEKS                       R18 R17 K45 ["TextSize"]
      195 LOADK                            R20 K51 ["PluginEntry"]
      196 LOADK                            R21 K58 ["HttpRequest"]
      197 NAMECALL                         R18 R8 K52 ["getText"]
      199 CALL                             R18 3 1
      200 SETTABLEKS                       R18 R17 K16 ["Text"]
      202 GETIMPORT                        R18 K54 [Enum.TextXAlignment.Left]
      204 SETTABLEKS                       R18 R17 K46 ["TextXAlignment"]
      206 GETTABLEKS                       R18 R9 K55 ["HttpOverviewTextColor"]
      208 SETTABLEKS                       R18 R17 K47 ["TextColor3"]
      210 GETUPVAL                         R18 4
      211 GETTABLEKS                       R18 R18 K56 ["Width"]
      213 GETTABLEKS                       R18 R18 K57 ["FitToText"]
      215 SETTABLEKS                       R18 R17 K48 ["width"]
      217 CALL                             R15 2 1
      218 SETTABLEKS                       R15 R14 K22 ["Label"]
      220 LOADB                            R15 0
      221 LOADN                            R16 0
      222 JUMPIFNOTLT                      R16 R1 ; [+32]
      224 GETUPVAL                         R15 1
      225 GETTABLEKS                       R15 R15 K8 ["createElement"]
      227 GETUPVAL                         R16 5
      228 DUPTABLE                         R17 K62 [{"Image", "imageSize", "imageTopPadding", "LayoutOrder", "Text", "TextColor3", "TextSize"}]
      229 LOADK                            R18 K63 ["rbxasset://textures/PluginManagement/allowed.png"]
      230 SETTABLEKS                       R18 R17 K59 ["Image"]
      232 GETUPVAL                         R18 3
      233 GETTABLEKS                       R18 R18 K64 ["HTTP_OVERVIEW_ICON_SIZE"]
      235 SETTABLEKS                       R18 R17 K60 ["imageSize"]
      237 LOADN                            R18 1
      238 SETTABLEKS                       R18 R17 K61 ["imageTopPadding"]
      240 NAMECALL                         R18 R10 K50 ["getNextOrder"]
      242 CALL                             R18 1 1
      243 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      245 SETTABLEKS                       R1 R17 K16 ["Text"]
      247 GETTABLEKS                       R18 R9 K55 ["HttpOverviewTextColor"]
      249 SETTABLEKS                       R18 R17 K47 ["TextColor3"]
      251 LOADN                            R18 16
      252 SETTABLEKS                       R18 R17 K45 ["TextSize"]
      254 CALL                             R15 2 1
      255 SETTABLEKS                       R15 R14 K23 ["Allowed"]
      257 LOADB                            R15 0
      258 LOADN                            R16 0
      259 JUMPIFNOTLT                      R16 R2 ; [+32]
      261 GETUPVAL                         R15 1
      262 GETTABLEKS                       R15 R15 K8 ["createElement"]
      264 GETUPVAL                         R16 5
      265 DUPTABLE                         R17 K62 [{"Image", "imageSize", "imageTopPadding", "LayoutOrder", "Text", "TextColor3", "TextSize"}]
      266 LOADK                            R18 K65 ["rbxasset://textures/PluginManagement/declined.png"]
      267 SETTABLEKS                       R18 R17 K59 ["Image"]
      269 GETUPVAL                         R18 3
      270 GETTABLEKS                       R18 R18 K64 ["HTTP_OVERVIEW_ICON_SIZE"]
      272 SETTABLEKS                       R18 R17 K60 ["imageSize"]
      274 LOADN                            R18 1
      275 SETTABLEKS                       R18 R17 K61 ["imageTopPadding"]
      277 NAMECALL                         R18 R10 K50 ["getNextOrder"]
      279 CALL                             R18 1 1
      280 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      282 SETTABLEKS                       R2 R17 K16 ["Text"]
      284 GETTABLEKS                       R18 R9 K55 ["HttpOverviewTextColor"]
      286 SETTABLEKS                       R18 R17 K47 ["TextColor3"]
      288 LOADN                            R18 16
      289 SETTABLEKS                       R18 R17 K45 ["TextSize"]
      291 CALL                             R15 2 1
      292 SETTABLEKS                       R15 R14 K24 ["Denied"]
      294 MOVE                             R15 R4
      295 JUMPIFNOT                        R15 ; [+29]
      296 GETUPVAL                         R15 1
      297 GETTABLEKS                       R15 R15 K8 ["createElement"]
      299 LOADK                            R16 K66 ["Frame"]
      300 DUPTABLE                         R17 K69 [{"BorderSizePixel", "BackgroundColor3", "LayoutOrder", "Size"}]
      301 LOADN                            R18 0
      302 SETTABLEKS                       R18 R17 K67 ["BorderSizePixel"]
      304 GETTABLEKS                       R18 R9 K70 ["BorderColor"]
      306 SETTABLEKS                       R18 R17 K68 ["BackgroundColor3"]
      308 NAMECALL                         R18 R10 K50 ["getNextOrder"]
      310 CALL                             R18 1 1
      311 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      313 GETIMPORT                        R18 K12 [UDim2.new]
      315 LOADN                            R19 0
      316 LOADN                            R20 1
      317 LOADN                            R21 0
      318 GETUPVAL                         R22 3
      319 GETTABLEKS                       R22 R22 K64 ["HTTP_OVERVIEW_ICON_SIZE"]
      321 CALL                             R18 4 1
      322 SETTABLEKS                       R18 R17 K14 ["Size"]
      324 CALL                             R15 2 1
      325 SETTABLEKS                       R15 R14 K25 ["Border"]
      327 MOVE                             R15 R5
      328 JUMPIFNOT                        R15 ; [+55]
      329 GETUPVAL                         R15 1
      330 GETTABLEKS                       R15 R15 K8 ["createElement"]
      332 GETUPVAL                         R16 4
      333 DUPTABLE                         R17 K49 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "TextSize", "Text", "TextXAlignment", "TextColor3", "width"}]
      334 LOADN                            R18 1
      335 SETTABLEKS                       R18 R17 K10 ["BackgroundTransparency"]
      337 GETTABLEKS                       R18 R9 K44 ["Font"]
      339 SETTABLEKS                       R18 R17 K44 ["Font"]
      341 NAMECALL                         R18 R10 K50 ["getNextOrder"]
      343 CALL                             R18 1 1
      344 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      346 GETIMPORT                        R18 K12 [UDim2.new]
      348 LOADN                            R19 1
      349 LOADN                            R20 0
      350 LOADN                            R21 0
      351 LOADN                            R22 16
      352 CALL                             R18 4 1
      353 SETTABLEKS                       R18 R17 K14 ["Size"]
      355 LOADN                            R18 16
      356 SETTABLEKS                       R18 R17 K45 ["TextSize"]
      358 LOADK                            R20 K51 ["PluginEntry"]
      359 JUMPIFNOT                        R3 ; [+2]
      360 LOADK                            R21 K71 ["ScriptInjectionAllowed"]
      361 JUMP                             ; [+1]
      362 LOADK                            R21 K72 ["ScriptInjectionDenied"]
      363 NAMECALL                         R18 R8 K52 ["getText"]
      365 CALL                             R18 3 1
      366 SETTABLEKS                       R18 R17 K16 ["Text"]
      368 GETIMPORT                        R18 K54 [Enum.TextXAlignment.Left]
      370 SETTABLEKS                       R18 R17 K46 ["TextXAlignment"]
      372 GETTABLEKS                       R18 R9 K55 ["HttpOverviewTextColor"]
      374 SETTABLEKS                       R18 R17 K47 ["TextColor3"]
      376 GETUPVAL                         R18 4
      377 GETTABLEKS                       R18 R18 K56 ["Width"]
      379 GETTABLEKS                       R18 R18 K57 ["FitToText"]
      381 SETTABLEKS                       R18 R17 K48 ["width"]
      383 CALL                             R15 2 1
      384 SETTABLEKS                       R15 R14 K26 ["ScriptInjection"]
      386 MOVE                             R15 R5
      387 JUMPIFNOT                        R15 ; [+29]
      388 GETUPVAL                         R15 1
      389 GETTABLEKS                       R15 R15 K8 ["createElement"]
      391 LOADK                            R16 K66 ["Frame"]
      392 DUPTABLE                         R17 K69 [{"BorderSizePixel", "BackgroundColor3", "LayoutOrder", "Size"}]
      393 LOADN                            R18 0
      394 SETTABLEKS                       R18 R17 K67 ["BorderSizePixel"]
      396 GETTABLEKS                       R18 R9 K70 ["BorderColor"]
      398 SETTABLEKS                       R18 R17 K68 ["BackgroundColor3"]
      400 NAMECALL                         R18 R10 K50 ["getNextOrder"]
      402 CALL                             R18 1 1
      403 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      405 GETIMPORT                        R18 K12 [UDim2.new]
      407 LOADN                            R19 0
      408 LOADN                            R20 1
      409 LOADN                            R21 0
      410 GETUPVAL                         R22 3
      411 GETTABLEKS                       R22 R22 K64 ["HTTP_OVERVIEW_ICON_SIZE"]
      413 CALL                             R18 4 1
      414 SETTABLEKS                       R18 R17 K14 ["Size"]
      416 CALL                             R15 2 1
      417 SETTABLEKS                       R15 R14 K27 ["Border2"]
      419 MOVE                             R15 R6
      420 JUMPIFNOT                        R15 ; [+34]
      421 GETUPVAL                         R15 1
      422 GETTABLEKS                       R15 R15 K8 ["createElement"]
      424 LOADK                            R16 K73 ["ImageLabel"]
      425 DUPTABLE                         R17 K75 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      426 LOADN                            R18 1
      427 SETTABLEKS                       R18 R17 K10 ["BackgroundTransparency"]
      429 LOADK                            R18 K76 ["rbxasset://textures/PluginManagement/edit.png"]
      430 SETTABLEKS                       R18 R17 K59 ["Image"]
      432 GETTABLEKS                       R18 R9 K55 ["HttpOverviewTextColor"]
      434 SETTABLEKS                       R18 R17 K74 ["ImageColor3"]
      436 NAMECALL                         R18 R10 K50 ["getNextOrder"]
      438 CALL                             R18 1 1
      439 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      441 GETIMPORT                        R18 K12 [UDim2.new]
      443 LOADN                            R19 0
      444 GETUPVAL                         R20 3
      445 GETTABLEKS                       R20 R20 K64 ["HTTP_OVERVIEW_ICON_SIZE"]
      447 LOADN                            R21 0
      448 GETUPVAL                         R22 3
      449 GETTABLEKS                       R22 R22 K64 ["HTTP_OVERVIEW_ICON_SIZE"]
      451 CALL                             R18 4 1
      452 SETTABLEKS                       R18 R17 K14 ["Size"]
      454 CALL                             R15 2 1
      455 SETTABLEKS                       R15 R14 K28 ["EditButton"]
      457 CALL                             R11 3 -1
      458 RETURN                           R11 -1

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
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioFixPluginManagementTextClipping"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R3 K9 ["Roact"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Packages"]
       29 GETTABLEKS                       R4 R4 K10 ["RoactRodux"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Packages"]
       36 GETTABLEKS                       R5 R5 K11 ["FitFrame"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Packages"]
       43 GETTABLEKS                       R6 R6 K12 ["Framework"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R5 R5 K13 ["ContextServices"]
       48 GETTABLEKS                       R6 R5 K14 ["withContext"]
       50 GETIMPORT                        R7 K4 [require]
       52 GETTABLEKS                       R8 R0 K8 ["Packages"]
       54 GETTABLEKS                       R8 R8 K12 ["Framework"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R7 R7 K15 ["Util"]
       59 GETTABLEKS                       R7 R7 K16 ["LayoutOrderIterator"]
       61 GETIMPORT                        R8 K4 [require]
       63 GETTABLEKS                       R9 R0 K5 ["Src"]
       65 GETTABLEKS                       R9 R9 K15 ["Util"]
       67 GETTABLEKS                       R9 R9 K17 ["Constants"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K4 [require]
       72 GETTABLEKS                       R10 R0 K5 ["Src"]
       74 GETTABLEKS                       R10 R10 K13 ["ContextServices"]
       76 GETTABLEKS                       R10 R10 K18 ["PluginAPI2"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K4 [require]
       81 GETTABLEKS                       R11 R0 K5 ["Src"]
       83 GETTABLEKS                       R11 R11 K13 ["ContextServices"]
       85 GETTABLEKS                       R11 R11 K19 ["Navigation"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K4 [require]
       90 GETTABLEKS                       R12 R0 K5 ["Src"]
       92 GETTABLEKS                       R12 R12 K20 ["Components"]
       94 GETTABLEKS                       R12 R12 K21 ["IconWithText"]
       96 CALL                             R11 1 1
       97 GETTABLEKS                       R12 R4 K22 ["FitTextLabel"]
       99 GETTABLEKS                       R13 R2 K23 ["PureComponent"]
      101 LOADK                            R15 K24 ["HttpRequestOverview"]
      102 NAMECALL                         R13 R13 K25 ["extend"]
      104 CALL                             R13 2 1
      105 DUPTABLE                         R14 K29 [{"assetId", "LayoutOrder", "navigation"}]
      106 LOADNIL                          R15
      107 SETTABLEKS                       R15 R14 K26 ["assetId"]
      109 LOADN                            R15 1
      110 SETTABLEKS                       R15 R14 K27 ["LayoutOrder"]
      112 LOADNIL                          R15
      113 SETTABLEKS                       R15 R14 K28 ["navigation"]
      115 SETTABLEKS                       R14 R13 K30 ["defaultProps"]
      117 DUPCLOSURE                       R14 K31 [PROTO_1]
      118 CAPTURE                          VAL R8
      119 SETTABLEKS                       R14 R13 K32 ["init"]
      121 DUPCLOSURE                       R14 K33 [PROTO_2]
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R11
      128 SETTABLEKS                       R14 R13 K34 ["render"]
      130 DUPCLOSURE                       R14 K35 [PROTO_3]
      131 MOVE                             R15 R6
      132 DUPTABLE                         R16 K39 [{"Navigation", "Localization", "Stylizer", "API"}]
      133 SETTABLEKS                       R10 R16 K19 ["Navigation"]
      135 GETTABLEKS                       R17 R5 K36 ["Localization"]
      137 SETTABLEKS                       R17 R16 K36 ["Localization"]
      139 GETTABLEKS                       R17 R5 K37 ["Stylizer"]
      141 SETTABLEKS                       R17 R16 K37 ["Stylizer"]
      143 SETTABLEKS                       R9 R16 K38 ["API"]
      145 CALL                             R15 1 1
      146 MOVE                             R16 R13
      147 CALL                             R15 1 1
      148 MOVE                             R13 R15
      149 GETTABLEKS                       R15 R3 K40 ["connect"]
      151 MOVE                             R16 R14
      152 LOADNIL                          R17
      153 CALL                             R15 2 1
      154 MOVE                             R16 R13
      155 CALL                             R15 1 -1
      156 RETURN                           R15 -1
