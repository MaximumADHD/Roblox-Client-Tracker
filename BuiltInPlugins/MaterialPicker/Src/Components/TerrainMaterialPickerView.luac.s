PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["baseMaterial"]
        2 GETIMPORT                        R3 K4 [Enum.Material.Air]
        4 JUMPIFNOTEQ                      R2 R3 ; [+4]
        6 GETTABLEKS                       R2 R1 K5 ["allowAir"]
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R0 K0 ["baseMaterial"]
       11 GETIMPORT                        R3 K7 [Enum.Material.Water]
       13 JUMPIFNOTEQ                      R2 R3 ; [+4]
       15 GETTABLEKS                       R2 R1 K8 ["allowWater"]
       17 RETURN                           R2 1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 JUMPIF                           R1 ; [+8]
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETIMPORT                        R1 K3 [Vector2.new]
        8 LOADN                            R2 0
        9 GETUPVAL                         R3 2
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K4 ["CanvasPosition"]
       13 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K1 [pcall]
        4 GETIMPORT                        R1 K4 [task.cancel]
        6 GETUPVAL                         R2 1
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 SUBK                             R0 R1 K0 [1]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["viewType"]
        9 JUMPIFNOTEQKS                    R2 K2 ["grid"] ; [+8]
       11 DIVK                             R3 R0 K4 [4]
       12 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       13 GETIMPORT                        R2 K7 [math.floor]
       15 CALL                             R2 1 1
       16 MULK                             R1 R2 K3 [65]
       17 JUMP                             ; [+3]
       18 LOADN                            R2 4
       19 MULK                             R3 R0 K8 [40]
       20 ADD                              R1 R2 R3
       21 LOADB                            R2 0
       22 GETIMPORT                        R3 K11 [task.defer]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          REF R2
       27 CAPTURE                          VAL R1
       28 CALL                             R3 1 1
       29 NEWCLOSURE                       R4 P1
       30 CAPTURE                          REF R2
       31 CAPTURE                          VAL R3
       32 CLOSEUPVALS                      R2
       33 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onViewTypeChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["viewType"]
        6 JUMPIFNOTEQKS                    R2 K2 ["grid"] ; [+3]
        8 LOADK                            R1 K3 ["list"]
        9 JUMP                             ; [+1]
       10 LOADK                            R1 K2 ["grid"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["Hooks"]
       10 GETTABLEKS                       R2 R2 K3 ["useTokens"]
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K4 ["useState"]
       16 LOADK                            R4 K5 [""]
       17 CALL                             R3 1 2
       18 GETUPVAL                         R5 3
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K6 ["useRef"]
       23 LOADNIL                          R7
       24 CALL                             R6 1 1
       25 GETIMPORT                        R7 K9 [string.lower]
       27 MOVE                             R8 R3
       28 CALL                             R7 1 1
       29 NEWTABLE                         R8 0 0
       31 LOADNIL                          R9
       32 GETTABLEKS                       R10 R0 K10 ["catalog"]
       34 LOADNIL                          R11
       35 LOADNIL                          R12
       36 FORGPREP                         R10
       37 GETTABLEKS                       R16 R0 K11 ["request"]
       39 GETTABLEKS                       R17 R14 K12 ["baseMaterial"]
       41 GETIMPORT                        R18 K16 [Enum.Material.Air]
       43 JUMPIFNOTEQ                      R17 R18 ; [+4]
       45 GETTABLEKS                       R15 R16 K17 ["allowAir"]
       47 JUMP                             ; [+10]
       48 GETTABLEKS                       R17 R14 K12 ["baseMaterial"]
       50 GETIMPORT                        R18 K19 [Enum.Material.Water]
       52 JUMPIFNOTEQ                      R17 R18 ; [+4]
       54 GETTABLEKS                       R15 R16 K20 ["allowWater"]
       56 JUMP                             ; [+1]
       57 LOADB                            R15 1
       58 JUMPIFNOT                        R15 ; [+30]
       59 JUMPIFEQKS                       R7 K5 [""] ; [+13]
       61 GETIMPORT                        R15 K22 [string.find]
       63 GETIMPORT                        R16 K9 [string.lower]
       65 GETTABLEKS                       R17 R14 K23 ["displayName"]
       67 CALL                             R16 1 1
       68 MOVE                             R17 R7
       69 LOADN                            R18 1
       70 LOADB                            R19 1
       71 CALL                             R15 4 1
       72 JUMPIFNOT                        R15 ; [+16]
       73 FASTCALL2                        TABLE_INSERT R8 R14 ; [+5]
       75 MOVE                             R16 R8
       76 MOVE                             R17 R14
       77 GETIMPORT                        R15 K26 [table.insert]
       79 CALL                             R15 2 0
       80 GETTABLEKS                       R15 R14 K27 ["slotIndex"]
       82 GETTABLEKS                       R16 R0 K11 ["request"]
       84 GETTABLEKS                       R16 R16 K28 ["selectedSlotIndex"]
       86 JUMPIFNOTEQ                      R15 R16 ; [+2]
       88 LENGTH                           R9 R8
       89 FORGLOOP                         R10 2 ; [-53]
       91 GETUPVAL                         R10 0
       92 GETTABLEKS                       R10 R10 K29 ["useEffect"]
       94 NEWCLOSURE                       R11 P0
       95 CAPTURE                          REF R9
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R6
       98 NEWTABLE                         R12 0 2
      100 MOVE                             R13 R9
      101 GETTABLEKS                       R14 R0 K30 ["viewType"]
      103 SETLIST                          R12 R13 2 [1]
      105 CALL                             R10 2 0
      106 NEWTABLE                         R10 2 0
      108 MOVE                             R11 R8
      109 LOADNIL                          R12
      110 LOADNIL                          R13
      111 FORGPREP                         R11
      112 GETTABLEKS                       R17 R15 K27 ["slotIndex"]
      114 GETTABLEKS                       R18 R0 K11 ["request"]
      116 GETTABLEKS                       R18 R18 K28 ["selectedSlotIndex"]
      118 JUMPIFEQ                         R17 R18 ; [+2]
      120 LOADB                            R16 0 +1
      121 LOADB                            R16 1
      122 GETUPVAL                         R17 0
      123 GETTABLEKS                       R17 R17 K31 ["createElement"]
      125 GETUPVAL                         R18 4
      126 DUPTABLE                         R19 K36 [{"entry", "isSelected", "layoutOrder", "onActivated", "viewType"}]
      127 SETTABLEKS                       R15 R19 K32 ["entry"]
      129 SETTABLEKS                       R16 R19 K33 ["isSelected"]
      131 SETTABLEKS                       R14 R19 K34 ["layoutOrder"]
      133 GETTABLEKS                       R20 R0 K37 ["onSlotSelected"]
      135 SETTABLEKS                       R20 R19 K35 ["onActivated"]
      137 GETTABLEKS                       R20 R0 K30 ["viewType"]
      139 SETTABLEKS                       R20 R19 K30 ["viewType"]
      141 CALL                             R17 2 1
      142 LOADK                            R19 K38 ["Tile_%*"]
      143 GETTABLEKS                       R21 R15 K27 ["slotIndex"]
      145 NAMECALL                         R19 R19 K39 ["format"]
      147 CALL                             R19 2 1
      148 MOVE                             R18 R19
      149 SETTABLE                         R17 R10 R18
      150 FORGLOOP                         R11 2 ; [-39]
      152 GETTABLEKS                       R11 R0 K30 ["viewType"]
      154 JUMPIFNOTEQKS                    R11 K40 ["grid"] ; [+66]
      156 GETUPVAL                         R11 0
      157 GETTABLEKS                       R11 R11 K31 ["createElement"]
      159 LOADK                            R12 K41 ["UIGridLayout"]
      160 DUPTABLE                         R13 K47 [{["CellPadding"], ["CellSize"], ["FillDirectionMaxCells"] = 4, ["SortOrder"]}]
      161 GETIMPORT                        R14 K50 [UDim2.fromOffset]
      163 LOADN                            R15 4
      164 LOADN                            R16 4
      165 CALL                             R14 2 1
      166 SETTABLEKS                       R14 R13 K42 ["CellPadding"]
      168 GETIMPORT                        R14 K52 [UDim2.new]
      170 LOADK                            R15 K53 [0.25]
      171 LOADN                            R16 -5
      172 LOADN                            R17 0
      173 LOADN                            R18 61
      174 CALL                             R14 4 1
      175 SETTABLEKS                       R14 R13 K43 ["CellSize"]
      177 GETIMPORT                        R14 K55 [Enum.SortOrder.LayoutOrder]
      179 SETTABLEKS                       R14 R13 K46 ["SortOrder"]
      181 CALL                             R11 2 1
      182 SETTABLEKS                       R11 R10 K56 ["Layout"]
      184 GETUPVAL                         R11 0
      185 GETTABLEKS                       R11 R11 K31 ["createElement"]
      187 LOADK                            R12 K57 ["UIPadding"]
      188 DUPTABLE                         R13 K62 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      189 GETIMPORT                        R14 K64 [UDim.new]
      191 LOADN                            R15 0
      192 LOADN                            R16 4
      193 CALL                             R14 2 1
      194 SETTABLEKS                       R14 R13 K58 ["PaddingBottom"]
      196 GETIMPORT                        R14 K64 [UDim.new]
      198 LOADN                            R15 0
      199 LOADN                            R16 4
      200 CALL                             R14 2 1
      201 SETTABLEKS                       R14 R13 K59 ["PaddingLeft"]
      203 GETIMPORT                        R14 K64 [UDim.new]
      205 LOADN                            R15 0
      206 LOADN                            R16 4
      207 CALL                             R14 2 1
      208 SETTABLEKS                       R14 R13 K60 ["PaddingRight"]
      210 GETIMPORT                        R14 K64 [UDim.new]
      212 LOADN                            R15 0
      213 LOADN                            R16 4
      214 CALL                             R14 2 1
      215 SETTABLEKS                       R14 R13 K61 ["PaddingTop"]
      217 CALL                             R11 2 1
      218 SETTABLEKS                       R11 R10 K65 ["Padding"]
      220 JUMP                             ; [+55]
      221 GETUPVAL                         R11 0
      222 GETTABLEKS                       R11 R11 K31 ["createElement"]
      224 LOADK                            R12 K66 ["UIListLayout"]
      225 DUPTABLE                         R13 K67 [{"Padding", "SortOrder"}]
      226 GETIMPORT                        R14 K64 [UDim.new]
      228 LOADN                            R15 0
      229 LOADN                            R16 4
      230 CALL                             R14 2 1
      231 SETTABLEKS                       R14 R13 K65 ["Padding"]
      233 GETIMPORT                        R14 K55 [Enum.SortOrder.LayoutOrder]
      235 SETTABLEKS                       R14 R13 K46 ["SortOrder"]
      237 CALL                             R11 2 1
      238 SETTABLEKS                       R11 R10 K56 ["Layout"]
      240 GETUPVAL                         R11 0
      241 GETTABLEKS                       R11 R11 K31 ["createElement"]
      243 LOADK                            R12 K57 ["UIPadding"]
      244 DUPTABLE                         R13 K62 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      245 GETIMPORT                        R14 K64 [UDim.new]
      247 LOADN                            R15 0
      248 LOADN                            R16 4
      249 CALL                             R14 2 1
      250 SETTABLEKS                       R14 R13 K58 ["PaddingBottom"]
      252 GETIMPORT                        R14 K64 [UDim.new]
      254 LOADN                            R15 0
      255 LOADN                            R16 4
      256 CALL                             R14 2 1
      257 SETTABLEKS                       R14 R13 K59 ["PaddingLeft"]
      259 GETIMPORT                        R14 K64 [UDim.new]
      261 LOADN                            R15 0
      262 LOADN                            R16 4
      263 CALL                             R14 2 1
      264 SETTABLEKS                       R14 R13 K60 ["PaddingRight"]
      266 GETIMPORT                        R14 K64 [UDim.new]
      268 LOADN                            R15 0
      269 LOADN                            R16 4
      270 CALL                             R14 2 1
      271 SETTABLEKS                       R14 R13 K61 ["PaddingTop"]
      273 CALL                             R11 2 1
      274 SETTABLEKS                       R11 R10 K65 ["Padding"]
      276 GETUPVAL                         R11 5
      277 NEWCLOSURE                       R12 P1
      278 CAPTURE                          VAL R0
      279 CALL                             R11 1 1
      280 GETUPVAL                         R12 6
      281 CALL                             R12 0 1
      282 GETUPVAL                         R13 0
      283 GETTABLEKS                       R13 R13 K31 ["createElement"]
      285 GETUPVAL                         R14 7
      286 DUPTABLE                         R15 K73 [{["backgroundStyle"], ["tag"] = "col size-full radius-medium clip", ["testId"] = "terrain-material-picker-view"}]
      287 GETTABLEKS                       R16 R2 K74 ["Color"]
      289 GETTABLEKS                       R16 R16 K75 ["Surface"]
      291 GETTABLEKS                       R16 R16 K76 ["Surface_200"]
      293 SETTABLEKS                       R16 R15 K68 ["backgroundStyle"]
      295 DUPTABLE                         R16 K79 [{"Toolbar", "Materials"}]
      296 GETUPVAL                         R17 0
      297 GETTABLEKS                       R17 R17 K31 ["createElement"]
      299 GETUPVAL                         R18 7
      300 DUPTABLE                         R19 K82 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-y-center gap-xsmall padding-xsmall"}]
      301 MOVE                             R20 R12
      302 CALL                             R20 0 1
      303 SETTABLEKS                       R20 R19 K54 ["LayoutOrder"]
      305 GETIMPORT                        R20 K52 [UDim2.new]
      307 LOADN                            R21 1
      308 LOADN                            R22 0
      309 LOADN                            R23 0
      310 LOADN                            R25 28
      311 GETTABLEKS                       R27 R2 K65 ["Padding"]
      313 GETTABLEKS                       R27 R27 K84 ["XSmall"]
      315 MULK                             R26 R27 K83 [2]
      316 ADD                              R24 R25 R26
      317 CALL                             R20 4 1
      318 SETTABLEKS                       R20 R19 K80 ["Size"]
      320 DUPTABLE                         R20 K88 [{"Search", "ViewToggle", "QuickAdd"}]
      321 GETUPVAL                         R21 0
      322 GETTABLEKS                       R21 R21 K31 ["createElement"]
      324 GETUPVAL                         R22 7
      325 DUPTABLE                         R23 K90 [{["LayoutOrder"], ["Size"], ["backgroundStyle"], ["tag"] = "grow radius-small clip"}]
      326 MOVE                             R24 R12
      327 CALL                             R24 0 1
      328 SETTABLEKS                       R24 R23 K54 ["LayoutOrder"]
      330 GETIMPORT                        R24 K52 [UDim2.new]
      332 LOADN                            R25 0
      333 LOADN                            R26 0
      334 LOADN                            R27 0
      335 LOADN                            R28 28
      336 CALL                             R24 4 1
      337 SETTABLEKS                       R24 R23 K80 ["Size"]
      339 GETTABLEKS                       R24 R2 K74 ["Color"]
      341 GETTABLEKS                       R24 R24 K91 ["Shift"]
      343 GETTABLEKS                       R24 R24 K92 ["Shift_100"]
      345 SETTABLEKS                       R24 R23 K68 ["backgroundStyle"]
      347 DUPTABLE                         R24 K94 [{"Input"}]
      348 GETUPVAL                         R25 0
      349 GETTABLEKS                       R25 R25 K31 ["createElement"]
      351 GETUPVAL                         R26 8
      352 DUPTABLE                         R27 K104 [{["Position"], ["onChanged"], ["placeholder"], ["shape"], ["size"], ["text"], ["testId"] = "terrain-material-search", ["variant"], ["width"]}]
      353 GETIMPORT                        R28 K50 [UDim2.fromOffset]
      355 LOADN                            R29 0
      356 LOADN                            R30 2
      357 CALL                             R28 2 1
      358 SETTABLEKS                       R28 R27 K95 ["Position"]
      360 SETTABLEKS                       R4 R27 K96 ["onChanged"]
      362 LOADK                            R30 K105 ["SearchBar"]
      363 LOADK                            R31 K106 ["SearchMaterials"]
      364 NAMECALL                         R28 R1 K107 ["getText"]
      366 CALL                             R28 3 1
      367 SETTABLEKS                       R28 R27 K97 ["placeholder"]
      369 GETUPVAL                         R28 9
      370 GETTABLEKS                       R28 R28 K108 ["Box"]
      372 SETTABLEKS                       R28 R27 K98 ["shape"]
      374 GETUPVAL                         R28 10
      375 GETTABLEKS                       R28 R28 K84 ["XSmall"]
      377 SETTABLEKS                       R28 R27 K99 ["size"]
      379 SETTABLEKS                       R3 R27 K100 ["text"]
      381 GETUPVAL                         R28 11
      382 GETTABLEKS                       R28 R28 K109 ["Utility"]
      384 SETTABLEKS                       R28 R27 K102 ["variant"]
      386 GETIMPORT                        R28 K64 [UDim.new]
      388 LOADN                            R29 1
      389 LOADN                            R30 0
      390 CALL                             R28 2 1
      391 SETTABLEKS                       R28 R27 K103 ["width"]
      393 CALL                             R25 2 1
      394 SETTABLEKS                       R25 R24 K93 ["Input"]
      396 CALL                             R21 3 1
      397 SETTABLEKS                       R21 R20 K85 ["Search"]
      399 GETUPVAL                         R21 0
      400 GETTABLEKS                       R21 R21 K31 ["createElement"]
      402 GETUPVAL                         R22 7
      403 DUPTABLE                         R23 K111 [{["LayoutOrder"], ["tag"] = "auto-xy"}]
      404 MOVE                             R24 R12
      405 CALL                             R24 0 1
      406 SETTABLEKS                       R24 R23 K54 ["LayoutOrder"]
      408 DUPTABLE                         R24 K113 [{"Tooltip"}]
      409 GETUPVAL                         R25 0
      410 GETTABLEKS                       R25 R25 K31 ["createElement"]
      412 GETUPVAL                         R26 12
      413 DUPTABLE                         R27 K115 [{"title"}]
      414 LOADK                            R30 K116 ["Plugin"]
      415 GETTABLEKS                       R32 R0 K30 ["viewType"]
      417 JUMPIFNOTEQKS                    R32 K40 ["grid"] ; [+3]
      419 LOADK                            R31 K117 ["ListViewLabel"]
      420 JUMP                             ; [+1]
      421 LOADK                            R31 K118 ["GridViewLabel"]
      422 NAMECALL                         R28 R1 K107 ["getText"]
      424 CALL                             R28 3 1
      425 SETTABLEKS                       R28 R27 K114 ["title"]
      427 GETUPVAL                         R28 0
      428 GETTABLEKS                       R28 R28 K31 ["createElement"]
      430 GETUPVAL                         R29 13
      431 DUPTABLE                         R30 K121 [{["icon"], ["onActivated"], ["size"], ["testId"] = "terrain-material-view-toggle"}]
      432 GETTABLEKS                       R32 R0 K30 ["viewType"]
      434 JUMPIFNOTEQKS                    R32 K40 ["grid"] ; [+9]
      436 GETUPVAL                         R31 2
      437 GETTABLEKS                       R31 R31 K122 ["Enums"]
      439 GETTABLEKS                       R31 R31 K123 ["IconName"]
      441 GETTABLEKS                       R31 R31 K124 ["FourBarsHorizontalLeftAligned"]
      443 JUMP                             ; [+7]
      444 GETUPVAL                         R31 2
      445 GETTABLEKS                       R31 R31 K122 ["Enums"]
      447 GETTABLEKS                       R31 R31 K123 ["IconName"]
      449 GETTABLEKS                       R31 R31 K125 ["Grid"]
      451 SETTABLEKS                       R31 R30 K119 ["icon"]
      453 SETTABLEKS                       R11 R30 K35 ["onActivated"]
      455 GETUPVAL                         R31 10
      456 GETTABLEKS                       R31 R31 K84 ["XSmall"]
      458 SETTABLEKS                       R31 R30 K99 ["size"]
      460 CALL                             R28 2 -1
      461 CALL                             R25 -1 1
      462 SETTABLEKS                       R25 R24 K112 ["Tooltip"]
      464 CALL                             R21 3 1
      465 SETTABLEKS                       R21 R20 K86 ["ViewToggle"]
      467 GETUPVAL                         R21 0
      468 GETTABLEKS                       R21 R21 K31 ["createElement"]
      470 GETUPVAL                         R22 14
      471 GETTABLEKS                       R22 R22 K126 ["Root"]
      473 DUPTABLE                         R23 K129 [{["isOpen"], ["testId"] = "terrain-material-quick-add"}]
      474 GETTABLEKS                       R24 R5 K130 ["enabled"]
      476 SETTABLEKS                       R24 R23 K127 ["isOpen"]
      478 DUPTABLE                         R24 K133 [{"Anchor", "Content"}]
      479 GETUPVAL                         R25 0
      480 GETTABLEKS                       R25 R25 K31 ["createElement"]
      482 GETUPVAL                         R26 14
      483 GETTABLEKS                       R26 R26 K131 ["Anchor"]
      485 DUPTABLE                         R27 K134 [{"LayoutOrder"}]
      486 MOVE                             R28 R12
      487 CALL                             R28 0 1
      488 SETTABLEKS                       R28 R27 K54 ["LayoutOrder"]
      490 DUPTABLE                         R28 K113 [{"Tooltip"}]
      491 GETUPVAL                         R29 0
      492 GETTABLEKS                       R29 R29 K31 ["createElement"]
      494 GETUPVAL                         R30 12
      495 DUPTABLE                         R31 K115 [{"title"}]
      496 LOADK                            R34 K116 ["Plugin"]
      497 LOADK                            R35 K135 ["AddIconTooltip"]
      498 NAMECALL                         R32 R1 K107 ["getText"]
      500 CALL                             R32 3 1
      501 SETTABLEKS                       R32 R31 K114 ["title"]
      503 GETUPVAL                         R32 0
      504 GETTABLEKS                       R32 R32 K31 ["createElement"]
      506 GETUPVAL                         R33 13
      507 DUPTABLE                         R34 K137 [{["icon"], ["onActivated"], ["size"], ["testId"] = "terrain-material-quick-add-button"}]
      508 GETUPVAL                         R35 2
      509 GETTABLEKS                       R35 R35 K122 ["Enums"]
      511 GETTABLEKS                       R35 R35 K123 ["IconName"]
      513 GETTABLEKS                       R35 R35 K138 ["PlusSmall"]
      515 SETTABLEKS                       R35 R34 K119 ["icon"]
      517 GETTABLEKS                       R35 R5 K139 ["toggle"]
      519 SETTABLEKS                       R35 R34 K35 ["onActivated"]
      521 GETUPVAL                         R35 10
      522 GETTABLEKS                       R35 R35 K84 ["XSmall"]
      524 SETTABLEKS                       R35 R34 K99 ["size"]
      526 CALL                             R32 2 -1
      527 CALL                             R29 -1 1
      528 SETTABLEKS                       R29 R28 K112 ["Tooltip"]
      530 CALL                             R25 3 1
      531 SETTABLEKS                       R25 R24 K131 ["Anchor"]
      533 GETUPVAL                         R25 0
      534 GETTABLEKS                       R25 R25 K31 ["createElement"]
      536 GETUPVAL                         R26 14
      537 GETTABLEKS                       R26 R26 K132 ["Content"]
      539 DUPTABLE                         R27 K147 [{["align"], ["hasArrow"] = False, ["isFocusable"] = True, ["onPressedOutside"], ["side"]}]
      540 DUPTABLE                         R28 K150 [{"position", "offset"}]
      541 GETUPVAL                         R29 15
      542 GETTABLEKS                       R29 R29 K151 ["Start"]
      544 SETTABLEKS                       R29 R28 K148 ["position"]
      546 GETTABLEKS                       R30 R2 K65 ["Padding"]
      548 GETTABLEKS                       R30 R30 K84 ["XSmall"]
      550 MINUS                            R29 R30
      551 SETTABLEKS                       R29 R28 K149 ["offset"]
      553 SETTABLEKS                       R28 R27 K140 ["align"]
      555 GETTABLEKS                       R28 R5 K152 ["disable"]
      557 SETTABLEKS                       R28 R27 K145 ["onPressedOutside"]
      559 DUPTABLE                         R28 K153 [{["position"], ["offset"] = 4}]
      560 GETUPVAL                         R29 16
      561 GETTABLEKS                       R29 R29 K154 ["Right"]
      563 SETTABLEKS                       R29 R28 K148 ["position"]
      565 SETTABLEKS                       R28 R27 K146 ["side"]
      567 DUPTABLE                         R28 K156 [{"Form"}]
      568 GETUPVAL                         R29 0
      569 GETTABLEKS                       R29 R29 K31 ["createElement"]
      571 GETUPVAL                         R30 17
      572 DUPTABLE                         R31 K159 [{"onCancel", "onCreate"}]
      573 GETTABLEKS                       R32 R5 K152 ["disable"]
      575 SETTABLEKS                       R32 R31 K157 ["onCancel"]
      577 GETTABLEKS                       R32 R0 K160 ["onCreateSlot"]
      579 SETTABLEKS                       R32 R31 K158 ["onCreate"]
      581 CALL                             R29 2 1
      582 SETTABLEKS                       R29 R28 K155 ["Form"]
      584 CALL                             R25 3 1
      585 SETTABLEKS                       R25 R24 K132 ["Content"]
      587 CALL                             R21 3 1
      588 SETTABLEKS                       R21 R20 K87 ["QuickAdd"]
      590 CALL                             R17 3 1
      591 SETTABLEKS                       R17 R16 K77 ["Toolbar"]
      593 GETUPVAL                         R17 0
      594 GETTABLEKS                       R17 R17 K31 ["createElement"]
      596 GETUPVAL                         R18 18
      597 DUPTABLE                         R19 K164 [{["LayoutOrder"], ["backgroundStyle"], ["tag"] = "grow size-full-0", ["scrollingFrameRef"], ["scroll"], ["testId"]}]
      598 MOVE                             R20 R12
      599 CALL                             R20 0 1
      600 SETTABLEKS                       R20 R19 K54 ["LayoutOrder"]
      602 GETTABLEKS                       R20 R2 K74 ["Color"]
      604 GETTABLEKS                       R20 R20 K75 ["Surface"]
      606 GETTABLEKS                       R20 R20 K165 ["Surface_300"]
      608 SETTABLEKS                       R20 R19 K68 ["backgroundStyle"]
      610 SETTABLEKS                       R6 R19 K162 ["scrollingFrameRef"]
      612 DUPTABLE                         R20 K170 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      613 GETIMPORT                        R21 K173 [Enum.AutomaticSize.Y]
      615 SETTABLEKS                       R21 R20 K166 ["AutomaticCanvasSize"]
      617 GETIMPORT                        R21 K50 [UDim2.fromOffset]
      619 LOADN                            R22 0
      620 LOADN                            R23 0
      621 CALL                             R21 2 1
      622 SETTABLEKS                       R21 R20 K167 ["CanvasSize"]
      624 GETIMPORT                        R21 K174 [Enum.ScrollingDirection.Y]
      626 SETTABLEKS                       R21 R20 K168 ["ScrollingDirection"]
      628 GETUPVAL                         R21 19
      629 GETTABLEKS                       R21 R21 K175 ["Auto"]
      631 SETTABLEKS                       R21 R20 K169 ["scrollBarVisibility"]
      633 SETTABLEKS                       R20 R19 K163 ["scroll"]
      635 GETTABLEKS                       R21 R0 K30 ["viewType"]
      637 JUMPIFNOTEQKS                    R21 K40 ["grid"] ; [+3]
      639 LOADK                            R20 K176 ["terrain-material-grid"]
      640 JUMP                             ; [+1]
      641 LOADK                            R20 K177 ["terrain-material-list"]
      642 SETTABLEKS                       R20 R19 K71 ["testId"]
      644 LENGTH                           R21 R8
      645 LOADN                            R22 0
      646 JUMPIFNOTLT                      R22 R21 ; [+3]
      648 MOVE                             R20 R10
      649 JUMP                             ; [+27]
      650 DUPTABLE                         R20 K179 [{"Empty"}]
      651 GETUPVAL                         R21 0
      652 GETTABLEKS                       R21 R21 K31 ["createElement"]
      654 GETUPVAL                         R22 7
      655 DUPTABLE                         R23 K182 [{["Size"], ["tag"] = "row align-x-center align-y-center", ["testId"] = "terrain-material-empty"}]
      656 GETIMPORT                        R24 K52 [UDim2.new]
      658 LOADN                            R25 1
      659 LOADN                            R26 0
      660 LOADN                            R27 0
      661 LOADN                            R28 160
      662 CALL                             R24 4 1
      663 SETTABLEKS                       R24 R23 K80 ["Size"]
      665 DUPTABLE                         R24 K184 [{"Label"}]
      666 GETUPVAL                         R25 0
      667 GETTABLEKS                       R25 R25 K31 ["createElement"]
      669 GETUPVAL                         R26 20
      670 DUPTABLE                         R27 K188 [{["Text"] = "No results found", ["tag"] = "auto-xy text-body-small content-muted"}]
      671 CALL                             R25 2 1
      672 SETTABLEKS                       R25 R24 K183 ["Label"]
      674 CALL                             R21 3 1
      675 SETTABLEKS                       R21 R20 K178 ["Empty"]
      677 CALL                             R17 3 1
      678 SETTABLEKS                       R17 R16 K78 ["Materials"]
      680 CALL                             R13 3 -1
      681 CLOSEUPVALS                      R9
      682 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["TerrainPalette"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Components"]
       48 GETTABLEKS                       R7 R7 K14 ["TerrainMaterialQuickAddForm"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K12 ["Src"]
       55 GETTABLEKS                       R8 R8 K13 ["Components"]
       57 GETTABLEKS                       R8 R8 K15 ["TerrainMaterialTile"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K12 ["Src"]
       64 GETTABLEKS                       R9 R9 K16 ["Types"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R9 R1 K17 ["IconButton"]
       69 GETTABLEKS                       R10 R1 K18 ["Enums"]
       71 GETTABLEKS                       R10 R10 K19 ["InputSize"]
       73 GETTABLEKS                       R11 R1 K18 ["Enums"]
       75 GETTABLEKS                       R11 R11 K20 ["InputVariant"]
       77 GETTABLEKS                       R12 R4 K21 ["Contexts"]
       79 GETTABLEKS                       R12 R12 K22 ["Localization"]
       81 GETTABLEKS                       R13 R1 K23 ["Popover"]
       83 GETTABLEKS                       R14 R1 K18 ["Enums"]
       85 GETTABLEKS                       R14 R14 K24 ["PopoverAlign"]
       87 GETTABLEKS                       R15 R1 K18 ["Enums"]
       89 GETTABLEKS                       R15 R15 K25 ["PopoverSide"]
       91 GETTABLEKS                       R16 R1 K26 ["ScrollView"]
       93 GETTABLEKS                       R17 R1 K27 ["SearchInput"]
       95 GETTABLEKS                       R18 R1 K18 ["Enums"]
       97 GETTABLEKS                       R18 R18 K28 ["SearchInputShape"]
       99 GETTABLEKS                       R19 R1 K29 ["Text"]
      101 GETTABLEKS                       R20 R1 K30 ["Tooltip"]
      103 GETTABLEKS                       R21 R1 K31 ["View"]
      105 GETTABLEKS                       R22 R1 K18 ["Enums"]
      107 GETTABLEKS                       R22 R22 K32 ["Visibility"]
      109 GETTABLEKS                       R23 R3 K33 ["createNextOrder"]
      111 GETTABLEKS                       R24 R3 K34 ["useEventCallback"]
      113 GETTABLEKS                       R25 R3 K35 ["useToggleState"]
      115 DUPCLOSURE                       R26 K36 [PROTO_0]
      116 DUPCLOSURE                       R27 K37 [PROTO_5]
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R25
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R24
      123 CAPTURE                          VAL R23
      124 CAPTURE                          VAL R21
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R20
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R22
      137 CAPTURE                          VAL R19
      138 RETURN                           R27 1
