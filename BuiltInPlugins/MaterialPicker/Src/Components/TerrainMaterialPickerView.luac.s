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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FoundationProvider"]
        6 DUPTABLE                         R3 K5 [{"colorMode", "overlayGui", "preferences"}]
        7 GETTABLEKS                       R4 R0 K2 ["colorMode"]
        9 SETTABLEKS                       R4 R3 K2 ["colorMode"]
       11 GETTABLEKS                       R4 R0 K3 ["overlayGui"]
       13 SETTABLEKS                       R4 R3 K3 ["overlayGui"]
       15 GETTABLEKS                       R4 R0 K4 ["preferences"]
       17 SETTABLEKS                       R4 R3 K4 ["preferences"]
       19 DUPTABLE                         R4 K7 [{"Menu"}]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["createElement"]
       23 GETUPVAL                         R6 2
       24 DUPTABLE                         R7 K18 [{["align"], ["isOpen"], ["items"], ["onActivated"], ["onPressedOutside"], ["Position"], ["side"], ["testId"] = "terrain-material-context-menu", ["width"]}]
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K19 ["Start"]
       28 SETTABLEKS                       R8 R7 K8 ["align"]
       30 GETTABLEKS                       R8 R0 K9 ["isOpen"]
       32 SETTABLEKS                       R8 R7 K9 ["isOpen"]
       34 NEWTABLE                         R8 0 1
       36 DUPTABLE                         R9 K23 [{["id"] = "edit", ["text"]}]
       37 GETTABLEKS                       R10 R0 K24 ["itemText"]
       39 SETTABLEKS                       R10 R9 K22 ["text"]
       41 SETLIST                          R8 R9 1 [1]
       43 SETTABLEKS                       R8 R7 K10 ["items"]
       45 GETTABLEKS                       R8 R0 K11 ["onActivated"]
       47 SETTABLEKS                       R8 R7 K11 ["onActivated"]
       49 GETTABLEKS                       R8 R0 K12 ["onPressedOutside"]
       51 SETTABLEKS                       R8 R7 K12 ["onPressedOutside"]
       53 GETTABLEKS                       R8 R0 K25 ["position"]
       55 SETTABLEKS                       R8 R7 K13 ["Position"]
       57 GETUPVAL                         R8 4
       58 GETTABLEKS                       R8 R8 K26 ["Bottom"]
       60 SETTABLEKS                       R8 R7 K14 ["side"]
       62 GETIMPORT                        R8 K29 [UDim.new]
       64 LOADN                            R9 0
       65 LOADN                            R10 260
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K17 ["width"]
       69 DUPTABLE                         R8 K31 [{"Anchor"}]
       70 GETUPVAL                         R9 0
       71 GETTABLEKS                       R9 R9 K0 ["createElement"]
       73 GETUPVAL                         R10 5
       74 DUPTABLE                         R11 K33 [{"Size"}]
       75 GETIMPORT                        R12 K36 [UDim2.fromOffset]
       77 LOADN                            R13 1
       78 LOADN                            R14 1
       79 CALL                             R12 2 1
       80 SETTABLEKS                       R12 R11 K32 ["Size"]
       82 CALL                             R9 2 1
       83 SETTABLEKS                       R9 R8 K30 ["Anchor"]
       85 CALL                             R5 3 1
       86 SETTABLEKS                       R5 R4 K6 ["Menu"]
       88 CALL                             R1 3 -1
       89 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R0 R1 K1 ["Parent"]
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K1 ["current"]
        8 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_5:
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

