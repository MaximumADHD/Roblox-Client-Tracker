PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R5 2
        3 GETTABLEKS                       R4 R5 K0 ["AVATAR_IMPORTER_DEVHUB"]
        5 NAMECALL                         R2 R2 K1 ["GetDocumentationUrl"]
        7 CALL                             R2 2 -1
        8 NAMECALL                         R0 R0 K2 ["OpenBrowserWindow"]
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K5 [{"Name", "Size", "BackgroundColor3"}]
        5 LOADK                            R4 K6 ["ErrorPrompt"]
        6 SETTABLEKS                       R4 R3 K2 ["Name"]
        8 GETIMPORT                        R4 K9 [UDim2.new]
       10 LOADN                            R5 1
       11 LOADN                            R6 0
       12 LOADN                            R7 1
       13 LOADN                            R8 0
       14 CALL                             R4 4 1
       15 SETTABLEKS                       R4 R3 K3 ["Size"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K10 ["Theme"]
       20 GETIMPORT                        R6 K14 [Enum.StudioStyleGuideColor.MainBackground]
       22 GETIMPORT                        R7 K17 [Enum.StudioStyleGuideModifier.Default]
       24 NAMECALL                         R4 R4 K18 ["GetColor"]
       26 CALL                             R4 3 1
       27 SETTABLEKS                       R4 R3 K4 ["BackgroundColor3"]
       29 DUPTABLE                         R4 K26 [{"errorIcon", "errorTitle", "requirementsHeader", "requirements", "bottomDescription", "infoLink", "buttons"}]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K0 ["createElement"]
       33 LOADK                            R6 K27 ["ImageLabel"]
       34 DUPTABLE                         R7 K31 [{"BackgroundTransparency", "Image", "Size", "Position"}]
       35 LOADN                            R8 1
       36 SETTABLEKS                       R8 R7 K28 ["BackgroundTransparency"]
       38 GETUPVAL                         R9 2
       39 GETTABLEKS                       R8 R9 K32 ["ERROR_ICON"]
       41 SETTABLEKS                       R8 R7 K29 ["Image"]
       43 GETIMPORT                        R8 K9 [UDim2.new]
       45 LOADN                            R9 0
       46 LOADN                            R10 22
       47 LOADN                            R11 0
       48 LOADN                            R12 22
       49 CALL                             R8 4 1
       50 SETTABLEKS                       R8 R7 K3 ["Size"]
       52 GETIMPORT                        R8 K9 [UDim2.new]
       54 LOADN                            R9 0
       55 LOADN                            R10 30
       56 LOADN                            R11 0
       57 LOADN                            R12 20
       58 CALL                             R8 4 1
       59 SETTABLEKS                       R8 R7 K30 ["Position"]
       61 CALL                             R5 2 1
       62 SETTABLEKS                       R5 R4 K19 ["errorIcon"]
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R5 R6 K0 ["createElement"]
       67 LOADK                            R6 K33 ["TextLabel"]
       68 DUPTABLE                         R7 K41 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "ClipsDescendants", "TextColor3"}]
       69 LOADN                            R8 1
       70 SETTABLEKS                       R8 R7 K28 ["BackgroundTransparency"]
       72 GETUPVAL                         R9 3
       73 GETTABLEKS                       R8 R9 K42 ["FONT"]
       75 SETTABLEKS                       R8 R7 K34 ["Font"]
       77 GETIMPORT                        R8 K9 [UDim2.new]
       79 LOADN                            R9 0
       80 LOADN                            R10 62
       81 LOADN                            R11 0
       82 LOADN                            R12 20
       83 CALL                             R8 4 1
       84 SETTABLEKS                       R8 R7 K30 ["Position"]
       86 GETIMPORT                        R8 K9 [UDim2.new]
       88 LOADN                            R9 1
       89 LOADN                            R10 194
       90 LOADN                            R11 0
       91 LOADN                            R12 20
       92 CALL                             R8 4 1
       93 SETTABLEKS                       R8 R7 K3 ["Size"]
       95 GETTABLEKS                       R9 R0 K43 ["props"]
       97 GETTABLEKS                       R8 R9 K44 ["name"]
       99 SETTABLEKS                       R8 R7 K35 ["Text"]
      101 GETUPVAL                         R9 3
      102 GETTABLEKS                       R8 R9 K45 ["FONT_SIZE_TITLE"]
      104 SETTABLEKS                       R8 R7 K36 ["TextSize"]
      106 GETIMPORT                        R8 K47 [Enum.TextXAlignment.Left]
      108 SETTABLEKS                       R8 R7 K37 ["TextXAlignment"]
      110 GETIMPORT                        R8 K49 [Enum.TextYAlignment.Center]
      112 SETTABLEKS                       R8 R7 K38 ["TextYAlignment"]
      114 LOADB                            R8 1
      115 SETTABLEKS                       R8 R7 K39 ["ClipsDescendants"]
      117 GETUPVAL                         R9 1
      118 GETTABLEKS                       R8 R9 K10 ["Theme"]
      120 GETIMPORT                        R10 K51 [Enum.StudioStyleGuideColor.MainText]
      122 GETIMPORT                        R11 K17 [Enum.StudioStyleGuideModifier.Default]
      124 NAMECALL                         R8 R8 K18 ["GetColor"]
      126 CALL                             R8 3 1
      127 SETTABLEKS                       R8 R7 K40 ["TextColor3"]
      129 CALL                             R5 2 1
      130 SETTABLEKS                       R5 R4 K20 ["errorTitle"]
      132 GETUPVAL                         R6 0
      133 GETTABLEKS                       R5 R6 K0 ["createElement"]
      135 LOADK                            R6 K33 ["TextLabel"]
      136 DUPTABLE                         R7 K52 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
      137 LOADN                            R8 1
      138 SETTABLEKS                       R8 R7 K28 ["BackgroundTransparency"]
      140 GETUPVAL                         R9 3
      141 GETTABLEKS                       R8 R9 K53 ["FONT_BOLD"]
      143 SETTABLEKS                       R8 R7 K34 ["Font"]
      145 GETIMPORT                        R8 K9 [UDim2.new]
      147 LOADN                            R9 0
      148 LOADN                            R10 62
      149 LOADN                            R11 0
      150 LOADN                            R12 60
      151 CALL                             R8 4 1
      152 SETTABLEKS                       R8 R7 K30 ["Position"]
      154 GETIMPORT                        R8 K9 [UDim2.new]
      156 LOADN                            R9 0
      157 LOADN                            R10 46
      158 LOADN                            R11 0
      159 GETUPVAL                         R13 3
      160 GETTABLEKS                       R12 R13 K54 ["FONT_SIZE_MEDIUM"]
      162 CALL                             R8 4 1
      163 SETTABLEKS                       R8 R7 K3 ["Size"]
      165 LOADK                            R8 K55 ["The file failed to meet the import requirement(s):"]
      166 SETTABLEKS                       R8 R7 K35 ["Text"]
      168 GETUPVAL                         R9 3
      169 GETTABLEKS                       R8 R9 K54 ["FONT_SIZE_MEDIUM"]
      171 SETTABLEKS                       R8 R7 K36 ["TextSize"]
      173 GETIMPORT                        R8 K47 [Enum.TextXAlignment.Left]
      175 SETTABLEKS                       R8 R7 K37 ["TextXAlignment"]
      177 GETIMPORT                        R8 K49 [Enum.TextYAlignment.Center]
      179 SETTABLEKS                       R8 R7 K38 ["TextYAlignment"]
      181 GETUPVAL                         R9 1
      182 GETTABLEKS                       R8 R9 K10 ["Theme"]
      184 GETIMPORT                        R10 K51 [Enum.StudioStyleGuideColor.MainText]
      186 GETIMPORT                        R11 K17 [Enum.StudioStyleGuideModifier.Default]
      188 NAMECALL                         R8 R8 K18 ["GetColor"]
      190 CALL                             R8 3 1
      191 SETTABLEKS                       R8 R7 K40 ["TextColor3"]
      193 CALL                             R5 2 1
      194 SETTABLEKS                       R5 R4 K21 ["requirementsHeader"]
      196 GETUPVAL                         R6 0
      197 GETTABLEKS                       R5 R6 K0 ["createElement"]
      199 LOADK                            R6 K33 ["TextLabel"]
      200 DUPTABLE                         R7 K52 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
      201 LOADN                            R8 1
      202 SETTABLEKS                       R8 R7 K28 ["BackgroundTransparency"]
      204 GETUPVAL                         R9 3
      205 GETTABLEKS                       R8 R9 K42 ["FONT"]
      207 SETTABLEKS                       R8 R7 K34 ["Font"]
      209 GETIMPORT                        R8 K9 [UDim2.new]
      211 LOADN                            R9 0
      212 LOADN                            R10 62
      213 LOADN                            R11 0
      214 LOADN                            R12 86
      215 CALL                             R8 4 1
      216 SETTABLEKS                       R8 R7 K30 ["Position"]
      218 GETIMPORT                        R8 K9 [UDim2.new]
      220 LOADN                            R9 0
      221 LOADN                            R10 46
      222 LOADN                            R11 0
      223 GETUPVAL                         R13 3
      224 GETTABLEKS                       R12 R13 K54 ["FONT_SIZE_MEDIUM"]
      226 CALL                             R8 4 1
      227 SETTABLEKS                       R8 R7 K3 ["Size"]
      229 GETTABLEKS                       R9 R0 K43 ["props"]
      231 GETTABLEKS                       R8 R9 K56 ["message"]
      233 SETTABLEKS                       R8 R7 K35 ["Text"]
      235 GETUPVAL                         R9 3
      236 GETTABLEKS                       R8 R9 K54 ["FONT_SIZE_MEDIUM"]
      238 SETTABLEKS                       R8 R7 K36 ["TextSize"]
      240 GETIMPORT                        R8 K47 [Enum.TextXAlignment.Left]
      242 SETTABLEKS                       R8 R7 K37 ["TextXAlignment"]
      244 GETIMPORT                        R8 K58 [Enum.TextYAlignment.Top]
      246 SETTABLEKS                       R8 R7 K38 ["TextYAlignment"]
      248 GETUPVAL                         R9 1
      249 GETTABLEKS                       R8 R9 K10 ["Theme"]
      251 GETIMPORT                        R10 K51 [Enum.StudioStyleGuideColor.MainText]
      253 GETIMPORT                        R11 K17 [Enum.StudioStyleGuideModifier.Default]
      255 NAMECALL                         R8 R8 K18 ["GetColor"]
      257 CALL                             R8 3 1
      258 SETTABLEKS                       R8 R7 K40 ["TextColor3"]
      260 CALL                             R5 2 1
      261 SETTABLEKS                       R5 R4 K22 ["requirements"]
      263 GETUPVAL                         R6 0
      264 GETTABLEKS                       R5 R6 K0 ["createElement"]
      266 LOADK                            R6 K33 ["TextLabel"]
      267 DUPTABLE                         R7 K52 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
      268 LOADN                            R8 1
      269 SETTABLEKS                       R8 R7 K28 ["BackgroundTransparency"]
      271 GETUPVAL                         R9 3
      272 GETTABLEKS                       R8 R9 K42 ["FONT"]
      274 SETTABLEKS                       R8 R7 K34 ["Font"]
      276 GETIMPORT                        R8 K9 [UDim2.new]
      278 LOADN                            R9 0
      279 LOADN                            R10 62
      280 LOADN                            R11 1
      281 LOADN                            R12 107
      282 CALL                             R8 4 1
      283 SETTABLEKS                       R8 R7 K30 ["Position"]
      285 GETIMPORT                        R8 K9 [UDim2.new]
      287 LOADN                            R9 0
      288 LOADN                            R10 210
      289 LOADN                            R11 0
      290 GETUPVAL                         R13 3
      291 GETTABLEKS                       R12 R13 K54 ["FONT_SIZE_MEDIUM"]
      293 CALL                             R8 4 1
      294 SETTABLEKS                       R8 R7 K3 ["Size"]
      296 LOADK                            R8 K59 ["Please update the file and try again"]
      297 SETTABLEKS                       R8 R7 K35 ["Text"]
      299 GETUPVAL                         R9 3
      300 GETTABLEKS                       R8 R9 K54 ["FONT_SIZE_MEDIUM"]
      302 SETTABLEKS                       R8 R7 K36 ["TextSize"]
      304 GETIMPORT                        R8 K47 [Enum.TextXAlignment.Left]
      306 SETTABLEKS                       R8 R7 K37 ["TextXAlignment"]
      308 GETIMPORT                        R8 K58 [Enum.TextYAlignment.Top]
      310 SETTABLEKS                       R8 R7 K38 ["TextYAlignment"]
      312 GETUPVAL                         R9 1
      313 GETTABLEKS                       R8 R9 K10 ["Theme"]
      315 GETIMPORT                        R10 K51 [Enum.StudioStyleGuideColor.MainText]
      317 GETIMPORT                        R11 K17 [Enum.StudioStyleGuideModifier.Default]
      319 NAMECALL                         R8 R8 K18 ["GetColor"]
      321 CALL                             R8 3 1
      322 SETTABLEKS                       R8 R7 K40 ["TextColor3"]
      324 CALL                             R5 2 1
      325 SETTABLEKS                       R5 R4 K23 ["bottomDescription"]
      327 GETUPVAL                         R6 0
      328 GETTABLEKS                       R5 R6 K0 ["createElement"]
      330 LOADK                            R6 K60 ["TextButton"]
      331 NEWTABLE                         R7 16 0
      333 LOADN                            R8 1
      334 SETTABLEKS                       R8 R7 K28 ["BackgroundTransparency"]
      336 GETUPVAL                         R9 3
      337 GETTABLEKS                       R8 R9 K42 ["FONT"]
      339 SETTABLEKS                       R8 R7 K34 ["Font"]
      341 GETIMPORT                        R8 K9 [UDim2.new]
      343 LOADN                            R9 0
      344 LOADN                            R10 62
      345 LOADN                            R11 1
      346 LOADN                            R12 133
      347 CALL                             R8 4 1
      348 SETTABLEKS                       R8 R7 K30 ["Position"]
      350 GETIMPORT                        R8 K9 [UDim2.new]
      352 LOADN                            R9 0
      353 LOADN                            R10 210
      354 LOADN                            R11 0
      355 GETUPVAL                         R13 3
      356 GETTABLEKS                       R12 R13 K54 ["FONT_SIZE_MEDIUM"]
      358 CALL                             R8 4 1
      359 SETTABLEKS                       R8 R7 K3 ["Size"]
      361 LOADK                            R8 K61 ["What are import requirements?"]
      362 SETTABLEKS                       R8 R7 K35 ["Text"]
      364 GETUPVAL                         R9 3
      365 GETTABLEKS                       R8 R9 K54 ["FONT_SIZE_MEDIUM"]
      367 SETTABLEKS                       R8 R7 K36 ["TextSize"]
      369 GETIMPORT                        R8 K47 [Enum.TextXAlignment.Left]
      371 SETTABLEKS                       R8 R7 K37 ["TextXAlignment"]
      373 GETIMPORT                        R8 K58 [Enum.TextYAlignment.Top]
      375 SETTABLEKS                       R8 R7 K38 ["TextYAlignment"]
      377 GETUPVAL                         R8 4
      378 DUPTABLE                         R9 K64 [{"Light", "Dark"}]
      379 GETIMPORT                        R10 K67 [Color3.fromRGB]
      381 LOADN                            R11 0
      382 LOADN                            R12 162
      383 LOADN                            R13 255
      384 CALL                             R10 3 1
      385 SETTABLEKS                       R10 R9 K62 ["Light"]
      387 GETIMPORT                        R10 K67 [Color3.fromRGB]
      389 LOADN                            R11 255
      390 LOADN                            R12 255
      391 LOADN                            R13 255
      392 CALL                             R10 3 1
      393 SETTABLEKS                       R10 R9 K63 ["Dark"]
      395 CALL                             R8 1 1
      396 SETTABLEKS                       R8 R7 K40 ["TextColor3"]
      398 GETUPVAL                         R10 0
      399 GETTABLEKS                       R9 R10 K68 ["Event"]
      401 GETTABLEKS                       R8 R9 K69 ["MouseButton1Click"]
      403 DUPCLOSURE                       R9 K70 [PROTO_0]
      404 CAPTURE                          UPVAL U5
      405 CAPTURE                          UPVAL U6
      406 CAPTURE                          UPVAL U3
      407 SETTABLE                         R9 R7 R8
      408 CALL                             R5 2 1
      409 SETTABLEKS                       R5 R4 K24 ["infoLink"]
      411 GETUPVAL                         R6 0
      412 GETTABLEKS                       R5 R6 K0 ["createElement"]
      414 LOADK                            R6 K1 ["Frame"]
      415 DUPTABLE                         R7 K71 [{"BackgroundTransparency", "Position", "Size"}]
      416 LOADN                            R8 1
      417 SETTABLEKS                       R8 R7 K28 ["BackgroundTransparency"]
      419 GETIMPORT                        R8 K9 [UDim2.new]
      421 LOADN                            R9 0
      422 LOADN                            R10 0
      423 LOADN                            R11 1
      424 LOADN                            R12 192
      425 CALL                             R8 4 1
      426 SETTABLEKS                       R8 R7 K30 ["Position"]
      428 GETIMPORT                        R8 K9 [UDim2.new]
      430 LOADN                            R9 1
      431 LOADN                            R10 0
      432 LOADN                            R11 0
      433 LOADN                            R12 34
      434 CALL                             R8 4 1
      435 SETTABLEKS                       R8 R7 K3 ["Size"]
      437 DUPTABLE                         R8 K75 [{"buttonsListLayout", "cancelButton", "retryButton"}]
      438 GETUPVAL                         R10 0
      439 GETTABLEKS                       R9 R10 K0 ["createElement"]
      441 LOADK                            R10 K76 ["UIListLayout"]
      442 DUPTABLE                         R11 K81 [{"Padding", "FillDirection", "HorizontalAlignment", "SortOrder"}]
      443 GETIMPORT                        R12 K83 [UDim.new]
      445 LOADN                            R13 0
      446 LOADN                            R14 21
      447 CALL                             R12 2 1
      448 SETTABLEKS                       R12 R11 K77 ["Padding"]
      450 GETIMPORT                        R12 K85 [Enum.FillDirection.Horizontal]
      452 SETTABLEKS                       R12 R11 K78 ["FillDirection"]
      454 GETIMPORT                        R12 K86 [Enum.HorizontalAlignment.Center]
      456 SETTABLEKS                       R12 R11 K79 ["HorizontalAlignment"]
      458 GETIMPORT                        R12 K88 [Enum.SortOrder.LayoutOrder]
      460 SETTABLEKS                       R12 R11 K80 ["SortOrder"]
      462 CALL                             R9 2 1
      463 SETTABLEKS                       R9 R8 K72 ["buttonsListLayout"]
      465 GETUPVAL                         R10 0
      466 GETTABLEKS                       R9 R10 K0 ["createElement"]
      468 GETUPVAL                         R10 7
      469 NEWTABLE                         R11 4 0
      471 LOADK                            R12 K89 ["CancelButton"]
      472 SETTABLEKS                       R12 R11 K44 ["name"]
      474 LOADK                            R12 K90 ["Cancel"]
      475 SETTABLEKS                       R12 R11 K91 ["labelText"]
      477 LOADN                            R12 0
      478 SETTABLEKS                       R12 R11 K92 ["layoutOrder"]
      480 GETUPVAL                         R14 0
      481 GETTABLEKS                       R13 R14 K68 ["Event"]
      483 GETTABLEKS                       R12 R13 K69 ["MouseButton1Click"]
      485 GETTABLEKS                       R14 R0 K43 ["props"]
      487 GETTABLEKS                       R13 R14 K93 ["doClose"]
      489 SETTABLE                         R13 R11 R12
      490 CALL                             R9 2 1
      491 SETTABLEKS                       R9 R8 K73 ["cancelButton"]
      493 GETUPVAL                         R10 0
      494 GETTABLEKS                       R9 R10 K0 ["createElement"]
      496 GETUPVAL                         R10 7
      497 NEWTABLE                         R11 8 0
      499 LOADK                            R12 K94 ["RetryButton"]
      500 SETTABLEKS                       R12 R11 K44 ["name"]
      502 LOADK                            R12 K95 ["Try Again"]
      503 SETTABLEKS                       R12 R11 K91 ["labelText"]
      505 LOADN                            R12 1
      506 SETTABLEKS                       R12 R11 K92 ["layoutOrder"]
      508 LOADB                            R12 1
      509 SETTABLEKS                       R12 R11 K96 ["isMain"]
      511 GETUPVAL                         R14 0
      512 GETTABLEKS                       R13 R14 K68 ["Event"]
      514 GETTABLEKS                       R12 R13 K69 ["MouseButton1Click"]
      516 GETTABLEKS                       R14 R0 K43 ["props"]
      518 GETTABLEKS                       R13 R14 K97 ["doRetry"]
      520 SETTABLE                         R13 R11 R12
      521 CALL                             R9 2 1
      522 SETTABLEKS                       R9 R8 K74 ["retryButton"]
      524 CALL                             R5 3 1
      525 SETTABLEKS                       R5 R4 K25 ["buttons"]
      527 CALL                             R1 3 -1
      528 RETURN                           R1 -1

