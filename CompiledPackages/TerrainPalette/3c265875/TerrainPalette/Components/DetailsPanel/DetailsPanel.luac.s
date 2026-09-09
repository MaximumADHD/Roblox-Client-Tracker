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
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K8 ["getColor"]
       24 MOVE                             R4 R1
       25 CALL                             R3 1 1
       26 SETTABLEKS                       R3 R2 K9 ["color"]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K10 ["onEntryChanged"]
       31 MOVE                             R4 R2
       32 CALL                             R3 1 0
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K11 ["onEntryChangeCommitted"]
       36 CALL                             R3 0 0
       37 RETURN                           R0 0

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
       93 CAPTURE                          UPVAL U4
       94 CALL                             R13 1 1
       95 GETUPVAL                         R14 6
       96 NEWCLOSURE                       R15 P5
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R9
       99 CALL                             R14 1 1
      100 GETUPVAL                         R15 6
      101 NEWCLOSURE                       R16 P6
      102 CAPTURE                          VAL R0
      103 CALL                             R15 1 1
      104 GETUPVAL                         R16 8
      105 GETTABLEKS                       R17 R0 K3 ["entry"]
      107 GETTABLEKS                       R17 R17 K4 ["material"]
      109 CALL                             R16 1 1
      110 GETUPVAL                         R17 9
      111 CALL                             R17 0 1
      112 GETUPVAL                         R18 9
      113 CALL                             R18 0 1
      114 GETUPVAL                         R19 9
      115 CALL                             R19 0 1
      116 GETUPVAL                         R20 9
      117 CALL                             R20 0 1
      118 GETUPVAL                         R21 0
      119 GETTABLEKS                       R21 R21 K14 ["createElement"]
      121 GETUPVAL                         R22 10
      122 DUPTABLE                         R23 K21 [{["tag"] = "size-full", ["backgroundStyle"], ["testId"] = "DetailsPanel", ["onAbsoluteSizeChanged"]}]
      123 GETTABLEKS                       R24 R3 K22 ["Color"]
      125 GETTABLEKS                       R24 R24 K23 ["Surface"]
      127 GETTABLEKS                       R24 R24 K24 ["Surface_100"]
      129 SETTABLEKS                       R24 R23 K17 ["backgroundStyle"]
      131 SETTABLEKS                       R11 R23 K20 ["onAbsoluteSizeChanged"]
      133 DUPTABLE                         R24 K26 [{"Scroll"}]
      134 GETUPVAL                         R25 0
      135 GETTABLEKS                       R25 R25 K14 ["createElement"]
      137 GETUPVAL                         R26 11
      138 DUPTABLE                         R27 K30 [{["tag"] = "size-full", ["testId"] = "DetailsScrollView", ["layout"], ["scroll"]}]
      139 DUPTABLE                         R28 K33 [{"FillDirection", "Padding"}]
      140 GETIMPORT                        R29 K35 [Enum.FillDirection.Vertical]
      142 SETTABLEKS                       R29 R28 K31 ["FillDirection"]
      144 GETIMPORT                        R29 K38 [UDim.new]
      146 LOADN                            R30 0
      147 GETTABLEKS                       R31 R3 K39 ["Gap"]
      149 GETTABLEKS                       R31 R31 K40 ["Medium"]
      151 CALL                             R29 2 1
      152 SETTABLEKS                       R29 R28 K32 ["Padding"]
      154 SETTABLEKS                       R28 R27 K28 ["layout"]
      156 DUPTABLE                         R28 K45 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      157 GETIMPORT                        R29 K48 [Enum.AutomaticSize.Y]
      159 SETTABLEKS                       R29 R28 K41 ["AutomaticCanvasSize"]
      161 GETIMPORT                        R29 K50 [UDim2.new]
      163 CALL                             R29 0 1
      164 SETTABLEKS                       R29 R28 K42 ["CanvasSize"]
      166 GETIMPORT                        R29 K51 [Enum.ScrollingDirection.Y]
      168 SETTABLEKS                       R29 R28 K43 ["ScrollingDirection"]
      170 GETUPVAL                         R29 12
      171 GETTABLEKS                       R29 R29 K52 ["Always"]
      173 SETTABLEKS                       R29 R28 K44 ["scrollBarVisibility"]
      175 SETTABLEKS                       R28 R27 K29 ["scroll"]
      177 DUPTABLE                         R28 K57 [{"Padding", "CloseBar", "Preview", "Title", "Settings"}]
      178 GETUPVAL                         R29 0
      179 GETTABLEKS                       R29 R29 K14 ["createElement"]
      181 LOADK                            R30 K58 ["UIPadding"]
      182 DUPTABLE                         R31 K63 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      183 GETIMPORT                        R32 K38 [UDim.new]
      185 LOADN                            R33 0
      186 GETTABLEKS                       R34 R3 K32 ["Padding"]
      188 GETTABLEKS                       R34 R34 K40 ["Medium"]
      190 CALL                             R32 2 1
      191 SETTABLEKS                       R32 R31 K59 ["PaddingBottom"]
      193 GETIMPORT                        R32 K38 [UDim.new]
      195 LOADN                            R33 0
      196 GETTABLEKS                       R34 R3 K32 ["Padding"]
      198 GETTABLEKS                       R34 R34 K40 ["Medium"]
      200 CALL                             R32 2 1
      201 SETTABLEKS                       R32 R31 K60 ["PaddingLeft"]
      203 GETIMPORT                        R32 K38 [UDim.new]
      205 LOADN                            R33 0
      206 GETTABLEKS                       R34 R3 K32 ["Padding"]
      208 GETTABLEKS                       R34 R34 K40 ["Medium"]
      210 CALL                             R32 2 1
      211 SETTABLEKS                       R32 R31 K61 ["PaddingRight"]
      213 GETIMPORT                        R32 K38 [UDim.new]
      215 LOADN                            R33 0
      216 GETTABLEKS                       R34 R3 K32 ["Padding"]
      218 GETTABLEKS                       R34 R34 K40 ["Medium"]
      220 CALL                             R32 2 1
      221 SETTABLEKS                       R32 R31 K62 ["PaddingTop"]
      223 CALL                             R29 2 1
      224 SETTABLEKS                       R29 R28 K32 ["Padding"]
      226 GETUPVAL                         R29 0
      227 GETTABLEKS                       R29 R29 K14 ["createElement"]
      229 GETUPVAL                         R30 10
      230 DUPTABLE                         R31 K66 [{["tag"] = "row align-x-right align-y-center size-full-600", ["LayoutOrder"]}]
      231 MOVE                             R32 R17
      232 CALL                             R32 0 1
      233 SETTABLEKS                       R32 R31 K65 ["LayoutOrder"]
      235 DUPTABLE                         R32 K68 [{"CloseButtonBackground"}]
      236 GETUPVAL                         R33 0
      237 GETTABLEKS                       R33 R33 K14 ["createElement"]
      239 GETUPVAL                         R34 10
      240 DUPTABLE                         R35 K70 [{["tag"] = "size-600 radius-small bg-surface-200"}]
      241 DUPTABLE                         R36 K72 [{"CloseButton"}]
      242 GETUPVAL                         R37 0
      243 GETTABLEKS                       R37 R37 K14 ["createElement"]
      245 GETUPVAL                         R38 13
      246 DUPTABLE                         R39 K76 [{["icon"], ["onActivated"], ["size"], ["testId"] = "CloseButton"}]
      247 GETUPVAL                         R40 14
      248 GETTABLEKS                       R40 R40 K77 ["Icon"]
      250 GETTABLEKS                       R40 R40 K78 ["X"]
      252 SETTABLEKS                       R40 R39 K73 ["icon"]
      254 GETTABLEKS                       R40 R0 K79 ["onClose"]
      256 SETTABLEKS                       R40 R39 K74 ["onActivated"]
      258 GETUPVAL                         R40 15
      259 GETTABLEKS                       R40 R40 K80 ["XSmall"]
      261 SETTABLEKS                       R40 R39 K75 ["size"]
      263 CALL                             R37 2 1
      264 SETTABLEKS                       R37 R36 K71 ["CloseButton"]
      266 CALL                             R33 3 1
      267 SETTABLEKS                       R33 R32 K67 ["CloseButtonBackground"]
      269 CALL                             R29 3 1
      270 SETTABLEKS                       R29 R28 K53 ["CloseBar"]
      272 GETUPVAL                         R29 0
      273 GETTABLEKS                       R29 R29 K14 ["createElement"]
      275 GETUPVAL                         R30 10
      276 DUPTABLE                         R31 K84 [{["tag"] = "size-full-0 radius-large clip bg-surface-200", ["LayoutOrder"], ["testId"] = "DetailsPreview", ["aspectRatio"]}]
      277 MOVE                             R32 R17
      278 CALL                             R32 0 1
      279 SETTABLEKS                       R32 R31 K65 ["LayoutOrder"]
      281 DUPTABLE                         R32 K89 [{["AspectRatio"] = 1, ["AspectType"], ["DominantAxis"]}]
      282 GETIMPORT                        R33 K91 [Enum.AspectType.ScaleWithParentSize]
      284 SETTABLEKS                       R33 R32 K87 ["AspectType"]
      286 GETIMPORT                        R33 K93 [Enum.DominantAxis.Width]
      288 SETTABLEKS                       R33 R32 K88 ["DominantAxis"]
      290 SETTABLEKS                       R32 R31 K83 ["aspectRatio"]
      292 DUPTABLE                         R32 K95 [{"MaterialPreview"}]
      293 GETUPVAL                         R33 0
      294 GETTABLEKS                       R33 R33 K14 ["createElement"]
      296 GETUPVAL                         R34 16
      297 DUPTABLE                         R35 K104 [{["Material"], ["OverrideColor"], ["OverrideTransparency"], ["MaterialPreviewGeometryType"], ["BackgroundColor"], ["Size"], ["CornerRadius"], ["Static"] = True}]
      298 JUMPIFNOT                        R16 ; [+3]
      299 GETTABLEKS                       R36 R16 K4 ["material"]
      301 JUMP                             ; [+14]
      302 GETTABLEKS                       R37 R0 K3 ["entry"]
      304 GETTABLEKS                       R37 R37 K105 ["variant"]
      306 JUMPIFNOT                        R37 ; [+5]
      307 GETTABLEKS                       R36 R0 K3 ["entry"]
      309 GETTABLEKS                       R36 R36 K105 ["variant"]
      311 JUMP                             ; [+4]
      312 GETTABLEKS                       R36 R0 K3 ["entry"]
      314 GETTABLEKS                       R36 R36 K4 ["material"]
      316 SETTABLEKS                       R36 R35 K6 ["Material"]
      318 JUMPIFNOT                        R16 ; [+3]
      319 GETTABLEKS                       R36 R16 K11 ["color"]
      321 JUMP                             ; [+1]
      322 MOVE                             R36 R8
      323 SETTABLEKS                       R36 R35 K96 ["OverrideColor"]
      325 JUMPIFNOT                        R16 ; [+3]
      326 GETTABLEKS                       R36 R16 K106 ["transparency"]
      328 JUMP                             ; [+1]
      329 LOADNIL                          R36
      330 SETTABLEKS                       R36 R35 K97 ["OverrideTransparency"]
      332 GETUPVAL                         R36 17
      333 GETTABLEKS                       R36 R36 K107 ["CubeCornerOn"]
      335 SETTABLEKS                       R36 R35 K98 ["MaterialPreviewGeometryType"]
      337 GETIMPORT                        R38 K110 [Enum.StudioStyleGuideColor.ViewPortBackground]
      339 NAMECALL                         R36 R2 K111 ["GetColor"]
      341 CALL                             R36 2 1
      342 SETTABLEKS                       R36 R35 K99 ["BackgroundColor"]
      344 GETIMPORT                        R36 K113 [UDim2.fromScale]
      346 LOADN                            R37 1
      347 LOADN                            R38 1
      348 CALL                             R36 2 1
      349 SETTABLEKS                       R36 R35 K100 ["Size"]
      351 GETIMPORT                        R36 K38 [UDim.new]
      353 LOADN                            R37 0
      354 GETTABLEKS                       R38 R3 K114 ["Radius"]
      356 GETTABLEKS                       R38 R38 K115 ["Large"]
      358 CALL                             R36 2 1
      359 SETTABLEKS                       R36 R35 K101 ["CornerRadius"]
      361 CALL                             R33 2 1
      362 SETTABLEKS                       R33 R32 K94 ["MaterialPreview"]
      364 CALL                             R29 3 1
      365 SETTABLEKS                       R29 R28 K54 ["Preview"]
      367 GETUPVAL                         R29 0
      368 GETTABLEKS                       R29 R29 K14 ["createElement"]
      370 GETUPVAL                         R30 10
      371 DUPTABLE                         R31 K117 [{["tag"] = "col gap-xsmall size-full-0 auto-y", ["LayoutOrder"]}]
      372 MOVE                             R32 R17
      373 CALL                             R32 0 1
      374 SETTABLEKS                       R32 R31 K65 ["LayoutOrder"]
      376 DUPTABLE                         R32 K120 [{"Row", "Divider"}]
      377 GETUPVAL                         R33 0
      378 GETTABLEKS                       R33 R33 K14 ["createElement"]
      380 GETUPVAL                         R34 10
      381 DUPTABLE                         R35 K122 [{["tag"] = "row align-y-center gap-xsmall size-full-800", ["LayoutOrder"]}]
      382 MOVE                             R36 R19
      383 CALL                             R36 0 1
      384 SETTABLEKS                       R36 R35 K65 ["LayoutOrder"]
      386 DUPTABLE                         R36 K126 [{"Name", "DuplicateButton", "DeleteButton"}]
      387 JUMPIFNOT                        R7 ; [+17]
      388 GETUPVAL                         R37 0
      389 GETTABLEKS                       R37 R37 K14 ["createElement"]
      391 GETUPVAL                         R38 18
      392 DUPTABLE                         R39 K130 [{["tag"] = "grow size-0-full text-title-medium text-align-x-left content-emphasis", ["LayoutOrder"], ["Text"], ["testId"] = "MaterialName"}]
      393 MOVE                             R40 R20
      394 CALL                             R40 0 1
      395 SETTABLEKS                       R40 R39 K65 ["LayoutOrder"]
      397 GETTABLEKS                       R40 R0 K3 ["entry"]
      399 GETTABLEKS                       R40 R40 K131 ["name"]
      401 SETTABLEKS                       R40 R39 K128 ["Text"]
      403 CALL                             R37 2 1
      404 JUMP                             ; [+43]
      405 GETUPVAL                         R37 0
      406 GETTABLEKS                       R37 R37 K14 ["createElement"]
      408 GETUPVAL                         R38 10
      409 DUPTABLE                         R39 K133 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      410 MOVE                             R40 R20
      411 CALL                             R40 0 1
      412 SETTABLEKS                       R40 R39 K65 ["LayoutOrder"]
      414 DUPTABLE                         R40 K135 [{"Input"}]
      415 GETUPVAL                         R41 0
      416 GETTABLEKS                       R41 R41 K14 ["createElement"]
      418 GETUPVAL                         R42 19
      419 DUPTABLE                         R43 K143 [{["label"] = "", ["onChanged"], ["onFocusLost"], ["size"], ["text"], ["testId"] = "MaterialNameInput", ["width"]}]
      420 SETTABLEKS                       R12 R43 K138 ["onChanged"]
      422 GETTABLEKS                       R44 R0 K144 ["onEntryChangeCommitted"]
      424 SETTABLEKS                       R44 R43 K139 ["onFocusLost"]
      426 GETUPVAL                         R44 15
      427 GETTABLEKS                       R44 R44 K145 ["Small"]
      429 SETTABLEKS                       R44 R43 K75 ["size"]
      431 GETTABLEKS                       R44 R0 K3 ["entry"]
      433 GETTABLEKS                       R44 R44 K131 ["name"]
      435 SETTABLEKS                       R44 R43 K140 ["text"]
      437 GETIMPORT                        R44 K38 [UDim.new]
      439 LOADN                            R45 1
      440 LOADN                            R46 0
      441 CALL                             R44 2 1
      442 SETTABLEKS                       R44 R43 K142 ["width"]
      444 CALL                             R41 2 1
      445 SETTABLEKS                       R41 R40 K134 ["Input"]
      447 CALL                             R37 3 1
      448 SETTABLEKS                       R37 R36 K123 ["Name"]
      450 JUMPIFNOT                        R7 ; [+2]
      451 LOADNIL                          R37
      452 JUMP                             ; [+44]
      453 GETUPVAL                         R37 0
      454 GETTABLEKS                       R37 R37 K14 ["createElement"]
      456 GETUPVAL                         R38 20
      457 DUPTABLE                         R39 K148 [{["LayoutOrder"], ["title"], ["testId"] = "DuplicateTooltip"}]
      458 MOVE                             R40 R20
      459 CALL                             R40 0 1
      460 SETTABLEKS                       R40 R39 K65 ["LayoutOrder"]
      462 LOADK                            R42 K149 ["Plugin"]
      463 LOADK                            R43 K147 ["DuplicateTooltip"]
      464 NAMECALL                         R40 R1 K150 ["getText"]
      466 CALL                             R40 3 1
      467 SETTABLEKS                       R40 R39 K146 ["title"]
      469 GETUPVAL                         R40 0
      470 GETTABLEKS                       R40 R40 K14 ["createElement"]
      472 GETUPVAL                         R41 13
      473 DUPTABLE                         R42 K152 [{["icon"], ["isDisabled"], ["onActivated"], ["size"], ["testId"] = "DuplicateButton"}]
      474 GETUPVAL                         R43 14
      475 GETTABLEKS                       R43 R43 K77 ["Icon"]
      477 GETTABLEKS                       R43 R43 K153 ["TwoStackedSquares"]
      479 SETTABLEKS                       R43 R42 K73 ["icon"]
      481 GETTABLEKS                       R44 R0 K154 ["canDuplicate"]
      483 NOT                              R43 R44
      484 SETTABLEKS                       R43 R42 K151 ["isDisabled"]
      486 GETTABLEKS                       R43 R0 K155 ["onDuplicate"]
      488 SETTABLEKS                       R43 R42 K74 ["onActivated"]
      490 GETUPVAL                         R43 15
      491 GETTABLEKS                       R43 R43 K80 ["XSmall"]
      493 SETTABLEKS                       R43 R42 K75 ["size"]
      495 CALL                             R40 2 -1
      496 CALL                             R37 -1 1
      497 SETTABLEKS                       R37 R36 K124 ["DuplicateButton"]
      499 JUMPIFNOT                        R7 ; [+2]
      500 LOADNIL                          R37
      501 JUMP                             ; [+39]
      502 GETUPVAL                         R37 0
      503 GETTABLEKS                       R37 R37 K14 ["createElement"]
      505 GETUPVAL                         R38 20
      506 DUPTABLE                         R39 K157 [{["LayoutOrder"], ["title"], ["testId"] = "DeleteTooltip"}]
      507 MOVE                             R40 R20
      508 CALL                             R40 0 1
      509 SETTABLEKS                       R40 R39 K65 ["LayoutOrder"]
      511 LOADK                            R42 K149 ["Plugin"]
      512 LOADK                            R43 K156 ["DeleteTooltip"]
      513 NAMECALL                         R40 R1 K150 ["getText"]
      515 CALL                             R40 3 1
      516 SETTABLEKS                       R40 R39 K146 ["title"]
      518 GETUPVAL                         R40 0
      519 GETTABLEKS                       R40 R40 K14 ["createElement"]
      521 GETUPVAL                         R41 13
      522 DUPTABLE                         R42 K158 [{["icon"], ["onActivated"], ["size"], ["testId"] = "DeleteButton"}]
      523 GETUPVAL                         R43 14
      524 GETTABLEKS                       R43 R43 K77 ["Icon"]
      526 GETTABLEKS                       R43 R43 K159 ["TrashCan"]
      528 SETTABLEKS                       R43 R42 K73 ["icon"]
      530 GETTABLEKS                       R43 R0 K160 ["onDelete"]
      532 SETTABLEKS                       R43 R42 K74 ["onActivated"]
      534 GETUPVAL                         R43 15
      535 GETTABLEKS                       R43 R43 K80 ["XSmall"]
      537 SETTABLEKS                       R43 R42 K75 ["size"]
      539 CALL                             R40 2 -1
      540 CALL                             R37 -1 1
      541 SETTABLEKS                       R37 R36 K125 ["DeleteButton"]
      543 CALL                             R33 3 1
      544 SETTABLEKS                       R33 R32 K118 ["Row"]
      546 GETUPVAL                         R33 0
      547 GETTABLEKS                       R33 R33 K14 ["createElement"]
      549 GETUPVAL                         R34 21
      550 DUPTABLE                         R35 K161 [{"LayoutOrder"}]
      551 MOVE                             R36 R19
      552 CALL                             R36 0 1
      553 SETTABLEKS                       R36 R35 K65 ["LayoutOrder"]
      555 CALL                             R33 2 1
      556 SETTABLEKS                       R33 R32 K119 ["Divider"]
      558 CALL                             R29 3 1
      559 SETTABLEKS                       R29 R28 K55 ["Title"]
      561 JUMPIFNOT                        R7 ; [+2]
      562 LOADNIL                          R29
      563 JUMP                             ; [+176]
      564 GETUPVAL                         R29 0
      565 GETTABLEKS                       R29 R29 K14 ["createElement"]
      567 GETUPVAL                         R30 10
      568 DUPTABLE                         R31 K163 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"], ["testId"] = "Settings"}]
      569 MOVE                             R32 R17
      570 CALL                             R32 0 1
      571 SETTABLEKS                       R32 R31 K65 ["LayoutOrder"]
      573 DUPTABLE                         R32 K167 [{"Header", "BaseMaterial", "Variant", "Color"}]
      574 GETUPVAL                         R33 0
      575 GETTABLEKS                       R33 R33 K14 ["createElement"]
      577 GETUPVAL                         R34 18
      578 DUPTABLE                         R35 K169 [{["tag"] = "size-full-600 text-title-small text-align-x-left content-emphasis", ["LayoutOrder"], ["Text"]}]
      579 MOVE                             R36 R18
      580 CALL                             R36 0 1
      581 SETTABLEKS                       R36 R35 K65 ["LayoutOrder"]
      583 LOADK                            R38 K149 ["Plugin"]
      584 LOADK                            R39 K170 ["SettingsLabel"]
      585 NAMECALL                         R36 R1 K150 ["getText"]
      587 CALL                             R36 3 1
      588 SETTABLEKS                       R36 R35 K128 ["Text"]
      590 CALL                             R33 2 1
      591 SETTABLEKS                       R33 R32 K164 ["Header"]
      593 GETUPVAL                         R33 0
      594 GETTABLEKS                       R33 R33 K14 ["createElement"]
      596 GETUPVAL                         R34 22
      597 DUPTABLE                         R35 K176 [{["layoutOrder"], ["label"], ["isWide"], ["controlWidth"] = 140, ["control"]}]
      598 MOVE                             R36 R18
      599 CALL                             R36 0 1
      600 SETTABLEKS                       R36 R35 K171 ["layoutOrder"]
      602 LOADK                            R38 K149 ["Plugin"]
      603 LOADK                            R39 K177 ["BaseMaterialLabel"]
      604 NAMECALL                         R36 R1 K150 ["getText"]
      606 CALL                             R36 3 1
      607 SETTABLEKS                       R36 R35 K136 ["label"]
      609 SETTABLEKS                       R6 R35 K172 ["isWide"]
      611 GETUPVAL                         R36 0
      612 GETTABLEKS                       R36 R36 K14 ["createElement"]
      614 GETUPVAL                         R37 23
      615 DUPTABLE                         R38 K181 [{["items"], ["label"] = "", ["onItemChanged"], ["size"], ["variant"], ["value"], ["width"]}]
      616 GETUPVAL                         R39 24
      617 SETTABLEKS                       R39 R38 K178 ["items"]
      619 SETTABLEKS                       R13 R38 K179 ["onItemChanged"]
      621 GETUPVAL                         R39 15
      622 GETTABLEKS                       R39 R39 K145 ["Small"]
      624 SETTABLEKS                       R39 R38 K75 ["size"]
      626 GETUPVAL                         R39 25
      627 GETTABLEKS                       R39 R39 K182 ["Contrast"]
      629 SETTABLEKS                       R39 R38 K105 ["variant"]
      631 GETTABLEKS                       R39 R0 K3 ["entry"]
      633 GETTABLEKS                       R39 R39 K4 ["material"]
      635 GETTABLEKS                       R39 R39 K123 ["Name"]
      637 SETTABLEKS                       R39 R38 K180 ["value"]
      639 GETIMPORT                        R39 K38 [UDim.new]
      641 LOADN                            R40 1
      642 LOADN                            R41 0
      643 CALL                             R39 2 1
      644 SETTABLEKS                       R39 R38 K142 ["width"]
      646 CALL                             R36 2 1
      647 SETTABLEKS                       R36 R35 K175 ["control"]
      649 CALL                             R33 2 1
      650 SETTABLEKS                       R33 R32 K165 ["BaseMaterial"]
      652 GETUPVAL                         R33 0
      653 GETTABLEKS                       R33 R33 K14 ["createElement"]
      655 GETUPVAL                         R34 22
      656 DUPTABLE                         R35 K176 [{["layoutOrder"], ["label"], ["isWide"], ["controlWidth"] = 140, ["control"]}]
      657 MOVE                             R36 R18
      658 CALL                             R36 0 1
      659 SETTABLEKS                       R36 R35 K171 ["layoutOrder"]
      661 LOADK                            R38 K149 ["Plugin"]
      662 LOADK                            R39 K183 ["MaterialVariantLabel"]
      663 NAMECALL                         R36 R1 K150 ["getText"]
      665 CALL                             R36 3 1
      666 SETTABLEKS                       R36 R35 K136 ["label"]
      668 SETTABLEKS                       R6 R35 K172 ["isWide"]
      670 GETUPVAL                         R36 0
      671 GETTABLEKS                       R36 R36 K14 ["createElement"]
      673 GETUPVAL                         R37 23
      674 DUPTABLE                         R38 K181 [{["items"], ["label"] = "", ["onItemChanged"], ["size"], ["variant"], ["value"], ["width"]}]
      675 SETTABLEKS                       R10 R38 K178 ["items"]
      677 SETTABLEKS                       R14 R38 K179 ["onItemChanged"]
      679 GETUPVAL                         R39 15
      680 GETTABLEKS                       R39 R39 K145 ["Small"]
      682 SETTABLEKS                       R39 R38 K75 ["size"]
      684 GETUPVAL                         R39 25
      685 GETTABLEKS                       R39 R39 K182 ["Contrast"]
      687 SETTABLEKS                       R39 R38 K105 ["variant"]
      689 GETTABLEKS                       R40 R0 K3 ["entry"]
      691 GETTABLEKS                       R40 R40 K105 ["variant"]
      693 JUMPIFNOT                        R40 ; [+7]
      694 GETTABLEKS                       R39 R0 K3 ["entry"]
      696 GETTABLEKS                       R39 R39 K105 ["variant"]
      698 GETTABLEKS                       R39 R39 K123 ["Name"]
      700 JUMP                             ; [+1]
      701 LOADK                            R39 K184 ["__none__"]
      702 SETTABLEKS                       R39 R38 K180 ["value"]
      704 GETIMPORT                        R39 K38 [UDim.new]
      706 LOADN                            R40 1
      707 LOADN                            R41 0
      708 CALL                             R39 2 1
      709 SETTABLEKS                       R39 R38 K142 ["width"]
      711 CALL                             R36 2 1
      712 SETTABLEKS                       R36 R35 K175 ["control"]
      714 CALL                             R33 2 1
      715 SETTABLEKS                       R33 R32 K166 ["Variant"]
      717 GETUPVAL                         R33 0
      718 GETTABLEKS                       R33 R33 K14 ["createElement"]
      720 GETUPVAL                         R34 26
      721 DUPTABLE                         R35 K187 [{"layoutOrder", "color", "isWide", "onColorChangeCommitted", "onColorChanged"}]
      722 MOVE                             R36 R18
      723 CALL                             R36 0 1
      724 SETTABLEKS                       R36 R35 K171 ["layoutOrder"]
      726 SETTABLEKS                       R8 R35 K11 ["color"]
      728 SETTABLEKS                       R6 R35 K172 ["isWide"]
      730 GETTABLEKS                       R36 R0 K144 ["onEntryChangeCommitted"]
      732 SETTABLEKS                       R36 R35 K185 ["onColorChangeCommitted"]
      734 SETTABLEKS                       R15 R35 K186 ["onColorChanged"]
      736 CALL                             R33 2 1
      737 SETTABLEKS                       R33 R32 K22 ["Color"]
      739 CALL                             R29 3 1
      740 SETTABLEKS                       R29 R28 K56 ["Settings"]
      742 CALL                             R25 3 1
      743 SETTABLEKS                       R25 R24 K25 ["Scroll"]
      745 CALL                             R21 3 -1
      746 RETURN                           R21 -1

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
      152 NEWTABLE                         R31 0 0
      154 NEWTABLE                         R32 0 0
      156 GETTABLEKS                       R33 R10 K46 ["materials"]
      158 LOADNIL                          R34
      159 LOADNIL                          R35
      160 FORGPREP                         R33
      161 GETIMPORT                        R38 K50 [Enum.Material.Air]
      163 JUMPIFEQ                         R37 R38 ; [+23]
      165 GETIMPORT                        R38 K52 [Enum.Material.Water]
      167 JUMPIFEQ                         R37 R38 ; [+19]
      169 DUPTABLE                         R40 K55 [{"id", "text"}]
      170 GETTABLEKS                       R41 R37 K56 ["Name"]
      172 SETTABLEKS                       R41 R40 K53 ["id"]
      174 GETTABLEKS                       R41 R37 K56 ["Name"]
      176 SETTABLEKS                       R41 R40 K54 ["text"]
      178 FASTCALL2                        TABLE_INSERT R31 R40 ; [+4]
      180 MOVE                             R39 R31
      181 GETIMPORT                        R38 K59 [table.insert]
      183 CALL                             R38 2 0
      184 GETTABLEKS                       R38 R37 K56 ["Name"]
      186 SETTABLE                         R37 R32 R38
      187 FORGLOOP                         R33 2 ; [-27]
      189 DUPCLOSURE                       R33 K60 [PROTO_7]
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R19
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R30
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R6
      196 CAPTURE                          VAL R29
      197 CAPTURE                          VAL R32
      198 CAPTURE                          VAL R12
      199 CAPTURE                          VAL R28
      200 CAPTURE                          VAL R26
      201 CAPTURE                          VAL R22
      202 CAPTURE                          VAL R27
      203 CAPTURE                          VAL R16
      204 CAPTURE                          VAL R1
      205 CAPTURE                          VAL R17
      206 CAPTURE                          VAL R20
      207 CAPTURE                          VAL R21
      208 CAPTURE                          VAL R23
      209 CAPTURE                          VAL R24
      210 CAPTURE                          VAL R25
      211 CAPTURE                          VAL R14
      212 CAPTURE                          VAL R4
      213 CAPTURE                          VAL R15
      214 CAPTURE                          VAL R31
      215 CAPTURE                          VAL R18
      216 CAPTURE                          VAL R2
      217 RETURN                           R33 1
