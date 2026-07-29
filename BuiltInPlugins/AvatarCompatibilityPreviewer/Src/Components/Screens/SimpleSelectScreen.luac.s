PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Util"]
        3 GETTABLEKS                       R0 R0 K1 ["StudioUri"]
        5 GETTABLEKS                       R0 R0 K2 ["fromAction"]
        7 LOADK                            R1 K3 ["MeshImporter"]
        8 LOADK                            R2 K4 ["Toggle"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 1
       11 LOADK                            R3 K5 ["Actions"]
       12 NAMECALL                         R1 R1 K6 ["GetPluginComponent"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K9 [task.spawn]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["ContextServices"]
       11 GETTABLEKS                       R2 R2 K3 ["Stylizer"]
       13 LOADK                            R4 K4 ["SimpleSelectScreen"]
       14 NAMECALL                         R2 R2 K2 ["use"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K5 ["createNextOrder"]
       20 CALL                             R3 0 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["ContextServices"]
       24 GETTABLEKS                       R4 R4 K6 ["Plugin"]
       26 NAMECALL                         R4 R4 K2 ["use"]
       28 CALL                             R4 1 1
       29 NAMECALL                         R4 R4 K7 ["get"]
       31 CALL                             R4 1 1
       32 GETUPVAL                         R5 2
       33 CALL                             R5 0 1
       34 GETUPVAL                         R7 3
       35 CALL                             R7 0 1
       36 JUMPIFNOT                        R7 ; [+4]
       37 GETUPVAL                         R6 4
       38 LOADB                            R7 0
       39 CALL                             R6 1 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R6
       42 GETUPVAL                         R8 3
       43 CALL                             R8 0 1
       44 JUMPIFNOT                        R8 ; [+8]
       45 GETUPVAL                         R7 5
       46 NAMECALL                         R7 R7 K2 ["use"]
       48 CALL                             R7 1 1
       49 NAMECALL                         R7 R7 K7 ["get"]
       51 CALL                             R7 1 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R7
       54 GETUPVAL                         R9 3
       55 CALL                             R9 0 1
       56 JUMPIFNOT                        R9 ; [+13]
       57 GETUPVAL                         R8 6
       58 GETTABLEKS                       R8 R8 K8 ["useCallback"]
       60 NEWCLOSURE                       R9 P0
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          VAL R7
       63 NEWTABLE                         R10 0 1
       65 MOVE                             R11 R7
       66 SETLIST                          R10 R11 1 [1]
       68 CALL                             R8 2 1
       69 JUMP                             ; [+1]
       70 LOADNIL                          R8
       71 GETUPVAL                         R9 6
       72 GETTABLEKS                       R9 R9 K8 ["useCallback"]
       74 NEWCLOSURE                       R10 P1
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          VAL R4
       77 NEWTABLE                         R11 0 1
       79 MOVE                             R12 R4
       80 SETLIST                          R11 R12 1 [1]
       82 CALL                             R9 2 1
       83 GETUPVAL                         R11 3
       84 CALL                             R11 0 1
       85 JUMPIFNOT                        R11 ; [+3]
       86 GETTABLEKS                       R10 R6 K9 ["enable"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R10
       90 GETUPVAL                         R11 8
       91 CALL                             R11 0 1
       92 JUMPIFNOT                        R11 ; [+287]
       93 GETUPVAL                         R11 6
       94 GETTABLEKS                       R11 R11 K10 ["createElement"]
       96 GETUPVAL                         R12 9
       97 DUPTABLE                         R13 K13 [{["tag"] = "size-full"}]
       98 DUPTABLE                         R14 K16 [{"Contents", "MarketplaceImportDialog"}]
       99 GETUPVAL                         R15 6
      100 GETTABLEKS                       R15 R15 K10 ["createElement"]
      102 GETUPVAL                         R16 9
      103 DUPTABLE                         R17 K18 [{["tag"] = "col align-x-center align-y-center size-full"}]
      104 DUPTABLE                         R18 K20 [{"Buttons"}]
      105 GETUPVAL                         R19 6
      106 GETTABLEKS                       R19 R19 K10 ["createElement"]
      108 GETUPVAL                         R20 9
      109 DUPTABLE                         R21 K23 [{["tag"] = "col align-x-center gap-xlarge size-full-0 auto-y", ["LayoutOrder"]}]
      110 MOVE                             R22 R3
      111 CALL                             R22 0 1
      112 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      114 DUPTABLE                         R22 K28 [{"Image", "SelectTitle", "Description", "ButtonRow"}]
      115 GETUPVAL                         R23 6
      116 GETTABLEKS                       R23 R23 K10 ["createElement"]
      118 GETUPVAL                         R24 10
      119 DUPTABLE                         R25 K32 [{["LayoutOrder"], ["Image"] = "pictograms/avatar_setup", ["imageStyle"], ["Size"]}]
      120 MOVE                             R26 R3
      121 CALL                             R26 0 1
      122 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      124 GETTABLEKS                       R26 R5 K33 ["Color"]
      126 GETTABLEKS                       R26 R26 K34 ["Content"]
      128 GETTABLEKS                       R26 R26 K35 ["Emphasis"]
      130 SETTABLEKS                       R26 R25 K30 ["imageStyle"]
      132 GETIMPORT                        R26 K38 [UDim2.fromOffset]
      134 LOADN                            R27 320
      135 LOADN                            R28 320
      136 CALL                             R26 2 1
      137 SETTABLEKS                       R26 R25 K31 ["Size"]
      139 CALL                             R23 2 1
      140 SETTABLEKS                       R23 R22 K24 ["Image"]
      142 GETUPVAL                         R23 6
      143 GETTABLEKS                       R23 R23 K10 ["createElement"]
      145 GETUPVAL                         R24 11
      146 DUPTABLE                         R25 K46 [{["AutomaticSize"], ["LayoutOrder"], ["TextWrapped"] = True, ["FontFace"], ["Text"], ["Style"] = "Title"}]
      147 GETIMPORT                        R26 K49 [Enum.AutomaticSize.XY]
      149 SETTABLEKS                       R26 R25 K39 ["AutomaticSize"]
      151 MOVE                             R26 R3
      152 CALL                             R26 0 1
      153 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      155 GETTABLEKS                       R26 R2 K42 ["FontFace"]
      157 SETTABLEKS                       R26 R25 K42 ["FontFace"]
      159 LOADK                            R28 K50 ["SelectScreen"]
      160 LOADK                            R29 K51 ["AvatarCreationTitle"]
      161 NAMECALL                         R26 R1 K52 ["getText"]
      163 CALL                             R26 3 1
      164 SETTABLEKS                       R26 R25 K43 ["Text"]
      166 CALL                             R23 2 1
      167 SETTABLEKS                       R23 R22 K25 ["SelectTitle"]
      169 GETUPVAL                         R23 6
      170 GETTABLEKS                       R23 R23 K10 ["createElement"]
      172 GETUPVAL                         R24 12
      173 DUPTABLE                         R25 K56 [{"LayoutOrder", "Text", "TextProps", "HorizontalAlignment", "LinkMap"}]
      174 MOVE                             R26 R3
      175 CALL                             R26 0 1
      176 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      178 LOADK                            R28 K50 ["SelectScreen"]
      179 LOADK                            R29 K57 ["AvatarCreationDescription"]
      180 NAMECALL                         R26 R1 K52 ["getText"]
      182 CALL                             R26 3 1
      183 SETTABLEKS                       R26 R25 K43 ["Text"]
      185 DUPTABLE                         R26 K61 [{"Font", "TextSize", "TextXAlignment"}]
      186 GETIMPORT                        R27 K63 [Enum.Font.SourceSans]
      188 SETTABLEKS                       R27 R26 K58 ["Font"]
      190 GETTABLEKS                       R27 R2 K59 ["TextSize"]
      192 SETTABLEKS                       R27 R26 K59 ["TextSize"]
      194 GETIMPORT                        R27 K65 [Enum.TextXAlignment.Center]
      196 SETTABLEKS                       R27 R26 K60 ["TextXAlignment"]
      198 SETTABLEKS                       R26 R25 K53 ["TextProps"]
      200 GETIMPORT                        R26 K66 [Enum.HorizontalAlignment.Center]
      202 SETTABLEKS                       R26 R25 K54 ["HorizontalAlignment"]
      204 NEWTABLE                         R26 1 0
      206 DUPTABLE                         R27 K69 [{"LinkText", "LinkCallback"}]
      207 LOADK                            R30 K50 ["SelectScreen"]
      208 LOADK                            R31 K70 ["LearnMore"]
      209 NAMECALL                         R28 R1 K52 ["getText"]
      211 CALL                             R28 3 1
      212 SETTABLEKS                       R28 R27 K67 ["LinkText"]
      214 DUPCLOSURE                       R28 K71 [PROTO_3]
      215 CAPTURE                          UPVAL U13
      216 CAPTURE                          UPVAL U14
      217 SETTABLEKS                       R28 R27 K68 ["LinkCallback"]
      219 SETTABLEKS                       R27 R26 K72 ["[LearnMore]"]
      221 SETTABLEKS                       R26 R25 K55 ["LinkMap"]
      223 CALL                             R23 2 1
      224 SETTABLEKS                       R23 R22 K26 ["Description"]
      226 GETUPVAL                         R23 6
      227 GETTABLEKS                       R23 R23 K10 ["createElement"]
      229 GETUPVAL                         R24 9
      230 DUPTABLE                         R25 K74 [{["LayoutOrder"], ["tag"] = "row wrap align-x-center gap-small size-full-0 auto-y"}]
      231 MOVE                             R26 R3
      232 CALL                             R26 0 1
      233 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      235 DUPTABLE                         R26 K78 [{"Import3D", "AddAssetId", "GenerateWithAI"}]
      236 GETUPVAL                         R27 6
      237 GETTABLEKS                       R27 R27 K10 ["createElement"]
      239 GETUPVAL                         R28 15
      240 DUPTABLE                         R29 K83 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
      241 MOVE                             R30 R3
      242 CALL                             R30 0 1
      243 SETTABLEKS                       R30 R29 K22 ["LayoutOrder"]
      245 LOADK                            R32 K50 ["SelectScreen"]
      246 LOADK                            R33 K84 ["Import"]
      247 NAMECALL                         R30 R1 K52 ["getText"]
      249 CALL                             R30 3 1
      250 SETTABLEKS                       R30 R29 K79 ["text"]
      252 GETUPVAL                         R30 16
      253 GETTABLEKS                       R30 R30 K85 ["Standard"]
      255 SETTABLEKS                       R30 R29 K80 ["variant"]
      257 GETUPVAL                         R30 17
      258 GETTABLEKS                       R30 R30 K86 ["Medium"]
      260 SETTABLEKS                       R30 R29 K81 ["size"]
      262 SETTABLEKS                       R9 R29 K82 ["onActivated"]
      264 CALL                             R27 2 1
      265 SETTABLEKS                       R27 R26 K75 ["Import3D"]
      267 GETUPVAL                         R28 3
      268 CALL                             R28 0 1
      269 JUMPIFNOT                        R28 ; [+30]
      270 GETUPVAL                         R27 6
      271 GETTABLEKS                       R27 R27 K10 ["createElement"]
      273 GETUPVAL                         R28 15
      274 DUPTABLE                         R29 K83 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
      275 MOVE                             R30 R3
      276 CALL                             R30 0 1
      277 SETTABLEKS                       R30 R29 K22 ["LayoutOrder"]
      279 LOADK                            R32 K50 ["SelectScreen"]
      280 LOADK                            R33 K87 ["AddAssetID"]
      281 NAMECALL                         R30 R1 K52 ["getText"]
      283 CALL                             R30 3 1
      284 SETTABLEKS                       R30 R29 K79 ["text"]
      286 GETUPVAL                         R30 16
      287 GETTABLEKS                       R30 R30 K85 ["Standard"]
      289 SETTABLEKS                       R30 R29 K80 ["variant"]
      291 GETUPVAL                         R30 17
      292 GETTABLEKS                       R30 R30 K86 ["Medium"]
      294 SETTABLEKS                       R30 R29 K81 ["size"]
      296 SETTABLEKS                       R10 R29 K82 ["onActivated"]
      298 CALL                             R27 2 1
      299 JUMP                             ; [+1]
      300 LOADNIL                          R27
      301 SETTABLEKS                       R27 R26 K76 ["AddAssetId"]
      303 GETTABLEKS                       R28 R0 K88 ["onOpenAvatarCreation"]
      305 JUMPIFEQKNIL                     R28 ; [+38]
      307 GETUPVAL                         R27 6
      308 GETTABLEKS                       R27 R27 K10 ["createElement"]
      310 GETUPVAL                         R28 15
      311 DUPTABLE                         R29 K92 [{["LayoutOrder"], ["text"], ["icon"], ["variant"], ["size"], ["onActivated"], ["testId"] = "avatar-creation-generate"}]
      312 MOVE                             R30 R3
      313 CALL                             R30 0 1
      314 SETTABLEKS                       R30 R29 K22 ["LayoutOrder"]
      316 LOADK                            R32 K50 ["SelectScreen"]
      317 LOADK                            R33 K93 ["GenerateAvatarButton"]
      318 NAMECALL                         R30 R1 K52 ["getText"]
      320 CALL                             R30 3 1
      321 SETTABLEKS                       R30 R29 K79 ["text"]
      323 GETUPVAL                         R30 18
      324 GETTABLEKS                       R30 R30 K94 ["Nebula"]
      326 SETTABLEKS                       R30 R29 K89 ["icon"]
      328 GETUPVAL                         R30 16
      329 GETTABLEKS                       R30 R30 K85 ["Standard"]
      331 SETTABLEKS                       R30 R29 K80 ["variant"]
      333 GETUPVAL                         R30 17
      334 GETTABLEKS                       R30 R30 K86 ["Medium"]
      336 SETTABLEKS                       R30 R29 K81 ["size"]
      338 GETTABLEKS                       R30 R0 K88 ["onOpenAvatarCreation"]
      340 SETTABLEKS                       R30 R29 K82 ["onActivated"]
      342 CALL                             R27 2 1
      343 JUMP                             ; [+1]
      344 LOADNIL                          R27
      345 SETTABLEKS                       R27 R26 K77 ["GenerateWithAI"]
      347 CALL                             R23 3 1
      348 SETTABLEKS                       R23 R22 K27 ["ButtonRow"]
      350 CALL                             R19 3 1
      351 SETTABLEKS                       R19 R18 K19 ["Buttons"]
      353 CALL                             R15 3 1
      354 SETTABLEKS                       R15 R14 K14 ["Contents"]
      356 GETUPVAL                         R16 3
      357 CALL                             R16 0 1
      358 JUMPIFNOT                        R16 ; [+16]
      359 GETTABLEKS                       R16 R6 K95 ["enabled"]
      361 JUMPIFNOT                        R16 ; [+13]
      362 GETUPVAL                         R15 6
      363 GETTABLEKS                       R15 R15 K10 ["createElement"]
      365 GETUPVAL                         R16 19
      366 DUPTABLE                         R17 K98 [{"onClose", "onAddItems"}]
      367 GETTABLEKS                       R18 R6 K99 ["disable"]
      369 SETTABLEKS                       R18 R17 K96 ["onClose"]
      371 SETTABLEKS                       R8 R17 K97 ["onAddItems"]
      373 CALL                             R15 2 1
      374 JUMP                             ; [+1]
      375 LOADNIL                          R15
      376 SETTABLEKS                       R15 R14 K15 ["MarketplaceImportDialog"]
      378 CALL                             R11 3 -1
      379 RETURN                           R11 -1
      380 GETUPVAL                         R11 20
      381 GETTABLEKS                       R11 R11 K100 ["new"]
      383 CALL                             R11 0 1
      384 GETUPVAL                         R12 6
      385 GETTABLEKS                       R12 R12 K10 ["createElement"]
      387 GETUPVAL                         R13 21
      388 NEWTABLE                         R14 0 0
      390 DUPTABLE                         R15 K16 [{"Contents", "MarketplaceImportDialog"}]
      391 GETUPVAL                         R16 6
      392 GETTABLEKS                       R16 R16 K10 ["createElement"]
      394 GETUPVAL                         R17 21
      395 DUPTABLE                         R18 K103 [{"Layout", "HorizontalAlignment", "VerticalAlignment"}]
      396 GETIMPORT                        R19 K106 [Enum.FillDirection.Vertical]
      398 SETTABLEKS                       R19 R18 K101 ["Layout"]
      400 GETIMPORT                        R19 K66 [Enum.HorizontalAlignment.Center]
      402 SETTABLEKS                       R19 R18 K54 ["HorizontalAlignment"]
      404 GETIMPORT                        R19 K107 [Enum.VerticalAlignment.Center]
      406 SETTABLEKS                       R19 R18 K102 ["VerticalAlignment"]
      408 DUPTABLE                         R19 K20 [{"Buttons"}]
      409 GETUPVAL                         R20 6
      410 GETTABLEKS                       R20 R20 K10 ["createElement"]
      412 GETUPVAL                         R21 21
      413 DUPTABLE                         R22 K110 [{["AutomaticSize"], ["Layout"], ["Spacing"] = 20, ["HorizontalAlignment"], ["LayoutOrder"]}]
      414 GETIMPORT                        R23 K49 [Enum.AutomaticSize.XY]
      416 SETTABLEKS                       R23 R22 K39 ["AutomaticSize"]
      418 GETIMPORT                        R23 K106 [Enum.FillDirection.Vertical]
      420 SETTABLEKS                       R23 R22 K101 ["Layout"]
      422 GETIMPORT                        R23 K66 [Enum.HorizontalAlignment.Center]
      424 SETTABLEKS                       R23 R22 K54 ["HorizontalAlignment"]
      426 NAMECALL                         R23 R11 K111 ["getNextOrder"]
      428 CALL                             R23 1 1
      429 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      431 DUPTABLE                         R23 K113 [{"Image", "SelectTitle", "SplitLabel", "ButtonRow", "Import3D"}]
      432 GETUPVAL                         R24 6
      433 GETTABLEKS                       R24 R24 K10 ["createElement"]
      435 GETUPVAL                         R25 22
      436 GETTABLEKS                       R25 R25 K24 ["Image"]
      438 DUPTABLE                         R26 K114 [{"LayoutOrder", "Image", "Size"}]
      439 NAMECALL                         R27 R11 K111 ["getNextOrder"]
      441 CALL                             R27 1 1
      442 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      444 GETTABLEKS                       R27 R2 K24 ["Image"]
      446 SETTABLEKS                       R27 R26 K24 ["Image"]
      448 GETIMPORT                        R27 K38 [UDim2.fromOffset]
      450 LOADN                            R28 320
      451 LOADN                            R29 180
      452 CALL                             R27 2 1
      453 SETTABLEKS                       R27 R26 K31 ["Size"]
      455 CALL                             R24 2 1
      456 SETTABLEKS                       R24 R23 K24 ["Image"]
      458 GETUPVAL                         R24 6
      459 GETTABLEKS                       R24 R24 K10 ["createElement"]
      461 GETUPVAL                         R25 11
      462 DUPTABLE                         R26 K46 [{["AutomaticSize"], ["LayoutOrder"], ["TextWrapped"] = True, ["FontFace"], ["Text"], ["Style"] = "Title"}]
      463 GETIMPORT                        R27 K49 [Enum.AutomaticSize.XY]
      465 SETTABLEKS                       R27 R26 K39 ["AutomaticSize"]
      467 NAMECALL                         R27 R11 K111 ["getNextOrder"]
      469 CALL                             R27 1 1
      470 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      472 GETTABLEKS                       R27 R2 K42 ["FontFace"]
      474 SETTABLEKS                       R27 R26 K42 ["FontFace"]
      476 LOADK                            R29 K50 ["SelectScreen"]
      477 LOADK                            R30 K25 ["SelectTitle"]
      478 NAMECALL                         R27 R1 K52 ["getText"]
      480 CALL                             R27 3 1
      481 SETTABLEKS                       R27 R26 K43 ["Text"]
      483 CALL                             R24 2 1
      484 SETTABLEKS                       R24 R23 K25 ["SelectTitle"]
      486 GETUPVAL                         R24 6
      487 GETTABLEKS                       R24 R24 K10 ["createElement"]
      489 GETUPVAL                         R25 21
      490 DUPTABLE                         R26 K115 [{"Layout", "HorizontalAlignment", "Spacing", "LayoutOrder", "AutomaticSize"}]
      491 GETIMPORT                        R27 K106 [Enum.FillDirection.Vertical]
      493 SETTABLEKS                       R27 R26 K101 ["Layout"]
      495 GETIMPORT                        R27 K66 [Enum.HorizontalAlignment.Center]
      497 SETTABLEKS                       R27 R26 K54 ["HorizontalAlignment"]
      499 GETTABLEKS                       R27 R2 K108 ["Spacing"]
      501 SETTABLEKS                       R27 R26 K108 ["Spacing"]
      503 NAMECALL                         R27 R11 K111 ["getNextOrder"]
      505 CALL                             R27 1 1
      506 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      508 GETIMPORT                        R27 K49 [Enum.AutomaticSize.XY]
      510 SETTABLEKS                       R27 R26 K39 ["AutomaticSize"]
      512 DUPTABLE                         R27 K116 [{"Description", "LearnMore"}]
      513 GETUPVAL                         R28 6
      514 GETTABLEKS                       R28 R28 K10 ["createElement"]
      516 GETUPVAL                         R29 11
      517 DUPTABLE                         R30 K117 [{["AutomaticSize"], ["LayoutOrder"], ["Text"], ["TextWrapped"] = True}]
      518 GETIMPORT                        R31 K49 [Enum.AutomaticSize.XY]
      520 SETTABLEKS                       R31 R30 K39 ["AutomaticSize"]
      522 NAMECALL                         R31 R11 K111 ["getNextOrder"]
      524 CALL                             R31 1 1
      525 SETTABLEKS                       R31 R30 K22 ["LayoutOrder"]
      527 LOADK                            R33 K50 ["SelectScreen"]
      528 LOADK                            R34 K118 ["SelectDescription"]
      529 NAMECALL                         R31 R1 K52 ["getText"]
      531 CALL                             R31 3 1
      532 SETTABLEKS                       R31 R30 K43 ["Text"]
      534 CALL                             R28 2 1
      535 SETTABLEKS                       R28 R27 K26 ["Description"]
      537 GETUPVAL                         R28 6
      538 GETTABLEKS                       R28 R28 K10 ["createElement"]
      540 GETUPVAL                         R29 23
      541 DUPTABLE                         R30 K120 [{["AutomaticSize"], ["LayoutOrder"], ["OnClick"], ["Text"], ["TextWrapped"] = True}]
      542 GETIMPORT                        R31 K49 [Enum.AutomaticSize.XY]
      544 SETTABLEKS                       R31 R30 K39 ["AutomaticSize"]
      546 NAMECALL                         R31 R11 K111 ["getNextOrder"]
      548 CALL                             R31 1 1
      549 SETTABLEKS                       R31 R30 K22 ["LayoutOrder"]
      551 DUPCLOSURE                       R31 K121 [PROTO_4]
      552 CAPTURE                          UPVAL U13
      553 CAPTURE                          UPVAL U14
      554 SETTABLEKS                       R31 R30 K119 ["OnClick"]
      556 LOADK                            R33 K50 ["SelectScreen"]
      557 LOADK                            R34 K70 ["LearnMore"]
      558 NAMECALL                         R31 R1 K52 ["getText"]
      560 CALL                             R31 3 1
      561 SETTABLEKS                       R31 R30 K43 ["Text"]
      563 CALL                             R28 2 1
      564 SETTABLEKS                       R28 R27 K70 ["LearnMore"]
      566 CALL                             R24 3 1
      567 SETTABLEKS                       R24 R23 K112 ["SplitLabel"]
      569 GETUPVAL                         R25 3
      570 CALL                             R25 0 1
      571 JUMPIFNOT                        R25 ; [+83]
      572 GETUPVAL                         R24 6
      573 GETTABLEKS                       R24 R24 K10 ["createElement"]
      575 GETUPVAL                         R25 21
      576 DUPTABLE                         R26 K123 [{["AutomaticSize"], ["Layout"], ["Spacing"] = 12, ["HorizontalAlignment"], ["LayoutOrder"]}]
      577 GETIMPORT                        R27 K49 [Enum.AutomaticSize.XY]
      579 SETTABLEKS                       R27 R26 K39 ["AutomaticSize"]
      581 GETIMPORT                        R27 K125 [Enum.FillDirection.Horizontal]
      583 SETTABLEKS                       R27 R26 K101 ["Layout"]
      585 GETIMPORT                        R27 K66 [Enum.HorizontalAlignment.Center]
      587 SETTABLEKS                       R27 R26 K54 ["HorizontalAlignment"]
      589 NAMECALL                         R27 R11 K111 ["getNextOrder"]
      591 CALL                             R27 1 1
      592 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      594 DUPTABLE                         R27 K126 [{"Import3D", "AddAssetId"}]
      595 GETUPVAL                         R28 6
      596 GETTABLEKS                       R28 R28 K10 ["createElement"]
      598 GETUPVAL                         R29 24
      599 DUPTABLE                         R30 K131 [{["AutomaticSize"], ["LayoutOrder"], ["Cursor"] = "PointingHand", ["OnClick"], ["Padding"], ["Text"], ["Style"] = "Primary"}]
      600 GETIMPORT                        R31 K49 [Enum.AutomaticSize.XY]
      602 SETTABLEKS                       R31 R30 K39 ["AutomaticSize"]
      604 NAMECALL                         R31 R11 K111 ["getNextOrder"]
      606 CALL                             R31 1 1
      607 SETTABLEKS                       R31 R30 K22 ["LayoutOrder"]
      609 SETTABLEKS                       R9 R30 K119 ["OnClick"]
      611 DUPTABLE                         R31 K137 [{["Left"] = 12, ["Right"] = 12, ["Top"] = 6, ["Bottom"] = 6}]
      612 SETTABLEKS                       R31 R30 K129 ["Padding"]
      614 LOADK                            R33 K50 ["SelectScreen"]
      615 LOADK                            R34 K138 ["Import3DEllipsis"]
      616 NAMECALL                         R31 R1 K52 ["getText"]
      618 CALL                             R31 3 1
      619 SETTABLEKS                       R31 R30 K43 ["Text"]
      621 CALL                             R28 2 1
      622 SETTABLEKS                       R28 R27 K75 ["Import3D"]
      624 GETUPVAL                         R28 6
      625 GETTABLEKS                       R28 R28 K10 ["createElement"]
      627 GETUPVAL                         R29 24
      628 DUPTABLE                         R30 K131 [{["AutomaticSize"], ["LayoutOrder"], ["Cursor"] = "PointingHand", ["OnClick"], ["Padding"], ["Text"], ["Style"] = "Primary"}]
      629 GETIMPORT                        R31 K49 [Enum.AutomaticSize.XY]
      631 SETTABLEKS                       R31 R30 K39 ["AutomaticSize"]
      633 NAMECALL                         R31 R11 K111 ["getNextOrder"]
      635 CALL                             R31 1 1
      636 SETTABLEKS                       R31 R30 K22 ["LayoutOrder"]
      638 SETTABLEKS                       R10 R30 K119 ["OnClick"]
      640 DUPTABLE                         R31 K137 [{["Left"] = 12, ["Right"] = 12, ["Top"] = 6, ["Bottom"] = 6}]
      641 SETTABLEKS                       R31 R30 K129 ["Padding"]
      643 LOADK                            R33 K50 ["SelectScreen"]
      644 LOADK                            R34 K87 ["AddAssetID"]
      645 NAMECALL                         R31 R1 K52 ["getText"]
      647 CALL                             R31 3 1
      648 SETTABLEKS                       R31 R30 K43 ["Text"]
      650 CALL                             R28 2 1
      651 SETTABLEKS                       R28 R27 K76 ["AddAssetId"]
      653 CALL                             R24 3 1
      654 JUMP                             ; [+1]
      655 LOADNIL                          R24
      656 SETTABLEKS                       R24 R23 K27 ["ButtonRow"]
      658 GETUPVAL                         R25 3
      659 CALL                             R25 0 1
      660 JUMPIF                           R25 ; [+28]
      661 GETUPVAL                         R24 6
      662 GETTABLEKS                       R24 R24 K10 ["createElement"]
      664 GETUPVAL                         R25 24
      665 DUPTABLE                         R26 K131 [{["AutomaticSize"], ["LayoutOrder"], ["Cursor"] = "PointingHand", ["OnClick"], ["Padding"], ["Text"], ["Style"] = "Primary"}]
      666 GETIMPORT                        R27 K49 [Enum.AutomaticSize.XY]
      668 SETTABLEKS                       R27 R26 K39 ["AutomaticSize"]
      670 NAMECALL                         R27 R11 K111 ["getNextOrder"]
      672 CALL                             R27 1 1
      673 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      675 SETTABLEKS                       R9 R26 K119 ["OnClick"]
      677 DUPTABLE                         R27 K137 [{["Left"] = 12, ["Right"] = 12, ["Top"] = 6, ["Bottom"] = 6}]
      678 SETTABLEKS                       R27 R26 K129 ["Padding"]
      680 LOADK                            R29 K50 ["SelectScreen"]
      681 LOADK                            R30 K138 ["Import3DEllipsis"]
      682 NAMECALL                         R27 R1 K52 ["getText"]
      684 CALL                             R27 3 1
      685 SETTABLEKS                       R27 R26 K43 ["Text"]
      687 CALL                             R24 2 1
      688 JUMP                             ; [+1]
      689 LOADNIL                          R24
      690 SETTABLEKS                       R24 R23 K75 ["Import3D"]
      692 CALL                             R20 3 1
      693 SETTABLEKS                       R20 R19 K19 ["Buttons"]
      695 CALL                             R16 3 1
      696 SETTABLEKS                       R16 R15 K14 ["Contents"]
      698 GETUPVAL                         R17 3
      699 CALL                             R17 0 1
      700 JUMPIFNOT                        R17 ; [+16]
      701 GETTABLEKS                       R17 R6 K95 ["enabled"]
      703 JUMPIFNOT                        R17 ; [+13]
      704 GETUPVAL                         R16 6
      705 GETTABLEKS                       R16 R16 K10 ["createElement"]
      707 GETUPVAL                         R17 19
      708 DUPTABLE                         R18 K98 [{"onClose", "onAddItems"}]
      709 GETTABLEKS                       R19 R6 K99 ["disable"]
      711 SETTABLEKS                       R19 R18 K96 ["onClose"]
      713 SETTABLEKS                       R8 R18 K97 ["onAddItems"]
      715 CALL                             R16 2 1
      716 JUMP                             ; [+1]
      717 LOADNIL                          R16
      718 SETTABLEKS                       R16 R15 K15 ["MarketplaceImportDialog"]
      720 CALL                             R12 3 -1
      721 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["BrowserService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K10 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["ReactUtils"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R2 K15 ["Button"]
       43 GETTABLEKS                       R7 R2 K16 ["Image"]
       45 GETTABLEKS                       R8 R2 K17 ["View"]
       47 GETTABLEKS                       R9 R2 K18 ["Enums"]
       49 GETTABLEKS                       R9 R9 K19 ["ButtonVariant"]
       51 GETTABLEKS                       R10 R2 K18 ["Enums"]
       53 GETTABLEKS                       R10 R10 K20 ["IconName"]
       55 GETTABLEKS                       R11 R2 K18 ["Enums"]
       57 GETTABLEKS                       R11 R11 K21 ["InputSize"]
       59 GETTABLEKS                       R12 R2 K22 ["Hooks"]
       61 GETTABLEKS                       R12 R12 K23 ["useTokens"]
       63 GETTABLEKS                       R13 R3 K24 ["Util"]
       65 GETTABLEKS                       R13 R13 K25 ["LayoutOrderIterator"]
       67 GETTABLEKS                       R14 R3 K26 ["UI"]
       69 GETTABLEKS                       R15 R14 K27 ["IconButton"]
       71 GETTABLEKS                       R16 R14 K28 ["LinkText"]
       73 GETTABLEKS                       R17 R14 K29 ["Pane"]
       75 GETTABLEKS                       R18 R14 K30 ["TextLabel"]
       77 GETTABLEKS                       R19 R14 K31 ["TextWithLinks"]
       79 GETIMPORT                        R20 K9 [require]
       81 GETTABLEKS                       R21 R1 K32 ["Src"]
       83 GETTABLEKS                       R21 R21 K33 ["Resources"]
       85 GETTABLEKS                       R21 R21 K34 ["Theme"]
       87 CALL                             R20 1 1
       88 GETIMPORT                        R21 K9 [require]
       90 GETTABLEKS                       R22 R1 K32 ["Src"]
       92 GETTABLEKS                       R22 R22 K35 ["Components"]
       94 GETTABLEKS                       R22 R22 K36 ["MarketplaceImportDialog"]
       96 CALL                             R21 1 1
       97 GETIMPORT                        R22 K9 [require]
       99 GETTABLEKS                       R23 R1 K32 ["Src"]
      101 GETTABLEKS                       R23 R23 K24 ["Util"]
      103 GETTABLEKS                       R23 R23 K37 ["SelectionWrapper"]
      105 CALL                             R22 1 1
      106 GETIMPORT                        R23 K9 [require]
      108 GETTABLEKS                       R24 R1 K32 ["Src"]
      110 GETTABLEKS                       R24 R24 K24 ["Util"]
      112 GETTABLEKS                       R24 R24 K38 ["insertDefaultBodyWithMarketplaceItems"]
      114 CALL                             R23 1 1
      115 GETIMPORT                        R24 K9 [require]
      117 GETTABLEKS                       R25 R1 K32 ["Src"]
      119 GETTABLEKS                       R25 R25 K22 ["Hooks"]
      121 GETTABLEKS                       R25 R25 K39 ["useToggleState"]
      123 CALL                             R24 1 1
      124 GETIMPORT                        R25 K9 [require]
      126 GETTABLEKS                       R26 R1 K32 ["Src"]
      128 GETTABLEKS                       R26 R26 K40 ["Flags"]
      130 GETTABLEKS                       R26 R26 K41 ["getFFlagAvatarPreviewerAvatarCreation"]
      132 CALL                             R25 1 1
      133 GETIMPORT                        R26 K9 [require]
      135 GETTABLEKS                       R27 R1 K32 ["Src"]
      137 GETTABLEKS                       R27 R27 K40 ["Flags"]
      139 GETTABLEKS                       R27 R27 K42 ["getFFlagAvatarPreviewerStartFromAssetId"]
      141 CALL                             R26 1 1
      142 GETIMPORT                        R27 K1 [game]
      144 LOADK                            R29 K43 ["AvatarAutoSetupLearnMoreLink"]
      145 LOADK                            R30 K44 ["https://create.roblox.com/docs/avatar-setup"]
      146 NAMECALL                         R27 R27 K45 ["DefineFastString"]
      148 CALL                             R27 3 1
      149 DUPCLOSURE                       R28 K46 [PROTO_5]
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R26
      154 CAPTURE                          VAL R24
      155 CAPTURE                          VAL R22
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R23
      158 CAPTURE                          VAL R25
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R0
      164 CAPTURE                          VAL R27
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R21
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R17
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R15
      175 RETURN                           R28 1
