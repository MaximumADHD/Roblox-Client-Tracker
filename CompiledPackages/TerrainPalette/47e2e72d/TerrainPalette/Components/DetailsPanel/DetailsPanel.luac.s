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
        2 DUPTABLE                         R1 K3 [{[1] = "__none__", ["text"]}]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K4 ["Plugin"]
        5 LOADK                            R5 K5 ["NoVariantDefault"]
        6 NAMECALL                         R2 R2 K6 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K2 ["text"]
       11 SETLIST                          R0 R1 1 [1]
       13 GETUPVAL                         R1 1
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 FORGPREP                         R1
       17 DUPTABLE                         R8 K7 [{"id", "text"}]
       18 GETTABLEKS                       R9 R5 K8 ["Name"]
       20 SETTABLEKS                       R9 R8 K0 ["id"]
       22 GETTABLEKS                       R9 R5 K8 ["Name"]
       24 SETTABLEKS                       R9 R8 K2 ["text"]
       26 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       28 MOVE                             R7 R0
       29 GETIMPORT                        R6 K11 [table.insert]
       31 CALL                             R6 2 0
       32 FORGLOOP                         R1 2 ; [-16]
       34 RETURN                           R0 1

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
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 3
       10 CALL                             R3 0 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["useState"]
       14 LOADN                            R5 300
       15 CALL                             R4 1 2
       16 LOADN                            R7 360
       17 JUMPIFLE                         R7 R4 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 LOADB                            R7 1
       22 GETTABLEKS                       R8 R0 K3 ["entry"]
       24 GETTABLEKS                       R8 R8 K4 ["material"]
       26 GETIMPORT                        R9 K8 [Enum.Material.Air]
       28 JUMPIFEQ                         R8 R9 ; [+11]
       30 GETTABLEKS                       R8 R0 K3 ["entry"]
       32 GETTABLEKS                       R8 R8 K4 ["material"]
       34 GETIMPORT                        R9 K10 [Enum.Material.Water]
       36 JUMPIFEQ                         R8 R9 ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 GETTABLEKS                       R8 R0 K3 ["entry"]
       42 GETTABLEKS                       R8 R8 K11 ["color"]
       44 JUMPIF                           R8 ; [+8]
       45 GETUPVAL                         R8 4
       46 GETTABLEKS                       R8 R8 K12 ["getColor"]
       48 GETTABLEKS                       R9 R0 K3 ["entry"]
       50 GETTABLEKS                       R9 R9 K4 ["material"]
       52 CALL                             R8 1 1
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K13 ["useMemo"]
       56 NEWCLOSURE                       R10 P0
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          VAL R0
       59 NEWTABLE                         R11 0 1
       61 GETTABLEKS                       R12 R0 K3 ["entry"]
       63 GETTABLEKS                       R12 R12 K4 ["material"]
       65 SETLIST                          R11 R12 1 [1]
       67 CALL                             R9 2 1
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R10 R10 K13 ["useMemo"]
       71 NEWCLOSURE                       R11 P1
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R9
       74 NEWTABLE                         R12 0 2
       76 MOVE                             R13 R9
       77 MOVE                             R14 R1
       78 SETLIST                          R12 R13 2 [1]
       80 CALL                             R10 2 1
       81 GETUPVAL                         R11 6
       82 NEWCLOSURE                       R12 P2
       83 CAPTURE                          VAL R5
       84 CALL                             R11 1 1
       85 GETUPVAL                         R12 6
       86 NEWCLOSURE                       R13 P3
       87 CAPTURE                          VAL R0
       88 CALL                             R12 1 1
       89 GETUPVAL                         R13 6
       90 NEWCLOSURE                       R14 P4
       91 CAPTURE                          UPVAL U7
       92 CAPTURE                          VAL R0
       93 CALL                             R13 1 1
       94 GETUPVAL                         R14 6
       95 NEWCLOSURE                       R15 P5
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R9
       98 CALL                             R14 1 1
       99 GETUPVAL                         R15 6
      100 NEWCLOSURE                       R16 P6
      101 CAPTURE                          VAL R0
      102 CALL                             R15 1 1
      103 GETUPVAL                         R16 8
      104 GETTABLEKS                       R17 R0 K3 ["entry"]
      106 GETTABLEKS                       R17 R17 K4 ["material"]
      108 CALL                             R16 1 1
      109 GETUPVAL                         R17 9
      110 CALL                             R17 0 1
      111 GETUPVAL                         R18 9
      112 CALL                             R18 0 1
      113 GETUPVAL                         R19 9
      114 CALL                             R19 0 1
      115 GETUPVAL                         R20 9
      116 CALL                             R20 0 1
      117 GETUPVAL                         R21 0
      118 GETTABLEKS                       R21 R21 K14 ["createElement"]
      120 GETUPVAL                         R22 10
      121 DUPTABLE                         R23 K21 [{["tag"] = "size-full", ["BackgroundColor3"], ["testId"] = "DetailsPanel", ["onAbsoluteSizeChanged"]}]
      122 GETIMPORT                        R26 K24 [Enum.StudioStyleGuideColor.MainBackground]
      124 NAMECALL                         R24 R2 K25 ["GetColor"]
      126 CALL                             R24 2 1
      127 SETTABLEKS                       R24 R23 K17 ["BackgroundColor3"]
      129 SETTABLEKS                       R11 R23 K20 ["onAbsoluteSizeChanged"]
      131 DUPTABLE                         R24 K28 [{"LeftBorder", "Scroll"}]
      132 GETUPVAL                         R25 0
      133 GETTABLEKS                       R25 R25 K14 ["createElement"]
      135 GETUPVAL                         R26 10
      136 DUPTABLE                         R27 K32 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0.88}]
      137 GETIMPORT                        R28 K35 [UDim2.new]
      139 LOADN                            R29 0
      140 LOADN                            R30 1
      141 LOADN                            R31 1
      142 LOADN                            R32 0
      143 CALL                             R28 4 1
      144 SETTABLEKS                       R28 R27 K29 ["Size"]
      146 GETIMPORT                        R30 K37 [Enum.StudioStyleGuideColor.Border]
      148 NAMECALL                         R28 R2 K25 ["GetColor"]
      150 CALL                             R28 2 1
      151 SETTABLEKS                       R28 R27 K17 ["BackgroundColor3"]
      153 CALL                             R25 2 1
      154 SETTABLEKS                       R25 R24 K26 ["LeftBorder"]
      156 GETUPVAL                         R25 0
      157 GETTABLEKS                       R25 R25 K14 ["createElement"]
      159 GETUPVAL                         R26 11
      160 DUPTABLE                         R27 K41 [{["tag"] = "size-full", ["testId"] = "DetailsScrollView", ["layout"], ["scroll"]}]
      161 DUPTABLE                         R28 K44 [{"FillDirection", "Padding"}]
      162 GETIMPORT                        R29 K46 [Enum.FillDirection.Vertical]
      164 SETTABLEKS                       R29 R28 K42 ["FillDirection"]
      166 GETIMPORT                        R29 K48 [UDim.new]
      168 LOADN                            R30 0
      169 GETTABLEKS                       R31 R3 K49 ["Gap"]
      171 GETTABLEKS                       R31 R31 K50 ["Medium"]
      173 CALL                             R29 2 1
      174 SETTABLEKS                       R29 R28 K43 ["Padding"]
      176 SETTABLEKS                       R28 R27 K39 ["layout"]
      178 DUPTABLE                         R28 K55 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      179 GETIMPORT                        R29 K58 [Enum.AutomaticSize.Y]
      181 SETTABLEKS                       R29 R28 K51 ["AutomaticCanvasSize"]
      183 GETIMPORT                        R29 K35 [UDim2.new]
      185 CALL                             R29 0 1
      186 SETTABLEKS                       R29 R28 K52 ["CanvasSize"]
      188 GETIMPORT                        R29 K59 [Enum.ScrollingDirection.Y]
      190 SETTABLEKS                       R29 R28 K53 ["ScrollingDirection"]
      192 GETUPVAL                         R29 12
      193 GETTABLEKS                       R29 R29 K60 ["Always"]
      195 SETTABLEKS                       R29 R28 K54 ["scrollBarVisibility"]
      197 SETTABLEKS                       R28 R27 K40 ["scroll"]
      199 DUPTABLE                         R28 K65 [{"Padding", "CloseBar", "Preview", "Title", "Settings"}]
      200 GETUPVAL                         R29 0
      201 GETTABLEKS                       R29 R29 K14 ["createElement"]
      203 LOADK                            R30 K66 ["UIPadding"]
      204 DUPTABLE                         R31 K71 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      205 GETIMPORT                        R32 K48 [UDim.new]
      207 LOADN                            R33 0
      208 GETTABLEKS                       R34 R3 K43 ["Padding"]
      210 GETTABLEKS                       R34 R34 K50 ["Medium"]
      212 CALL                             R32 2 1
      213 SETTABLEKS                       R32 R31 K67 ["PaddingBottom"]
      215 GETIMPORT                        R32 K48 [UDim.new]
      217 LOADN                            R33 0
      218 GETTABLEKS                       R34 R3 K43 ["Padding"]
      220 GETTABLEKS                       R34 R34 K50 ["Medium"]
      222 CALL                             R32 2 1
      223 SETTABLEKS                       R32 R31 K68 ["PaddingLeft"]
      225 GETIMPORT                        R32 K48 [UDim.new]
      227 LOADN                            R33 0
      228 GETTABLEKS                       R34 R3 K43 ["Padding"]
      230 GETTABLEKS                       R34 R34 K50 ["Medium"]
      232 CALL                             R32 2 1
      233 SETTABLEKS                       R32 R31 K69 ["PaddingRight"]
      235 GETIMPORT                        R32 K48 [UDim.new]
      237 LOADN                            R33 0
      238 GETTABLEKS                       R34 R3 K43 ["Padding"]
      240 GETTABLEKS                       R34 R34 K50 ["Medium"]
      242 CALL                             R32 2 1
      243 SETTABLEKS                       R32 R31 K70 ["PaddingTop"]
      245 CALL                             R29 2 1
      246 SETTABLEKS                       R29 R28 K43 ["Padding"]
      248 GETUPVAL                         R29 0
      249 GETTABLEKS                       R29 R29 K14 ["createElement"]
      251 GETUPVAL                         R30 10
      252 DUPTABLE                         R31 K74 [{["tag"] = "row align-x-right align-y-center size-full-800", ["LayoutOrder"]}]
      253 MOVE                             R32 R17
      254 CALL                             R32 0 1
      255 SETTABLEKS                       R32 R31 K73 ["LayoutOrder"]
      257 DUPTABLE                         R32 K76 [{"CloseButtonBackground"}]
      258 GETUPVAL                         R33 0
      259 GETTABLEKS                       R33 R33 K14 ["createElement"]
      261 GETUPVAL                         R34 10
      262 DUPTABLE                         R35 K78 [{["tag"] = "size-800 radius-medium bg-surface-200"}]
      263 DUPTABLE                         R36 K80 [{"CloseButton"}]
      264 GETUPVAL                         R37 0
      265 GETTABLEKS                       R37 R37 K14 ["createElement"]
      267 GETUPVAL                         R38 13
      268 DUPTABLE                         R39 K84 [{["icon"], ["onActivated"], ["size"], ["testId"] = "CloseButton"}]
      269 GETUPVAL                         R40 14
      270 GETTABLEKS                       R40 R40 K85 ["Icon"]
      272 GETTABLEKS                       R40 R40 K86 ["X"]
      274 SETTABLEKS                       R40 R39 K81 ["icon"]
      276 GETTABLEKS                       R40 R0 K87 ["onClose"]
      278 SETTABLEKS                       R40 R39 K82 ["onActivated"]
      280 GETUPVAL                         R40 15
      281 GETTABLEKS                       R40 R40 K88 ["Small"]
      283 SETTABLEKS                       R40 R39 K83 ["size"]
      285 CALL                             R37 2 1
      286 SETTABLEKS                       R37 R36 K79 ["CloseButton"]
      288 CALL                             R33 3 1
      289 SETTABLEKS                       R33 R32 K75 ["CloseButtonBackground"]
      291 CALL                             R29 3 1
      292 SETTABLEKS                       R29 R28 K61 ["CloseBar"]
      294 GETUPVAL                         R29 0
      295 GETTABLEKS                       R29 R29 K14 ["createElement"]
      297 GETUPVAL                         R30 10
      298 DUPTABLE                         R31 K92 [{["tag"] = "size-full-0 bg-surface-200 radius-medium clip", ["LayoutOrder"], ["testId"] = "DetailsPreview", ["aspectRatio"]}]
      299 MOVE                             R32 R17
      300 CALL                             R32 0 1
      301 SETTABLEKS                       R32 R31 K73 ["LayoutOrder"]
      303 DUPTABLE                         R32 K97 [{["AspectRatio"] = 1, ["AspectType"], ["DominantAxis"]}]
      304 GETIMPORT                        R33 K99 [Enum.AspectType.ScaleWithParentSize]
      306 SETTABLEKS                       R33 R32 K95 ["AspectType"]
      308 GETIMPORT                        R33 K101 [Enum.DominantAxis.Width]
      310 SETTABLEKS                       R33 R32 K96 ["DominantAxis"]
      312 SETTABLEKS                       R32 R31 K91 ["aspectRatio"]
      314 DUPTABLE                         R32 K103 [{"MaterialPreview"}]
      315 GETUPVAL                         R33 0
      316 GETTABLEKS                       R33 R33 K14 ["createElement"]
      318 GETUPVAL                         R34 16
      319 DUPTABLE                         R35 K111 [{["Material"], ["OverrideColor"], ["OverrideTransparency"], ["MaterialPreviewGeometryType"], ["BackgroundColor"], ["Size"], ["CornerRadius"], ["Static"] = True}]
      320 JUMPIFNOT                        R16 ; [+3]
      321 GETTABLEKS                       R36 R16 K4 ["material"]
      323 JUMP                             ; [+14]
      324 GETTABLEKS                       R37 R0 K3 ["entry"]
      326 GETTABLEKS                       R37 R37 K112 ["variant"]
      328 JUMPIFNOT                        R37 ; [+5]
      329 GETTABLEKS                       R36 R0 K3 ["entry"]
      331 GETTABLEKS                       R36 R36 K112 ["variant"]
      333 JUMP                             ; [+4]
      334 GETTABLEKS                       R36 R0 K3 ["entry"]
      336 GETTABLEKS                       R36 R36 K4 ["material"]
      338 SETTABLEKS                       R36 R35 K6 ["Material"]
      340 JUMPIFNOT                        R16 ; [+3]
      341 GETTABLEKS                       R36 R16 K11 ["color"]
      343 JUMP                             ; [+1]
      344 MOVE                             R36 R8
      345 SETTABLEKS                       R36 R35 K104 ["OverrideColor"]
      347 JUMPIFNOT                        R16 ; [+3]
      348 GETTABLEKS                       R36 R16 K113 ["transparency"]
      350 JUMP                             ; [+1]
      351 LOADNIL                          R36
      352 SETTABLEKS                       R36 R35 K105 ["OverrideTransparency"]
      354 GETUPVAL                         R36 17
      355 GETTABLEKS                       R36 R36 K114 ["CubeCornerOn"]
      357 SETTABLEKS                       R36 R35 K106 ["MaterialPreviewGeometryType"]
      359 GETIMPORT                        R38 K116 [Enum.StudioStyleGuideColor.ViewPortBackground]
      361 NAMECALL                         R36 R2 K25 ["GetColor"]
      363 CALL                             R36 2 1
      364 SETTABLEKS                       R36 R35 K107 ["BackgroundColor"]
      366 GETIMPORT                        R36 K118 [UDim2.fromScale]
      368 LOADN                            R37 1
      369 LOADN                            R38 1
      370 CALL                             R36 2 1
      371 SETTABLEKS                       R36 R35 K29 ["Size"]
      373 GETUPVAL                         R36 18
      374 SETTABLEKS                       R36 R35 K108 ["CornerRadius"]
      376 CALL                             R33 2 1
      377 SETTABLEKS                       R33 R32 K102 ["MaterialPreview"]
      379 CALL                             R29 3 1
      380 SETTABLEKS                       R29 R28 K62 ["Preview"]
      382 GETUPVAL                         R29 0
      383 GETTABLEKS                       R29 R29 K14 ["createElement"]
      385 GETUPVAL                         R30 10
      386 DUPTABLE                         R31 K120 [{["tag"] = "col gap-xsmall size-full-0 auto-y", ["LayoutOrder"]}]
      387 MOVE                             R32 R17
      388 CALL                             R32 0 1
      389 SETTABLEKS                       R32 R31 K73 ["LayoutOrder"]
      391 DUPTABLE                         R32 K123 [{"Row", "Divider"}]
      392 GETUPVAL                         R33 0
      393 GETTABLEKS                       R33 R33 K14 ["createElement"]
      395 GETUPVAL                         R34 10
      396 DUPTABLE                         R35 K125 [{["tag"] = "row align-y-center gap-xsmall size-full-800", ["LayoutOrder"]}]
      397 MOVE                             R36 R19
      398 CALL                             R36 0 1
      399 SETTABLEKS                       R36 R35 K73 ["LayoutOrder"]
      401 DUPTABLE                         R36 K129 [{"Name", "DuplicateButton", "DeleteButton"}]
      402 JUMPIFNOT                        R7 ; [+17]
      403 GETUPVAL                         R37 0
      404 GETTABLEKS                       R37 R37 K14 ["createElement"]
      406 GETUPVAL                         R38 19
      407 DUPTABLE                         R39 K133 [{["tag"] = "grow size-0-full text-title-medium text-align-x-left content-emphasis", ["LayoutOrder"], ["Text"], ["testId"] = "MaterialName"}]
      408 MOVE                             R40 R20
      409 CALL                             R40 0 1
      410 SETTABLEKS                       R40 R39 K73 ["LayoutOrder"]
      412 GETTABLEKS                       R40 R0 K3 ["entry"]
      414 GETTABLEKS                       R40 R40 K134 ["name"]
      416 SETTABLEKS                       R40 R39 K131 ["Text"]
      418 CALL                             R37 2 1
      419 JUMP                             ; [+43]
      420 GETUPVAL                         R37 0
      421 GETTABLEKS                       R37 R37 K14 ["createElement"]
      423 GETUPVAL                         R38 10
      424 DUPTABLE                         R39 K136 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      425 MOVE                             R40 R20
      426 CALL                             R40 0 1
      427 SETTABLEKS                       R40 R39 K73 ["LayoutOrder"]
      429 DUPTABLE                         R40 K138 [{"Input"}]
      430 GETUPVAL                         R41 0
      431 GETTABLEKS                       R41 R41 K14 ["createElement"]
      433 GETUPVAL                         R42 20
      434 DUPTABLE                         R43 K146 [{["label"] = "", ["onChanged"], ["onFocusLost"], ["size"], ["text"], ["testId"] = "MaterialNameInput", ["width"]}]
      435 SETTABLEKS                       R12 R43 K141 ["onChanged"]
      437 GETTABLEKS                       R44 R0 K147 ["onEntryChangeCommitted"]
      439 SETTABLEKS                       R44 R43 K142 ["onFocusLost"]
      441 GETUPVAL                         R44 15
      442 GETTABLEKS                       R44 R44 K88 ["Small"]
      444 SETTABLEKS                       R44 R43 K83 ["size"]
      446 GETTABLEKS                       R44 R0 K3 ["entry"]
      448 GETTABLEKS                       R44 R44 K134 ["name"]
      450 SETTABLEKS                       R44 R43 K143 ["text"]
      452 GETIMPORT                        R44 K48 [UDim.new]
      454 LOADN                            R45 1
      455 LOADN                            R46 0
      456 CALL                             R44 2 1
      457 SETTABLEKS                       R44 R43 K145 ["width"]
      459 CALL                             R41 2 1
      460 SETTABLEKS                       R41 R40 K137 ["Input"]
      462 CALL                             R37 3 1
      463 SETTABLEKS                       R37 R36 K126 ["Name"]
      465 JUMPIFNOT                        R7 ; [+2]
      466 LOADNIL                          R37
      467 JUMP                             ; [+44]
      468 GETUPVAL                         R37 0
      469 GETTABLEKS                       R37 R37 K14 ["createElement"]
      471 GETUPVAL                         R38 21
      472 DUPTABLE                         R39 K150 [{["LayoutOrder"], ["title"], ["testId"] = "DuplicateTooltip"}]
      473 MOVE                             R40 R20
      474 CALL                             R40 0 1
      475 SETTABLEKS                       R40 R39 K73 ["LayoutOrder"]
      477 LOADK                            R42 K151 ["Plugin"]
      478 LOADK                            R43 K149 ["DuplicateTooltip"]
      479 NAMECALL                         R40 R1 K152 ["getText"]
      481 CALL                             R40 3 1
      482 SETTABLEKS                       R40 R39 K148 ["title"]
      484 GETUPVAL                         R40 0
      485 GETTABLEKS                       R40 R40 K14 ["createElement"]
      487 GETUPVAL                         R41 13
      488 DUPTABLE                         R42 K154 [{["icon"], ["isDisabled"], ["onActivated"], ["size"], ["testId"] = "DuplicateButton"}]
      489 GETUPVAL                         R43 14
      490 GETTABLEKS                       R43 R43 K85 ["Icon"]
      492 GETTABLEKS                       R43 R43 K155 ["TwoStackedSquares"]
      494 SETTABLEKS                       R43 R42 K81 ["icon"]
      496 GETTABLEKS                       R44 R0 K156 ["canDuplicate"]
      498 NOT                              R43 R44
      499 SETTABLEKS                       R43 R42 K153 ["isDisabled"]
      501 GETTABLEKS                       R43 R0 K157 ["onDuplicate"]
      503 SETTABLEKS                       R43 R42 K82 ["onActivated"]
      505 GETUPVAL                         R43 15
      506 GETTABLEKS                       R43 R43 K88 ["Small"]
      508 SETTABLEKS                       R43 R42 K83 ["size"]
      510 CALL                             R40 2 -1
      511 CALL                             R37 -1 1
      512 SETTABLEKS                       R37 R36 K127 ["DuplicateButton"]
      514 JUMPIFNOT                        R7 ; [+2]
      515 LOADNIL                          R37
      516 JUMP                             ; [+39]
      517 GETUPVAL                         R37 0
      518 GETTABLEKS                       R37 R37 K14 ["createElement"]
      520 GETUPVAL                         R38 21
      521 DUPTABLE                         R39 K159 [{["LayoutOrder"], ["title"], ["testId"] = "DeleteTooltip"}]
      522 MOVE                             R40 R20
      523 CALL                             R40 0 1
      524 SETTABLEKS                       R40 R39 K73 ["LayoutOrder"]
      526 LOADK                            R42 K151 ["Plugin"]
      527 LOADK                            R43 K158 ["DeleteTooltip"]
      528 NAMECALL                         R40 R1 K152 ["getText"]
      530 CALL                             R40 3 1
      531 SETTABLEKS                       R40 R39 K148 ["title"]
      533 GETUPVAL                         R40 0
      534 GETTABLEKS                       R40 R40 K14 ["createElement"]
      536 GETUPVAL                         R41 13
      537 DUPTABLE                         R42 K160 [{["icon"], ["onActivated"], ["size"], ["testId"] = "DeleteButton"}]
      538 GETUPVAL                         R43 14
      539 GETTABLEKS                       R43 R43 K85 ["Icon"]
      541 GETTABLEKS                       R43 R43 K161 ["TrashCan"]
      543 SETTABLEKS                       R43 R42 K81 ["icon"]
      545 GETTABLEKS                       R43 R0 K162 ["onDelete"]
      547 SETTABLEKS                       R43 R42 K82 ["onActivated"]
      549 GETUPVAL                         R43 15
      550 GETTABLEKS                       R43 R43 K88 ["Small"]
      552 SETTABLEKS                       R43 R42 K83 ["size"]
      554 CALL                             R40 2 -1
      555 CALL                             R37 -1 1
      556 SETTABLEKS                       R37 R36 K128 ["DeleteButton"]
      558 CALL                             R33 3 1
      559 SETTABLEKS                       R33 R32 K121 ["Row"]
      561 GETUPVAL                         R33 0
      562 GETTABLEKS                       R33 R33 K14 ["createElement"]
      564 GETUPVAL                         R34 22
      565 DUPTABLE                         R35 K163 [{"LayoutOrder"}]
      566 MOVE                             R36 R19
      567 CALL                             R36 0 1
      568 SETTABLEKS                       R36 R35 K73 ["LayoutOrder"]
      570 CALL                             R33 2 1
      571 SETTABLEKS                       R33 R32 K122 ["Divider"]
      573 CALL                             R29 3 1
      574 SETTABLEKS                       R29 R28 K63 ["Title"]
      576 JUMPIFNOT                        R7 ; [+2]
      577 LOADNIL                          R29
      578 JUMP                             ; [+176]
      579 GETUPVAL                         R29 0
      580 GETTABLEKS                       R29 R29 K14 ["createElement"]
      582 GETUPVAL                         R30 10
      583 DUPTABLE                         R31 K165 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"], ["testId"] = "Settings"}]
      584 MOVE                             R32 R17
      585 CALL                             R32 0 1
      586 SETTABLEKS                       R32 R31 K73 ["LayoutOrder"]
      588 DUPTABLE                         R32 K170 [{"Header", "BaseMaterial", "Variant", "Color"}]
      589 GETUPVAL                         R33 0
      590 GETTABLEKS                       R33 R33 K14 ["createElement"]
      592 GETUPVAL                         R34 19
      593 DUPTABLE                         R35 K172 [{["tag"] = "size-full-600 text-title-small text-align-x-left content-emphasis", ["LayoutOrder"], ["Text"]}]
      594 MOVE                             R36 R18
      595 CALL                             R36 0 1
      596 SETTABLEKS                       R36 R35 K73 ["LayoutOrder"]
      598 LOADK                            R38 K151 ["Plugin"]
      599 LOADK                            R39 K173 ["SettingsLabel"]
      600 NAMECALL                         R36 R1 K152 ["getText"]
      602 CALL                             R36 3 1
      603 SETTABLEKS                       R36 R35 K131 ["Text"]
      605 CALL                             R33 2 1
      606 SETTABLEKS                       R33 R32 K166 ["Header"]
      608 GETUPVAL                         R33 0
      609 GETTABLEKS                       R33 R33 K14 ["createElement"]
      611 GETUPVAL                         R34 23
      612 DUPTABLE                         R35 K179 [{["layoutOrder"], ["label"], ["isWide"], ["controlWidth"] = 140, ["control"]}]
      613 MOVE                             R36 R18
      614 CALL                             R36 0 1
      615 SETTABLEKS                       R36 R35 K174 ["layoutOrder"]
      617 LOADK                            R38 K151 ["Plugin"]
      618 LOADK                            R39 K180 ["BaseMaterialLabel"]
      619 NAMECALL                         R36 R1 K152 ["getText"]
      621 CALL                             R36 3 1
      622 SETTABLEKS                       R36 R35 K139 ["label"]
      624 SETTABLEKS                       R6 R35 K175 ["isWide"]
      626 GETUPVAL                         R36 0
      627 GETTABLEKS                       R36 R36 K14 ["createElement"]
      629 GETUPVAL                         R37 24
      630 DUPTABLE                         R38 K184 [{["items"], ["label"] = "", ["onItemChanged"], ["size"], ["variant"], ["value"], ["width"]}]
      631 GETUPVAL                         R39 25
      632 SETTABLEKS                       R39 R38 K181 ["items"]
      634 SETTABLEKS                       R13 R38 K182 ["onItemChanged"]
      636 GETUPVAL                         R39 15
      637 GETTABLEKS                       R39 R39 K88 ["Small"]
      639 SETTABLEKS                       R39 R38 K83 ["size"]
      641 GETUPVAL                         R39 26
      642 GETTABLEKS                       R39 R39 K185 ["Contrast"]
      644 SETTABLEKS                       R39 R38 K112 ["variant"]
      646 GETTABLEKS                       R39 R0 K3 ["entry"]
      648 GETTABLEKS                       R39 R39 K4 ["material"]
      650 GETTABLEKS                       R39 R39 K126 ["Name"]
      652 SETTABLEKS                       R39 R38 K183 ["value"]
      654 GETIMPORT                        R39 K48 [UDim.new]
      656 LOADN                            R40 1
      657 LOADN                            R41 0
      658 CALL                             R39 2 1
      659 SETTABLEKS                       R39 R38 K145 ["width"]
      661 CALL                             R36 2 1
      662 SETTABLEKS                       R36 R35 K178 ["control"]
      664 CALL                             R33 2 1
      665 SETTABLEKS                       R33 R32 K167 ["BaseMaterial"]
      667 GETUPVAL                         R33 0
      668 GETTABLEKS                       R33 R33 K14 ["createElement"]
      670 GETUPVAL                         R34 23
      671 DUPTABLE                         R35 K179 [{["layoutOrder"], ["label"], ["isWide"], ["controlWidth"] = 140, ["control"]}]
      672 MOVE                             R36 R18
      673 CALL                             R36 0 1
      674 SETTABLEKS                       R36 R35 K174 ["layoutOrder"]
      676 LOADK                            R38 K151 ["Plugin"]
      677 LOADK                            R39 K186 ["MaterialVariantLabel"]
      678 NAMECALL                         R36 R1 K152 ["getText"]
      680 CALL                             R36 3 1
      681 SETTABLEKS                       R36 R35 K139 ["label"]
      683 SETTABLEKS                       R6 R35 K175 ["isWide"]
      685 GETUPVAL                         R36 0
      686 GETTABLEKS                       R36 R36 K14 ["createElement"]
      688 GETUPVAL                         R37 24
      689 DUPTABLE                         R38 K184 [{["items"], ["label"] = "", ["onItemChanged"], ["size"], ["variant"], ["value"], ["width"]}]
      690 SETTABLEKS                       R10 R38 K181 ["items"]
      692 SETTABLEKS                       R14 R38 K182 ["onItemChanged"]
      694 GETUPVAL                         R39 15
      695 GETTABLEKS                       R39 R39 K88 ["Small"]
      697 SETTABLEKS                       R39 R38 K83 ["size"]
      699 GETUPVAL                         R39 26
      700 GETTABLEKS                       R39 R39 K185 ["Contrast"]
      702 SETTABLEKS                       R39 R38 K112 ["variant"]
      704 GETTABLEKS                       R40 R0 K3 ["entry"]
      706 GETTABLEKS                       R40 R40 K112 ["variant"]
      708 JUMPIFNOT                        R40 ; [+7]
      709 GETTABLEKS                       R39 R0 K3 ["entry"]
      711 GETTABLEKS                       R39 R39 K112 ["variant"]
      713 GETTABLEKS                       R39 R39 K126 ["Name"]
      715 JUMP                             ; [+1]
      716 LOADK                            R39 K187 ["__none__"]
      717 SETTABLEKS                       R39 R38 K183 ["value"]
      719 GETIMPORT                        R39 K48 [UDim.new]
      721 LOADN                            R40 1
      722 LOADN                            R41 0
      723 CALL                             R39 2 1
      724 SETTABLEKS                       R39 R38 K145 ["width"]
      726 CALL                             R36 2 1
      727 SETTABLEKS                       R36 R35 K178 ["control"]
      729 CALL                             R33 2 1
      730 SETTABLEKS                       R33 R32 K168 ["Variant"]
      732 GETUPVAL                         R33 0
      733 GETTABLEKS                       R33 R33 K14 ["createElement"]
      735 GETUPVAL                         R34 27
      736 DUPTABLE                         R35 K190 [{"layoutOrder", "color", "isWide", "onColorChangeCommitted", "onColorChanged"}]
      737 MOVE                             R36 R18
      738 CALL                             R36 0 1
      739 SETTABLEKS                       R36 R35 K174 ["layoutOrder"]
      741 SETTABLEKS                       R8 R35 K11 ["color"]
      743 SETTABLEKS                       R6 R35 K175 ["isWide"]
      745 GETTABLEKS                       R36 R0 K147 ["onEntryChangeCommitted"]
      747 SETTABLEKS                       R36 R35 K188 ["onColorChangeCommitted"]
      749 SETTABLEKS                       R15 R35 K189 ["onColorChanged"]
      751 CALL                             R33 2 1
      752 SETTABLEKS                       R33 R32 K169 ["Color"]
      754 CALL                             R29 3 1
      755 SETTABLEKS                       R29 R28 K64 ["Settings"]
      757 CALL                             R25 3 1
      758 SETTABLEKS                       R25 R24 K27 ["Scroll"]
      760 CALL                             R21 3 -1
      761 RETURN                           R21 -1

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
       69 GETTABLEKS                       R10 R0 K6 ["Parent"]
       71 GETTABLEKS                       R10 R10 K18 ["StudioFoundation"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K19 ["Domain"]
       78 GETTABLEKS                       R11 R11 K20 ["TerrainMaterials"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K19 ["Domain"]
       85 GETTABLEKS                       R12 R12 K21 ["TerrainMaterialTypes"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K22 ["Util"]
       92 GETTABLEKS                       R13 R13 K23 ["airWaterOverride"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K24 ["Hooks"]
       99 GETTABLEKS                       R14 R14 K25 ["useStudioTheme"]
      101 CALL                             R13 1 1
      102 GETTABLEKS                       R14 R3 K26 ["Divider"]
      104 GETTABLEKS                       R15 R3 K27 ["Dropdown"]
      106 GETTABLEKS                       R15 R15 K28 ["Root"]
      108 GETTABLEKS                       R16 R3 K29 ["IconButton"]
      110 GETTABLEKS                       R17 R3 K30 ["Enums"]
      112 GETTABLEKS                       R17 R17 K31 ["InputSize"]
      114 GETTABLEKS                       R18 R3 K30 ["Enums"]
      116 GETTABLEKS                       R18 R18 K32 ["InputVariant"]
      118 GETTABLEKS                       R19 R9 K33 ["Contexts"]
      120 GETTABLEKS                       R19 R19 K34 ["Localization"]
      122 GETTABLEKS                       R20 R5 K8 ["Components"]
      124 GETTABLEKS                       R20 R20 K35 ["MaterialPreview"]
      126 GETTABLEKS                       R21 R5 K30 ["Enums"]
      128 GETTABLEKS                       R21 R21 K36 ["MaterialPreviewGeometryType"]
      130 GETTABLEKS                       R22 R3 K37 ["ScrollView"]
      132 GETTABLEKS                       R23 R3 K38 ["Text"]
      134 GETTABLEKS                       R24 R3 K39 ["TextInput"]
      136 GETTABLEKS                       R25 R3 K40 ["Tooltip"]
      138 GETTABLEKS                       R26 R3 K41 ["View"]
      140 GETTABLEKS                       R27 R3 K30 ["Enums"]
      142 GETTABLEKS                       R27 R27 K42 ["Visibility"]
      144 GETTABLEKS                       R28 R8 K43 ["createNextOrder"]
      146 GETTABLEKS                       R29 R8 K44 ["useEventCallback"]
      148 GETTABLEKS                       R30 R3 K24 ["Hooks"]
      150 GETTABLEKS                       R30 R30 K45 ["useTokens"]
      152 GETIMPORT                        R31 K48 [UDim.new]
      154 LOADN                            R32 0
      155 LOADN                            R33 6
      156 CALL                             R31 2 1
      157 NEWTABLE                         R32 0 0
      159 NEWTABLE                         R33 0 0
      161 GETTABLEKS                       R34 R10 K49 ["materials"]
      163 LOADNIL                          R35
      164 LOADNIL                          R36
      165 FORGPREP                         R34
      166 GETIMPORT                        R39 K53 [Enum.Material.Air]
      168 JUMPIFEQ                         R38 R39 ; [+23]
      170 GETIMPORT                        R39 K55 [Enum.Material.Water]
      172 JUMPIFEQ                         R38 R39 ; [+19]
      174 DUPTABLE                         R41 K58 [{"id", "text"}]
      175 GETTABLEKS                       R42 R38 K59 ["Name"]
      177 SETTABLEKS                       R42 R41 K56 ["id"]
      179 GETTABLEKS                       R42 R38 K59 ["Name"]
      181 SETTABLEKS                       R42 R41 K57 ["text"]
      183 FASTCALL2                        TABLE_INSERT R32 R41 ; [+4]
      185 MOVE                             R40 R32
      186 GETIMPORT                        R39 K62 [table.insert]
      188 CALL                             R39 2 0
      189 GETTABLEKS                       R39 R38 K59 ["Name"]
      191 SETTABLE                         R38 R33 R39
      192 FORGLOOP                         R34 2 ; [-27]
      194 DUPCLOSURE                       R34 K63 [PROTO_7]
      195 CAPTURE                          VAL R7
      196 CAPTURE                          VAL R19
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R30
      199 CAPTURE                          VAL R10
      200 CAPTURE                          VAL R6
      201 CAPTURE                          VAL R29
      202 CAPTURE                          VAL R33
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R28
      205 CAPTURE                          VAL R26
      206 CAPTURE                          VAL R22
      207 CAPTURE                          VAL R27
      208 CAPTURE                          VAL R16
      209 CAPTURE                          VAL R1
      210 CAPTURE                          VAL R17
      211 CAPTURE                          VAL R20
      212 CAPTURE                          VAL R21
      213 CAPTURE                          VAL R31
      214 CAPTURE                          VAL R23
      215 CAPTURE                          VAL R24
      216 CAPTURE                          VAL R25
      217 CAPTURE                          VAL R14
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R15
      220 CAPTURE                          VAL R32
      221 CAPTURE                          VAL R18
      222 CAPTURE                          VAL R2
      223 RETURN                           R34 1
