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
      177 DUPTABLE                         R28 K56 [{"Padding", "Preview", "Title", "Settings"}]
      178 GETUPVAL                         R29 0
      179 GETTABLEKS                       R29 R29 K14 ["createElement"]
      181 LOADK                            R30 K57 ["UIPadding"]
      182 DUPTABLE                         R31 K62 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      183 GETIMPORT                        R32 K38 [UDim.new]
      185 LOADN                            R33 0
      186 GETTABLEKS                       R34 R3 K32 ["Padding"]
      188 GETTABLEKS                       R34 R34 K40 ["Medium"]
      190 CALL                             R32 2 1
      191 SETTABLEKS                       R32 R31 K58 ["PaddingBottom"]
      193 GETIMPORT                        R32 K38 [UDim.new]
      195 LOADN                            R33 0
      196 GETTABLEKS                       R34 R3 K32 ["Padding"]
      198 GETTABLEKS                       R34 R34 K40 ["Medium"]
      200 CALL                             R32 2 1
      201 SETTABLEKS                       R32 R31 K59 ["PaddingLeft"]
      203 GETIMPORT                        R32 K38 [UDim.new]
      205 LOADN                            R33 0
      206 GETTABLEKS                       R34 R3 K32 ["Padding"]
      208 GETTABLEKS                       R34 R34 K40 ["Medium"]
      210 CALL                             R32 2 1
      211 SETTABLEKS                       R32 R31 K60 ["PaddingRight"]
      213 GETIMPORT                        R32 K38 [UDim.new]
      215 LOADN                            R33 0
      216 GETTABLEKS                       R34 R3 K32 ["Padding"]
      218 GETTABLEKS                       R34 R34 K40 ["Medium"]
      220 CALL                             R32 2 1
      221 SETTABLEKS                       R32 R31 K61 ["PaddingTop"]
      223 CALL                             R29 2 1
      224 SETTABLEKS                       R29 R28 K32 ["Padding"]
      226 GETUPVAL                         R29 0
      227 GETTABLEKS                       R29 R29 K14 ["createElement"]
      229 GETUPVAL                         R30 10
      230 DUPTABLE                         R31 K67 [{["tag"] = "size-full-0 radius-large clip bg-surface-200", ["LayoutOrder"], ["testId"] = "DetailsPreview", ["aspectRatio"]}]
      231 MOVE                             R32 R17
      232 CALL                             R32 0 1
      233 SETTABLEKS                       R32 R31 K64 ["LayoutOrder"]
      235 DUPTABLE                         R32 K72 [{["AspectRatio"] = 1, ["AspectType"], ["DominantAxis"]}]
      236 GETIMPORT                        R33 K74 [Enum.AspectType.ScaleWithParentSize]
      238 SETTABLEKS                       R33 R32 K70 ["AspectType"]
      240 GETIMPORT                        R33 K76 [Enum.DominantAxis.Width]
      242 SETTABLEKS                       R33 R32 K71 ["DominantAxis"]
      244 SETTABLEKS                       R32 R31 K66 ["aspectRatio"]
      246 DUPTABLE                         R32 K79 [{"CloseBar", "MaterialPreview"}]
      247 GETUPVAL                         R33 0
      248 GETTABLEKS                       R33 R33 K14 ["createElement"]
      250 GETUPVAL                         R34 10
      251 DUPTABLE                         R35 K83 [{["tag"] = "row align-x-right align-y-center size-full-600 padding-right-small padding-top-small", ["ZIndex"] = 2}]
      252 DUPTABLE                         R36 K85 [{"CloseButton"}]
      253 GETUPVAL                         R37 0
      254 GETTABLEKS                       R37 R37 K14 ["createElement"]
      256 GETUPVAL                         R38 13
      257 DUPTABLE                         R39 K90 [{["icon"], ["variant"], ["onActivated"], ["size"], ["testId"] = "CloseButton"}]
      258 GETUPVAL                         R40 14
      259 GETTABLEKS                       R40 R40 K91 ["Icon"]
      261 GETTABLEKS                       R40 R40 K92 ["X"]
      263 SETTABLEKS                       R40 R39 K86 ["icon"]
      265 GETUPVAL                         R40 15
      266 GETTABLEKS                       R40 R40 K93 ["OverMedia"]
      268 SETTABLEKS                       R40 R39 K87 ["variant"]
      270 GETTABLEKS                       R40 R0 K94 ["onClose"]
      272 SETTABLEKS                       R40 R39 K88 ["onActivated"]
      274 GETUPVAL                         R40 16
      275 GETTABLEKS                       R40 R40 K95 ["XSmall"]
      277 SETTABLEKS                       R40 R39 K89 ["size"]
      279 CALL                             R37 2 1
      280 SETTABLEKS                       R37 R36 K84 ["CloseButton"]
      282 CALL                             R33 3 1
      283 SETTABLEKS                       R33 R32 K77 ["CloseBar"]
      285 GETUPVAL                         R33 0
      286 GETTABLEKS                       R33 R33 K14 ["createElement"]
      288 GETUPVAL                         R34 17
      289 DUPTABLE                         R35 K104 [{["Material"], ["OverrideColor"], ["OverrideTransparency"], ["MaterialPreviewGeometryType"], ["BackgroundColor"], ["Size"], ["CornerRadius"], ["Static"] = True}]
      290 JUMPIFNOT                        R16 ; [+3]
      291 GETTABLEKS                       R36 R16 K4 ["material"]
      293 JUMP                             ; [+14]
      294 GETTABLEKS                       R37 R0 K3 ["entry"]
      296 GETTABLEKS                       R37 R37 K87 ["variant"]
      298 JUMPIFNOT                        R37 ; [+5]
      299 GETTABLEKS                       R36 R0 K3 ["entry"]
      301 GETTABLEKS                       R36 R36 K87 ["variant"]
      303 JUMP                             ; [+4]
      304 GETTABLEKS                       R36 R0 K3 ["entry"]
      306 GETTABLEKS                       R36 R36 K4 ["material"]
      308 SETTABLEKS                       R36 R35 K6 ["Material"]
      310 JUMPIFNOT                        R16 ; [+3]
      311 GETTABLEKS                       R36 R16 K11 ["color"]
      313 JUMP                             ; [+1]
      314 MOVE                             R36 R8
      315 SETTABLEKS                       R36 R35 K96 ["OverrideColor"]
      317 JUMPIFNOT                        R16 ; [+3]
      318 GETTABLEKS                       R36 R16 K105 ["transparency"]
      320 JUMP                             ; [+1]
      321 LOADNIL                          R36
      322 SETTABLEKS                       R36 R35 K97 ["OverrideTransparency"]
      324 GETUPVAL                         R36 18
      325 GETTABLEKS                       R36 R36 K106 ["CubeCornerOn"]
      327 SETTABLEKS                       R36 R35 K98 ["MaterialPreviewGeometryType"]
      329 GETIMPORT                        R38 K109 [Enum.StudioStyleGuideColor.ViewPortBackground]
      331 NAMECALL                         R36 R2 K110 ["GetColor"]
      333 CALL                             R36 2 1
      334 SETTABLEKS                       R36 R35 K99 ["BackgroundColor"]
      336 GETIMPORT                        R36 K112 [UDim2.fromScale]
      338 LOADN                            R37 1
      339 LOADN                            R38 1
      340 CALL                             R36 2 1
      341 SETTABLEKS                       R36 R35 K100 ["Size"]
      343 GETIMPORT                        R36 K38 [UDim.new]
      345 LOADN                            R37 0
      346 GETTABLEKS                       R38 R3 K113 ["Radius"]
      348 GETTABLEKS                       R38 R38 K114 ["Large"]
      350 CALL                             R36 2 1
      351 SETTABLEKS                       R36 R35 K101 ["CornerRadius"]
      353 CALL                             R33 2 1
      354 SETTABLEKS                       R33 R32 K78 ["MaterialPreview"]
      356 CALL                             R29 3 1
      357 SETTABLEKS                       R29 R28 K53 ["Preview"]
      359 GETUPVAL                         R29 0
      360 GETTABLEKS                       R29 R29 K14 ["createElement"]
      362 GETUPVAL                         R30 10
      363 DUPTABLE                         R31 K116 [{["tag"] = "col gap-xsmall size-full-0 auto-y", ["LayoutOrder"]}]
      364 MOVE                             R32 R17
      365 CALL                             R32 0 1
      366 SETTABLEKS                       R32 R31 K64 ["LayoutOrder"]
      368 DUPTABLE                         R32 K119 [{"Row", "Divider"}]
      369 GETUPVAL                         R33 0
      370 GETTABLEKS                       R33 R33 K14 ["createElement"]
      372 GETUPVAL                         R34 10
      373 DUPTABLE                         R35 K121 [{["tag"] = "row align-y-center gap-xsmall size-full-800", ["LayoutOrder"]}]
      374 MOVE                             R36 R19
      375 CALL                             R36 0 1
      376 SETTABLEKS                       R36 R35 K64 ["LayoutOrder"]
      378 DUPTABLE                         R36 K125 [{"Name", "DuplicateButton", "DeleteButton"}]
      379 JUMPIFNOT                        R7 ; [+17]
      380 GETUPVAL                         R37 0
      381 GETTABLEKS                       R37 R37 K14 ["createElement"]
      383 GETUPVAL                         R38 19
      384 DUPTABLE                         R39 K129 [{["tag"] = "grow size-0-full text-title-medium text-align-x-left content-emphasis", ["LayoutOrder"], ["Text"], ["testId"] = "MaterialName"}]
      385 MOVE                             R40 R20
      386 CALL                             R40 0 1
      387 SETTABLEKS                       R40 R39 K64 ["LayoutOrder"]
      389 GETTABLEKS                       R40 R0 K3 ["entry"]
      391 GETTABLEKS                       R40 R40 K130 ["name"]
      393 SETTABLEKS                       R40 R39 K127 ["Text"]
      395 CALL                             R37 2 1
      396 JUMP                             ; [+43]
      397 GETUPVAL                         R37 0
      398 GETTABLEKS                       R37 R37 K14 ["createElement"]
      400 GETUPVAL                         R38 10
      401 DUPTABLE                         R39 K132 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      402 MOVE                             R40 R20
      403 CALL                             R40 0 1
      404 SETTABLEKS                       R40 R39 K64 ["LayoutOrder"]
      406 DUPTABLE                         R40 K134 [{"Input"}]
      407 GETUPVAL                         R41 0
      408 GETTABLEKS                       R41 R41 K14 ["createElement"]
      410 GETUPVAL                         R42 20
      411 DUPTABLE                         R43 K142 [{["label"] = "", ["onChanged"], ["onFocusLost"], ["size"], ["text"], ["testId"] = "MaterialNameInput", ["width"]}]
      412 SETTABLEKS                       R12 R43 K137 ["onChanged"]
      414 GETTABLEKS                       R44 R0 K143 ["onEntryChangeCommitted"]
      416 SETTABLEKS                       R44 R43 K138 ["onFocusLost"]
      418 GETUPVAL                         R44 16
      419 GETTABLEKS                       R44 R44 K144 ["Small"]
      421 SETTABLEKS                       R44 R43 K89 ["size"]
      423 GETTABLEKS                       R44 R0 K3 ["entry"]
      425 GETTABLEKS                       R44 R44 K130 ["name"]
      427 SETTABLEKS                       R44 R43 K139 ["text"]
      429 GETIMPORT                        R44 K38 [UDim.new]
      431 LOADN                            R45 1
      432 LOADN                            R46 0
      433 CALL                             R44 2 1
      434 SETTABLEKS                       R44 R43 K141 ["width"]
      436 CALL                             R41 2 1
      437 SETTABLEKS                       R41 R40 K133 ["Input"]
      439 CALL                             R37 3 1
      440 SETTABLEKS                       R37 R36 K122 ["Name"]
      442 JUMPIFNOT                        R7 ; [+2]
      443 LOADNIL                          R37
      444 JUMP                             ; [+44]
      445 GETUPVAL                         R37 0
      446 GETTABLEKS                       R37 R37 K14 ["createElement"]
      448 GETUPVAL                         R38 21
      449 DUPTABLE                         R39 K147 [{["LayoutOrder"], ["title"], ["testId"] = "DuplicateTooltip"}]
      450 MOVE                             R40 R20
      451 CALL                             R40 0 1
      452 SETTABLEKS                       R40 R39 K64 ["LayoutOrder"]
      454 LOADK                            R42 K148 ["Plugin"]
      455 LOADK                            R43 K146 ["DuplicateTooltip"]
      456 NAMECALL                         R40 R1 K149 ["getText"]
      458 CALL                             R40 3 1
      459 SETTABLEKS                       R40 R39 K145 ["title"]
      461 GETUPVAL                         R40 0
      462 GETTABLEKS                       R40 R40 K14 ["createElement"]
      464 GETUPVAL                         R41 13
      465 DUPTABLE                         R42 K151 [{["icon"], ["isDisabled"], ["onActivated"], ["size"], ["testId"] = "DuplicateButton"}]
      466 GETUPVAL                         R43 14
      467 GETTABLEKS                       R43 R43 K91 ["Icon"]
      469 GETTABLEKS                       R43 R43 K152 ["TwoStackedSquares"]
      471 SETTABLEKS                       R43 R42 K86 ["icon"]
      473 GETTABLEKS                       R44 R0 K153 ["canDuplicate"]
      475 NOT                              R43 R44
      476 SETTABLEKS                       R43 R42 K150 ["isDisabled"]
      478 GETTABLEKS                       R43 R0 K154 ["onDuplicate"]
      480 SETTABLEKS                       R43 R42 K88 ["onActivated"]
      482 GETUPVAL                         R43 16
      483 GETTABLEKS                       R43 R43 K95 ["XSmall"]
      485 SETTABLEKS                       R43 R42 K89 ["size"]
      487 CALL                             R40 2 -1
      488 CALL                             R37 -1 1
      489 SETTABLEKS                       R37 R36 K123 ["DuplicateButton"]
      491 JUMPIFNOT                        R7 ; [+2]
      492 LOADNIL                          R37
      493 JUMP                             ; [+39]
      494 GETUPVAL                         R37 0
      495 GETTABLEKS                       R37 R37 K14 ["createElement"]
      497 GETUPVAL                         R38 21
      498 DUPTABLE                         R39 K156 [{["LayoutOrder"], ["title"], ["testId"] = "DeleteTooltip"}]
      499 MOVE                             R40 R20
      500 CALL                             R40 0 1
      501 SETTABLEKS                       R40 R39 K64 ["LayoutOrder"]
      503 LOADK                            R42 K148 ["Plugin"]
      504 LOADK                            R43 K155 ["DeleteTooltip"]
      505 NAMECALL                         R40 R1 K149 ["getText"]
      507 CALL                             R40 3 1
      508 SETTABLEKS                       R40 R39 K145 ["title"]
      510 GETUPVAL                         R40 0
      511 GETTABLEKS                       R40 R40 K14 ["createElement"]
      513 GETUPVAL                         R41 13
      514 DUPTABLE                         R42 K157 [{["icon"], ["onActivated"], ["size"], ["testId"] = "DeleteButton"}]
      515 GETUPVAL                         R43 14
      516 GETTABLEKS                       R43 R43 K91 ["Icon"]
      518 GETTABLEKS                       R43 R43 K158 ["TrashCan"]
      520 SETTABLEKS                       R43 R42 K86 ["icon"]
      522 GETTABLEKS                       R43 R0 K159 ["onDelete"]
      524 SETTABLEKS                       R43 R42 K88 ["onActivated"]
      526 GETUPVAL                         R43 16
      527 GETTABLEKS                       R43 R43 K95 ["XSmall"]
      529 SETTABLEKS                       R43 R42 K89 ["size"]
      531 CALL                             R40 2 -1
      532 CALL                             R37 -1 1
      533 SETTABLEKS                       R37 R36 K124 ["DeleteButton"]
      535 CALL                             R33 3 1
      536 SETTABLEKS                       R33 R32 K117 ["Row"]
      538 GETUPVAL                         R33 0
      539 GETTABLEKS                       R33 R33 K14 ["createElement"]
      541 GETUPVAL                         R34 22
      542 DUPTABLE                         R35 K160 [{"LayoutOrder"}]
      543 MOVE                             R36 R19
      544 CALL                             R36 0 1
      545 SETTABLEKS                       R36 R35 K64 ["LayoutOrder"]
      547 CALL                             R33 2 1
      548 SETTABLEKS                       R33 R32 K118 ["Divider"]
      550 CALL                             R29 3 1
      551 SETTABLEKS                       R29 R28 K54 ["Title"]
      553 JUMPIFNOT                        R7 ; [+2]
      554 LOADNIL                          R29
      555 JUMP                             ; [+176]
      556 GETUPVAL                         R29 0
      557 GETTABLEKS                       R29 R29 K14 ["createElement"]
      559 GETUPVAL                         R30 10
      560 DUPTABLE                         R31 K162 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"], ["testId"] = "Settings"}]
      561 MOVE                             R32 R17
      562 CALL                             R32 0 1
      563 SETTABLEKS                       R32 R31 K64 ["LayoutOrder"]
      565 DUPTABLE                         R32 K166 [{"Header", "BaseMaterial", "Variant", "Color"}]
      566 GETUPVAL                         R33 0
      567 GETTABLEKS                       R33 R33 K14 ["createElement"]
      569 GETUPVAL                         R34 19
      570 DUPTABLE                         R35 K168 [{["tag"] = "size-full-600 text-title-small text-align-x-left content-emphasis", ["LayoutOrder"], ["Text"]}]
      571 MOVE                             R36 R18
      572 CALL                             R36 0 1
      573 SETTABLEKS                       R36 R35 K64 ["LayoutOrder"]
      575 LOADK                            R38 K148 ["Plugin"]
      576 LOADK                            R39 K169 ["SettingsLabel"]
      577 NAMECALL                         R36 R1 K149 ["getText"]
      579 CALL                             R36 3 1
      580 SETTABLEKS                       R36 R35 K127 ["Text"]
      582 CALL                             R33 2 1
      583 SETTABLEKS                       R33 R32 K163 ["Header"]
      585 GETUPVAL                         R33 0
      586 GETTABLEKS                       R33 R33 K14 ["createElement"]
      588 GETUPVAL                         R34 23
      589 DUPTABLE                         R35 K175 [{["layoutOrder"], ["label"], ["isWide"], ["controlWidth"] = 140, ["control"]}]
      590 MOVE                             R36 R18
      591 CALL                             R36 0 1
      592 SETTABLEKS                       R36 R35 K170 ["layoutOrder"]
      594 LOADK                            R38 K148 ["Plugin"]
      595 LOADK                            R39 K176 ["BaseMaterialLabel"]
      596 NAMECALL                         R36 R1 K149 ["getText"]
      598 CALL                             R36 3 1
      599 SETTABLEKS                       R36 R35 K135 ["label"]
      601 SETTABLEKS                       R6 R35 K171 ["isWide"]
      603 GETUPVAL                         R36 0
      604 GETTABLEKS                       R36 R36 K14 ["createElement"]
      606 GETUPVAL                         R37 24
      607 DUPTABLE                         R38 K180 [{["items"], ["label"] = "", ["onItemChanged"], ["size"], ["variant"], ["value"], ["width"]}]
      608 GETUPVAL                         R39 25
      609 SETTABLEKS                       R39 R38 K177 ["items"]
      611 SETTABLEKS                       R13 R38 K178 ["onItemChanged"]
      613 GETUPVAL                         R39 16
      614 GETTABLEKS                       R39 R39 K144 ["Small"]
      616 SETTABLEKS                       R39 R38 K89 ["size"]
      618 GETUPVAL                         R39 26
      619 GETTABLEKS                       R39 R39 K181 ["Contrast"]
      621 SETTABLEKS                       R39 R38 K87 ["variant"]
      623 GETTABLEKS                       R39 R0 K3 ["entry"]
      625 GETTABLEKS                       R39 R39 K4 ["material"]
      627 GETTABLEKS                       R39 R39 K122 ["Name"]
      629 SETTABLEKS                       R39 R38 K179 ["value"]
      631 GETIMPORT                        R39 K38 [UDim.new]
      633 LOADN                            R40 1
      634 LOADN                            R41 0
      635 CALL                             R39 2 1
      636 SETTABLEKS                       R39 R38 K141 ["width"]
      638 CALL                             R36 2 1
      639 SETTABLEKS                       R36 R35 K174 ["control"]
      641 CALL                             R33 2 1
      642 SETTABLEKS                       R33 R32 K164 ["BaseMaterial"]
      644 GETUPVAL                         R33 0
      645 GETTABLEKS                       R33 R33 K14 ["createElement"]
      647 GETUPVAL                         R34 23
      648 DUPTABLE                         R35 K175 [{["layoutOrder"], ["label"], ["isWide"], ["controlWidth"] = 140, ["control"]}]
      649 MOVE                             R36 R18
      650 CALL                             R36 0 1
      651 SETTABLEKS                       R36 R35 K170 ["layoutOrder"]
      653 LOADK                            R38 K148 ["Plugin"]
      654 LOADK                            R39 K182 ["MaterialVariantLabel"]
      655 NAMECALL                         R36 R1 K149 ["getText"]
      657 CALL                             R36 3 1
      658 SETTABLEKS                       R36 R35 K135 ["label"]
      660 SETTABLEKS                       R6 R35 K171 ["isWide"]
      662 GETUPVAL                         R36 0
      663 GETTABLEKS                       R36 R36 K14 ["createElement"]
      665 GETUPVAL                         R37 24
      666 DUPTABLE                         R38 K180 [{["items"], ["label"] = "", ["onItemChanged"], ["size"], ["variant"], ["value"], ["width"]}]
      667 SETTABLEKS                       R10 R38 K177 ["items"]
      669 SETTABLEKS                       R14 R38 K178 ["onItemChanged"]
      671 GETUPVAL                         R39 16
      672 GETTABLEKS                       R39 R39 K144 ["Small"]
      674 SETTABLEKS                       R39 R38 K89 ["size"]
      676 GETUPVAL                         R39 26
      677 GETTABLEKS                       R39 R39 K181 ["Contrast"]
      679 SETTABLEKS                       R39 R38 K87 ["variant"]
      681 GETTABLEKS                       R40 R0 K3 ["entry"]
      683 GETTABLEKS                       R40 R40 K87 ["variant"]
      685 JUMPIFNOT                        R40 ; [+7]
      686 GETTABLEKS                       R39 R0 K3 ["entry"]
      688 GETTABLEKS                       R39 R39 K87 ["variant"]
      690 GETTABLEKS                       R39 R39 K122 ["Name"]
      692 JUMP                             ; [+1]
      693 LOADK                            R39 K183 ["__none__"]
      694 SETTABLEKS                       R39 R38 K179 ["value"]
      696 GETIMPORT                        R39 K38 [UDim.new]
      698 LOADN                            R40 1
      699 LOADN                            R41 0
      700 CALL                             R39 2 1
      701 SETTABLEKS                       R39 R38 K141 ["width"]
      703 CALL                             R36 2 1
      704 SETTABLEKS                       R36 R35 K174 ["control"]
      706 CALL                             R33 2 1
      707 SETTABLEKS                       R33 R32 K165 ["Variant"]
      709 GETUPVAL                         R33 0
      710 GETTABLEKS                       R33 R33 K14 ["createElement"]
      712 GETUPVAL                         R34 27
      713 DUPTABLE                         R35 K186 [{"layoutOrder", "color", "isWide", "onColorChangeCommitted", "onColorChanged"}]
      714 MOVE                             R36 R18
      715 CALL                             R36 0 1
      716 SETTABLEKS                       R36 R35 K170 ["layoutOrder"]
      718 SETTABLEKS                       R8 R35 K11 ["color"]
      720 SETTABLEKS                       R6 R35 K171 ["isWide"]
      722 GETTABLEKS                       R36 R0 K143 ["onEntryChangeCommitted"]
      724 SETTABLEKS                       R36 R35 K184 ["onColorChangeCommitted"]
      726 SETTABLEKS                       R15 R35 K185 ["onColorChanged"]
      728 CALL                             R33 2 1
      729 SETTABLEKS                       R33 R32 K22 ["Color"]
      731 CALL                             R29 3 1
      732 SETTABLEKS                       R29 R28 K55 ["Settings"]
      734 CALL                             R25 3 1
      735 SETTABLEKS                       R25 R24 K25 ["Scroll"]
      737 CALL                             R21 3 -1
      738 RETURN                           R21 -1

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
      112 GETTABLEKS                       R17 R17 K31 ["ButtonVariant"]
      114 GETTABLEKS                       R18 R3 K30 ["Enums"]
      116 GETTABLEKS                       R18 R18 K32 ["InputSize"]
      118 GETTABLEKS                       R19 R3 K30 ["Enums"]
      120 GETTABLEKS                       R19 R19 K33 ["InputVariant"]
      122 GETTABLEKS                       R20 R9 K34 ["Contexts"]
      124 GETTABLEKS                       R20 R20 K35 ["Localization"]
      126 GETTABLEKS                       R21 R5 K8 ["Components"]
      128 GETTABLEKS                       R21 R21 K36 ["MaterialPreview"]
      130 GETTABLEKS                       R22 R5 K30 ["Enums"]
      132 GETTABLEKS                       R22 R22 K37 ["MaterialPreviewGeometryType"]
      134 GETTABLEKS                       R23 R3 K38 ["ScrollView"]
      136 GETTABLEKS                       R24 R3 K39 ["Text"]
      138 GETTABLEKS                       R25 R3 K40 ["TextInput"]
      140 GETTABLEKS                       R26 R3 K41 ["Tooltip"]
      142 GETTABLEKS                       R27 R3 K42 ["View"]
      144 GETTABLEKS                       R28 R3 K30 ["Enums"]
      146 GETTABLEKS                       R28 R28 K43 ["Visibility"]
      148 GETTABLEKS                       R29 R8 K44 ["createNextOrder"]
      150 GETTABLEKS                       R30 R8 K45 ["useEventCallback"]
      152 GETTABLEKS                       R31 R3 K24 ["Hooks"]
      154 GETTABLEKS                       R31 R31 K46 ["useTokens"]
      156 NEWTABLE                         R32 0 0
      158 NEWTABLE                         R33 0 0
      160 GETTABLEKS                       R34 R10 K47 ["materials"]
      162 LOADNIL                          R35
      163 LOADNIL                          R36
      164 FORGPREP                         R34
      165 GETIMPORT                        R39 K51 [Enum.Material.Air]
      167 JUMPIFEQ                         R38 R39 ; [+23]
      169 GETIMPORT                        R39 K53 [Enum.Material.Water]
      171 JUMPIFEQ                         R38 R39 ; [+19]
      173 DUPTABLE                         R41 K56 [{"id", "text"}]
      174 GETTABLEKS                       R42 R38 K57 ["Name"]
      176 SETTABLEKS                       R42 R41 K54 ["id"]
      178 GETTABLEKS                       R42 R38 K57 ["Name"]
      180 SETTABLEKS                       R42 R41 K55 ["text"]
      182 FASTCALL2                        TABLE_INSERT R32 R41 ; [+4]
      184 MOVE                             R40 R32
      185 GETIMPORT                        R39 K60 [table.insert]
      187 CALL                             R39 2 0
      188 GETTABLEKS                       R39 R38 K57 ["Name"]
      190 SETTABLE                         R38 R33 R39
      191 FORGLOOP                         R34 2 ; [-27]
      193 DUPCLOSURE                       R34 K61 [PROTO_7]
      194 CAPTURE                          VAL R7
      195 CAPTURE                          VAL R20
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R31
      198 CAPTURE                          VAL R10
      199 CAPTURE                          VAL R6
      200 CAPTURE                          VAL R30
      201 CAPTURE                          VAL R33
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R29
      204 CAPTURE                          VAL R27
      205 CAPTURE                          VAL R23
      206 CAPTURE                          VAL R28
      207 CAPTURE                          VAL R16
      208 CAPTURE                          VAL R1
      209 CAPTURE                          VAL R17
      210 CAPTURE                          VAL R18
      211 CAPTURE                          VAL R21
      212 CAPTURE                          VAL R22
      213 CAPTURE                          VAL R24
      214 CAPTURE                          VAL R25
      215 CAPTURE                          VAL R26
      216 CAPTURE                          VAL R14
      217 CAPTURE                          VAL R4
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R32
      220 CAPTURE                          VAL R19
      221 CAPTURE                          VAL R2
      222 RETURN                           R34 1