PROTO_6:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K1 [pcall]
        4 GETIMPORT                        R1 K4 [task.cancel]
        6 GETUPVAL                         R2 1
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 1
        7 DUPTABLE                         R4 K3 [{"clickOffset", "slotIndex"}]
        8 GETTABLEKS                       R6 R2 K4 ["AbsolutePosition"]
       10 SUB                              R5 R1 R6
       11 SETTABLEKS                       R5 R4 K1 ["clickOffset"]
       13 SETTABLEKS                       R0 R4 K2 ["slotIndex"]
       15 CALL                             R3 1 0
       16 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["slotIndex"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 0
        9 JUMPIFNOTEQKS                    R0 K1 ["edit"] ; [+8]
       11 JUMPIFEQKNIL                     R1 ; [+6]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K2 ["onEditSlot"]
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["disable"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["onViewTypeChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["disable"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["onSortTypeChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["Hooks"]
       10 GETTABLEKS                       R2 R2 K3 ["usePreferences"]
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["Hooks"]
       16 GETTABLEKS                       R3 R3 K4 ["useTokens"]
       18 CALL                             R3 0 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K5 ["useState"]
       22 LOADK                            R5 K6 [""]
       23 CALL                             R4 1 2
       24 GETUPVAL                         R6 3
       25 CALL                             R6 0 1
       26 GETUPVAL                         R7 3
       27 CALL                             R7 0 1
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K7 ["useRef"]
       31 LOADNIL                          R9
       32 CALL                             R8 1 1
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K7 ["useRef"]
       36 LOADNIL                          R10
       37 CALL                             R9 1 1
       38 GETTABLEKS                       R10 R9 K8 ["current"]
       40 JUMPIFNOTEQKNIL                  R10 ; [+29]
       42 GETIMPORT                        R10 K11 [Instance.new]
       44 LOADK                            R11 K12 ["Frame"]
       45 CALL                             R10 1 1
       46 LOADK                            R11 K13 ["ContextMenuOverlay"]
       47 SETTABLEKS                       R11 R10 K14 ["Name"]
       49 LOADN                            R11 1
       50 SETTABLEKS                       R11 R10 K15 ["BackgroundTransparency"]
       52 LOADN                            R11 0
       53 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
       55 LOADB                            R11 0
       56 SETTABLEKS                       R11 R10 K17 ["ClipsDescendants"]
       58 GETIMPORT                        R11 K20 [UDim2.fromScale]
       60 LOADN                            R12 1
       61 LOADN                            R13 1
       62 CALL                             R11 2 1
       63 SETTABLEKS                       R11 R10 K21 ["Size"]
       65 LOADN                            R11 10
       66 SETTABLEKS                       R11 R10 K22 ["ZIndex"]
       68 SETTABLEKS                       R10 R9 K8 ["current"]
       70 GETTABLEKS                       R10 R9 K8 ["current"]
       72 GETUPVAL                         R11 0
       73 GETTABLEKS                       R11 R11 K23 ["useCallback"]
       75 NEWCLOSURE                       R12 P0
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R10
       78 NEWTABLE                         R13 0 1
       80 MOVE                             R14 R10
       81 SETLIST                          R13 R14 1 [1]
       83 CALL                             R11 2 1
       84 GETUPVAL                         R12 0
       85 GETTABLEKS                       R12 R12 K24 ["useEffect"]
       87 NEWCLOSURE                       R13 P1
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R9
       90 NEWTABLE                         R14 0 1
       92 MOVE                             R15 R10
       93 SETLIST                          R14 R15 1 [1]
       95 CALL                             R12 2 0
       96 GETUPVAL                         R12 0
       97 GETTABLEKS                       R12 R12 K7 ["useRef"]
       99 LOADNIL                          R13
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K27 [string.lower]
      103 MOVE                             R14 R4
      104 CALL                             R13 1 1
      105 NEWTABLE                         R14 0 0
      107 GETTABLEKS                       R15 R0 K28 ["catalog"]
      109 LOADNIL                          R16
      110 LOADNIL                          R17
      111 FORGPREP                         R15
      112 GETTABLEKS                       R21 R0 K29 ["request"]
      114 GETTABLEKS                       R22 R19 K30 ["baseMaterial"]
      116 GETIMPORT                        R23 K34 [Enum.Material.Air]
      118 JUMPIFNOTEQ                      R22 R23 ; [+4]
      120 GETTABLEKS                       R20 R21 K35 ["allowAir"]
      122 JUMP                             ; [+10]
      123 GETTABLEKS                       R22 R19 K30 ["baseMaterial"]
      125 GETIMPORT                        R23 K37 [Enum.Material.Water]
      127 JUMPIFNOTEQ                      R22 R23 ; [+4]
      129 GETTABLEKS                       R20 R21 K38 ["allowWater"]
      131 JUMP                             ; [+1]
      132 LOADB                            R20 1
      133 JUMPIFNOT                        R20 ; [+21]
      134 JUMPIFEQKS                       R13 K6 [""] ; [+13]
      136 GETIMPORT                        R20 K40 [string.find]
      138 GETIMPORT                        R21 K27 [string.lower]
      140 GETTABLEKS                       R22 R19 K41 ["displayName"]
      142 CALL                             R21 1 1
      143 MOVE                             R22 R13
      144 LOADN                            R23 1
      145 LOADB                            R24 1
      146 CALL                             R20 4 1
      147 JUMPIFNOT                        R20 ; [+7]
      148 FASTCALL2                        TABLE_INSERT R14 R19 ; [+5]
      150 MOVE                             R21 R14
      151 MOVE                             R22 R19
      152 GETIMPORT                        R20 K44 [table.insert]
      154 CALL                             R20 2 0
      155 FORGLOOP                         R15 2 ; [-44]
      157 GETUPVAL                         R15 4
      158 MOVE                             R16 R14
      159 GETTABLEKS                       R17 R0 K45 ["sortType"]
      161 CALL                             R15 2 1
      162 MOVE                             R14 R15
      163 LOADNIL                          R15
      164 MOVE                             R16 R14
      165 LOADNIL                          R17
      166 LOADNIL                          R18
      167 FORGPREP                         R16
      168 GETTABLEKS                       R21 R20 K46 ["slotIndex"]
      170 GETTABLEKS                       R22 R0 K29 ["request"]
      172 GETTABLEKS                       R22 R22 K47 ["selectedSlotIndex"]
      174 JUMPIFNOTEQ                      R21 R22 ; [+3]
      176 MOVE                             R15 R19
      177 JUMP                             ; [+2]
      178 FORGLOOP                         R16 2 ; [-11]
      180 GETUPVAL                         R16 0
      181 GETTABLEKS                       R16 R16 K24 ["useEffect"]
      183 NEWCLOSURE                       R17 P2
      184 CAPTURE                          REF R15
      185 CAPTURE                          VAL R0
      186 CAPTURE                          VAL R12
      187 NEWTABLE                         R18 0 2
      189 MOVE                             R19 R15
      190 GETTABLEKS                       R20 R0 K48 ["viewType"]
      192 SETLIST                          R18 R19 2 [1]
      194 CALL                             R16 2 0
      195 GETUPVAL                         R16 0
      196 GETTABLEKS                       R16 R16 K5 ["useState"]
      198 LOADNIL                          R17
      199 CALL                             R16 1 2
      200 GETUPVAL                         R18 5
      201 NEWCLOSURE                       R19 P3
      202 CAPTURE                          VAL R17
      203 CALL                             R18 1 1
      204 GETUPVAL                         R19 5
      205 NEWCLOSURE                       R20 P4
      206 CAPTURE                          VAL R8
      207 CAPTURE                          VAL R17
      208 CALL                             R19 1 1
      209 GETUPVAL                         R20 5
      210 NEWCLOSURE                       R21 P5
      211 CAPTURE                          VAL R16
      212 CAPTURE                          VAL R18
      213 CAPTURE                          VAL R0
      214 CALL                             R20 1 1
      215 NEWTABLE                         R21 2 0
      217 MOVE                             R22 R14
      218 LOADNIL                          R23
      219 LOADNIL                          R24
      220 FORGPREP                         R22
      221 GETTABLEKS                       R28 R26 K46 ["slotIndex"]
      223 GETTABLEKS                       R29 R0 K29 ["request"]
      225 GETTABLEKS                       R29 R29 K47 ["selectedSlotIndex"]
      227 JUMPIFEQ                         R28 R29 ; [+2]
      229 LOADB                            R27 0 +1
      230 LOADB                            R27 1
      231 GETUPVAL                         R28 0
      232 GETTABLEKS                       R28 R28 K49 ["createElement"]
      234 GETUPVAL                         R29 6
      235 DUPTABLE                         R30 K55 [{"entry", "isSelected", "layoutOrder", "onActivated", "onContextMenuOpened", "viewType"}]
      236 SETTABLEKS                       R26 R30 K50 ["entry"]
      238 SETTABLEKS                       R27 R30 K51 ["isSelected"]
      240 SETTABLEKS                       R25 R30 K52 ["layoutOrder"]
      242 GETTABLEKS                       R31 R0 K56 ["onSlotSelected"]
      244 SETTABLEKS                       R31 R30 K53 ["onActivated"]
      246 SETTABLEKS                       R19 R30 K54 ["onContextMenuOpened"]
      248 GETTABLEKS                       R31 R0 K48 ["viewType"]
      250 SETTABLEKS                       R31 R30 K48 ["viewType"]
      252 CALL                             R28 2 1
      253 LOADK                            R30 K57 ["Tile_%*"]
      254 GETTABLEKS                       R32 R26 K46 ["slotIndex"]
      256 NAMECALL                         R30 R30 K58 ["format"]
      258 CALL                             R30 2 1
      259 MOVE                             R29 R30
      260 SETTABLE                         R28 R21 R29
      261 FORGLOOP                         R22 2 ; [-41]
      263 GETTABLEKS                       R22 R0 K48 ["viewType"]
      265 JUMPIFNOTEQKS                    R22 K59 ["grid"] ; [+66]
      267 GETUPVAL                         R22 0
      268 GETTABLEKS                       R22 R22 K49 ["createElement"]
      270 LOADK                            R23 K60 ["UIGridLayout"]
      271 DUPTABLE                         R24 K66 [{["CellPadding"], ["CellSize"], ["FillDirectionMaxCells"] = 4, ["SortOrder"]}]
      272 GETIMPORT                        R25 K68 [UDim2.fromOffset]
      274 LOADN                            R26 4
      275 LOADN                            R27 4
      276 CALL                             R25 2 1
      277 SETTABLEKS                       R25 R24 K61 ["CellPadding"]
      279 GETIMPORT                        R25 K69 [UDim2.new]
      281 LOADK                            R26 K70 [0.25]
      282 LOADN                            R27 -5
      283 LOADN                            R28 0
      284 LOADN                            R29 61
      285 CALL                             R25 4 1
      286 SETTABLEKS                       R25 R24 K62 ["CellSize"]
      288 GETIMPORT                        R25 K72 [Enum.SortOrder.LayoutOrder]
      290 SETTABLEKS                       R25 R24 K65 ["SortOrder"]
      292 CALL                             R22 2 1
      293 SETTABLEKS                       R22 R21 K73 ["Layout"]
      295 GETUPVAL                         R22 0
      296 GETTABLEKS                       R22 R22 K49 ["createElement"]
      298 LOADK                            R23 K74 ["UIPadding"]
      299 DUPTABLE                         R24 K79 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      300 GETIMPORT                        R25 K81 [UDim.new]
      302 LOADN                            R26 0
      303 LOADN                            R27 4
      304 CALL                             R25 2 1
      305 SETTABLEKS                       R25 R24 K75 ["PaddingBottom"]
      307 GETIMPORT                        R25 K81 [UDim.new]
      309 LOADN                            R26 0
      310 LOADN                            R27 4
      311 CALL                             R25 2 1
      312 SETTABLEKS                       R25 R24 K76 ["PaddingLeft"]
      314 GETIMPORT                        R25 K81 [UDim.new]
      316 LOADN                            R26 0
      317 LOADN                            R27 4
      318 CALL                             R25 2 1
      319 SETTABLEKS                       R25 R24 K77 ["PaddingRight"]
      321 GETIMPORT                        R25 K81 [UDim.new]
      323 LOADN                            R26 0
      324 LOADN                            R27 4
      325 CALL                             R25 2 1
      326 SETTABLEKS                       R25 R24 K78 ["PaddingTop"]
      328 CALL                             R22 2 1
      329 SETTABLEKS                       R22 R21 K82 ["Padding"]
      331 JUMP                             ; [+55]
      332 GETUPVAL                         R22 0
      333 GETTABLEKS                       R22 R22 K49 ["createElement"]
      335 LOADK                            R23 K83 ["UIListLayout"]
      336 DUPTABLE                         R24 K84 [{"Padding", "SortOrder"}]
      337 GETIMPORT                        R25 K81 [UDim.new]
      339 LOADN                            R26 0
      340 LOADN                            R27 4
      341 CALL                             R25 2 1
      342 SETTABLEKS                       R25 R24 K82 ["Padding"]
      344 GETIMPORT                        R25 K72 [Enum.SortOrder.LayoutOrder]
      346 SETTABLEKS                       R25 R24 K65 ["SortOrder"]
      348 CALL                             R22 2 1
      349 SETTABLEKS                       R22 R21 K73 ["Layout"]
      351 GETUPVAL                         R22 0
      352 GETTABLEKS                       R22 R22 K49 ["createElement"]
      354 LOADK                            R23 K74 ["UIPadding"]
      355 DUPTABLE                         R24 K79 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      356 GETIMPORT                        R25 K81 [UDim.new]
      358 LOADN                            R26 0
      359 LOADN                            R27 4
      360 CALL                             R25 2 1
      361 SETTABLEKS                       R25 R24 K75 ["PaddingBottom"]
      363 GETIMPORT                        R25 K81 [UDim.new]
      365 LOADN                            R26 0
      366 LOADN                            R27 4
      367 CALL                             R25 2 1
      368 SETTABLEKS                       R25 R24 K76 ["PaddingLeft"]
      370 GETIMPORT                        R25 K81 [UDim.new]
      372 LOADN                            R26 0
      373 LOADN                            R27 4
      374 CALL                             R25 2 1
      375 SETTABLEKS                       R25 R24 K77 ["PaddingRight"]
      377 GETIMPORT                        R25 K81 [UDim.new]
      379 LOADN                            R26 0
      380 LOADN                            R27 4
      381 CALL                             R25 2 1
      382 SETTABLEKS                       R25 R24 K78 ["PaddingTop"]
      384 CALL                             R22 2 1
      385 SETTABLEKS                       R22 R21 K82 ["Padding"]
      387 GETUPVAL                         R22 5
      388 NEWCLOSURE                       R23 P6
      389 CAPTURE                          VAL R7
      390 CAPTURE                          VAL R0
      391 CALL                             R22 1 1
      392 GETUPVAL                         R23 5
      393 NEWCLOSURE                       R24 P7
      394 CAPTURE                          VAL R7
      395 CAPTURE                          VAL R0
      396 CALL                             R23 1 1
      397 GETUPVAL                         R24 7
      398 CALL                             R24 0 1
      399 GETUPVAL                         R25 0
      400 GETTABLEKS                       R25 R25 K49 ["createElement"]
      402 GETUPVAL                         R26 8
      403 DUPTABLE                         R27 K90 [{["ref"], ["tag"] = "size-full", ["testId"] = "terrain-material-picker-view"}]
      404 SETTABLEKS                       R11 R27 K85 ["ref"]
      406 DUPTABLE                         R28 K93 [{"Content", "ContextMenu"}]
      407 GETUPVAL                         R29 0
      408 GETTABLEKS                       R29 R29 K49 ["createElement"]
      410 GETUPVAL                         R30 8
      411 DUPTABLE                         R31 K96 [{["backgroundStyle"], ["tag"] = "col size-full radius-medium clip"}]
      412 GETTABLEKS                       R32 R3 K97 ["Color"]
      414 GETTABLEKS                       R32 R32 K98 ["Surface"]
      416 GETTABLEKS                       R32 R32 K99 ["Surface_200"]
      418 SETTABLEKS                       R32 R31 K94 ["backgroundStyle"]
      420 DUPTABLE                         R32 K102 [{"Toolbar", "Materials"}]
      421 GETUPVAL                         R33 0
      422 GETTABLEKS                       R33 R33 K49 ["createElement"]
      424 GETUPVAL                         R34 8
      425 DUPTABLE                         R35 K104 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-y-center gap-xsmall padding-xsmall"}]
      426 MOVE                             R36 R24
      427 CALL                             R36 0 1
      428 SETTABLEKS                       R36 R35 K71 ["LayoutOrder"]
      430 GETIMPORT                        R36 K69 [UDim2.new]
      432 LOADN                            R37 1
      433 LOADN                            R38 0
      434 LOADN                            R39 0
      435 LOADN                            R41 28
      436 GETTABLEKS                       R43 R3 K82 ["Padding"]
      438 GETTABLEKS                       R43 R43 K106 ["XSmall"]
      440 MULK                             R42 R43 K105 [2]
      441 ADD                              R40 R41 R42
      442 CALL                             R36 4 1
      443 SETTABLEKS                       R36 R35 K21 ["Size"]
      445 DUPTABLE                         R36 K110 [{"Search", "ViewSort", "QuickAdd"}]
      446 GETUPVAL                         R37 0
      447 GETTABLEKS                       R37 R37 K49 ["createElement"]
      449 GETUPVAL                         R38 8
      450 DUPTABLE                         R39 K112 [{["LayoutOrder"], ["Size"], ["backgroundStyle"], ["tag"] = "grow radius-small clip"}]
      451 MOVE                             R40 R24
      452 CALL                             R40 0 1
      453 SETTABLEKS                       R40 R39 K71 ["LayoutOrder"]
      455 GETIMPORT                        R40 K69 [UDim2.new]
      457 LOADN                            R41 0
      458 LOADN                            R42 0
      459 LOADN                            R43 0
      460 LOADN                            R44 28
      461 CALL                             R40 4 1
      462 SETTABLEKS                       R40 R39 K21 ["Size"]
      464 GETTABLEKS                       R40 R3 K97 ["Color"]
      466 GETTABLEKS                       R40 R40 K113 ["Shift"]
      468 GETTABLEKS                       R40 R40 K114 ["Shift_100"]
      470 SETTABLEKS                       R40 R39 K94 ["backgroundStyle"]
      472 DUPTABLE                         R40 K116 [{"Input"}]
      473 GETUPVAL                         R41 0
      474 GETTABLEKS                       R41 R41 K49 ["createElement"]
      476 GETUPVAL                         R42 9
      477 DUPTABLE                         R43 K126 [{["Position"], ["onChanged"], ["placeholder"], ["shape"], ["size"], ["text"], ["testId"] = "terrain-material-search", ["variant"], ["width"]}]
      478 GETIMPORT                        R44 K68 [UDim2.fromOffset]
      480 LOADN                            R45 0
      481 LOADN                            R46 2
      482 CALL                             R44 2 1
      483 SETTABLEKS                       R44 R43 K117 ["Position"]
      485 SETTABLEKS                       R5 R43 K118 ["onChanged"]
      487 LOADK                            R46 K127 ["SearchBar"]
      488 LOADK                            R47 K128 ["SearchMaterials"]
      489 NAMECALL                         R44 R1 K129 ["getText"]
      491 CALL                             R44 3 1
      492 SETTABLEKS                       R44 R43 K119 ["placeholder"]
      494 GETUPVAL                         R44 10
      495 GETTABLEKS                       R44 R44 K130 ["Box"]
      497 SETTABLEKS                       R44 R43 K120 ["shape"]
      499 GETUPVAL                         R44 11
      500 GETTABLEKS                       R44 R44 K106 ["XSmall"]
      502 SETTABLEKS                       R44 R43 K121 ["size"]
      504 SETTABLEKS                       R4 R43 K122 ["text"]
      506 GETUPVAL                         R44 12
      507 GETTABLEKS                       R44 R44 K131 ["Utility"]
      509 SETTABLEKS                       R44 R43 K124 ["variant"]
      511 GETIMPORT                        R44 K81 [UDim.new]
      513 LOADN                            R45 1
      514 LOADN                            R46 0
      515 CALL                             R44 2 1
      516 SETTABLEKS                       R44 R43 K125 ["width"]
      518 CALL                             R41 2 1
      519 SETTABLEKS                       R41 R40 K115 ["Input"]
      521 CALL                             R37 3 1
      522 SETTABLEKS                       R37 R36 K107 ["Search"]
      524 GETUPVAL                         R37 0
      525 GETTABLEKS                       R37 R37 K49 ["createElement"]
      527 GETUPVAL                         R38 8
      528 DUPTABLE                         R39 K133 [{["LayoutOrder"], ["tag"] = "auto-xy"}]
      529 MOVE                             R40 R24
      530 CALL                             R40 0 1
      531 SETTABLEKS                       R40 R39 K71 ["LayoutOrder"]
      533 DUPTABLE                         R40 K135 [{"Menu"}]
      534 GETUPVAL                         R41 0
      535 GETTABLEKS                       R41 R41 K49 ["createElement"]
      537 GETUPVAL                         R42 13
      538 DUPTABLE                         R43 K144 [{"colorMode", "isOpen", "onPressedOutside", "onSortTypeChanged", "onToggle", "onViewTypeChanged", "overlayGui", "preferences", "sortType", "viewType"}]
      539 GETTABLEKS                       R44 R3 K145 ["Config"]
      541 GETTABLEKS                       R44 R44 K146 ["ColorMode"]
      543 GETTABLEKS                       R44 R44 K14 ["Name"]
      545 SETTABLEKS                       R44 R43 K136 ["colorMode"]
      547 GETTABLEKS                       R44 R7 K147 ["enabled"]
      549 SETTABLEKS                       R44 R43 K137 ["isOpen"]
      551 GETTABLEKS                       R44 R7 K148 ["disable"]
      553 SETTABLEKS                       R44 R43 K138 ["onPressedOutside"]
      555 SETTABLEKS                       R23 R43 K139 ["onSortTypeChanged"]
      557 GETTABLEKS                       R44 R7 K149 ["toggle"]
      559 SETTABLEKS                       R44 R43 K140 ["onToggle"]
      561 SETTABLEKS                       R22 R43 K141 ["onViewTypeChanged"]
      563 SETTABLEKS                       R10 R43 K142 ["overlayGui"]
      565 SETTABLEKS                       R2 R43 K143 ["preferences"]
      567 GETTABLEKS                       R44 R0 K45 ["sortType"]
      569 SETTABLEKS                       R44 R43 K45 ["sortType"]
      571 GETTABLEKS                       R44 R0 K48 ["viewType"]
      573 SETTABLEKS                       R44 R43 K48 ["viewType"]
      575 CALL                             R41 2 1
      576 SETTABLEKS                       R41 R40 K134 ["Menu"]
      578 CALL                             R37 3 1
      579 SETTABLEKS                       R37 R36 K108 ["ViewSort"]
      581 GETUPVAL                         R37 0
      582 GETTABLEKS                       R37 R37 K49 ["createElement"]
      584 GETUPVAL                         R38 14
      585 GETTABLEKS                       R38 R38 K150 ["Root"]
      587 DUPTABLE                         R39 K152 [{["isOpen"], ["testId"] = "terrain-material-quick-add"}]
      588 GETTABLEKS                       R40 R6 K147 ["enabled"]
      590 SETTABLEKS                       R40 R39 K137 ["isOpen"]
      592 DUPTABLE                         R40 K154 [{"Anchor", "Content"}]
      593 GETUPVAL                         R41 0
      594 GETTABLEKS                       R41 R41 K49 ["createElement"]
      596 GETUPVAL                         R42 14
      597 GETTABLEKS                       R42 R42 K153 ["Anchor"]
      599 DUPTABLE                         R43 K155 [{"LayoutOrder"}]
      600 MOVE                             R44 R24
      601 CALL                             R44 0 1
      602 SETTABLEKS                       R44 R43 K71 ["LayoutOrder"]
      604 DUPTABLE                         R44 K157 [{"Tooltip"}]
      605 GETUPVAL                         R45 0
      606 GETTABLEKS                       R45 R45 K49 ["createElement"]
      608 GETUPVAL                         R46 15
      609 DUPTABLE                         R47 K159 [{"title"}]
      610 LOADK                            R50 K160 ["Plugin"]
      611 LOADK                            R51 K161 ["AddIconTooltip"]
      612 NAMECALL                         R48 R1 K129 ["getText"]
      614 CALL                             R48 3 1
      615 SETTABLEKS                       R48 R47 K158 ["title"]
      617 GETUPVAL                         R48 0
      618 GETTABLEKS                       R48 R48 K49 ["createElement"]
      620 GETUPVAL                         R49 16
      621 DUPTABLE                         R50 K164 [{["icon"], ["onActivated"], ["size"], ["testId"] = "terrain-material-quick-add-button"}]
      622 GETUPVAL                         R51 2
      623 GETTABLEKS                       R51 R51 K165 ["Enums"]
      625 GETTABLEKS                       R51 R51 K166 ["IconName"]
      627 GETTABLEKS                       R51 R51 K167 ["PlusSmall"]
      629 SETTABLEKS                       R51 R50 K162 ["icon"]
      631 GETTABLEKS                       R51 R6 K149 ["toggle"]
      633 SETTABLEKS                       R51 R50 K53 ["onActivated"]
      635 GETUPVAL                         R51 11
      636 GETTABLEKS                       R51 R51 K106 ["XSmall"]
      638 SETTABLEKS                       R51 R50 K121 ["size"]
      640 CALL                             R48 2 -1
      641 CALL                             R45 -1 1
      642 SETTABLEKS                       R45 R44 K156 ["Tooltip"]
      644 CALL                             R41 3 1
      645 SETTABLEKS                       R41 R40 K153 ["Anchor"]
      647 GETUPVAL                         R41 0
      648 GETTABLEKS                       R41 R41 K49 ["createElement"]
      650 GETUPVAL                         R42 14
      651 GETTABLEKS                       R42 R42 K91 ["Content"]
      653 DUPTABLE                         R43 K174 [{["align"], ["hasArrow"] = False, ["isFocusable"] = True, ["onPressedOutside"], ["side"]}]
      654 DUPTABLE                         R44 K177 [{"position", "offset"}]
      655 GETUPVAL                         R45 17
      656 GETTABLEKS                       R45 R45 K178 ["Start"]
      658 SETTABLEKS                       R45 R44 K175 ["position"]
      660 GETTABLEKS                       R46 R3 K82 ["Padding"]
      662 GETTABLEKS                       R46 R46 K106 ["XSmall"]
      664 MINUS                            R45 R46
      665 SETTABLEKS                       R45 R44 K176 ["offset"]
      667 SETTABLEKS                       R44 R43 K168 ["align"]
      669 GETTABLEKS                       R44 R6 K148 ["disable"]
      671 SETTABLEKS                       R44 R43 K138 ["onPressedOutside"]
      673 DUPTABLE                         R44 K179 [{["position"], ["offset"] = 4}]
      674 GETUPVAL                         R45 18
      675 GETTABLEKS                       R45 R45 K180 ["Right"]
      677 SETTABLEKS                       R45 R44 K175 ["position"]
      679 SETTABLEKS                       R44 R43 K173 ["side"]
      681 DUPTABLE                         R44 K182 [{"Form"}]
      682 GETUPVAL                         R45 0
      683 GETTABLEKS                       R45 R45 K49 ["createElement"]
      685 GETUPVAL                         R46 19
      686 DUPTABLE                         R47 K185 [{"onCancel", "onCreate"}]
      687 GETTABLEKS                       R48 R6 K148 ["disable"]
      689 SETTABLEKS                       R48 R47 K183 ["onCancel"]
      691 GETTABLEKS                       R48 R0 K186 ["onCreateSlot"]
      693 SETTABLEKS                       R48 R47 K184 ["onCreate"]
      695 CALL                             R45 2 1
      696 SETTABLEKS                       R45 R44 K181 ["Form"]
      698 CALL                             R41 3 1
      699 SETTABLEKS                       R41 R40 K91 ["Content"]
      701 CALL                             R37 3 1
      702 SETTABLEKS                       R37 R36 K109 ["QuickAdd"]
      704 CALL                             R33 3 1
      705 SETTABLEKS                       R33 R32 K100 ["Toolbar"]
      707 GETUPVAL                         R33 0
      708 GETTABLEKS                       R33 R33 K49 ["createElement"]
      710 GETUPVAL                         R34 20
      711 DUPTABLE                         R35 K190 [{["LayoutOrder"], ["backgroundStyle"], ["tag"] = "grow size-full-0", ["scrollingFrameRef"], ["scroll"], ["testId"]}]
      712 MOVE                             R36 R24
      713 CALL                             R36 0 1
      714 SETTABLEKS                       R36 R35 K71 ["LayoutOrder"]
      716 GETTABLEKS                       R36 R3 K97 ["Color"]
      718 GETTABLEKS                       R36 R36 K98 ["Surface"]
      720 GETTABLEKS                       R36 R36 K191 ["Surface_300"]
      722 SETTABLEKS                       R36 R35 K94 ["backgroundStyle"]
      724 SETTABLEKS                       R12 R35 K188 ["scrollingFrameRef"]
      726 DUPTABLE                         R36 K196 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      727 GETIMPORT                        R37 K199 [Enum.AutomaticSize.Y]
      729 SETTABLEKS                       R37 R36 K192 ["AutomaticCanvasSize"]
      731 GETIMPORT                        R37 K68 [UDim2.fromOffset]
      733 LOADN                            R38 0
      734 LOADN                            R39 0
      735 CALL                             R37 2 1
      736 SETTABLEKS                       R37 R36 K193 ["CanvasSize"]
      738 GETIMPORT                        R37 K200 [Enum.ScrollingDirection.Y]
      740 SETTABLEKS                       R37 R36 K194 ["ScrollingDirection"]
      742 GETUPVAL                         R37 21
      743 GETTABLEKS                       R37 R37 K201 ["Auto"]
      745 SETTABLEKS                       R37 R36 K195 ["scrollBarVisibility"]
      747 SETTABLEKS                       R36 R35 K189 ["scroll"]
      749 GETTABLEKS                       R37 R0 K48 ["viewType"]
      751 JUMPIFNOTEQKS                    R37 K59 ["grid"] ; [+3]
      753 LOADK                            R36 K202 ["terrain-material-grid"]
      754 JUMP                             ; [+1]
      755 LOADK                            R36 K203 ["terrain-material-list"]
      756 SETTABLEKS                       R36 R35 K88 ["testId"]
      758 LENGTH                           R37 R14
      759 LOADN                            R38 0
      760 JUMPIFNOTLT                      R38 R37 ; [+3]
      762 MOVE                             R36 R21
      763 JUMP                             ; [+27]
      764 DUPTABLE                         R36 K205 [{"Empty"}]
      765 GETUPVAL                         R37 0
      766 GETTABLEKS                       R37 R37 K49 ["createElement"]
      768 GETUPVAL                         R38 8
      769 DUPTABLE                         R39 K208 [{["Size"], ["tag"] = "row align-x-center align-y-center", ["testId"] = "terrain-material-empty"}]
      770 GETIMPORT                        R40 K69 [UDim2.new]
      772 LOADN                            R41 1
      773 LOADN                            R42 0
      774 LOADN                            R43 0
      775 LOADN                            R44 160
      776 CALL                             R40 4 1
      777 SETTABLEKS                       R40 R39 K21 ["Size"]
      779 DUPTABLE                         R40 K210 [{"Label"}]
      780 GETUPVAL                         R41 0
      781 GETTABLEKS                       R41 R41 K49 ["createElement"]
      783 GETUPVAL                         R42 22
      784 DUPTABLE                         R43 K214 [{["Text"] = "No results found", ["tag"] = "auto-xy text-body-small content-muted"}]
      785 CALL                             R41 2 1
      786 SETTABLEKS                       R41 R40 K209 ["Label"]
      788 CALL                             R37 3 1
      789 SETTABLEKS                       R37 R36 K204 ["Empty"]
      791 CALL                             R33 3 1
      792 SETTABLEKS                       R33 R32 K101 ["Materials"]
      794 CALL                             R29 3 1
      795 SETTABLEKS                       R29 R28 K91 ["Content"]
      797 GETUPVAL                         R29 0
      798 GETTABLEKS                       R29 R29 K49 ["createElement"]
      800 GETUPVAL                         R30 23
      801 DUPTABLE                         R31 K216 [{"colorMode", "isOpen", "itemText", "onActivated", "onPressedOutside", "overlayGui", "position", "preferences"}]
      802 GETTABLEKS                       R32 R3 K145 ["Config"]
      804 GETTABLEKS                       R32 R32 K146 ["ColorMode"]
      806 GETTABLEKS                       R32 R32 K14 ["Name"]
      808 SETTABLEKS                       R32 R31 K136 ["colorMode"]
      810 JUMPIFNOTEQKNIL                  R16 ; [+2]
      812 LOADB                            R32 0 +1
      813 LOADB                            R32 1
      814 SETTABLEKS                       R32 R31 K137 ["isOpen"]
      816 LOADK                            R34 K160 ["Plugin"]
      817 LOADK                            R35 K217 ["EditInTerrainMaterialManager"]
      818 NAMECALL                         R32 R1 K129 ["getText"]
      820 CALL                             R32 3 1
      821 SETTABLEKS                       R32 R31 K215 ["itemText"]
      823 SETTABLEKS                       R20 R31 K53 ["onActivated"]
      825 SETTABLEKS                       R18 R31 K138 ["onPressedOutside"]
      827 SETTABLEKS                       R10 R31 K142 ["overlayGui"]
      829 GETIMPORT                        R32 K68 [UDim2.fromOffset]
      831 JUMPIFNOT                        R16 ; [+6]
      832 GETTABLEKS                       R34 R16 K218 ["clickOffset"]
      834 GETTABLEKS                       R34 R34 K219 ["X"]
      836 ADDK                             R33 R34 K64 [4]
      837 JUMP                             ; [+1]
      838 LOADN                            R33 0
      839 JUMPIFNOT                        R16 ; [+5]
      840 GETTABLEKS                       R34 R16 K218 ["clickOffset"]
      842 GETTABLEKS                       R34 R34 K198 ["Y"]
      844 JUMP                             ; [+1]
      845 LOADN                            R34 0
      846 CALL                             R32 2 1
      847 SETTABLEKS                       R32 R31 K175 ["position"]
      849 SETTABLEKS                       R2 R31 K143 ["preferences"]
      851 CALL                             R29 2 1
      852 SETTABLEKS                       R29 R28 K92 ["ContextMenu"]
      854 CALL                             R25 3 -1
      855 CLOSEUPVALS                      R15
      856 RETURN                           R25 -1

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
       62 GETIMPORT                        R9 K1 [script]
       64 GETTABLEKS                       R9 R9 K16 ["Parent"]
       66 GETTABLEKS                       R9 R9 K17 ["ViewSortMenu"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K12 ["Src"]
       73 GETTABLEKS                       R10 R10 K18 ["Types"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K12 ["Src"]
       80 GETTABLEKS                       R11 R11 K19 ["Util"]
       82 GETTABLEKS                       R11 R11 K20 ["sortTerrainMaterialCatalog"]
       84 CALL                             R10 1 1
       85 GETTABLEKS                       R11 R1 K21 ["IconButton"]
       87 GETTABLEKS                       R12 R1 K22 ["Enums"]
       89 GETTABLEKS                       R12 R12 K23 ["InputSize"]
       91 GETTABLEKS                       R13 R1 K22 ["Enums"]
       93 GETTABLEKS                       R13 R13 K24 ["InputVariant"]
       95 GETTABLEKS                       R14 R4 K25 ["Contexts"]
       97 GETTABLEKS                       R14 R14 K26 ["Localization"]
       99 GETTABLEKS                       R15 R1 K27 ["Menu"]
      101 GETTABLEKS                       R16 R1 K28 ["Popover"]
      103 GETTABLEKS                       R17 R1 K22 ["Enums"]
      105 GETTABLEKS                       R17 R17 K29 ["PopoverAlign"]
      107 GETTABLEKS                       R18 R1 K22 ["Enums"]
      109 GETTABLEKS                       R18 R18 K30 ["PopoverSide"]
      111 GETTABLEKS                       R19 R1 K31 ["ScrollView"]
      113 GETTABLEKS                       R20 R1 K32 ["SearchInput"]
      115 GETTABLEKS                       R21 R1 K22 ["Enums"]
      117 GETTABLEKS                       R21 R21 K33 ["SearchInputShape"]
      119 GETTABLEKS                       R22 R1 K34 ["Text"]
      121 GETTABLEKS                       R23 R1 K35 ["Tooltip"]
      123 GETTABLEKS                       R24 R1 K36 ["View"]
      125 GETTABLEKS                       R25 R1 K22 ["Enums"]
      127 GETTABLEKS                       R25 R25 K37 ["Visibility"]
      129 GETTABLEKS                       R26 R3 K38 ["createNextOrder"]
      131 GETTABLEKS                       R27 R3 K39 ["useEventCallback"]
      133 GETTABLEKS                       R28 R3 K40 ["useToggleState"]
      135 DUPCLOSURE                       R29 K41 [PROTO_0]
      136 DUPCLOSURE                       R30 K42 [PROTO_1]
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R18
      142 CAPTURE                          VAL R24
      143 DUPCLOSURE                       R31 K43 [PROTO_13]
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R28
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R27
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R26
      152 CAPTURE                          VAL R24
      153 CAPTURE                          VAL R20
      154 CAPTURE                          VAL R21
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R23
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R25
      166 CAPTURE                          VAL R22
      167 CAPTURE                          VAL R30
      168 RETURN                           R31 1
