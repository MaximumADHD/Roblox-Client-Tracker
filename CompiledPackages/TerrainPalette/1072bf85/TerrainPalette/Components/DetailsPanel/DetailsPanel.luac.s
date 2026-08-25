PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getByBaseMaterial"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["entry"]
        6 GETTABLEKS                       R1 R1 K2 ["material"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K4 [{[1] = "__none__", ["text"] = "None"}]
        3 SETLIST                          R0 R1 1 [1]
        5 GETUPVAL                         R1 0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 DUPTABLE                         R8 K5 [{"id", "text"}]
       10 GETTABLEKS                       R9 R5 K6 ["Name"]
       12 SETTABLEKS                       R9 R8 K0 ["id"]
       14 GETTABLEKS                       R9 R5 K6 ["Name"]
       16 SETTABLEKS                       R9 R8 K2 ["text"]
       18 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       20 MOVE                             R7 R0
       21 GETIMPORT                        R6 K9 [table.insert]
       23 CALL                             R6 2 0
       24 FORGLOOP                         R1 2 ; [-16]
       26 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["entry"]
        5 CALL                             R1 1 1
        6 SETTABLEKS                       R0 R1 K4 ["name"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K5 ["onEntryChanged"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [tostring]
        5 CALL                             R3 1 1
        6 GETTABLE                         R1 R2 R3
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 RETURN                           R0 0
       10 GETIMPORT                        R2 K4 [table.clone]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K5 ["entry"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R1 R2 K6 ["material"]
       18 LOADNIL                          R3
       19 SETTABLEKS                       R3 R2 K7 ["variant"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K8 ["onEntryChanged"]
       24 MOVE                             R4 R2
       25 CALL                             R3 1 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K9 ["onEntryChangeCommitted"]
       29 CALL                             R3 0 0
       30 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["entry"]
        5 CALL                             R1 1 1
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R3 R0
        8 GETIMPORT                        R2 K5 [tostring]
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKS                    R2 K6 ["__none__"] ; [+14]
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K7 ["variant"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K8 ["onEntryChanged"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K9 ["onEntryChangeCommitted"]
       24 CALL                             R2 0 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R2 1
       27 LOADNIL                          R3
       28 LOADNIL                          R4
       29 FORGPREP                         R2
       30 GETTABLEKS                       R7 R6 K10 ["Name"]
       32 FASTCALL1                        TOSTRING R0 ; [+3]
       33 MOVE                             R9 R0
       34 GETIMPORT                        R8 K5 [tostring]
       36 CALL                             R8 1 1
       37 JUMPIFNOTEQ                      R7 R8 ; [+13]
       39 SETTABLEKS                       R6 R1 K7 ["variant"]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K8 ["onEntryChanged"]
       44 MOVE                             R8 R1
       45 CALL                             R7 1 0
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K9 ["onEntryChangeCommitted"]
       49 CALL                             R7 0 0
       50 RETURN                           R0 0
       51 FORGLOOP                         R2 2 ; [-22]
       53 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["entry"]
        5 CALL                             R1 1 1
        6 SETTABLEKS                       R0 R1 K4 ["color"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K5 ["onEntryChanged"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useState"]
        7 LOADN                            R4 300
        8 CALL                             R3 1 2
        9 LOADN                            R6 360
       10 JUMPIFLE                         R6 R3 ; [+2]
       12 LOADB                            R5 0 +1
       13 LOADB                            R5 1
       14 LOADB                            R6 1
       15 GETTABLEKS                       R7 R0 K1 ["entry"]
       17 GETTABLEKS                       R7 R7 K2 ["material"]
       19 GETIMPORT                        R8 K6 [Enum.Material.Air]
       21 JUMPIFEQ                         R7 R8 ; [+11]
       23 GETTABLEKS                       R7 R0 K1 ["entry"]
       25 GETTABLEKS                       R7 R7 K2 ["material"]
       27 GETIMPORT                        R8 K8 [Enum.Material.Water]
       29 JUMPIFEQ                         R7 R8 ; [+2]
       31 LOADB                            R6 0 +1
       32 LOADB                            R6 1
       33 GETTABLEKS                       R7 R0 K1 ["entry"]
       35 GETTABLEKS                       R7 R7 K9 ["color"]
       37 JUMPIF                           R7 ; [+8]
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R7 R7 K10 ["getColor"]
       41 GETTABLEKS                       R8 R0 K1 ["entry"]
       43 GETTABLEKS                       R8 R8 K2 ["material"]
       45 CALL                             R7 1 1
       46 GETUPVAL                         R8 2
       47 GETTABLEKS                       R8 R8 K11 ["useMemo"]
       49 NEWCLOSURE                       R9 P0
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R10 0 1
       54 GETTABLEKS                       R11 R0 K1 ["entry"]
       56 GETTABLEKS                       R11 R11 K2 ["material"]
       58 SETLIST                          R10 R11 1 [1]
       60 CALL                             R8 2 1
       61 GETUPVAL                         R9 2
       62 GETTABLEKS                       R9 R9 K11 ["useMemo"]
       64 NEWCLOSURE                       R10 P1
       65 CAPTURE                          VAL R8
       66 NEWTABLE                         R11 0 1
       68 MOVE                             R12 R8
       69 SETLIST                          R11 R12 1 [1]
       71 CALL                             R9 2 1
       72 GETUPVAL                         R10 5
       73 NEWCLOSURE                       R11 P2
       74 CAPTURE                          VAL R4
       75 CALL                             R10 1 1
       76 GETUPVAL                         R11 5
       77 NEWCLOSURE                       R12 P3
       78 CAPTURE                          VAL R0
       79 CALL                             R11 1 1
       80 GETUPVAL                         R12 5
       81 NEWCLOSURE                       R13 P4
       82 CAPTURE                          UPVAL U6
       83 CAPTURE                          VAL R0
       84 CALL                             R12 1 1
       85 GETUPVAL                         R13 5
       86 NEWCLOSURE                       R14 P5
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R8
       89 CALL                             R13 1 1
       90 GETUPVAL                         R14 5
       91 NEWCLOSURE                       R15 P6
       92 CAPTURE                          VAL R0
       93 CALL                             R14 1 1
       94 GETUPVAL                         R15 7
       95 GETTABLEKS                       R16 R0 K1 ["entry"]
       97 GETTABLEKS                       R16 R16 K2 ["material"]
       99 CALL                             R15 1 1
      100 GETUPVAL                         R16 8
      101 CALL                             R16 0 1
      102 GETUPVAL                         R17 8
      103 CALL                             R17 0 1
      104 GETUPVAL                         R18 8
      105 CALL                             R18 0 1
      106 GETUPVAL                         R19 8
      107 CALL                             R19 0 1
      108 GETUPVAL                         R20 2
      109 GETTABLEKS                       R20 R20 K12 ["createElement"]
      111 GETUPVAL                         R21 9
      112 DUPTABLE                         R22 K19 [{["tag"] = "size-full", ["BackgroundColor3"], ["testId"] = "DetailsPanel", ["onAbsoluteSizeChanged"]}]
      113 GETIMPORT                        R25 K22 [Enum.StudioStyleGuideColor.MainBackground]
      115 NAMECALL                         R23 R1 K23 ["GetColor"]
      117 CALL                             R23 2 1
      118 SETTABLEKS                       R23 R22 K15 ["BackgroundColor3"]
      120 SETTABLEKS                       R10 R22 K18 ["onAbsoluteSizeChanged"]
      122 DUPTABLE                         R23 K26 [{"LeftBorder", "Scroll"}]
      123 GETUPVAL                         R24 2
      124 GETTABLEKS                       R24 R24 K12 ["createElement"]
      126 GETUPVAL                         R25 9
      127 DUPTABLE                         R26 K30 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0.88}]
      128 GETIMPORT                        R27 K33 [UDim2.new]
      130 LOADN                            R28 0
      131 LOADN                            R29 1
      132 LOADN                            R30 1
      133 LOADN                            R31 0
      134 CALL                             R27 4 1
      135 SETTABLEKS                       R27 R26 K27 ["Size"]
      137 GETIMPORT                        R29 K35 [Enum.StudioStyleGuideColor.Border]
      139 NAMECALL                         R27 R1 K23 ["GetColor"]
      141 CALL                             R27 2 1
      142 SETTABLEKS                       R27 R26 K15 ["BackgroundColor3"]
      144 CALL                             R24 2 1
      145 SETTABLEKS                       R24 R23 K24 ["LeftBorder"]
      147 GETUPVAL                         R24 2
      148 GETTABLEKS                       R24 R24 K12 ["createElement"]
      150 GETUPVAL                         R25 10
      151 DUPTABLE                         R26 K39 [{["tag"] = "size-full", ["testId"] = "DetailsScrollView", ["layout"], ["scroll"]}]
      152 DUPTABLE                         R27 K42 [{"FillDirection", "Padding"}]
      153 GETIMPORT                        R28 K44 [Enum.FillDirection.Vertical]
      155 SETTABLEKS                       R28 R27 K40 ["FillDirection"]
      157 GETIMPORT                        R28 K46 [UDim.new]
      159 LOADN                            R29 0
      160 GETTABLEKS                       R30 R2 K47 ["Gap"]
      162 GETTABLEKS                       R30 R30 K48 ["Medium"]
      164 CALL                             R28 2 1
      165 SETTABLEKS                       R28 R27 K41 ["Padding"]
      167 SETTABLEKS                       R27 R26 K37 ["layout"]
      169 DUPTABLE                         R27 K53 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      170 GETIMPORT                        R28 K56 [Enum.AutomaticSize.Y]
      172 SETTABLEKS                       R28 R27 K49 ["AutomaticCanvasSize"]
      174 GETIMPORT                        R28 K33 [UDim2.new]
      176 CALL                             R28 0 1
      177 SETTABLEKS                       R28 R27 K50 ["CanvasSize"]
      179 GETIMPORT                        R28 K57 [Enum.ScrollingDirection.Y]
      181 SETTABLEKS                       R28 R27 K51 ["ScrollingDirection"]
      183 GETUPVAL                         R28 11
      184 GETTABLEKS                       R28 R28 K58 ["Always"]
      186 SETTABLEKS                       R28 R27 K52 ["scrollBarVisibility"]
      188 SETTABLEKS                       R27 R26 K38 ["scroll"]
      190 DUPTABLE                         R27 K63 [{"Padding", "CloseBar", "Preview", "Title", "Settings"}]
      191 GETUPVAL                         R28 2
      192 GETTABLEKS                       R28 R28 K12 ["createElement"]
      194 LOADK                            R29 K64 ["UIPadding"]
      195 DUPTABLE                         R30 K69 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      196 GETIMPORT                        R31 K46 [UDim.new]
      198 LOADN                            R32 0
      199 GETTABLEKS                       R33 R2 K41 ["Padding"]
      201 GETTABLEKS                       R33 R33 K48 ["Medium"]
      203 CALL                             R31 2 1
      204 SETTABLEKS                       R31 R30 K65 ["PaddingBottom"]
      206 GETIMPORT                        R31 K46 [UDim.new]
      208 LOADN                            R32 0
      209 GETTABLEKS                       R33 R2 K41 ["Padding"]
      211 GETTABLEKS                       R33 R33 K48 ["Medium"]
      213 CALL                             R31 2 1
      214 SETTABLEKS                       R31 R30 K66 ["PaddingLeft"]
      216 GETIMPORT                        R31 K46 [UDim.new]
      218 LOADN                            R32 0
      219 GETTABLEKS                       R33 R2 K41 ["Padding"]
      221 GETTABLEKS                       R33 R33 K48 ["Medium"]
      223 CALL                             R31 2 1
      224 SETTABLEKS                       R31 R30 K67 ["PaddingRight"]
      226 GETIMPORT                        R31 K46 [UDim.new]
      228 LOADN                            R32 0
      229 GETTABLEKS                       R33 R2 K41 ["Padding"]
      231 GETTABLEKS                       R33 R33 K48 ["Medium"]
      233 CALL                             R31 2 1
      234 SETTABLEKS                       R31 R30 K68 ["PaddingTop"]
      236 CALL                             R28 2 1
      237 SETTABLEKS                       R28 R27 K41 ["Padding"]
      239 GETUPVAL                         R28 2
      240 GETTABLEKS                       R28 R28 K12 ["createElement"]
      242 GETUPVAL                         R29 9
      243 DUPTABLE                         R30 K72 [{["tag"] = "row align-x-right align-y-center size-full-800", ["LayoutOrder"]}]
      244 MOVE                             R31 R16
      245 CALL                             R31 0 1
      246 SETTABLEKS                       R31 R30 K71 ["LayoutOrder"]
      248 DUPTABLE                         R31 K74 [{"CloseButtonBackground"}]
      249 GETUPVAL                         R32 2
      250 GETTABLEKS                       R32 R32 K12 ["createElement"]
      252 GETUPVAL                         R33 9
      253 DUPTABLE                         R34 K76 [{["tag"] = "size-800 radius-medium bg-surface-200"}]
      254 DUPTABLE                         R35 K78 [{"CloseButton"}]
      255 GETUPVAL                         R36 2
      256 GETTABLEKS                       R36 R36 K12 ["createElement"]
      258 GETUPVAL                         R37 12
      259 DUPTABLE                         R38 K82 [{["icon"], ["onActivated"], ["size"], ["testId"] = "CloseButton"}]
      260 GETUPVAL                         R39 13
      261 GETTABLEKS                       R39 R39 K83 ["Icon"]
      263 GETTABLEKS                       R39 R39 K84 ["X"]
      265 SETTABLEKS                       R39 R38 K79 ["icon"]
      267 GETTABLEKS                       R39 R0 K85 ["onClose"]
      269 SETTABLEKS                       R39 R38 K80 ["onActivated"]
      271 GETUPVAL                         R39 14
      272 GETTABLEKS                       R39 R39 K86 ["Small"]
      274 SETTABLEKS                       R39 R38 K81 ["size"]
      276 CALL                             R36 2 1
      277 SETTABLEKS                       R36 R35 K77 ["CloseButton"]
      279 CALL                             R32 3 1
      280 SETTABLEKS                       R32 R31 K73 ["CloseButtonBackground"]
      282 CALL                             R28 3 1
      283 SETTABLEKS                       R28 R27 K59 ["CloseBar"]
      285 GETUPVAL                         R28 2
      286 GETTABLEKS                       R28 R28 K12 ["createElement"]
      288 GETUPVAL                         R29 9
      289 DUPTABLE                         R30 K90 [{["tag"] = "size-full-0 bg-surface-200 radius-medium clip", ["LayoutOrder"], ["testId"] = "DetailsPreview", ["aspectRatio"]}]
      290 MOVE                             R31 R16
      291 CALL                             R31 0 1
      292 SETTABLEKS                       R31 R30 K71 ["LayoutOrder"]
      294 DUPTABLE                         R31 K95 [{["AspectRatio"] = 1, ["AspectType"], ["DominantAxis"]}]
      295 GETIMPORT                        R32 K97 [Enum.AspectType.ScaleWithParentSize]
      297 SETTABLEKS                       R32 R31 K93 ["AspectType"]
      299 GETIMPORT                        R32 K99 [Enum.DominantAxis.Width]
      301 SETTABLEKS                       R32 R31 K94 ["DominantAxis"]
      303 SETTABLEKS                       R31 R30 K89 ["aspectRatio"]
      305 DUPTABLE                         R31 K101 [{"MaterialPreview"}]
      306 GETUPVAL                         R32 2
      307 GETTABLEKS                       R32 R32 K12 ["createElement"]
      309 GETUPVAL                         R33 15
      310 DUPTABLE                         R34 K109 [{["Material"], ["OverrideColor"], ["OverrideTransparency"], ["MaterialPreviewGeometryType"], ["BackgroundColor"], ["Size"], ["CornerRadius"], ["Static"] = True}]
      311 JUMPIFNOT                        R15 ; [+3]
      312 GETTABLEKS                       R35 R15 K2 ["material"]
      314 JUMP                             ; [+14]
      315 GETTABLEKS                       R36 R0 K1 ["entry"]
      317 GETTABLEKS                       R36 R36 K110 ["variant"]
      319 JUMPIFNOT                        R36 ; [+5]
      320 GETTABLEKS                       R35 R0 K1 ["entry"]
      322 GETTABLEKS                       R35 R35 K110 ["variant"]
      324 JUMP                             ; [+4]
      325 GETTABLEKS                       R35 R0 K1 ["entry"]
      327 GETTABLEKS                       R35 R35 K2 ["material"]
      329 SETTABLEKS                       R35 R34 K4 ["Material"]
      331 JUMPIFNOT                        R15 ; [+3]
      332 GETTABLEKS                       R35 R15 K9 ["color"]
      334 JUMP                             ; [+1]
      335 MOVE                             R35 R7
      336 SETTABLEKS                       R35 R34 K102 ["OverrideColor"]
      338 JUMPIFNOT                        R15 ; [+3]
      339 GETTABLEKS                       R35 R15 K111 ["transparency"]
      341 JUMP                             ; [+1]
      342 LOADNIL                          R35
      343 SETTABLEKS                       R35 R34 K103 ["OverrideTransparency"]
      345 GETUPVAL                         R35 16
      346 GETTABLEKS                       R35 R35 K112 ["CubeCornerOn"]
      348 SETTABLEKS                       R35 R34 K104 ["MaterialPreviewGeometryType"]
      350 GETIMPORT                        R37 K114 [Enum.StudioStyleGuideColor.ViewPortBackground]
      352 NAMECALL                         R35 R1 K23 ["GetColor"]
      354 CALL                             R35 2 1
      355 SETTABLEKS                       R35 R34 K105 ["BackgroundColor"]
      357 GETIMPORT                        R35 K116 [UDim2.fromScale]
      359 LOADN                            R36 1
      360 LOADN                            R37 1
      361 CALL                             R35 2 1
      362 SETTABLEKS                       R35 R34 K27 ["Size"]
      364 GETUPVAL                         R35 17
      365 SETTABLEKS                       R35 R34 K106 ["CornerRadius"]
      367 CALL                             R32 2 1
      368 SETTABLEKS                       R32 R31 K100 ["MaterialPreview"]
      370 CALL                             R28 3 1
      371 SETTABLEKS                       R28 R27 K60 ["Preview"]
      373 GETUPVAL                         R28 2
      374 GETTABLEKS                       R28 R28 K12 ["createElement"]
      376 GETUPVAL                         R29 9
      377 DUPTABLE                         R30 K118 [{["tag"] = "col gap-xsmall size-full-0 auto-y", ["LayoutOrder"]}]
      378 MOVE                             R31 R16
      379 CALL                             R31 0 1
      380 SETTABLEKS                       R31 R30 K71 ["LayoutOrder"]
      382 DUPTABLE                         R31 K121 [{"Row", "Divider"}]
      383 GETUPVAL                         R32 2
      384 GETTABLEKS                       R32 R32 K12 ["createElement"]
      386 GETUPVAL                         R33 9
      387 DUPTABLE                         R34 K123 [{["tag"] = "row align-y-center gap-xsmall size-full-800", ["LayoutOrder"]}]
      388 MOVE                             R35 R18
      389 CALL                             R35 0 1
      390 SETTABLEKS                       R35 R34 K71 ["LayoutOrder"]
      392 DUPTABLE                         R35 K127 [{"Name", "DuplicateButton", "DeleteButton"}]
      393 JUMPIFNOT                        R6 ; [+17]
      394 GETUPVAL                         R36 2
      395 GETTABLEKS                       R36 R36 K12 ["createElement"]
      397 GETUPVAL                         R37 18
      398 DUPTABLE                         R38 K131 [{["tag"] = "grow size-0-full text-title-medium text-align-x-left content-emphasis", ["LayoutOrder"], ["Text"], ["testId"] = "MaterialName"}]
      399 MOVE                             R39 R19
      400 CALL                             R39 0 1
      401 SETTABLEKS                       R39 R38 K71 ["LayoutOrder"]
      403 GETTABLEKS                       R39 R0 K1 ["entry"]
      405 GETTABLEKS                       R39 R39 K132 ["name"]
      407 SETTABLEKS                       R39 R38 K129 ["Text"]
      409 CALL                             R36 2 1
      410 JUMP                             ; [+43]
      411 GETUPVAL                         R36 2
      412 GETTABLEKS                       R36 R36 K12 ["createElement"]
      414 GETUPVAL                         R37 9
      415 DUPTABLE                         R38 K134 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      416 MOVE                             R39 R19
      417 CALL                             R39 0 1
      418 SETTABLEKS                       R39 R38 K71 ["LayoutOrder"]
      420 DUPTABLE                         R39 K136 [{"Input"}]
      421 GETUPVAL                         R40 2
      422 GETTABLEKS                       R40 R40 K12 ["createElement"]
      424 GETUPVAL                         R41 19
      425 DUPTABLE                         R42 K144 [{["label"] = "", ["onChanged"], ["onFocusLost"], ["size"], ["text"], ["testId"] = "MaterialNameInput", ["width"]}]
      426 SETTABLEKS                       R11 R42 K139 ["onChanged"]
      428 GETTABLEKS                       R43 R0 K145 ["onEntryChangeCommitted"]
      430 SETTABLEKS                       R43 R42 K140 ["onFocusLost"]
      432 GETUPVAL                         R43 14
      433 GETTABLEKS                       R43 R43 K86 ["Small"]
      435 SETTABLEKS                       R43 R42 K81 ["size"]
      437 GETTABLEKS                       R43 R0 K1 ["entry"]
      439 GETTABLEKS                       R43 R43 K132 ["name"]
      441 SETTABLEKS                       R43 R42 K141 ["text"]
      443 GETIMPORT                        R43 K46 [UDim.new]
      445 LOADN                            R44 1
      446 LOADN                            R45 0
      447 CALL                             R43 2 1
      448 SETTABLEKS                       R43 R42 K143 ["width"]
      450 CALL                             R40 2 1
      451 SETTABLEKS                       R40 R39 K135 ["Input"]
      453 CALL                             R36 3 1
      454 SETTABLEKS                       R36 R35 K124 ["Name"]
      456 JUMPIFNOT                        R6 ; [+2]
      457 LOADNIL                          R36
      458 JUMP                             ; [+31]
      459 GETUPVAL                         R36 2
      460 GETTABLEKS                       R36 R36 K12 ["createElement"]
      462 GETUPVAL                         R37 12
      463 DUPTABLE                         R38 K147 [{["LayoutOrder"], ["icon"], ["isDisabled"], ["onActivated"], ["size"], ["testId"] = "DuplicateButton"}]
      464 MOVE                             R39 R19
      465 CALL                             R39 0 1
      466 SETTABLEKS                       R39 R38 K71 ["LayoutOrder"]
      468 GETUPVAL                         R39 13
      469 GETTABLEKS                       R39 R39 K83 ["Icon"]
      471 GETTABLEKS                       R39 R39 K148 ["TwoStackedSquares"]
      473 SETTABLEKS                       R39 R38 K79 ["icon"]
      475 GETTABLEKS                       R40 R0 K149 ["canDuplicate"]
      477 NOT                              R39 R40
      478 SETTABLEKS                       R39 R38 K146 ["isDisabled"]
      480 GETTABLEKS                       R39 R0 K150 ["onDuplicate"]
      482 SETTABLEKS                       R39 R38 K80 ["onActivated"]
      484 GETUPVAL                         R39 14
      485 GETTABLEKS                       R39 R39 K86 ["Small"]
      487 SETTABLEKS                       R39 R38 K81 ["size"]
      489 CALL                             R36 2 1
      490 SETTABLEKS                       R36 R35 K125 ["DuplicateButton"]
      492 JUMPIFNOT                        R6 ; [+2]
      493 LOADNIL                          R36
      494 JUMP                             ; [+26]
      495 GETUPVAL                         R36 2
      496 GETTABLEKS                       R36 R36 K12 ["createElement"]
      498 GETUPVAL                         R37 12
      499 DUPTABLE                         R38 K151 [{["LayoutOrder"], ["icon"], ["onActivated"], ["size"], ["testId"] = "DeleteButton"}]
      500 MOVE                             R39 R19
      501 CALL                             R39 0 1
      502 SETTABLEKS                       R39 R38 K71 ["LayoutOrder"]
      504 GETUPVAL                         R39 13
      505 GETTABLEKS                       R39 R39 K83 ["Icon"]
      507 GETTABLEKS                       R39 R39 K152 ["TrashCan"]
      509 SETTABLEKS                       R39 R38 K79 ["icon"]
      511 GETTABLEKS                       R39 R0 K153 ["onDelete"]
      513 SETTABLEKS                       R39 R38 K80 ["onActivated"]
      515 GETUPVAL                         R39 14
      516 GETTABLEKS                       R39 R39 K86 ["Small"]
      518 SETTABLEKS                       R39 R38 K81 ["size"]
      520 CALL                             R36 2 1
      521 SETTABLEKS                       R36 R35 K126 ["DeleteButton"]
      523 CALL                             R32 3 1
      524 SETTABLEKS                       R32 R31 K119 ["Row"]
      526 GETUPVAL                         R32 2
      527 GETTABLEKS                       R32 R32 K12 ["createElement"]
      529 GETUPVAL                         R33 20
      530 DUPTABLE                         R34 K154 [{"LayoutOrder"}]
      531 MOVE                             R35 R18
      532 CALL                             R35 0 1
      533 SETTABLEKS                       R35 R34 K71 ["LayoutOrder"]
      535 CALL                             R32 2 1
      536 SETTABLEKS                       R32 R31 K120 ["Divider"]
      538 CALL                             R28 3 1
      539 SETTABLEKS                       R28 R27 K61 ["Title"]
      541 JUMPIFNOT                        R6 ; [+2]
      542 LOADNIL                          R28
      543 JUMP                             ; [+155]
      544 GETUPVAL                         R28 2
      545 GETTABLEKS                       R28 R28 K12 ["createElement"]
      547 GETUPVAL                         R29 9
      548 DUPTABLE                         R30 K156 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"], ["testId"] = "Settings"}]
      549 MOVE                             R31 R16
      550 CALL                             R31 0 1
      551 SETTABLEKS                       R31 R30 K71 ["LayoutOrder"]
      553 DUPTABLE                         R31 K161 [{"Header", "BaseMaterial", "Variant", "Color"}]
      554 GETUPVAL                         R32 2
      555 GETTABLEKS                       R32 R32 K12 ["createElement"]
      557 GETUPVAL                         R33 18
      558 DUPTABLE                         R34 K163 [{["tag"] = "size-full-600 text-title-small text-align-x-left content-emphasis", ["LayoutOrder"], ["Text"] = "Settings"}]
      559 MOVE                             R35 R17
      560 CALL                             R35 0 1
      561 SETTABLEKS                       R35 R34 K71 ["LayoutOrder"]
      563 CALL                             R32 2 1
      564 SETTABLEKS                       R32 R31 K157 ["Header"]
      566 GETUPVAL                         R32 2
      567 GETTABLEKS                       R32 R32 K12 ["createElement"]
      569 GETUPVAL                         R33 21
      570 DUPTABLE                         R34 K170 [{["layoutOrder"], ["label"] = "Base Material", ["isWide"], ["controlWidth"] = 140, ["control"]}]
      571 MOVE                             R35 R17
      572 CALL                             R35 0 1
      573 SETTABLEKS                       R35 R34 K164 ["layoutOrder"]
      575 SETTABLEKS                       R5 R34 K166 ["isWide"]
      577 GETUPVAL                         R35 2
      578 GETTABLEKS                       R35 R35 K12 ["createElement"]
      580 GETUPVAL                         R36 22
      581 DUPTABLE                         R37 K174 [{["items"], ["label"] = "", ["onItemChanged"], ["size"], ["variant"], ["value"], ["width"]}]
      582 GETUPVAL                         R38 23
      583 SETTABLEKS                       R38 R37 K171 ["items"]
      585 SETTABLEKS                       R12 R37 K172 ["onItemChanged"]
      587 GETUPVAL                         R38 14
      588 GETTABLEKS                       R38 R38 K86 ["Small"]
      590 SETTABLEKS                       R38 R37 K81 ["size"]
      592 GETUPVAL                         R38 24
      593 GETTABLEKS                       R38 R38 K175 ["Contrast"]
      595 SETTABLEKS                       R38 R37 K110 ["variant"]
      597 GETTABLEKS                       R38 R0 K1 ["entry"]
      599 GETTABLEKS                       R38 R38 K2 ["material"]
      601 GETTABLEKS                       R38 R38 K124 ["Name"]
      603 SETTABLEKS                       R38 R37 K173 ["value"]
      605 GETIMPORT                        R38 K46 [UDim.new]
      607 LOADN                            R39 1
      608 LOADN                            R40 0
      609 CALL                             R38 2 1
      610 SETTABLEKS                       R38 R37 K143 ["width"]
      612 CALL                             R35 2 1
      613 SETTABLEKS                       R35 R34 K169 ["control"]
      615 CALL                             R32 2 1
      616 SETTABLEKS                       R32 R31 K158 ["BaseMaterial"]
      618 GETUPVAL                         R32 2
      619 GETTABLEKS                       R32 R32 K12 ["createElement"]
      621 GETUPVAL                         R33 21
      622 DUPTABLE                         R34 K177 [{["layoutOrder"], ["label"] = "Material Variant", ["isWide"], ["controlWidth"] = 140, ["control"]}]
      623 MOVE                             R35 R17
      624 CALL                             R35 0 1
      625 SETTABLEKS                       R35 R34 K164 ["layoutOrder"]
      627 SETTABLEKS                       R5 R34 K166 ["isWide"]
      629 GETUPVAL                         R35 2
      630 GETTABLEKS                       R35 R35 K12 ["createElement"]
      632 GETUPVAL                         R36 22
      633 DUPTABLE                         R37 K174 [{["items"], ["label"] = "", ["onItemChanged"], ["size"], ["variant"], ["value"], ["width"]}]
      634 SETTABLEKS                       R9 R37 K171 ["items"]
      636 SETTABLEKS                       R13 R37 K172 ["onItemChanged"]
      638 GETUPVAL                         R38 14
      639 GETTABLEKS                       R38 R38 K86 ["Small"]
      641 SETTABLEKS                       R38 R37 K81 ["size"]
      643 GETUPVAL                         R38 24
      644 GETTABLEKS                       R38 R38 K175 ["Contrast"]
      646 SETTABLEKS                       R38 R37 K110 ["variant"]
      648 GETTABLEKS                       R39 R0 K1 ["entry"]
      650 GETTABLEKS                       R39 R39 K110 ["variant"]
      652 JUMPIFNOT                        R39 ; [+7]
      653 GETTABLEKS                       R38 R0 K1 ["entry"]
      655 GETTABLEKS                       R38 R38 K110 ["variant"]
      657 GETTABLEKS                       R38 R38 K124 ["Name"]
      659 JUMP                             ; [+1]
      660 LOADK                            R38 K178 ["__none__"]
      661 SETTABLEKS                       R38 R37 K173 ["value"]
      663 GETIMPORT                        R38 K46 [UDim.new]
      665 LOADN                            R39 1
      666 LOADN                            R40 0
      667 CALL                             R38 2 1
      668 SETTABLEKS                       R38 R37 K143 ["width"]
      670 CALL                             R35 2 1
      671 SETTABLEKS                       R35 R34 K169 ["control"]
      673 CALL                             R32 2 1
      674 SETTABLEKS                       R32 R31 K159 ["Variant"]
      676 GETUPVAL                         R32 2
      677 GETTABLEKS                       R32 R32 K12 ["createElement"]
      679 GETUPVAL                         R33 25
      680 DUPTABLE                         R34 K181 [{"layoutOrder", "color", "isWide", "onColorChangeCommitted", "onColorChanged"}]
      681 MOVE                             R35 R17
      682 CALL                             R35 0 1
      683 SETTABLEKS                       R35 R34 K164 ["layoutOrder"]
      685 SETTABLEKS                       R7 R34 K9 ["color"]
      687 SETTABLEKS                       R5 R34 K166 ["isWide"]
      689 GETTABLEKS                       R35 R0 K145 ["onEntryChangeCommitted"]
      691 SETTABLEKS                       R35 R34 K179 ["onColorChangeCommitted"]
      693 SETTABLEKS                       R14 R34 K180 ["onColorChanged"]
      695 CALL                             R32 2 1
      696 SETTABLEKS                       R32 R31 K160 ["Color"]
      698 CALL                             R28 3 1
      699 SETTABLEKS                       R28 R27 K62 ["Settings"]
      701 CALL                             R24 3 1
      702 SETTABLEKS                       R24 R23 K25 ["Scroll"]
      704 CALL                             R20 3 -1
      705 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["BuilderIcons"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["DetailsPanel"]
       20 GETTABLEKS                       R3 R3 K10 ["ColorControl"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Components"]
       34 GETTABLEKS                       R5 R5 K9 ["DetailsPanel"]
       36 GETTABLEKS                       R5 R5 K12 ["LabeledControl"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Parent"]
       43 GETTABLEKS                       R6 R6 K13 ["MaterialFramework"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K14 ["Libraries"]
       50 GETTABLEKS                       R7 R7 K15 ["MaterialVariants"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Parent"]
       57 GETTABLEKS                       R8 R8 K16 ["React"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Parent"]
       64 GETTABLEKS                       R9 R9 K17 ["ReactUtils"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K18 ["Domain"]
       71 GETTABLEKS                       R10 R10 K19 ["TerrainMaterials"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K18 ["Domain"]
       78 GETTABLEKS                       R11 R11 K20 ["TerrainMaterialTypes"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K21 ["Util"]
       85 GETTABLEKS                       R12 R12 K22 ["airWaterOverride"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K23 ["Hooks"]
       92 GETTABLEKS                       R13 R13 K24 ["useStudioTheme"]
       94 CALL                             R12 1 1
       95 GETTABLEKS                       R13 R3 K25 ["Divider"]
       97 GETTABLEKS                       R14 R3 K26 ["Dropdown"]
       99 GETTABLEKS                       R14 R14 K27 ["Root"]
      101 GETTABLEKS                       R15 R3 K28 ["IconButton"]
      103 GETTABLEKS                       R16 R3 K29 ["Enums"]
      105 GETTABLEKS                       R16 R16 K30 ["InputSize"]
      107 GETTABLEKS                       R17 R3 K29 ["Enums"]
      109 GETTABLEKS                       R17 R17 K31 ["InputVariant"]
      111 GETTABLEKS                       R18 R5 K8 ["Components"]
      113 GETTABLEKS                       R18 R18 K32 ["MaterialPreview"]
      115 GETTABLEKS                       R19 R5 K29 ["Enums"]
      117 GETTABLEKS                       R19 R19 K33 ["MaterialPreviewGeometryType"]
      119 GETTABLEKS                       R20 R3 K34 ["ScrollView"]
      121 GETTABLEKS                       R21 R3 K35 ["Text"]
      123 GETTABLEKS                       R22 R3 K36 ["TextInput"]
      125 GETTABLEKS                       R23 R3 K37 ["View"]
      127 GETTABLEKS                       R24 R3 K29 ["Enums"]
      129 GETTABLEKS                       R24 R24 K38 ["Visibility"]
      131 GETTABLEKS                       R25 R8 K39 ["createNextOrder"]
      133 GETTABLEKS                       R26 R8 K40 ["useEventCallback"]
      135 GETTABLEKS                       R27 R3 K23 ["Hooks"]
      137 GETTABLEKS                       R27 R27 K41 ["useTokens"]
      139 GETIMPORT                        R28 K44 [UDim.new]
      141 LOADN                            R29 0
      142 LOADN                            R30 6
      143 CALL                             R28 2 1
      144 NEWTABLE                         R29 0 0
      146 NEWTABLE                         R30 0 0
      148 GETTABLEKS                       R31 R9 K45 ["materials"]
      150 LOADNIL                          R32
      151 LOADNIL                          R33
      152 FORGPREP                         R31
      153 GETIMPORT                        R36 K49 [Enum.Material.Air]
      155 JUMPIFEQ                         R35 R36 ; [+23]
      157 GETIMPORT                        R36 K51 [Enum.Material.Water]
      159 JUMPIFEQ                         R35 R36 ; [+19]
      161 DUPTABLE                         R38 K54 [{"id", "text"}]
      162 GETTABLEKS                       R39 R35 K55 ["Name"]
      164 SETTABLEKS                       R39 R38 K52 ["id"]
      166 GETTABLEKS                       R39 R35 K55 ["Name"]
      168 SETTABLEKS                       R39 R38 K53 ["text"]
      170 FASTCALL2                        TABLE_INSERT R29 R38 ; [+4]
      172 MOVE                             R37 R29
      173 GETIMPORT                        R36 K58 [table.insert]
      175 CALL                             R36 2 0
      176 GETTABLEKS                       R36 R35 K55 ["Name"]
      178 SETTABLE                         R35 R30 R36
      179 FORGLOOP                         R31 2 ; [-27]
      181 DUPCLOSURE                       R31 K59 [PROTO_7]
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R27
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R26
      188 CAPTURE                          VAL R30
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R25
      191 CAPTURE                          VAL R23
      192 CAPTURE                          VAL R20
      193 CAPTURE                          VAL R24
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R1
      196 CAPTURE                          VAL R16
      197 CAPTURE                          VAL R18
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R28
      200 CAPTURE                          VAL R21
      201 CAPTURE                          VAL R22
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R4
      204 CAPTURE                          VAL R14
      205 CAPTURE                          VAL R29
      206 CAPTURE                          VAL R17
      207 CAPTURE                          VAL R2
      208 RETURN                           R31 1
