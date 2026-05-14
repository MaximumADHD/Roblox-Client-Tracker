PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 NAMECALL                         R7 R6 K0 ["Clone"]
       11 CALL                             R7 1 1
       12 GETUPVAL                         R8 0
       13 MOVE                             R9 R7
       14 CALL                             R8 1 0
       15 SETTABLE                         R7 R1 R5
       16 FORGLOOP                         R2 2 ; [-8]
       18 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"isLoading", "reasons"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isLoading"]
        5 GETUPVAL                         R3 1
        6 SETTABLEKS                       R3 R2 K1 ["reasons"]
        8 NAMECALL                         R0 R0 K3 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+13]
        1 GETUPVAL                         R2 0
        2 DUPTABLE                         R4 K1 [{"onFinish"}]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K2 ["props"]
        6 GETTABLEKS                       R5 R5 K3 ["nextScreen"]
        8 SETTABLEKS                       R5 R4 K0 ["onFinish"]
       10 NAMECALL                         R2 R2 K4 ["setState"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 0
       15 DUPTABLE                         R4 K1 [{"onFinish"}]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R5 R4 K0 ["onFinish"]
       21 NAMECALL                         R2 R2 K4 ["setState"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K2 [{"failed", "isLoading"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["failed"]
        4 LOADB                            R3 1
        5 SETTABLEKS                       R3 R2 K1 ["isLoading"]
        7 SETTABLEKS                       R2 R0 K3 ["state"]
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 CAPTURE                          UPVAL U0
       11 GETUPVAL                         R3 1
       12 JUMPIFNOT                        R3 ; [+4]
       13 GETUPVAL                         R3 2
       14 NAMECALL                         R3 R3 K5 ["HasInternalPermission"]
       16 CALL                             R3 1 1
       17 JUMPIF                           R3 ; [+57]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K6 ["isCatalogAsset"]
       21 GETTABLEKS                       R5 R0 K7 ["props"]
       23 GETTABLEKS                       R5 R5 K8 ["assetTypeEnum"]
       25 CALL                             R4 1 1
       26 JUMPIFNOT                        R4 ; [+48]
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          VAL R0
       29 GETIMPORT                        R5 K12 [Enum.AssetType.DynamicHead]
       31 GETTABLEKS                       R6 R0 K7 ["props"]
       33 GETTABLEKS                       R6 R6 K8 ["assetTypeEnum"]
       35 JUMPIFNOTEQ                      R5 R6 ; [+20]
       37 GETUPVAL                         R5 4
       38 GETTABLEKS                       R5 R5 K13 ["validateAsyncMeshPartFormat"]
       40 MOVE                             R6 R2
       41 GETTABLEKS                       R7 R0 K7 ["props"]
       43 GETTABLEKS                       R7 R7 K14 ["instances"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R0 K7 ["props"]
       48 GETTABLEKS                       R7 R7 K8 ["assetTypeEnum"]
       50 MOVE                             R8 R4
       51 LOADB                            R9 0
       52 LOADB                            R10 0
       53 LOADNIL                          R11
       54 CALL                             R5 6 0
       55 RETURN                           R0 0
       56 GETUPVAL                         R5 4
       57 GETTABLEKS                       R5 R5 K15 ["validateAsync"]
       59 MOVE                             R6 R2
       60 GETTABLEKS                       R7 R0 K7 ["props"]
       62 GETTABLEKS                       R7 R7 K14 ["instances"]
       64 CALL                             R6 1 1
       65 GETTABLEKS                       R7 R0 K7 ["props"]
       67 GETTABLEKS                       R7 R7 K8 ["assetTypeEnum"]
       69 MOVE                             R8 R4
       70 LOADB                            R9 0
       71 LOADB                            R10 0
       72 LOADNIL                          R11
       73 CALL                             R5 6 0
       74 RETURN                           R0 0
       75 GETTABLEKS                       R4 R0 K7 ["props"]
       77 GETTABLEKS                       R4 R4 K16 ["nextScreen"]
       79 CALL                             R4 0 0
       80 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 LOADK                            R5 K3 ["Reason:\n"]
        7 GETUPVAL                         R7 0
        8 JUMPIFNOT                        R7 ; [+12]
        9 GETIMPORT                        R6 K6 [table.concat]
       11 GETTABLEKS                       R7 R0 K1 ["state"]
       13 GETTABLEKS                       R7 R7 K7 ["reasons"]
       15 JUMPIF                           R7 ; [+2]
       16 NEWTABLE                         R7 0 0
       18 LOADK                            R8 K8 ["\n\n"]
       19 CALL                             R6 2 1
       20 JUMP                             ; [+11]
       21 GETIMPORT                        R6 K6 [table.concat]
       23 GETTABLEKS                       R7 R0 K1 ["state"]
       25 GETTABLEKS                       R7 R7 K7 ["reasons"]
       27 JUMPIF                           R7 ; [+2]
       28 NEWTABLE                         R7 0 0
       30 LOADK                            R8 K9 ["\n"]
       31 CALL                             R6 2 1
       32 CONCAT                           R4 R5 R6
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K10 ["createElement"]
       36 LOADK                            R6 K11 ["Frame"]
       37 DUPTABLE                         R7 K16 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
       38 GETTABLEKS                       R8 R3 K17 ["typeValidation"]
       40 GETTABLEKS                       R8 R8 K18 ["background"]
       42 SETTABLEKS                       R8 R7 K12 ["BackgroundColor3"]
       44 LOADN                            R8 0
       45 SETTABLEKS                       R8 R7 K13 ["BackgroundTransparency"]
       47 LOADN                            R8 0
       48 SETTABLEKS                       R8 R7 K14 ["BorderSizePixel"]
       50 GETTABLEKS                       R8 R1 K15 ["Size"]
       52 SETTABLEKS                       R8 R7 K15 ["Size"]
       54 DUPTABLE                         R8 K23 [{"Preview", "LoadingBar", "LoadingResult", "Footer"}]
       55 GETUPVAL                         R9 1
       56 GETTABLEKS                       R9 R9 K10 ["createElement"]
       58 GETUPVAL                         R10 2
       59 DUPTABLE                         R11 K27 [{"titleHeight", "titlePadding", "Position", "Size"}]
       60 LOADN                            R12 24
       61 SETTABLEKS                       R12 R11 K24 ["titleHeight"]
       63 LOADN                            R12 12
       64 SETTABLEKS                       R12 R11 K25 ["titlePadding"]
       66 GETIMPORT                        R12 K30 [UDim2.new]
       68 LOADK                            R13 K31 [0.5]
       69 LOADN                            R14 181
       70 LOADN                            R15 0
       71 LOADN                            R16 48
       72 CALL                             R12 4 1
       73 SETTABLEKS                       R12 R11 K26 ["Position"]
       75 GETIMPORT                        R12 K30 [UDim2.new]
       77 LOADN                            R13 0
       78 LOADN                            R14 150
       79 LOADN                            R15 0
       80 LOADN                            R16 186
       81 CALL                             R12 4 1
       82 SETTABLEKS                       R12 R11 K15 ["Size"]
       84 CALL                             R9 2 1
       85 SETTABLEKS                       R9 R8 K19 ["Preview"]
       87 GETTABLEKS                       R9 R0 K1 ["state"]
       89 GETTABLEKS                       R9 R9 K32 ["isLoading"]
       91 JUMPIFNOT                        R9 ; [+37]
       92 GETUPVAL                         R9 1
       93 GETTABLEKS                       R9 R9 K10 ["createElement"]
       95 GETUPVAL                         R10 3
       96 DUPTABLE                         R11 K37 [{"loadingText", "loadingTime", "holdPercent", "Size", "Position", "onFinish"}]
       97 LOADK                            R12 K38 ["Validating"]
       98 SETTABLEKS                       R12 R11 K33 ["loadingText"]
      100 LOADK                            R12 K31 [0.5]
      101 SETTABLEKS                       R12 R11 K34 ["loadingTime"]
      103 LOADK                            R12 K39 [0.92]
      104 SETTABLEKS                       R12 R11 K35 ["holdPercent"]
      106 GETIMPORT                        R12 K30 [UDim2.new]
      108 LOADN                            R13 0
      109 LOADN                            R14 144
      110 LOADN                            R15 0
      111 LOADN                            R16 6
      112 CALL                             R12 4 1
      113 SETTABLEKS                       R12 R11 K15 ["Size"]
      115 GETIMPORT                        R12 K30 [UDim2.new]
      117 LOADK                            R13 K31 [0.5]
      118 LOADN                            R14 56
      119 LOADN                            R15 0
      120 LOADN                            R16 58
      121 CALL                             R12 4 1
      122 SETTABLEKS                       R12 R11 K26 ["Position"]
      124 GETTABLEKS                       R12 R2 K36 ["onFinish"]
      126 SETTABLEKS                       R12 R11 K36 ["onFinish"]
      128 CALL                             R9 2 1
      129 SETTABLEKS                       R9 R8 K20 ["LoadingBar"]
      131 GETTABLEKS                       R10 R0 K1 ["state"]
      133 GETTABLEKS                       R10 R10 K32 ["isLoading"]
      135 NOT                              R9 R10
      136 JUMPIFNOT                        R9 ; [+250]
      137 GETUPVAL                         R9 1
      138 GETTABLEKS                       R9 R9 K10 ["createElement"]
      140 LOADK                            R10 K11 ["Frame"]
      141 DUPTABLE                         R11 K40 [{"Position", "Size", "BackgroundTransparency"}]
      142 GETIMPORT                        R12 K30 [UDim2.new]
      144 LOADN                            R13 0
      145 LOADN                            R14 0
      146 LOADN                            R15 0
      147 LOADN                            R16 23
      148 CALL                             R12 4 1
      149 SETTABLEKS                       R12 R11 K26 ["Position"]
      151 GETIMPORT                        R12 K30 [UDim2.new]
      153 LOADN                            R13 1
      154 LOADN                            R14 0
      155 LOADN                            R15 1
      156 LOADN                            R16 233
      157 CALL                             R12 4 1
      158 SETTABLEKS                       R12 R11 K15 ["Size"]
      160 LOADN                            R12 1
      161 SETTABLEKS                       R12 R11 K13 ["BackgroundTransparency"]
      163 DUPTABLE                         R12 K44 [{"Title", "Reason", "ScrollingFrame"}]
      164 GETUPVAL                         R13 1
      165 GETTABLEKS                       R13 R13 K10 ["createElement"]
      167 LOADK                            R14 K45 ["TextLabel"]
      168 DUPTABLE                         R15 K52 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
      169 LOADN                            R16 1
      170 SETTABLEKS                       R16 R15 K13 ["BackgroundTransparency"]
      172 GETUPVAL                         R16 4
      173 GETTABLEKS                       R16 R16 K53 ["FONT"]
      175 SETTABLEKS                       R16 R15 K46 ["Font"]
      177 GETIMPORT                        R16 K30 [UDim2.new]
      179 LOADK                            R17 K31 [0.5]
      180 LOADN                            R18 56
      181 LOADN                            R19 0
      182 LOADN                            R20 0
      183 CALL                             R16 4 1
      184 SETTABLEKS                       R16 R15 K26 ["Position"]
      186 GETIMPORT                        R16 K30 [UDim2.new]
      188 LOADN                            R17 0
      189 LOADN                            R18 144
      190 LOADN                            R19 0
      191 LOADN                            R20 36
      192 CALL                             R16 4 1
      193 SETTABLEKS                       R16 R15 K15 ["Size"]
      195 LOADK                            R16 K54 ["Validation Failed"]
      196 SETTABLEKS                       R16 R15 K47 ["Text"]
      198 GETTABLEKS                       R16 R3 K55 ["loading"]
      200 GETTABLEKS                       R16 R16 K56 ["text"]
      202 SETTABLEKS                       R16 R15 K48 ["TextColor3"]
      204 GETUPVAL                         R16 4
      205 GETTABLEKS                       R16 R16 K57 ["FONT_SIZE_TITLE"]
      207 SETTABLEKS                       R16 R15 K49 ["TextSize"]
      209 GETIMPORT                        R16 K60 [Enum.TextXAlignment.Center]
      211 SETTABLEKS                       R16 R15 K50 ["TextXAlignment"]
      213 GETIMPORT                        R16 K61 [Enum.TextYAlignment.Center]
      215 SETTABLEKS                       R16 R15 K51 ["TextYAlignment"]
      217 CALL                             R13 2 1
      218 SETTABLEKS                       R13 R12 K41 ["Title"]
      220 GETUPVAL                         R14 0
      221 NOT                              R13 R14
      222 JUMPIFNOT                        R13 ; [+58]
      223 GETUPVAL                         R13 1
      224 GETTABLEKS                       R13 R13 K10 ["createElement"]
      226 LOADK                            R14 K45 ["TextLabel"]
      227 DUPTABLE                         R15 K63 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextWrapped", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
      228 LOADN                            R16 1
      229 SETTABLEKS                       R16 R15 K13 ["BackgroundTransparency"]
      231 GETUPVAL                         R16 4
      232 GETTABLEKS                       R16 R16 K53 ["FONT"]
      234 SETTABLEKS                       R16 R15 K46 ["Font"]
      236 GETIMPORT                        R16 K30 [UDim2.new]
      238 LOADK                            R17 K31 [0.5]
      239 GETUPVAL                         R20 5
      240 MINUS                            R19 R20
      241 DIVK                             R18 R19 K64 [2]
      242 LOADN                            R19 0
      243 LOADN                            R20 49
      244 CALL                             R16 4 1
      245 SETTABLEKS                       R16 R15 K26 ["Position"]
      247 GETIMPORT                        R16 K30 [UDim2.new]
      249 LOADN                            R17 0
      250 GETUPVAL                         R18 5
      251 LOADN                            R19 0
      252 GETUPVAL                         R20 6
      253 CALL                             R16 4 1
      254 SETTABLEKS                       R16 R15 K15 ["Size"]
      256 SETTABLEKS                       R4 R15 K47 ["Text"]
      258 LOADB                            R16 1
      259 SETTABLEKS                       R16 R15 K62 ["TextWrapped"]
      261 GETTABLEKS                       R16 R3 K55 ["loading"]
      263 GETTABLEKS                       R16 R16 K56 ["text"]
      265 SETTABLEKS                       R16 R15 K48 ["TextColor3"]
      267 GETUPVAL                         R16 4
      268 GETTABLEKS                       R16 R16 K65 ["FONT_SIZE_MEDIUM"]
      270 SETTABLEKS                       R16 R15 K49 ["TextSize"]
      272 GETIMPORT                        R16 K60 [Enum.TextXAlignment.Center]
      274 SETTABLEKS                       R16 R15 K50 ["TextXAlignment"]
      276 GETIMPORT                        R16 K67 [Enum.TextYAlignment.Top]
      278 SETTABLEKS                       R16 R15 K51 ["TextYAlignment"]
      280 CALL                             R13 2 1
      281 SETTABLEKS                       R13 R12 K42 ["Reason"]
      283 GETUPVAL                         R13 0
      284 JUMPIFNOT                        R13 ; [+99]
      285 GETUPVAL                         R13 1
      286 GETTABLEKS                       R13 R13 K10 ["createElement"]
      288 GETUPVAL                         R14 7
      289 DUPTABLE                         R15 K69 [{"BackgroundTransparency", "Position", "Size", "CanvasSize"}]
      290 LOADN                            R16 1
      291 SETTABLEKS                       R16 R15 K13 ["BackgroundTransparency"]
      293 GETIMPORT                        R16 K30 [UDim2.new]
      295 LOADK                            R17 K31 [0.5]
      296 GETUPVAL                         R20 5
      297 MINUS                            R19 R20
      298 DIVK                             R18 R19 K64 [2]
      299 LOADN                            R19 0
      300 LOADN                            R20 49
      301 CALL                             R16 4 1
      302 SETTABLEKS                       R16 R15 K26 ["Position"]
      304 GETIMPORT                        R16 K30 [UDim2.new]
      306 LOADN                            R17 0
      307 GETUPVAL                         R18 5
      308 LOADN                            R19 1
      309 LOADN                            R20 145
      310 CALL                             R16 4 1
      311 SETTABLEKS                       R16 R15 K15 ["Size"]
      313 GETIMPORT                        R16 K30 [UDim2.new]
      315 LOADN                            R17 0
      316 GETUPVAL                         R18 5
      317 LOADN                            R19 0
      318 GETUPVAL                         R20 6
      319 CALL                             R16 4 1
      320 SETTABLEKS                       R16 R15 K68 ["CanvasSize"]
      322 DUPTABLE                         R16 K70 [{"Reason"}]
      323 GETUPVAL                         R17 1
      324 GETTABLEKS                       R17 R17 K10 ["createElement"]
      326 LOADK                            R18 K45 ["TextLabel"]
      327 DUPTABLE                         R19 K63 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextWrapped", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
      328 LOADN                            R20 1
      329 SETTABLEKS                       R20 R19 K13 ["BackgroundTransparency"]
      331 GETUPVAL                         R20 4
      332 GETTABLEKS                       R20 R20 K53 ["FONT"]
      334 SETTABLEKS                       R20 R19 K46 ["Font"]
      336 GETIMPORT                        R20 K30 [UDim2.new]
      338 LOADK                            R21 K31 [0.5]
      339 GETUPVAL                         R24 5
      340 MINUS                            R23 R24
      341 DIVK                             R22 R23 K64 [2]
      342 LOADN                            R23 0
      343 LOADN                            R24 49
      344 CALL                             R20 4 1
      345 SETTABLEKS                       R20 R19 K26 ["Position"]
      347 GETIMPORT                        R20 K30 [UDim2.new]
      349 LOADN                            R21 0
      350 GETUPVAL                         R22 5
      351 LOADN                            R23 0
      352 GETUPVAL                         R24 6
      353 CALL                             R20 4 1
      354 SETTABLEKS                       R20 R19 K15 ["Size"]
      356 SETTABLEKS                       R4 R19 K47 ["Text"]
      358 LOADB                            R20 1
      359 SETTABLEKS                       R20 R19 K62 ["TextWrapped"]
      361 GETTABLEKS                       R20 R3 K55 ["loading"]
      363 GETTABLEKS                       R20 R20 K56 ["text"]
      365 SETTABLEKS                       R20 R19 K48 ["TextColor3"]
      367 GETUPVAL                         R20 4
      368 GETTABLEKS                       R20 R20 K65 ["FONT_SIZE_MEDIUM"]
      370 SETTABLEKS                       R20 R19 K49 ["TextSize"]
      372 GETIMPORT                        R20 K72 [Enum.TextXAlignment.Left]
      374 SETTABLEKS                       R20 R19 K50 ["TextXAlignment"]
      376 GETIMPORT                        R20 K67 [Enum.TextYAlignment.Top]
      378 SETTABLEKS                       R20 R19 K51 ["TextYAlignment"]
      380 CALL                             R17 2 1
      381 SETTABLEKS                       R17 R16 K42 ["Reason"]
      383 CALL                             R13 3 1
      384 SETTABLEKS                       R13 R12 K43 ["ScrollingFrame"]
      386 CALL                             R9 3 1
      387 SETTABLEKS                       R9 R8 K21 ["LoadingResult"]
      389 GETTABLEKS                       R10 R0 K1 ["state"]
      391 GETTABLEKS                       R10 R10 K32 ["isLoading"]
      393 NOT                              R9 R10
      394 JUMPIFNOT                        R9 ; [+64]
      395 GETUPVAL                         R9 1
      396 GETTABLEKS                       R9 R9 K10 ["createElement"]
      398 LOADK                            R10 K11 ["Frame"]
      399 DUPTABLE                         R11 K73 [{"BackgroundTransparency", "Position", "Size"}]
      400 LOADN                            R12 1
      401 SETTABLEKS                       R12 R11 K13 ["BackgroundTransparency"]
      403 GETIMPORT                        R12 K30 [UDim2.new]
      405 LOADN                            R13 0
      406 LOADN                            R14 0
      407 LOADN                            R15 1
      408 LOADN                            R16 194
      409 CALL                             R12 4 1
      410 SETTABLEKS                       R12 R11 K26 ["Position"]
      412 GETIMPORT                        R12 K30 [UDim2.new]
      414 LOADN                            R13 1
      415 LOADN                            R14 0
      416 LOADN                            R15 0
      417 LOADN                            R16 62
      418 CALL                             R12 4 1
      419 SETTABLEKS                       R12 R11 K15 ["Size"]
      421 DUPTABLE                         R12 K75 [{"CloseButton"}]
      422 GETUPVAL                         R13 1
      423 GETTABLEKS                       R13 R13 K10 ["createElement"]
      425 GETUPVAL                         R14 8
      426 DUPTABLE                         R15 K79 [{"onClick", "titleText", "LayoutOrder", "Position", "Size"}]
      427 GETTABLEKS                       R16 R1 K80 ["onClose"]
      429 SETTABLEKS                       R16 R15 K76 ["onClick"]
      431 LOADK                            R16 K81 ["Close"]
      432 SETTABLEKS                       R16 R15 K77 ["titleText"]
      434 LOADN                            R16 0
      435 SETTABLEKS                       R16 R15 K78 ["LayoutOrder"]
      437 GETIMPORT                        R16 K30 [UDim2.new]
      439 LOADK                            R17 K31 [0.5]
      440 LOADN                            R18 196
      441 LOADK                            R19 K31 [0.5]
      442 LOADN                            R20 240
      443 CALL                             R16 4 1
      444 SETTABLEKS                       R16 R15 K26 ["Position"]
      446 GETIMPORT                        R16 K30 [UDim2.new]
      448 LOADN                            R17 0
      449 LOADN                            R18 120
      450 LOADN                            R19 0
      451 LOADN                            R20 32
      452 CALL                             R16 4 1
      453 SETTABLEKS                       R16 R15 K15 ["Size"]
      455 CALL                             R13 2 1
      456 SETTABLEKS                       R13 R12 K74 ["CloseButton"]
      458 CALL                             R9 3 1
      459 SETTABLEKS                       R9 R8 K22 ["Footer"]
      461 CALL                             R5 3 -1
      462 RETURN                           R5 -1

PROTO_5:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K2 [{"instances", "assetTypeEnum"}]
        6 GETTABLEKS                       R3 R0 K0 ["instances"]
        8 SETTABLEKS                       R3 R2 K0 ["instances"]
       10 GETTABLEKS                       R3 R0 K1 ["assetTypeEnum"]
       12 SETTABLEKS                       R3 R2 K1 ["assetTypeEnum"]
       14 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        5 GETTABLEKS                       R2 R2 K1 ["CONFIGURE_ASSET"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K1 [{"nextScreen"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["nextScreen"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["DebugDisableLocalUGCValidation"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K5 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K6 ["ToolboxAdjustValidationReasonSize"]
       16 NAMECALL                         R2 R2 K3 ["GetFastFlag"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K8 [script]
       21 GETTABLEKS                       R3 R3 K9 ["Parent"]
       23 GETTABLEKS                       R3 R3 K9 ["Parent"]
       25 GETTABLEKS                       R3 R3 K9 ["Parent"]
       27 GETTABLEKS                       R3 R3 K9 ["Parent"]
       29 GETTABLEKS                       R4 R3 K10 ["Packages"]
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R6 R4 K13 ["Roact"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K12 [require]
       38 GETTABLEKS                       R7 R4 K14 ["RoactRodux"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K12 [require]
       43 GETTABLEKS                       R8 R4 K15 ["Framework"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R7 K16 ["UI"]
       48 GETTABLEKS                       R9 R8 K17 ["ScrollingFrame"]
       50 GETTABLEKS                       R10 R3 K18 ["Src"]
       52 GETTABLEKS                       R10 R10 K19 ["Util"]
       54 GETIMPORT                        R11 K12 [require]
       56 GETTABLEKS                       R12 R10 K20 ["Constants"]
       58 CALL                             R11 1 1
       59 GETIMPORT                        R12 K12 [require]
       61 GETTABLEKS                       R13 R10 K21 ["AssetConfigConstants"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K12 [require]
       66 GETTABLEKS                       R14 R10 K22 ["AssetConfigUtil"]
       68 CALL                             R13 1 1
       69 GETIMPORT                        R14 K12 [require]
       71 GETTABLEKS                       R15 R10 K23 ["fixUpPreValidation"]
       73 CALL                             R14 1 1
       74 GETIMPORT                        R15 K12 [require]
       76 GETTABLEKS                       R16 R10 K24 ["getUGCValidationRestrictedUserTable"]
       78 CALL                             R15 1 1
       79 GETIMPORT                        R16 K12 [require]
       81 GETTABLEKS                       R17 R4 K25 ["UGCValidation"]
       83 CALL                             R16 1 1
       84 GETIMPORT                        R17 K12 [require]
       86 GETTABLEKS                       R18 R4 K15 ["Framework"]
       88 CALL                             R17 1 1
       89 GETTABLEKS                       R17 R17 K26 ["ContextServices"]
       91 GETTABLEKS                       R18 R17 K27 ["withContext"]
       93 GETTABLEKS                       R19 R3 K18 ["Src"]
       95 GETTABLEKS                       R19 R19 K28 ["Actions"]
       97 GETIMPORT                        R20 K12 [require]
       99 GETTABLEKS                       R21 R19 K29 ["SetCurrentScreen"]
      101 CALL                             R20 1 1
      102 GETTABLEKS                       R21 R3 K18 ["Src"]
      104 GETTABLEKS                       R21 R21 K30 ["Components"]
      106 GETIMPORT                        R22 K12 [require]
      108 GETTABLEKS                       R23 R21 K31 ["AssetConfiguration"]
      110 GETTABLEKS                       R23 R23 K32 ["LoadingBarWrapper"]
      112 CALL                             R22 1 1
      113 GETIMPORT                        R23 K12 [require]
      115 GETTABLEKS                       R24 R21 K31 ["AssetConfiguration"]
      117 GETTABLEKS                       R24 R24 K33 ["AssetThumbnailPreview"]
      119 CALL                             R23 1 1
      120 GETIMPORT                        R24 K12 [require]
      122 GETTABLEKS                       R25 R21 K34 ["NavButton"]
      124 CALL                             R24 1 1
      125 JUMPIFNOT                        R2 ; [+2]
      126 LOADN                            R25 88
      127 JUMP                             ; [+1]
      128 LOADN                            R25 144
      129 JUMPIFNOT                        R2 ; [+2]
      130 LOADN                            R26 144
      131 JUMP                             ; [+1]
      132 LOADN                            R26 72
      133 GETTABLEKS                       R27 R5 K35 ["PureComponent"]
      135 LOADK                            R29 K36 ["AssetValidation"]
      136 NAMECALL                         R27 R27 K37 ["extend"]
      138 CALL                             R27 2 1
      139 DUPCLOSURE                       R28 K38 [PROTO_3]
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R0
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R16
      145 SETTABLEKS                       R28 R27 K39 ["init"]
      147 DUPCLOSURE                       R28 K40 [PROTO_4]
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R23
      151 CAPTURE                          VAL R22
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R25
      154 CAPTURE                          VAL R26
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R24
      157 SETTABLEKS                       R28 R27 K41 ["render"]
      159 DUPCLOSURE                       R28 K42 [PROTO_5]
      160 DUPCLOSURE                       R29 K43 [PROTO_7]
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R12
      163 MOVE                             R30 R18
      164 DUPTABLE                         R31 K45 [{"Stylizer"}]
      165 GETTABLEKS                       R32 R17 K44 ["Stylizer"]
      167 SETTABLEKS                       R32 R31 K44 ["Stylizer"]
      169 CALL                             R30 1 1
      170 MOVE                             R31 R27
      171 CALL                             R30 1 1
      172 MOVE                             R27 R30
      173 GETTABLEKS                       R30 R6 K46 ["connect"]
      175 MOVE                             R31 R28
      176 MOVE                             R32 R29
      177 CALL                             R30 2 1
      178 MOVE                             R31 R27
      179 CALL                             R30 1 -1
      180 RETURN                           R30 -1