PROTO_2:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 DUPTABLE                         R1 K2 [{"name", "message"}]
        6 GETTABLEKS                       R3 R0 K3 ["error"]
        8 GETTABLEKS                       R2 R3 K0 ["name"]
       10 SETTABLEKS                       R2 R1 K0 ["name"]
       12 GETTABLEKS                       R3 R0 K3 ["error"]
       14 GETTABLEKS                       R2 R3 K1 ["message"]
       16 SETTABLEKS                       R2 R1 K1 ["message"]
       18 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R3 R4 K0 ["SCREENS"]
        5 GETTABLEKS                       R2 R3 K1 ["AVATAR"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["GuiService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["HttpRbxApiService"]
       18 NAMECALL                         R2 R2 K6 ["GetService"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Packages"]
       25 GETTABLEKS                       R4 R5 K11 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Packages"]
       32 GETTABLEKS                       R5 R6 K12 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R7 R0 K13 ["src"]
       39 GETTABLEKS                       R6 R7 K14 ["Assets"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K9 [require]
       44 GETTABLEKS                       R8 R0 K13 ["src"]
       46 GETTABLEKS                       R7 R8 K15 ["Constants"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K9 [require]
       51 GETTABLEKS                       R10 R0 K13 ["src"]
       53 GETTABLEKS                       R9 R10 K16 ["components"]
       55 GETTABLEKS                       R8 R9 K17 ["CustomTextButton"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K9 [require]
       60 GETTABLEKS                       R11 R0 K13 ["src"]
       62 GETTABLEKS                       R10 R11 K18 ["utils"]
       64 GETTABLEKS                       R9 R10 K19 ["themeConfig"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R10 R0 K13 ["src"]
       69 GETTABLEKS                       R9 R10 K20 ["actions"]
       71 GETIMPORT                        R10 K9 [require]
       73 GETTABLEKS                       R11 R9 K21 ["SetScreen"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R12 R9 K22 ["ClosePlugin"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R13 K24 [settings]
       83 CALL                             R13 0 1
       84 GETTABLEKS                       R12 R13 K25 ["Studio"]
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
