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
       58 LOADN                            R18 16
       59 CALL                             R14 4 1
       60 SETTABLEKS                       R14 R13 K13 ["Size"]
       62 LOADK                            R14 K14 [""]
       63 SETTABLEKS                       R14 R13 K15 ["Text"]
       65 GETUPVAL                         R14 1
       66 GETTABLEKS                       R14 R14 K16 ["Event"]
       68 GETTABLEKS                       R14 R14 K17 ["Activated"]
       70 GETTABLEKS                       R15 R0 K18 ["openPluginDetails"]
       72 SETTABLE                         R15 R13 R14
       73 DUPTABLE                         R14 K28 [{"Layout", "NoPermissionsRequested", "Label", "Allowed", "Denied", "Border", "ScriptInjection", "Border2", "EditButton"}]
       74 GETUPVAL                         R15 1
       75 GETTABLEKS                       R15 R15 K8 ["createElement"]
       77 LOADK                            R16 K29 ["UIListLayout"]
       78 DUPTABLE                         R17 K34 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
       79 GETIMPORT                        R18 K37 [Enum.FillDirection.Horizontal]
       81 SETTABLEKS                       R18 R17 K30 ["FillDirection"]
       83 GETIMPORT                        R18 K39 [UDim.new]
       85 LOADN                            R19 0
       86 LOADN                            R20 8
       87 CALL                             R18 2 1
       88 SETTABLEKS                       R18 R17 K31 ["Padding"]
       90 GETIMPORT                        R18 K40 [Enum.SortOrder.LayoutOrder]
       92 SETTABLEKS                       R18 R17 K32 ["SortOrder"]
       94 GETIMPORT                        R18 K42 [Enum.VerticalAlignment.Top]
       96 SETTABLEKS                       R18 R17 K33 ["VerticalAlignment"]
       98 CALL                             R15 2 1
       99 SETTABLEKS                       R15 R14 K19 ["Layout"]
      101 NOT                              R15 R6
      102 JUMPIFNOT                        R15 ; [+52]
      103 GETUPVAL                         R15 1
      104 GETTABLEKS                       R15 R15 K8 ["createElement"]
      106 GETUPVAL                         R16 2
      107 DUPTABLE                         R17 K48 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "TextSize", "Text", "TextXAlignment", "TextColor3", "width"}]
      108 LOADN                            R18 1
      109 SETTABLEKS                       R18 R17 K10 ["BackgroundTransparency"]
      111 GETTABLEKS                       R18 R9 K43 ["Font"]
      113 SETTABLEKS                       R18 R17 K43 ["Font"]
      115 NAMECALL                         R18 R10 K49 ["getNextOrder"]
      117 CALL                             R18 1 1
      118 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      120 GETIMPORT                        R18 K12 [UDim2.new]
      122 LOADN                            R19 1
      123 LOADN                            R20 0
      124 LOADN                            R21 0
      125 LOADN                            R22 16
      126 CALL                             R18 4 1
      127 SETTABLEKS                       R18 R17 K13 ["Size"]
      129 LOADN                            R18 16
      130 SETTABLEKS                       R18 R17 K44 ["TextSize"]
      132 LOADK                            R20 K50 ["PluginEntry"]
      133 LOADK                            R21 K20 ["NoPermissionsRequested"]
      134 NAMECALL                         R18 R8 K51 ["getText"]
      136 CALL                             R18 3 1
      137 SETTABLEKS                       R18 R17 K15 ["Text"]
      139 GETIMPORT                        R18 K53 [Enum.TextXAlignment.Left]
      141 SETTABLEKS                       R18 R17 K45 ["TextXAlignment"]
      143 GETTABLEKS                       R18 R9 K54 ["HttpOverviewTextColor"]
      145 SETTABLEKS                       R18 R17 K46 ["TextColor3"]
      147 GETUPVAL                         R18 2
      148 GETTABLEKS                       R18 R18 K55 ["Width"]
      150 GETTABLEKS                       R18 R18 K56 ["FitToText"]
      152 SETTABLEKS                       R18 R17 K47 ["width"]
      154 CALL                             R15 2 1
      155 SETTABLEKS                       R15 R14 K20 ["NoPermissionsRequested"]
      157 MOVE                             R15 R4
      158 JUMPIFNOT                        R15 ; [+52]
      159 GETUPVAL                         R15 1
      160 GETTABLEKS                       R15 R15 K8 ["createElement"]
      162 GETUPVAL                         R16 2
      163 DUPTABLE                         R17 K48 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "TextSize", "Text", "TextXAlignment", "TextColor3", "width"}]
      164 LOADN                            R18 1
      165 SETTABLEKS                       R18 R17 K10 ["BackgroundTransparency"]
      167 GETTABLEKS                       R18 R9 K43 ["Font"]
      169 SETTABLEKS                       R18 R17 K43 ["Font"]
      171 NAMECALL                         R18 R10 K49 ["getNextOrder"]
      173 CALL                             R18 1 1
      174 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      176 GETIMPORT                        R18 K12 [UDim2.new]
      178 LOADN                            R19 1
      179 LOADN                            R20 0
      180 LOADN                            R21 0
      181 LOADN                            R22 16
      182 CALL                             R18 4 1
      183 SETTABLEKS                       R18 R17 K13 ["Size"]
      185 LOADN                            R18 16
      186 SETTABLEKS                       R18 R17 K44 ["TextSize"]
      188 LOADK                            R20 K50 ["PluginEntry"]
      189 LOADK                            R21 K57 ["HttpRequest"]
      190 NAMECALL                         R18 R8 K51 ["getText"]
      192 CALL                             R18 3 1
      193 SETTABLEKS                       R18 R17 K15 ["Text"]
      195 GETIMPORT                        R18 K53 [Enum.TextXAlignment.Left]
      197 SETTABLEKS                       R18 R17 K45 ["TextXAlignment"]
      199 GETTABLEKS                       R18 R9 K54 ["HttpOverviewTextColor"]
      201 SETTABLEKS                       R18 R17 K46 ["TextColor3"]
      203 GETUPVAL                         R18 2
      204 GETTABLEKS                       R18 R18 K55 ["Width"]
      206 GETTABLEKS                       R18 R18 K56 ["FitToText"]
      208 SETTABLEKS                       R18 R17 K47 ["width"]
      210 CALL                             R15 2 1
      211 SETTABLEKS                       R15 R14 K21 ["Label"]
      213 LOADB                            R15 0
      214 LOADN                            R16 0
      215 JUMPIFNOTLT                      R16 R1 ; [+32]
      217 GETUPVAL                         R15 1
      218 GETTABLEKS                       R15 R15 K8 ["createElement"]
      220 GETUPVAL                         R16 3
      221 DUPTABLE                         R17 K61 [{"Image", "imageSize", "imageTopPadding", "LayoutOrder", "Text", "TextColor3", "TextSize"}]
      222 LOADK                            R18 K62 ["rbxasset://textures/PluginManagement/allowed.png"]
      223 SETTABLEKS                       R18 R17 K58 ["Image"]
      225 GETUPVAL                         R18 4
      226 GETTABLEKS                       R18 R18 K63 ["HTTP_OVERVIEW_ICON_SIZE"]
      228 SETTABLEKS                       R18 R17 K59 ["imageSize"]
      230 LOADN                            R18 1
      231 SETTABLEKS                       R18 R17 K60 ["imageTopPadding"]
      233 NAMECALL                         R18 R10 K49 ["getNextOrder"]
      235 CALL                             R18 1 1
      236 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      238 SETTABLEKS                       R1 R17 K15 ["Text"]
      240 GETTABLEKS                       R18 R9 K54 ["HttpOverviewTextColor"]
      242 SETTABLEKS                       R18 R17 K46 ["TextColor3"]
      244 LOADN                            R18 16
      245 SETTABLEKS                       R18 R17 K44 ["TextSize"]
      247 CALL                             R15 2 1
      248 SETTABLEKS                       R15 R14 K22 ["Allowed"]
      250 LOADB                            R15 0
      251 LOADN                            R16 0
      252 JUMPIFNOTLT                      R16 R2 ; [+32]
      254 GETUPVAL                         R15 1
      255 GETTABLEKS                       R15 R15 K8 ["createElement"]
      257 GETUPVAL                         R16 3
      258 DUPTABLE                         R17 K61 [{"Image", "imageSize", "imageTopPadding", "LayoutOrder", "Text", "TextColor3", "TextSize"}]
      259 LOADK                            R18 K64 ["rbxasset://textures/PluginManagement/declined.png"]
      260 SETTABLEKS                       R18 R17 K58 ["Image"]
      262 GETUPVAL                         R18 4
      263 GETTABLEKS                       R18 R18 K63 ["HTTP_OVERVIEW_ICON_SIZE"]
      265 SETTABLEKS                       R18 R17 K59 ["imageSize"]
      267 LOADN                            R18 1
      268 SETTABLEKS                       R18 R17 K60 ["imageTopPadding"]
      270 NAMECALL                         R18 R10 K49 ["getNextOrder"]
      272 CALL                             R18 1 1
      273 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      275 SETTABLEKS                       R2 R17 K15 ["Text"]
      277 GETTABLEKS                       R18 R9 K54 ["HttpOverviewTextColor"]
      279 SETTABLEKS                       R18 R17 K46 ["TextColor3"]
      281 LOADN                            R18 16
      282 SETTABLEKS                       R18 R17 K44 ["TextSize"]
      284 CALL                             R15 2 1
      285 SETTABLEKS                       R15 R14 K23 ["Denied"]
      287 MOVE                             R15 R4
      288 JUMPIFNOT                        R15 ; [+29]
      289 GETUPVAL                         R15 1
      290 GETTABLEKS                       R15 R15 K8 ["createElement"]
      292 LOADK                            R16 K65 ["Frame"]
      293 DUPTABLE                         R17 K68 [{"BorderSizePixel", "BackgroundColor3", "LayoutOrder", "Size"}]
      294 LOADN                            R18 0
      295 SETTABLEKS                       R18 R17 K66 ["BorderSizePixel"]
      297 GETTABLEKS                       R18 R9 K69 ["BorderColor"]
      299 SETTABLEKS                       R18 R17 K67 ["BackgroundColor3"]
      301 NAMECALL                         R18 R10 K49 ["getNextOrder"]
      303 CALL                             R18 1 1
      304 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      306 GETIMPORT                        R18 K12 [UDim2.new]
      308 LOADN                            R19 0
      309 LOADN                            R20 1
      310 LOADN                            R21 0
      311 GETUPVAL                         R22 4
      312 GETTABLEKS                       R22 R22 K63 ["HTTP_OVERVIEW_ICON_SIZE"]
      314 CALL                             R18 4 1
      315 SETTABLEKS                       R18 R17 K13 ["Size"]
      317 CALL                             R15 2 1
      318 SETTABLEKS                       R15 R14 K24 ["Border"]
      320 MOVE                             R15 R5
      321 JUMPIFNOT                        R15 ; [+55]
      322 GETUPVAL                         R15 1
      323 GETTABLEKS                       R15 R15 K8 ["createElement"]
      325 GETUPVAL                         R16 2
      326 DUPTABLE                         R17 K48 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "TextSize", "Text", "TextXAlignment", "TextColor3", "width"}]
      327 LOADN                            R18 1
      328 SETTABLEKS                       R18 R17 K10 ["BackgroundTransparency"]
      330 GETTABLEKS                       R18 R9 K43 ["Font"]
      332 SETTABLEKS                       R18 R17 K43 ["Font"]
      334 NAMECALL                         R18 R10 K49 ["getNextOrder"]
      336 CALL                             R18 1 1
      337 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      339 GETIMPORT                        R18 K12 [UDim2.new]
      341 LOADN                            R19 1
      342 LOADN                            R20 0
      343 LOADN                            R21 0
      344 LOADN                            R22 16
      345 CALL                             R18 4 1
      346 SETTABLEKS                       R18 R17 K13 ["Size"]
      348 LOADN                            R18 16
      349 SETTABLEKS                       R18 R17 K44 ["TextSize"]
      351 LOADK                            R20 K50 ["PluginEntry"]
      352 JUMPIFNOT                        R3 ; [+2]
      353 LOADK                            R21 K70 ["ScriptInjectionAllowed"]
      354 JUMP                             ; [+1]
      355 LOADK                            R21 K71 ["ScriptInjectionDenied"]
      356 NAMECALL                         R18 R8 K51 ["getText"]
      358 CALL                             R18 3 1
      359 SETTABLEKS                       R18 R17 K15 ["Text"]
      361 GETIMPORT                        R18 K53 [Enum.TextXAlignment.Left]
      363 SETTABLEKS                       R18 R17 K45 ["TextXAlignment"]
      365 GETTABLEKS                       R18 R9 K54 ["HttpOverviewTextColor"]
      367 SETTABLEKS                       R18 R17 K46 ["TextColor3"]
      369 GETUPVAL                         R18 2
      370 GETTABLEKS                       R18 R18 K55 ["Width"]
      372 GETTABLEKS                       R18 R18 K56 ["FitToText"]
      374 SETTABLEKS                       R18 R17 K47 ["width"]
      376 CALL                             R15 2 1
      377 SETTABLEKS                       R15 R14 K25 ["ScriptInjection"]
      379 MOVE                             R15 R5
      380 JUMPIFNOT                        R15 ; [+29]
      381 GETUPVAL                         R15 1
      382 GETTABLEKS                       R15 R15 K8 ["createElement"]
      384 LOADK                            R16 K65 ["Frame"]
      385 DUPTABLE                         R17 K68 [{"BorderSizePixel", "BackgroundColor3", "LayoutOrder", "Size"}]
      386 LOADN                            R18 0
      387 SETTABLEKS                       R18 R17 K66 ["BorderSizePixel"]
      389 GETTABLEKS                       R18 R9 K69 ["BorderColor"]
      391 SETTABLEKS                       R18 R17 K67 ["BackgroundColor3"]
      393 NAMECALL                         R18 R10 K49 ["getNextOrder"]
      395 CALL                             R18 1 1
      396 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      398 GETIMPORT                        R18 K12 [UDim2.new]
      400 LOADN                            R19 0
      401 LOADN                            R20 1
      402 LOADN                            R21 0
      403 GETUPVAL                         R22 4
      404 GETTABLEKS                       R22 R22 K63 ["HTTP_OVERVIEW_ICON_SIZE"]
      406 CALL                             R18 4 1
      407 SETTABLEKS                       R18 R17 K13 ["Size"]
      409 CALL                             R15 2 1
      410 SETTABLEKS                       R15 R14 K26 ["Border2"]
      412 MOVE                             R15 R6
      413 JUMPIFNOT                        R15 ; [+34]
      414 GETUPVAL                         R15 1
      415 GETTABLEKS                       R15 R15 K8 ["createElement"]
      417 LOADK                            R16 K72 ["ImageLabel"]
      418 DUPTABLE                         R17 K74 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      419 LOADN                            R18 1
      420 SETTABLEKS                       R18 R17 K10 ["BackgroundTransparency"]
      422 LOADK                            R18 K75 ["rbxasset://textures/PluginManagement/edit.png"]
      423 SETTABLEKS                       R18 R17 K58 ["Image"]
      425 GETTABLEKS                       R18 R9 K54 ["HttpOverviewTextColor"]
      427 SETTABLEKS                       R18 R17 K73 ["ImageColor3"]
      429 NAMECALL                         R18 R10 K49 ["getNextOrder"]
      431 CALL                             R18 1 1
      432 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
      434 GETIMPORT                        R18 K12 [UDim2.new]
      436 LOADN                            R19 0
      437 GETUPVAL                         R20 4
      438 GETTABLEKS                       R20 R20 K63 ["HTTP_OVERVIEW_ICON_SIZE"]
      440 LOADN                            R21 0
      441 GETUPVAL                         R22 4
      442 GETTABLEKS                       R22 R22 K63 ["HTTP_OVERVIEW_ICON_SIZE"]
      444 CALL                             R18 4 1
      445 SETTABLEKS                       R18 R17 K13 ["Size"]
      447 CALL                             R15 2 1
      448 SETTABLEKS                       R15 R14 K27 ["EditButton"]
      450 CALL                             R11 3 -1
      451 RETURN                           R11 -1

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
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R7
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
