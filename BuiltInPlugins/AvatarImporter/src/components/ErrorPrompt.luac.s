PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["AVATAR_IMPORTER_DEVHUB"]
        5 NAMECALL                         R2 R2 K1 ["GetDocumentationUrl"]
        7 CALL                             R2 2 -1
        8 NAMECALL                         R0 R0 K2 ["OpenBrowserWindow"]
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K6 [{["Name"] = "ErrorPrompt", ["Size"], ["BackgroundColor3"]}]
        5 GETIMPORT                        R4 K9 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 1
       10 LOADN                            R8 0
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K4 ["Size"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K10 ["Theme"]
       17 GETIMPORT                        R6 K14 [Enum.StudioStyleGuideColor.MainBackground]
       19 GETIMPORT                        R7 K17 [Enum.StudioStyleGuideModifier.Default]
       21 NAMECALL                         R4 R4 K18 ["GetColor"]
       23 CALL                             R4 3 1
       24 SETTABLEKS                       R4 R3 K5 ["BackgroundColor3"]
       26 DUPTABLE                         R4 K26 [{"errorIcon", "errorTitle", "requirementsHeader", "requirements", "bottomDescription", "infoLink", "buttons"}]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K0 ["createElement"]
       30 LOADK                            R6 K27 ["ImageLabel"]
       31 DUPTABLE                         R7 K32 [{["BackgroundTransparency"] = 1, ["Image"], ["Size"], ["Position"]}]
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R8 R8 K33 ["ERROR_ICON"]
       35 SETTABLEKS                       R8 R7 K30 ["Image"]
       37 GETIMPORT                        R8 K9 [UDim2.new]
       39 LOADN                            R9 0
       40 LOADN                            R10 22
       41 LOADN                            R11 0
       42 LOADN                            R12 22
       43 CALL                             R8 4 1
       44 SETTABLEKS                       R8 R7 K4 ["Size"]
       46 GETIMPORT                        R8 K9 [UDim2.new]
       48 LOADN                            R9 0
       49 LOADN                            R10 30
       50 LOADN                            R11 0
       51 LOADN                            R12 20
       52 CALL                             R8 4 1
       53 SETTABLEKS                       R8 R7 K31 ["Position"]
       55 CALL                             R5 2 1
       56 SETTABLEKS                       R5 R4 K19 ["errorIcon"]
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R5 R5 K0 ["createElement"]
       61 LOADK                            R6 K34 ["TextLabel"]
       62 DUPTABLE                         R7 K43 [{["BackgroundTransparency"] = 1, ["Font"], ["Position"], ["Size"], ["Text"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["ClipsDescendants"] = True, ["TextColor3"]}]
       63 GETUPVAL                         R8 3
       64 GETTABLEKS                       R8 R8 K44 ["FONT"]
       66 SETTABLEKS                       R8 R7 K35 ["Font"]
       68 GETIMPORT                        R8 K9 [UDim2.new]
       70 LOADN                            R9 0
       71 LOADN                            R10 62
       72 LOADN                            R11 0
       73 LOADN                            R12 20
       74 CALL                             R8 4 1
       75 SETTABLEKS                       R8 R7 K31 ["Position"]
       77 GETIMPORT                        R8 K9 [UDim2.new]
       79 LOADN                            R9 1
       80 LOADN                            R10 -62
       81 LOADN                            R11 0
       82 LOADN                            R12 20
       83 CALL                             R8 4 1
       84 SETTABLEKS                       R8 R7 K4 ["Size"]
       86 GETTABLEKS                       R8 R0 K45 ["props"]
       88 GETTABLEKS                       R8 R8 K46 ["name"]
       90 SETTABLEKS                       R8 R7 K36 ["Text"]
       92 GETUPVAL                         R8 3
       93 GETTABLEKS                       R8 R8 K47 ["FONT_SIZE_TITLE"]
       95 SETTABLEKS                       R8 R7 K37 ["TextSize"]
       97 GETIMPORT                        R8 K49 [Enum.TextXAlignment.Left]
       99 SETTABLEKS                       R8 R7 K38 ["TextXAlignment"]
      101 GETIMPORT                        R8 K51 [Enum.TextYAlignment.Center]
      103 SETTABLEKS                       R8 R7 K39 ["TextYAlignment"]
      105 GETUPVAL                         R8 1
      106 GETTABLEKS                       R8 R8 K10 ["Theme"]
      108 GETIMPORT                        R10 K53 [Enum.StudioStyleGuideColor.MainText]
      110 GETIMPORT                        R11 K17 [Enum.StudioStyleGuideModifier.Default]
      112 NAMECALL                         R8 R8 K18 ["GetColor"]
      114 CALL                             R8 3 1
      115 SETTABLEKS                       R8 R7 K42 ["TextColor3"]
      117 CALL                             R5 2 1
      118 SETTABLEKS                       R5 R4 K20 ["errorTitle"]
      120 GETUPVAL                         R5 0
      121 GETTABLEKS                       R5 R5 K0 ["createElement"]
      123 LOADK                            R6 K34 ["TextLabel"]
      124 DUPTABLE                         R7 K55 [{["BackgroundTransparency"] = 1, ["Font"], ["Position"], ["Size"], ["Text"] = "The file failed to meet the import requirement(s):", ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"]}]
      125 GETUPVAL                         R8 3
      126 GETTABLEKS                       R8 R8 K56 ["FONT_BOLD"]
      128 SETTABLEKS                       R8 R7 K35 ["Font"]
      130 GETIMPORT                        R8 K9 [UDim2.new]
      132 LOADN                            R9 0
      133 LOADN                            R10 62
      134 LOADN                            R11 0
      135 LOADN                            R12 60
      136 CALL                             R8 4 1
      137 SETTABLEKS                       R8 R7 K31 ["Position"]
      139 GETIMPORT                        R8 K9 [UDim2.new]
      141 LOADN                            R9 0
      142 LOADN                            R10 302
      143 LOADN                            R11 0
      144 GETUPVAL                         R12 3
      145 GETTABLEKS                       R12 R12 K57 ["FONT_SIZE_MEDIUM"]
      147 CALL                             R8 4 1
      148 SETTABLEKS                       R8 R7 K4 ["Size"]
      150 GETUPVAL                         R8 3
      151 GETTABLEKS                       R8 R8 K57 ["FONT_SIZE_MEDIUM"]
      153 SETTABLEKS                       R8 R7 K37 ["TextSize"]
      155 GETIMPORT                        R8 K49 [Enum.TextXAlignment.Left]
      157 SETTABLEKS                       R8 R7 K38 ["TextXAlignment"]
      159 GETIMPORT                        R8 K51 [Enum.TextYAlignment.Center]
      161 SETTABLEKS                       R8 R7 K39 ["TextYAlignment"]
      163 GETUPVAL                         R8 1
      164 GETTABLEKS                       R8 R8 K10 ["Theme"]
      166 GETIMPORT                        R10 K53 [Enum.StudioStyleGuideColor.MainText]
      168 GETIMPORT                        R11 K17 [Enum.StudioStyleGuideModifier.Default]
      170 NAMECALL                         R8 R8 K18 ["GetColor"]
      172 CALL                             R8 3 1
      173 SETTABLEKS                       R8 R7 K42 ["TextColor3"]
      175 CALL                             R5 2 1
      176 SETTABLEKS                       R5 R4 K21 ["requirementsHeader"]
      178 GETUPVAL                         R5 0
      179 GETTABLEKS                       R5 R5 K0 ["createElement"]
      181 LOADK                            R6 K34 ["TextLabel"]
      182 DUPTABLE                         R7 K58 [{["BackgroundTransparency"] = 1, ["Font"], ["Position"], ["Size"], ["Text"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"]}]
      183 GETUPVAL                         R8 3
      184 GETTABLEKS                       R8 R8 K44 ["FONT"]
      186 SETTABLEKS                       R8 R7 K35 ["Font"]
      188 GETIMPORT                        R8 K9 [UDim2.new]
      190 LOADN                            R9 0
      191 LOADN                            R10 62
      192 LOADN                            R11 0
      193 LOADN                            R12 86
      194 CALL                             R8 4 1
      195 SETTABLEKS                       R8 R7 K31 ["Position"]
      197 GETIMPORT                        R8 K9 [UDim2.new]
      199 LOADN                            R9 0
      200 LOADN                            R10 302
      201 LOADN                            R11 0
      202 GETUPVAL                         R12 3
      203 GETTABLEKS                       R12 R12 K57 ["FONT_SIZE_MEDIUM"]
      205 CALL                             R8 4 1
      206 SETTABLEKS                       R8 R7 K4 ["Size"]
      208 GETTABLEKS                       R8 R0 K45 ["props"]
      210 GETTABLEKS                       R8 R8 K59 ["message"]
      212 SETTABLEKS                       R8 R7 K36 ["Text"]
      214 GETUPVAL                         R8 3
      215 GETTABLEKS                       R8 R8 K57 ["FONT_SIZE_MEDIUM"]
      217 SETTABLEKS                       R8 R7 K37 ["TextSize"]
      219 GETIMPORT                        R8 K49 [Enum.TextXAlignment.Left]
      221 SETTABLEKS                       R8 R7 K38 ["TextXAlignment"]
      223 GETIMPORT                        R8 K61 [Enum.TextYAlignment.Top]
      225 SETTABLEKS                       R8 R7 K39 ["TextYAlignment"]
      227 GETUPVAL                         R8 1
      228 GETTABLEKS                       R8 R8 K10 ["Theme"]
      230 GETIMPORT                        R10 K53 [Enum.StudioStyleGuideColor.MainText]
      232 GETIMPORT                        R11 K17 [Enum.StudioStyleGuideModifier.Default]
      234 NAMECALL                         R8 R8 K18 ["GetColor"]
      236 CALL                             R8 3 1
      237 SETTABLEKS                       R8 R7 K42 ["TextColor3"]
      239 CALL                             R5 2 1
      240 SETTABLEKS                       R5 R4 K22 ["requirements"]
      242 GETUPVAL                         R5 0
      243 GETTABLEKS                       R5 R5 K0 ["createElement"]
      245 LOADK                            R6 K34 ["TextLabel"]
      246 DUPTABLE                         R7 K63 [{["BackgroundTransparency"] = 1, ["Font"], ["Position"], ["Size"], ["Text"] = "Please update the file and try again", ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"]}]
      247 GETUPVAL                         R8 3
      248 GETTABLEKS                       R8 R8 K44 ["FONT"]
      250 SETTABLEKS                       R8 R7 K35 ["Font"]
      252 GETIMPORT                        R8 K9 [UDim2.new]
      254 LOADN                            R9 0
      255 LOADN                            R10 62
      256 LOADN                            R11 1
      257 LOADN                            R12 -149
      258 CALL                             R8 4 1
      259 SETTABLEKS                       R8 R7 K31 ["Position"]
      261 GETIMPORT                        R8 K9 [UDim2.new]
      263 LOADN                            R9 0
      264 LOADN                            R10 210
      265 LOADN                            R11 0
      266 GETUPVAL                         R12 3
      267 GETTABLEKS                       R12 R12 K57 ["FONT_SIZE_MEDIUM"]
      269 CALL                             R8 4 1
      270 SETTABLEKS                       R8 R7 K4 ["Size"]
      272 GETUPVAL                         R8 3
      273 GETTABLEKS                       R8 R8 K57 ["FONT_SIZE_MEDIUM"]
      275 SETTABLEKS                       R8 R7 K37 ["TextSize"]
      277 GETIMPORT                        R8 K49 [Enum.TextXAlignment.Left]
      279 SETTABLEKS                       R8 R7 K38 ["TextXAlignment"]
      281 GETIMPORT                        R8 K61 [Enum.TextYAlignment.Top]
      283 SETTABLEKS                       R8 R7 K39 ["TextYAlignment"]
      285 GETUPVAL                         R8 1
      286 GETTABLEKS                       R8 R8 K10 ["Theme"]
      288 GETIMPORT                        R10 K53 [Enum.StudioStyleGuideColor.MainText]
      290 GETIMPORT                        R11 K17 [Enum.StudioStyleGuideModifier.Default]
      292 NAMECALL                         R8 R8 K18 ["GetColor"]
      294 CALL                             R8 3 1
      295 SETTABLEKS                       R8 R7 K42 ["TextColor3"]
      297 CALL                             R5 2 1
      298 SETTABLEKS                       R5 R4 K23 ["bottomDescription"]
      300 GETUPVAL                         R5 0
      301 GETTABLEKS                       R5 R5 K0 ["createElement"]
      303 LOADK                            R6 K64 ["TextButton"]
      304 NEWTABLE                         R7 16 0
      306 LOADN                            R8 1
      307 SETTABLEKS                       R8 R7 K28 ["BackgroundTransparency"]
      309 GETUPVAL                         R8 3
      310 GETTABLEKS                       R8 R8 K44 ["FONT"]
      312 SETTABLEKS                       R8 R7 K35 ["Font"]
      314 GETIMPORT                        R8 K9 [UDim2.new]
      316 LOADN                            R9 0
      317 LOADN                            R10 62
      318 LOADN                            R11 1
      319 LOADN                            R12 -123
      320 CALL                             R8 4 1
      321 SETTABLEKS                       R8 R7 K31 ["Position"]
      323 GETIMPORT                        R8 K9 [UDim2.new]
      325 LOADN                            R9 0
      326 LOADN                            R10 210
      327 LOADN                            R11 0
      328 GETUPVAL                         R12 3
      329 GETTABLEKS                       R12 R12 K57 ["FONT_SIZE_MEDIUM"]
      331 CALL                             R8 4 1
      332 SETTABLEKS                       R8 R7 K4 ["Size"]
      334 LOADK                            R8 K65 ["What are import requirements?"]
      335 SETTABLEKS                       R8 R7 K36 ["Text"]
      337 GETUPVAL                         R8 3
      338 GETTABLEKS                       R8 R8 K57 ["FONT_SIZE_MEDIUM"]
      340 SETTABLEKS                       R8 R7 K37 ["TextSize"]
      342 GETIMPORT                        R8 K49 [Enum.TextXAlignment.Left]
      344 SETTABLEKS                       R8 R7 K38 ["TextXAlignment"]
      346 GETIMPORT                        R8 K61 [Enum.TextYAlignment.Top]
      348 SETTABLEKS                       R8 R7 K39 ["TextYAlignment"]
      350 GETUPVAL                         R8 4
      351 DUPTABLE                         R9 K68 [{"Light", "Dark"}]
      352 GETIMPORT                        R10 K71 [Color3.fromRGB]
      354 LOADN                            R11 0
      355 LOADN                            R12 162
      356 LOADN                            R13 255
      357 CALL                             R10 3 1
      358 SETTABLEKS                       R10 R9 K66 ["Light"]
      360 GETIMPORT                        R10 K71 [Color3.fromRGB]
      362 LOADN                            R11 255
      363 LOADN                            R12 255
      364 LOADN                            R13 255
      365 CALL                             R10 3 1
      366 SETTABLEKS                       R10 R9 K67 ["Dark"]
      368 CALL                             R8 1 1
      369 SETTABLEKS                       R8 R7 K42 ["TextColor3"]
      371 GETUPVAL                         R8 0
      372 GETTABLEKS                       R8 R8 K72 ["Event"]
      374 GETTABLEKS                       R8 R8 K73 ["MouseButton1Click"]
      376 DUPCLOSURE                       R9 K74 [PROTO_0]
      377 CAPTURE                          UPVAL U5
      378 CAPTURE                          UPVAL U6
      379 CAPTURE                          UPVAL U3
      380 SETTABLE                         R9 R7 R8
      381 CALL                             R5 2 1
      382 SETTABLEKS                       R5 R4 K24 ["infoLink"]
      384 GETUPVAL                         R5 0
      385 GETTABLEKS                       R5 R5 K0 ["createElement"]
      387 LOADK                            R6 K1 ["Frame"]
      388 DUPTABLE                         R7 K75 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      389 GETIMPORT                        R8 K9 [UDim2.new]
      391 LOADN                            R9 0
      392 LOADN                            R10 0
      393 LOADN                            R11 1
      394 LOADN                            R12 -64
      395 CALL                             R8 4 1
      396 SETTABLEKS                       R8 R7 K31 ["Position"]
      398 GETIMPORT                        R8 K9 [UDim2.new]
      400 LOADN                            R9 1
      401 LOADN                            R10 0
      402 LOADN                            R11 0
      403 LOADN                            R12 34
      404 CALL                             R8 4 1
      405 SETTABLEKS                       R8 R7 K4 ["Size"]
      407 DUPTABLE                         R8 K79 [{"buttonsListLayout", "cancelButton", "retryButton"}]
      408 GETUPVAL                         R9 0
      409 GETTABLEKS                       R9 R9 K0 ["createElement"]
      411 LOADK                            R10 K80 ["UIListLayout"]
      412 DUPTABLE                         R11 K85 [{"Padding", "FillDirection", "HorizontalAlignment", "SortOrder"}]
      413 GETIMPORT                        R12 K87 [UDim.new]
      415 LOADN                            R13 0
      416 LOADN                            R14 21
      417 CALL                             R12 2 1
      418 SETTABLEKS                       R12 R11 K81 ["Padding"]
      420 GETIMPORT                        R12 K89 [Enum.FillDirection.Horizontal]
      422 SETTABLEKS                       R12 R11 K82 ["FillDirection"]
      424 GETIMPORT                        R12 K90 [Enum.HorizontalAlignment.Center]
      426 SETTABLEKS                       R12 R11 K83 ["HorizontalAlignment"]
      428 GETIMPORT                        R12 K92 [Enum.SortOrder.LayoutOrder]
      430 SETTABLEKS                       R12 R11 K84 ["SortOrder"]
      432 CALL                             R9 2 1
      433 SETTABLEKS                       R9 R8 K76 ["buttonsListLayout"]
      435 GETUPVAL                         R9 0
      436 GETTABLEKS                       R9 R9 K0 ["createElement"]
      438 GETUPVAL                         R10 7
      439 NEWTABLE                         R11 4 0
      441 LOADK                            R12 K93 ["CancelButton"]
      442 SETTABLEKS                       R12 R11 K46 ["name"]
      444 LOADK                            R12 K94 ["Cancel"]
      445 SETTABLEKS                       R12 R11 K95 ["labelText"]
      447 LOADN                            R12 0
      448 SETTABLEKS                       R12 R11 K96 ["layoutOrder"]
      450 GETUPVAL                         R12 0
      451 GETTABLEKS                       R12 R12 K72 ["Event"]
      453 GETTABLEKS                       R12 R12 K73 ["MouseButton1Click"]
      455 GETTABLEKS                       R13 R0 K45 ["props"]
      457 GETTABLEKS                       R13 R13 K97 ["doClose"]
      459 SETTABLE                         R13 R11 R12
      460 CALL                             R9 2 1
      461 SETTABLEKS                       R9 R8 K77 ["cancelButton"]
      463 GETUPVAL                         R9 0
      464 GETTABLEKS                       R9 R9 K0 ["createElement"]
      466 GETUPVAL                         R10 7
      467 NEWTABLE                         R11 8 0
      469 LOADK                            R12 K98 ["RetryButton"]
      470 SETTABLEKS                       R12 R11 K46 ["name"]
      472 LOADK                            R12 K99 ["Try Again"]
      473 SETTABLEKS                       R12 R11 K95 ["labelText"]
      475 LOADN                            R12 1
      476 SETTABLEKS                       R12 R11 K96 ["layoutOrder"]
      478 LOADB                            R12 1
      479 SETTABLEKS                       R12 R11 K100 ["isMain"]
      481 GETUPVAL                         R12 0
      482 GETTABLEKS                       R12 R12 K72 ["Event"]
      484 GETTABLEKS                       R12 R12 K73 ["MouseButton1Click"]
      486 GETTABLEKS                       R13 R0 K45 ["props"]
      488 GETTABLEKS                       R13 R13 K101 ["doRetry"]
      490 SETTABLE                         R13 R11 R12
      491 CALL                             R9 2 1
      492 SETTABLEKS                       R9 R8 K78 ["retryButton"]
      494 CALL                             R5 3 1
      495 SETTABLEKS                       R5 R4 K25 ["buttons"]
      497 CALL                             R1 3 -1
      498 RETURN                           R1 -1

PROTO_2:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 DUPTABLE                         R1 K2 [{"name", "message"}]
        6 GETTABLEKS                       R2 R0 K3 ["error"]
        8 GETTABLEKS                       R2 R2 K0 ["name"]
       10 SETTABLEKS                       R2 R1 K0 ["name"]
       12 GETTABLEKS                       R2 R0 K3 ["error"]
       14 GETTABLEKS                       R2 R2 K1 ["message"]
       16 SETTABLEKS                       R2 R1 K1 ["message"]
       18 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        5 GETTABLEKS                       R2 R2 K1 ["AVATAR"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"doRetry", "doClose"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["doRetry"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R2 R1 K1 ["doClose"]
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["GuiService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["HttpRbxApiService"]
       18 NAMECALL                         R2 R2 K6 ["GetService"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Packages"]
       32 GETTABLEKS                       R5 R5 K12 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R6 R0 K13 ["src"]
       39 GETTABLEKS                       R6 R6 K14 ["Assets"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K9 [require]
       44 GETTABLEKS                       R7 R0 K13 ["src"]
       46 GETTABLEKS                       R7 R7 K15 ["Constants"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K9 [require]
       51 GETTABLEKS                       R8 R0 K13 ["src"]
       53 GETTABLEKS                       R8 R8 K16 ["components"]
       55 GETTABLEKS                       R8 R8 K17 ["CustomTextButton"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K9 [require]
       60 GETTABLEKS                       R9 R0 K13 ["src"]
       62 GETTABLEKS                       R9 R9 K18 ["utils"]
       64 GETTABLEKS                       R9 R9 K19 ["themeConfig"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R9 R0 K13 ["src"]
       69 GETTABLEKS                       R9 R9 K20 ["actions"]
       71 GETIMPORT                        R10 K9 [require]
       73 GETTABLEKS                       R11 R9 K21 ["SetScreen"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R12 R9 K22 ["ClosePlugin"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K24 [settings]
       83 CALL                             R12 0 1
       84 GETTABLEKS                       R12 R12 K25 ["Studio"]
       86 GETTABLEKS                       R13 R3 K26 ["Component"]
       88 LOADK                            R15 K27 ["ErrorPrompt"]
       89 NAMECALL                         R13 R13 K28 ["extend"]
       91 CALL                             R13 2 1
       92 DUPCLOSURE                       R14 K29 [PROTO_1]
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R7
      101 SETTABLEKS                       R14 R13 K30 ["render"]
      103 DUPCLOSURE                       R14 K31 [PROTO_2]
      104 DUPCLOSURE                       R15 K32 [PROTO_5]
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R11
      108 GETTABLEKS                       R16 R4 K33 ["connect"]
      110 MOVE                             R17 R14
      111 MOVE                             R18 R15
      112 CALL                             R16 2 1
      113 MOVE                             R17 R13
      114 CALL                             R16 1 -1
      115 RETURN                           R16 -1
