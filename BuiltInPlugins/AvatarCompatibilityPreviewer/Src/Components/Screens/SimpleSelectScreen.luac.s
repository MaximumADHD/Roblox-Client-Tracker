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
        1 GETTABLEKS                       R0 R0 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 NAMECALL                         R0 R0 K2 ["use"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
       11 GETTABLEKS                       R1 R1 K3 ["Stylizer"]
       13 LOADK                            R3 K4 ["SimpleSelectScreen"]
       14 NAMECALL                         R1 R1 K2 ["use"]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K5 ["Util"]
       20 GETTABLEKS                       R2 R2 K6 ["LayoutOrderIterator"]
       22 GETTABLEKS                       R2 R2 K7 ["new"]
       24 CALL                             R2 0 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K0 ["ContextServices"]
       28 GETTABLEKS                       R3 R3 K8 ["Plugin"]
       30 NAMECALL                         R3 R3 K2 ["use"]
       32 CALL                             R3 1 1
       33 NAMECALL                         R3 R3 K9 ["get"]
       35 CALL                             R3 1 1
       36 GETUPVAL                         R5 1
       37 CALL                             R5 0 1
       38 JUMPIFNOT                        R5 ; [+4]
       39 GETUPVAL                         R4 2
       40 LOADB                            R5 0
       41 CALL                             R4 1 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R4
       44 GETUPVAL                         R6 1
       45 CALL                             R6 0 1
       46 JUMPIFNOT                        R6 ; [+8]
       47 GETUPVAL                         R5 3
       48 NAMECALL                         R5 R5 K2 ["use"]
       50 CALL                             R5 1 1
       51 NAMECALL                         R5 R5 K9 ["get"]
       53 CALL                             R5 1 1
       54 JUMP                             ; [+1]
       55 LOADNIL                          R5
       56 GETUPVAL                         R7 1
       57 CALL                             R7 0 1
       58 JUMPIFNOT                        R7 ; [+13]
       59 GETUPVAL                         R6 4
       60 GETTABLEKS                       R6 R6 K10 ["useCallback"]
       62 NEWCLOSURE                       R7 P0
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          VAL R5
       65 NEWTABLE                         R8 0 1
       67 MOVE                             R9 R5
       68 SETLIST                          R8 R9 1 [1]
       70 CALL                             R6 2 1
       71 JUMP                             ; [+1]
       72 LOADNIL                          R6
       73 GETUPVAL                         R7 4
       74 GETTABLEKS                       R7 R7 K10 ["useCallback"]
       76 NEWCLOSURE                       R8 P1
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          VAL R3
       79 NEWTABLE                         R9 0 1
       81 MOVE                             R10 R3
       82 SETLIST                          R9 R10 1 [1]
       84 CALL                             R7 2 1
       85 GETUPVAL                         R9 1
       86 CALL                             R9 0 1
       87 JUMPIFNOT                        R9 ; [+3]
       88 GETTABLEKS                       R8 R4 K11 ["enable"]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R8
       92 GETUPVAL                         R9 4
       93 GETTABLEKS                       R9 R9 K12 ["createElement"]
       95 GETUPVAL                         R10 0
       96 GETTABLEKS                       R10 R10 K13 ["UI"]
       98 GETTABLEKS                       R10 R10 K14 ["Pane"]
      100 NEWTABLE                         R11 0 0
      102 DUPTABLE                         R12 K17 [{"Contents", "MarketplaceImportDialog"}]
      103 GETUPVAL                         R13 4
      104 GETTABLEKS                       R13 R13 K12 ["createElement"]
      106 GETUPVAL                         R14 0
      107 GETTABLEKS                       R14 R14 K13 ["UI"]
      109 GETTABLEKS                       R14 R14 K14 ["Pane"]
      111 DUPTABLE                         R15 K21 [{"Layout", "HorizontalAlignment", "VerticalAlignment"}]
      112 GETIMPORT                        R16 K25 [Enum.FillDirection.Vertical]
      114 SETTABLEKS                       R16 R15 K18 ["Layout"]
      116 GETIMPORT                        R16 K27 [Enum.HorizontalAlignment.Center]
      118 SETTABLEKS                       R16 R15 K19 ["HorizontalAlignment"]
      120 GETIMPORT                        R16 K28 [Enum.VerticalAlignment.Center]
      122 SETTABLEKS                       R16 R15 K20 ["VerticalAlignment"]
      124 DUPTABLE                         R16 K30 [{"Buttons"}]
      125 GETUPVAL                         R17 4
      126 GETTABLEKS                       R17 R17 K12 ["createElement"]
      128 GETUPVAL                         R18 0
      129 GETTABLEKS                       R18 R18 K13 ["UI"]
      131 GETTABLEKS                       R18 R18 K14 ["Pane"]
      133 DUPTABLE                         R19 K35 [{["AutomaticSize"], ["Layout"], ["Spacing"] = 20, ["HorizontalAlignment"], ["LayoutOrder"]}]
      134 GETIMPORT                        R20 K37 [Enum.AutomaticSize.XY]
      136 SETTABLEKS                       R20 R19 K31 ["AutomaticSize"]
      138 GETIMPORT                        R20 K25 [Enum.FillDirection.Vertical]
      140 SETTABLEKS                       R20 R19 K18 ["Layout"]
      142 GETIMPORT                        R20 K27 [Enum.HorizontalAlignment.Center]
      144 SETTABLEKS                       R20 R19 K19 ["HorizontalAlignment"]
      146 NAMECALL                         R20 R2 K38 ["getNextOrder"]
      148 CALL                             R20 1 1
      149 SETTABLEKS                       R20 R19 K34 ["LayoutOrder"]
      151 DUPTABLE                         R20 K44 [{"Image", "SelectTitle", "SplitLabel", "ButtonRow", "Import3D"}]
      152 GETUPVAL                         R21 4
      153 GETTABLEKS                       R21 R21 K12 ["createElement"]
      155 GETUPVAL                         R22 0
      156 GETTABLEKS                       R22 R22 K13 ["UI"]
      158 GETTABLEKS                       R22 R22 K39 ["Image"]
      160 DUPTABLE                         R23 K46 [{"LayoutOrder", "Image", "Size"}]
      161 NAMECALL                         R24 R2 K38 ["getNextOrder"]
      163 CALL                             R24 1 1
      164 SETTABLEKS                       R24 R23 K34 ["LayoutOrder"]
      166 GETTABLEKS                       R24 R1 K39 ["Image"]
      168 SETTABLEKS                       R24 R23 K39 ["Image"]
      170 GETIMPORT                        R24 K49 [UDim2.fromOffset]
      172 LOADN                            R25 320
      173 LOADN                            R26 180
      174 CALL                             R24 2 1
      175 SETTABLEKS                       R24 R23 K45 ["Size"]
      177 CALL                             R21 2 1
      178 SETTABLEKS                       R21 R20 K39 ["Image"]
      180 GETUPVAL                         R21 4
      181 GETTABLEKS                       R21 R21 K12 ["createElement"]
      183 GETUPVAL                         R22 0
      184 GETTABLEKS                       R22 R22 K13 ["UI"]
      186 GETTABLEKS                       R22 R22 K50 ["TextLabel"]
      188 DUPTABLE                         R23 K57 [{["AutomaticSize"], ["LayoutOrder"], ["TextWrapped"] = True, ["FontFace"], ["Text"], ["Style"] = "Title"}]
      189 GETIMPORT                        R24 K37 [Enum.AutomaticSize.XY]
      191 SETTABLEKS                       R24 R23 K31 ["AutomaticSize"]
      193 NAMECALL                         R24 R2 K38 ["getNextOrder"]
      195 CALL                             R24 1 1
      196 SETTABLEKS                       R24 R23 K34 ["LayoutOrder"]
      198 GETTABLEKS                       R24 R1 K53 ["FontFace"]
      200 SETTABLEKS                       R24 R23 K53 ["FontFace"]
      202 LOADK                            R26 K58 ["SelectScreen"]
      203 LOADK                            R27 K40 ["SelectTitle"]
      204 NAMECALL                         R24 R0 K59 ["getText"]
      206 CALL                             R24 3 1
      207 SETTABLEKS                       R24 R23 K54 ["Text"]
      209 CALL                             R21 2 1
      210 SETTABLEKS                       R21 R20 K40 ["SelectTitle"]
      212 GETUPVAL                         R21 4
      213 GETTABLEKS                       R21 R21 K12 ["createElement"]
      215 GETUPVAL                         R22 0
      216 GETTABLEKS                       R22 R22 K13 ["UI"]
      218 GETTABLEKS                       R22 R22 K14 ["Pane"]
      220 DUPTABLE                         R23 K60 [{"Layout", "HorizontalAlignment", "Spacing", "LayoutOrder", "AutomaticSize"}]
      221 GETIMPORT                        R24 K25 [Enum.FillDirection.Vertical]
      223 SETTABLEKS                       R24 R23 K18 ["Layout"]
      225 GETIMPORT                        R24 K27 [Enum.HorizontalAlignment.Center]
      227 SETTABLEKS                       R24 R23 K19 ["HorizontalAlignment"]
      229 GETTABLEKS                       R24 R1 K32 ["Spacing"]
      231 SETTABLEKS                       R24 R23 K32 ["Spacing"]
      233 NAMECALL                         R24 R2 K38 ["getNextOrder"]
      235 CALL                             R24 1 1
      236 SETTABLEKS                       R24 R23 K34 ["LayoutOrder"]
      238 GETIMPORT                        R24 K37 [Enum.AutomaticSize.XY]
      240 SETTABLEKS                       R24 R23 K31 ["AutomaticSize"]
      242 DUPTABLE                         R24 K63 [{"Description", "LearnMore"}]
      243 GETUPVAL                         R25 4
      244 GETTABLEKS                       R25 R25 K12 ["createElement"]
      246 GETUPVAL                         R26 0
      247 GETTABLEKS                       R26 R26 K13 ["UI"]
      249 GETTABLEKS                       R26 R26 K50 ["TextLabel"]
      251 DUPTABLE                         R27 K64 [{["AutomaticSize"], ["LayoutOrder"], ["Text"], ["TextWrapped"] = True}]
      252 GETIMPORT                        R28 K37 [Enum.AutomaticSize.XY]
      254 SETTABLEKS                       R28 R27 K31 ["AutomaticSize"]
      256 NAMECALL                         R28 R2 K38 ["getNextOrder"]
      258 CALL                             R28 1 1
      259 SETTABLEKS                       R28 R27 K34 ["LayoutOrder"]
      261 LOADK                            R30 K58 ["SelectScreen"]
      262 LOADK                            R31 K65 ["SelectDescription"]
      263 NAMECALL                         R28 R0 K59 ["getText"]
      265 CALL                             R28 3 1
      266 SETTABLEKS                       R28 R27 K54 ["Text"]
      268 CALL                             R25 2 1
      269 SETTABLEKS                       R25 R24 K61 ["Description"]
      271 GETUPVAL                         R25 4
      272 GETTABLEKS                       R25 R25 K12 ["createElement"]
      274 GETUPVAL                         R26 0
      275 GETTABLEKS                       R26 R26 K13 ["UI"]
      277 GETTABLEKS                       R26 R26 K66 ["LinkText"]
      279 DUPTABLE                         R27 K68 [{["AutomaticSize"], ["LayoutOrder"], ["OnClick"], ["Text"], ["TextWrapped"] = True}]
      280 GETIMPORT                        R28 K37 [Enum.AutomaticSize.XY]
      282 SETTABLEKS                       R28 R27 K31 ["AutomaticSize"]
      284 NAMECALL                         R28 R2 K38 ["getNextOrder"]
      286 CALL                             R28 1 1
      287 SETTABLEKS                       R28 R27 K34 ["LayoutOrder"]
      289 DUPCLOSURE                       R28 K69 [PROTO_3]
      290 CAPTURE                          UPVAL U6
      291 CAPTURE                          UPVAL U7
      292 SETTABLEKS                       R28 R27 K67 ["OnClick"]
      294 LOADK                            R30 K58 ["SelectScreen"]
      295 LOADK                            R31 K62 ["LearnMore"]
      296 NAMECALL                         R28 R0 K59 ["getText"]
      298 CALL                             R28 3 1
      299 SETTABLEKS                       R28 R27 K54 ["Text"]
      301 CALL                             R25 2 1
      302 SETTABLEKS                       R25 R24 K62 ["LearnMore"]
      304 CALL                             R21 3 1
      305 SETTABLEKS                       R21 R20 K41 ["SplitLabel"]
      307 GETUPVAL                         R22 1
      308 CALL                             R22 0 1
      309 JUMPIFNOT                        R22 ; [+95]
      310 GETUPVAL                         R21 4
      311 GETTABLEKS                       R21 R21 K12 ["createElement"]
      313 GETUPVAL                         R22 0
      314 GETTABLEKS                       R22 R22 K13 ["UI"]
      316 GETTABLEKS                       R22 R22 K14 ["Pane"]
      318 DUPTABLE                         R23 K71 [{["AutomaticSize"], ["Layout"], ["Spacing"] = 12, ["HorizontalAlignment"], ["LayoutOrder"]}]
      319 GETIMPORT                        R24 K37 [Enum.AutomaticSize.XY]
      321 SETTABLEKS                       R24 R23 K31 ["AutomaticSize"]
      323 GETIMPORT                        R24 K73 [Enum.FillDirection.Horizontal]
      325 SETTABLEKS                       R24 R23 K18 ["Layout"]
      327 GETIMPORT                        R24 K27 [Enum.HorizontalAlignment.Center]
      329 SETTABLEKS                       R24 R23 K19 ["HorizontalAlignment"]
      331 NAMECALL                         R24 R2 K38 ["getNextOrder"]
      333 CALL                             R24 1 1
      334 SETTABLEKS                       R24 R23 K34 ["LayoutOrder"]
      336 DUPTABLE                         R24 K75 [{"Import3D", "AddAssetId"}]
      337 GETUPVAL                         R25 4
      338 GETTABLEKS                       R25 R25 K12 ["createElement"]
      340 GETUPVAL                         R26 0
      341 GETTABLEKS                       R26 R26 K13 ["UI"]
      343 GETTABLEKS                       R26 R26 K76 ["IconButton"]
      345 DUPTABLE                         R27 K81 [{["AutomaticSize"], ["LayoutOrder"], ["Cursor"] = "PointingHand", ["OnClick"], ["Padding"], ["Text"], ["Style"] = "Primary"}]
      346 GETIMPORT                        R28 K37 [Enum.AutomaticSize.XY]
      348 SETTABLEKS                       R28 R27 K31 ["AutomaticSize"]
      350 NAMECALL                         R28 R2 K38 ["getNextOrder"]
      352 CALL                             R28 1 1
      353 SETTABLEKS                       R28 R27 K34 ["LayoutOrder"]
      355 SETTABLEKS                       R7 R27 K67 ["OnClick"]
      357 DUPTABLE                         R28 K87 [{["Left"] = 12, ["Right"] = 12, ["Top"] = 6, ["Bottom"] = 6}]
      358 SETTABLEKS                       R28 R27 K79 ["Padding"]
      360 LOADK                            R30 K58 ["SelectScreen"]
      361 LOADK                            R31 K88 ["Import3DEllipsis"]
      362 NAMECALL                         R28 R0 K59 ["getText"]
      364 CALL                             R28 3 1
      365 SETTABLEKS                       R28 R27 K54 ["Text"]
      367 CALL                             R25 2 1
      368 SETTABLEKS                       R25 R24 K43 ["Import3D"]
      370 GETUPVAL                         R25 4
      371 GETTABLEKS                       R25 R25 K12 ["createElement"]
      373 GETUPVAL                         R26 0
      374 GETTABLEKS                       R26 R26 K13 ["UI"]
      376 GETTABLEKS                       R26 R26 K76 ["IconButton"]
      378 DUPTABLE                         R27 K81 [{["AutomaticSize"], ["LayoutOrder"], ["Cursor"] = "PointingHand", ["OnClick"], ["Padding"], ["Text"], ["Style"] = "Primary"}]
      379 GETIMPORT                        R28 K37 [Enum.AutomaticSize.XY]
      381 SETTABLEKS                       R28 R27 K31 ["AutomaticSize"]
      383 NAMECALL                         R28 R2 K38 ["getNextOrder"]
      385 CALL                             R28 1 1
      386 SETTABLEKS                       R28 R27 K34 ["LayoutOrder"]
      388 SETTABLEKS                       R8 R27 K67 ["OnClick"]
      390 DUPTABLE                         R28 K87 [{["Left"] = 12, ["Right"] = 12, ["Top"] = 6, ["Bottom"] = 6}]
      391 SETTABLEKS                       R28 R27 K79 ["Padding"]
      393 LOADK                            R30 K58 ["SelectScreen"]
      394 LOADK                            R31 K89 ["AddAssetID"]
      395 NAMECALL                         R28 R0 K59 ["getText"]
      397 CALL                             R28 3 1
      398 SETTABLEKS                       R28 R27 K54 ["Text"]
      400 CALL                             R25 2 1
      401 SETTABLEKS                       R25 R24 K74 ["AddAssetId"]
      403 CALL                             R21 3 1
      404 JUMP                             ; [+1]
      405 LOADNIL                          R21
      406 SETTABLEKS                       R21 R20 K42 ["ButtonRow"]
      408 GETUPVAL                         R22 1
      409 CALL                             R22 0 1
      410 JUMPIF                           R22 ; [+32]
      411 GETUPVAL                         R21 4
      412 GETTABLEKS                       R21 R21 K12 ["createElement"]
      414 GETUPVAL                         R22 0
      415 GETTABLEKS                       R22 R22 K13 ["UI"]
      417 GETTABLEKS                       R22 R22 K76 ["IconButton"]
      419 DUPTABLE                         R23 K81 [{["AutomaticSize"], ["LayoutOrder"], ["Cursor"] = "PointingHand", ["OnClick"], ["Padding"], ["Text"], ["Style"] = "Primary"}]
      420 GETIMPORT                        R24 K37 [Enum.AutomaticSize.XY]
      422 SETTABLEKS                       R24 R23 K31 ["AutomaticSize"]
      424 NAMECALL                         R24 R2 K38 ["getNextOrder"]
      426 CALL                             R24 1 1
      427 SETTABLEKS                       R24 R23 K34 ["LayoutOrder"]
      429 SETTABLEKS                       R7 R23 K67 ["OnClick"]
      431 DUPTABLE                         R24 K87 [{["Left"] = 12, ["Right"] = 12, ["Top"] = 6, ["Bottom"] = 6}]
      432 SETTABLEKS                       R24 R23 K79 ["Padding"]
      434 LOADK                            R26 K58 ["SelectScreen"]
      435 LOADK                            R27 K88 ["Import3DEllipsis"]
      436 NAMECALL                         R24 R0 K59 ["getText"]
      438 CALL                             R24 3 1
      439 SETTABLEKS                       R24 R23 K54 ["Text"]
      441 CALL                             R21 2 1
      442 JUMP                             ; [+1]
      443 LOADNIL                          R21
      444 SETTABLEKS                       R21 R20 K43 ["Import3D"]
      446 CALL                             R17 3 1
      447 SETTABLEKS                       R17 R16 K29 ["Buttons"]
      449 CALL                             R13 3 1
      450 SETTABLEKS                       R13 R12 K15 ["Contents"]
      452 GETUPVAL                         R14 1
      453 CALL                             R14 0 1
      454 JUMPIFNOT                        R14 ; [+16]
      455 GETTABLEKS                       R14 R4 K90 ["enabled"]
      457 JUMPIFNOT                        R14 ; [+13]
      458 GETUPVAL                         R13 4
      459 GETTABLEKS                       R13 R13 K12 ["createElement"]
      461 GETUPVAL                         R14 8
      462 DUPTABLE                         R15 K93 [{"onClose", "onAddItems"}]
      463 GETTABLEKS                       R16 R4 K94 ["disable"]
      465 SETTABLEKS                       R16 R15 K91 ["onClose"]
      467 SETTABLEKS                       R6 R15 K92 ["onAddItems"]
      469 CALL                             R13 2 1
      470 JUMP                             ; [+1]
      471 LOADNIL                          R13
      472 SETTABLEKS                       R13 R12 K16 ["MarketplaceImportDialog"]
      474 CALL                             R9 3 -1
      475 RETURN                           R9 -1

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
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Resources"]
       33 GETTABLEKS                       R5 R5 K15 ["Theme"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K13 ["Src"]
       40 GETTABLEKS                       R6 R6 K16 ["Components"]
       42 GETTABLEKS                       R6 R6 K17 ["MarketplaceImportDialog"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K13 ["Src"]
       49 GETTABLEKS                       R7 R7 K18 ["Util"]
       51 GETTABLEKS                       R7 R7 K19 ["SelectionWrapper"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R1 K13 ["Src"]
       58 GETTABLEKS                       R8 R8 K18 ["Util"]
       60 GETTABLEKS                       R8 R8 K20 ["insertDefaultBodyWithMarketplaceItems"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R1 K13 ["Src"]
       67 GETTABLEKS                       R9 R9 K21 ["Hooks"]
       69 GETTABLEKS                       R9 R9 K22 ["useToggleState"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R10 R1 K13 ["Src"]
       76 GETTABLEKS                       R10 R10 K23 ["Flags"]
       78 GETTABLEKS                       R10 R10 K24 ["getFFlagAvatarPreviewerStartFromAssetId"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K1 [game]
       83 LOADK                            R12 K25 ["AvatarAutoSetupLearnMoreLink"]
       84 LOADK                            R13 K26 ["https://create.roblox.com/docs/avatar-setup"]
       85 NAMECALL                         R10 R10 K27 ["DefineFastString"]
       87 CALL                             R10 3 1
       88 DUPCLOSURE                       R11 K28 [PROTO_4]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R5
       98 RETURN                           R11 1
