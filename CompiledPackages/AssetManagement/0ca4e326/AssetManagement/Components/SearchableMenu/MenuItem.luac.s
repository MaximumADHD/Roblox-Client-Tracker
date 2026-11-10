PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+30]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["GuiState"]
        5 GETIMPORT                        R1 K3 [Enum.GuiState.Hover]
        7 JUMPIFNOTEQ                      R0 R1 ; [+14]
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K4 ["submenus"]
       12 GETTABLEKS                       R0 R0 K5 ["openAtDepth"]
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K6 ["depth"]
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K7 ["id"]
       20 CALL                             R0 2 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R0 2
       23 GETTABLEKS                       R0 R0 K4 ["submenus"]
       25 GETTABLEKS                       R0 R0 K8 ["closeAtDepth"]
       27 GETUPVAL                         R1 3
       28 GETTABLEKS                       R1 R1 K6 ["depth"]
       30 CALL                             R0 1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R0 1
       33 GETTABLEKS                       R0 R0 K0 ["GuiState"]
       35 GETIMPORT                        R1 K3 [Enum.GuiState.Hover]
       37 JUMPIFNOTEQ                      R0 R1 ; [+10]
       39 GETUPVAL                         R0 2
       40 GETTABLEKS                       R0 R0 K4 ["submenus"]
       42 GETTABLEKS                       R0 R0 K8 ["closeAtDepth"]
       44 GETUPVAL                         R1 3
       45 GETTABLEKS                       R1 R1 K6 ["depth"]
       47 CALL                             R0 1 0
       48 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+8]
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K2 [typeof]
        9 CALL                             R1 1 1
       10 JUMPIFEQKS                       R1 K3 ["Instance"] ; [+2]
       12 RETURN                           R0 0
       13 LOADK                            R3 K4 ["GuiState"]
       14 NAMECALL                         R1 R0 K5 ["GetPropertyChangedSignal"]
       16 CALL                             R1 2 1
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 NAMECALL                         R1 R1 K6 ["Connect"]
       25 CALL                             R1 2 1
       26 NEWCLOSURE                       R2 P1
       27 CAPTURE                          VAL R1
       28 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["submenus"]
        5 GETTABLEKS                       R0 R0 K1 ["openAtDepth"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["depth"]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K3 ["id"]
       13 LOADB                            R3 1
       14 CALL                             R0 3 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 3
       17 GETTABLEKS                       R0 R0 K4 ["onActivated"]
       19 JUMPIFNOT                        R0 ; [+7]
       20 GETUPVAL                         R0 3
       21 GETTABLEKS                       R0 R0 K4 ["onActivated"]
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R1 R1 K3 ["id"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K7 ["Radius"]
        7 GETTABLEKS                       R3 R3 K8 ["Small"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K9 ["Size"]
       15 GETTABLEKS                       R1 R1 K10 ["Size_200"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K11 ["Stroke"]
       22 GETTABLEKS                       R1 R1 K12 ["Thicker"]
       24 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       26 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["use"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["useRef"]
       13 LOADNIL                          R4
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R0 K4 ["item"]
       17 GETTABLEKS                       R6 R4 K5 ["items"]
       19 JUMPIFNOTEQKNIL                  R6 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 GETTABLEKS                       R7 R4 K6 ["isChecked"]
       25 JUMPIFNOTEQKNIL                  R7 ; [+2]
       27 LOADB                            R6 0 +1
       28 LOADB                            R6 1
       29 MOVE                             R7 R5
       30 JUMPIFNOT                        R7 ; [+13]
       31 GETTABLEKS                       R9 R2 K7 ["submenus"]
       33 GETTABLEKS                       R9 R9 K8 ["currentOpenPath"]
       35 GETTABLEKS                       R10 R0 K9 ["depth"]
       37 GETTABLE                         R8 R9 R10
       38 GETTABLEKS                       R9 R4 K10 ["id"]
       40 JUMPIFEQ                         R8 R9 ; [+2]
       42 LOADB                            R7 0 +1
       43 LOADB                            R7 1
       44 GETUPVAL                         R8 3
       45 MOVE                             R9 R1
       46 LOADB                            R10 1
       47 CALL                             R8 2 1
       48 GETUPVAL                         R9 2
       49 GETTABLEKS                       R9 R9 K11 ["useEffect"]
       51 NEWCLOSURE                       R10 P0
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R4
       57 NEWTABLE                         R11 0 5
       59 MOVE                             R12 R5
       60 GETTABLEKS                       R13 R4 K10 ["id"]
       62 GETTABLEKS                       R14 R0 K9 ["depth"]
       64 GETTABLEKS                       R15 R2 K7 ["submenus"]
       66 GETTABLEKS                       R15 R15 K12 ["openAtDepth"]
       68 GETTABLEKS                       R16 R2 K7 ["submenus"]
       70 GETTABLEKS                       R16 R16 K13 ["closeAtDepth"]
       72 SETLIST                          R11 R12 5 [1]
       74 CALL                             R9 2 0
       75 GETUPVAL                         R9 2
       76 GETTABLEKS                       R9 R9 K14 ["useCallback"]
       78 NEWCLOSURE                       R10 P1
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R4
       83 NEWTABLE                         R11 0 5
       85 MOVE                             R12 R5
       86 GETTABLEKS                       R13 R4 K10 ["id"]
       88 GETTABLEKS                       R14 R4 K15 ["onActivated"]
       90 GETTABLEKS                       R15 R0 K9 ["depth"]
       92 GETTABLEKS                       R16 R2 K7 ["submenus"]
       94 GETTABLEKS                       R16 R16 K12 ["openAtDepth"]
       96 SETLIST                          R11 R12 5 [1]
       98 CALL                             R9 2 1
       99 GETUPVAL                         R10 2
      100 GETTABLEKS                       R10 R10 K16 ["useMemo"]
      102 NEWCLOSURE                       R11 P2
      103 CAPTURE                          VAL R1
      104 NEWTABLE                         R12 0 1
      106 MOVE                             R13 R1
      107 SETLIST                          R12 R13 1 [1]
      109 CALL                             R10 2 1
      110 GETTABLEKS                       R12 R0 K17 ["menuHasCheckableItems"]
      112 JUMPIFNOT                        R12 ; [+61]
      113 GETUPVAL                         R11 2
      114 GETTABLEKS                       R11 R11 K18 ["createElement"]
      116 GETUPVAL                         R12 0
      117 GETTABLEKS                       R12 R12 K19 ["View"]
      119 DUPTABLE                         R13 K25 [{["LayoutOrder"] = 1, ["tag"], ["testId"] = "--asset-management-searchable-menu-item-check-column"}]
      120 LOADK                            R14 K26 ["%* %*"]
      121 GETTABLEKS                       R16 R8 K27 ["slotAlignTag"]
      123 GETTABLEKS                       R17 R8 K28 ["check"]
      125 GETTABLEKS                       R17 R17 K22 ["tag"]
      127 NAMECALL                         R14 R14 K29 ["format"]
      129 CALL                             R14 3 1
      130 SETTABLEKS                       R14 R13 K22 ["tag"]
      132 DUPTABLE                         R14 K31 [{"Icon"}]
      133 JUMPIFNOT                        R6 ; [+35]
      134 GETTABLEKS                       R16 R4 K6 ["isChecked"]
      136 JUMPIFNOTEQKB                    R16 TRUE ; [+32]
      138 JUMPIF                           R5 ; [+30]
      139 GETUPVAL                         R15 2
      140 GETTABLEKS                       R15 R15 K18 ["createElement"]
      142 GETUPVAL                         R16 0
      143 GETTABLEKS                       R16 R16 K30 ["Icon"]
      145 DUPTABLE                         R17 K36 [{["name"], ["style"], ["size"], ["testId"] = "--asset-management-searchable-menu-item-check"}]
      146 GETUPVAL                         R18 0
      147 GETTABLEKS                       R18 R18 K37 ["Enums"]
      149 GETTABLEKS                       R18 R18 K38 ["IconName"]
      151 GETTABLEKS                       R18 R18 K39 ["Check"]
      153 SETTABLEKS                       R18 R17 K32 ["name"]
      155 GETTABLEKS                       R18 R8 K28 ["check"]
      157 GETTABLEKS                       R18 R18 K33 ["style"]
      159 SETTABLEKS                       R18 R17 K33 ["style"]
      161 GETTABLEKS                       R18 R8 K28 ["check"]
      163 GETTABLEKS                       R18 R18 K34 ["size"]
      165 SETTABLEKS                       R18 R17 K34 ["size"]
      167 CALL                             R15 2 1
      168 JUMP                             ; [+1]
      169 LOADNIL                          R15
      170 SETTABLEKS                       R15 R14 K30 ["Icon"]
      172 CALL                             R11 3 1
      173 JUMP                             ; [+1]
      174 LOADNIL                          R11
      175 GETTABLEKS                       R13 R4 K40 ["icon"]
      177 JUMPIFEQKNIL                     R13 ; [+32]
      179 GETUPVAL                         R12 2
      180 GETTABLEKS                       R12 R12 K18 ["createElement"]
      182 GETUPVAL                         R13 0
      183 GETTABLEKS                       R13 R13 K30 ["Icon"]
      185 DUPTABLE                         R14 K42 [{["LayoutOrder"] = 1, ["name"], ["style"], ["size"], ["tag"], ["testId"] = "--asset-management-searchable-menu-item-icon"}]
      186 GETTABLEKS                       R15 R4 K40 ["icon"]
      188 SETTABLEKS                       R15 R14 K32 ["name"]
      190 GETTABLEKS                       R15 R8 K40 ["icon"]
      192 GETTABLEKS                       R15 R15 K33 ["style"]
      194 SETTABLEKS                       R15 R14 K33 ["style"]
      196 GETTABLEKS                       R15 R8 K40 ["icon"]
      198 GETTABLEKS                       R15 R15 K34 ["size"]
      200 SETTABLEKS                       R15 R14 K34 ["size"]
      202 GETTABLEKS                       R15 R8 K40 ["icon"]
      204 GETTABLEKS                       R15 R15 K22 ["tag"]
      206 SETTABLEKS                       R15 R14 K22 ["tag"]
      208 CALL                             R12 2 1
      209 JUMP                             ; [+25]
      210 GETTABLEKS                       R13 R0 K43 ["menuHasIcon"]
      212 JUMPIFNOT                        R13 ; [+21]
      213 GETUPVAL                         R12 2
      214 GETTABLEKS                       R12 R12 K18 ["createElement"]
      216 GETUPVAL                         R13 0
      217 GETTABLEKS                       R13 R13 K19 ["View"]
      219 DUPTABLE                         R14 K44 [{["LayoutOrder"] = 1, ["tag"]}]
      220 LOADK                            R15 K26 ["%* %*"]
      221 GETTABLEKS                       R17 R8 K27 ["slotAlignTag"]
      223 GETTABLEKS                       R18 R8 K40 ["icon"]
      225 GETTABLEKS                       R18 R18 K22 ["tag"]
      227 NAMECALL                         R15 R15 K29 ["format"]
      229 CALL                             R15 3 1
      230 SETTABLEKS                       R15 R14 K22 ["tag"]
      232 CALL                             R12 2 1
      233 JUMP                             ; [+1]
      234 LOADNIL                          R12
      235 JUMPIFNOT                        R5 ; [+30]
      236 GETUPVAL                         R13 2
      237 GETTABLEKS                       R13 R13 K18 ["createElement"]
      239 GETUPVAL                         R14 0
      240 GETTABLEKS                       R14 R14 K30 ["Icon"]
      242 DUPTABLE                         R15 K47 [{["LayoutOrder"] = 3, ["name"], ["style"], ["size"], ["testId"] = "--asset-management-searchable-menu-item-chevron"}]
      243 GETUPVAL                         R16 0
      244 GETTABLEKS                       R16 R16 K37 ["Enums"]
      246 GETTABLEKS                       R16 R16 K38 ["IconName"]
      248 GETTABLEKS                       R16 R16 K48 ["ChevronSmallRight"]
      250 SETTABLEKS                       R16 R15 K32 ["name"]
      252 GETTABLEKS                       R16 R8 K28 ["check"]
      254 GETTABLEKS                       R16 R16 K33 ["style"]
      256 SETTABLEKS                       R16 R15 K33 ["style"]
      258 GETTABLEKS                       R16 R8 K49 ["chevron"]
      260 GETTABLEKS                       R16 R16 K34 ["size"]
      262 SETTABLEKS                       R16 R15 K34 ["size"]
      264 CALL                             R13 2 1
      265 JUMP                             ; [+1]
      266 LOADNIL                          R13
      267 GETUPVAL                         R14 2
      268 GETTABLEKS                       R14 R14 K18 ["createElement"]
      270 GETUPVAL                         R15 0
      271 GETTABLEKS                       R15 R15 K19 ["View"]
      273 DUPTABLE                         R16 K55 [{"LayoutOrder", "tag", "padding", "layout", "cursor", "onActivated", "selection", "ref", "testId"}]
      274 GETTABLEKS                       R17 R0 K20 ["LayoutOrder"]
      276 SETTABLEKS                       R17 R16 K20 ["LayoutOrder"]
      278 GETTABLEKS                       R17 R8 K56 ["container"]
      280 GETTABLEKS                       R17 R17 K22 ["tag"]
      282 SETTABLEKS                       R17 R16 K22 ["tag"]
      284 DUPTABLE                         R17 K59 [{"left", "right"}]
      285 GETIMPORT                        R18 K62 [UDim.new]
      287 LOADN                            R19 0
      288 GETTABLEKS                       R21 R0 K17 ["menuHasCheckableItems"]
      290 JUMPIFNOT                        R21 ; [+5]
      291 GETTABLEKS                       R20 R8 K56 ["container"]
      293 GETTABLEKS                       R20 R20 K63 ["paddingLeftWithCheck"]
      295 JUMP                             ; [+4]
      296 GETTABLEKS                       R20 R8 K56 ["container"]
      298 GETTABLEKS                       R20 R20 K64 ["paddingLeftWithoutCheck"]
      300 CALL                             R18 2 1
      301 SETTABLEKS                       R18 R17 K57 ["left"]
      303 GETIMPORT                        R18 K62 [UDim.new]
      305 LOADN                            R19 0
      306 GETTABLEKS                       R20 R8 K56 ["container"]
      308 GETTABLEKS                       R20 R20 K65 ["paddingRight"]
      310 CALL                             R18 2 1
      311 SETTABLEKS                       R18 R17 K58 ["right"]
      313 SETTABLEKS                       R17 R16 K50 ["padding"]
      315 DUPTABLE                         R17 K69 [{"FillDirection", "VerticalAlignment", "SortOrder"}]
      316 GETIMPORT                        R18 K72 [Enum.FillDirection.Horizontal]
      318 SETTABLEKS                       R18 R17 K66 ["FillDirection"]
      320 GETIMPORT                        R18 K74 [Enum.VerticalAlignment.Center]
      322 SETTABLEKS                       R18 R17 K67 ["VerticalAlignment"]
      324 GETIMPORT                        R18 K75 [Enum.SortOrder.LayoutOrder]
      326 SETTABLEKS                       R18 R17 K68 ["SortOrder"]
      328 SETTABLEKS                       R17 R16 K51 ["layout"]
      330 SETTABLEKS                       R10 R16 K52 ["cursor"]
      332 SETTABLEKS                       R9 R16 K15 ["onActivated"]
      334 DUPTABLE                         R17 K78 [{["Selectable"] = True}]
      335 SETTABLEKS                       R17 R16 K53 ["selection"]
      337 SETTABLEKS                       R3 R16 K54 ["ref"]
      339 JUMPIFNOT                        R5 ; [+2]
      340 LOADK                            R17 K79 ["--asset-management-searchable-menu-submenu-item"]
      341 JUMP                             ; [+1]
      342 LOADK                            R17 K80 ["--asset-management-searchable-menu-item"]
      343 SETTABLEKS                       R17 R16 K23 ["testId"]
      345 DUPTABLE                         R17 K82 [{"Check", "Content"}]
      346 SETTABLEKS                       R11 R17 K39 ["Check"]
      348 GETUPVAL                         R18 2
      349 GETTABLEKS                       R18 R18 K18 ["createElement"]
      351 GETUPVAL                         R19 0
      352 GETTABLEKS                       R19 R19 K19 ["View"]
      354 DUPTABLE                         R20 K86 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy", ["flexItem"], ["layout"]}]
      355 DUPTABLE                         R21 K88 [{"FlexMode"}]
      356 GETIMPORT                        R22 K91 [Enum.UIFlexMode.Fill]
      358 SETTABLEKS                       R22 R21 K87 ["FlexMode"]
      360 SETTABLEKS                       R21 R20 K85 ["flexItem"]
      362 DUPTABLE                         R21 K94 [{"FillDirection", "HorizontalFlex", "VerticalAlignment", "Padding", "SortOrder"}]
      363 GETIMPORT                        R22 K72 [Enum.FillDirection.Horizontal]
      365 SETTABLEKS                       R22 R21 K66 ["FillDirection"]
      367 GETIMPORT                        R22 K97 [Enum.UIFlexAlignment.SpaceBetween]
      369 SETTABLEKS                       R22 R21 K92 ["HorizontalFlex"]
      371 GETIMPORT                        R22 K74 [Enum.VerticalAlignment.Center]
      373 SETTABLEKS                       R22 R21 K67 ["VerticalAlignment"]
      375 GETIMPORT                        R22 K62 [UDim.new]
      377 LOADN                            R23 0
      378 GETTABLEKS                       R24 R8 K98 ["wrapper"]
      380 GETTABLEKS                       R24 R24 K99 ["gap"]
      382 CALL                             R22 2 1
      383 SETTABLEKS                       R22 R21 K93 ["Padding"]
      385 GETIMPORT                        R22 K75 [Enum.SortOrder.LayoutOrder]
      387 SETTABLEKS                       R22 R21 K68 ["SortOrder"]
      389 SETTABLEKS                       R21 R20 K51 ["layout"]
      391 DUPTABLE                         R21 K102 [{"Icon", "Text", "Trailing"}]
      392 SETTABLEKS                       R12 R21 K30 ["Icon"]
      394 GETUPVAL                         R22 2
      395 GETTABLEKS                       R22 R22 K18 ["createElement"]
      397 GETUPVAL                         R23 0
      398 GETTABLEKS                       R23 R23 K100 ["Text"]
      400 DUPTABLE                         R24 K103 [{["LayoutOrder"] = 2, ["Text"], ["tag"]}]
      401 GETTABLEKS                       R25 R4 K104 ["text"]
      403 SETTABLEKS                       R25 R24 K100 ["Text"]
      405 GETTABLEKS                       R25 R8 K104 ["text"]
      407 GETTABLEKS                       R25 R25 K22 ["tag"]
      409 SETTABLEKS                       R25 R24 K22 ["tag"]
      411 CALL                             R22 2 1
      412 SETTABLEKS                       R22 R21 K100 ["Text"]
      414 SETTABLEKS                       R13 R21 K101 ["Trailing"]
      416 CALL                             R18 3 1
      417 SETTABLEKS                       R18 R17 K81 ["Content"]
      419 CALL                             R14 3 1
      420 JUMPIF                           R5 ; [+1]
      421 RETURN                           R14 1
      422 GETTABLEKS                       R16 R2 K105 ["width"]
      424 GETTABLEKS                       R16 R16 K106 ["Offset"]
      426 LOADN                            R17 0
      427 JUMPIFNOTLT                      R17 R16 ; [+6]
      429 GETTABLEKS                       R15 R2 K105 ["width"]
      431 GETTABLEKS                       R15 R15 K106 ["Offset"]
      433 JUMP                             ; [+1]
      434 LOADK                            R15 K107 [Infinity]
      435 GETUPVAL                         R16 2
      436 GETTABLEKS                       R16 R16 K18 ["createElement"]
      438 GETUPVAL                         R17 0
      439 GETTABLEKS                       R17 R17 K19 ["View"]
      441 DUPTABLE                         R18 K110 [{"AutomaticSize", "sizeConstraint", "tag"}]
      442 GETIMPORT                        R19 K112 [Enum.AutomaticSize.XY]
      444 SETTABLEKS                       R19 R18 K108 ["AutomaticSize"]
      446 DUPTABLE                         R19 K116 [{["MinSize"] = , ["MaxSize"]}]
      447 GETIMPORT                        R20 K118 [Vector2.new]
      449 MOVE                             R21 R15
      450 LOADK                            R22 K107 [Infinity]
      451 CALL                             R20 2 1
      452 SETTABLEKS                       R20 R19 K115 ["MaxSize"]
      454 SETTABLEKS                       R19 R18 K109 ["sizeConstraint"]
      456 GETTABLEKS                       R19 R8 K119 ["submenuContentTag"]
      458 SETTABLEKS                       R19 R18 K22 ["tag"]
      460 DUPTABLE                         R19 K121 [{"Body"}]
      461 GETUPVAL                         R20 2
      462 GETTABLEKS                       R20 R20 K18 ["createElement"]
      464 GETUPVAL                         R21 4
      465 DUPTABLE                         R22 K123 [{["testId"] = "--asset-management-searchable-submenu-scroll-view"}]
      466 GETTABLEKS                       R23 R0 K124 ["children"]
      468 CALL                             R20 3 1
      469 SETTABLEKS                       R20 R19 K120 ["Body"]
      471 CALL                             R16 3 1
      472 GETUPVAL                         R17 2
      473 GETTABLEKS                       R17 R17 K18 ["createElement"]
      475 GETUPVAL                         R18 2
      476 GETTABLEKS                       R18 R18 K125 ["Fragment"]
      478 LOADNIL                          R19
      479 DUPTABLE                         R20 K128 [{"Item", "Submenu"}]
      480 SETTABLEKS                       R14 R20 K126 ["Item"]
      482 GETUPVAL                         R21 2
      483 GETTABLEKS                       R21 R21 K18 ["createElement"]
      485 GETUPVAL                         R22 0
      486 GETTABLEKS                       R22 R22 K129 ["Popover"]
      488 GETTABLEKS                       R22 R22 K130 ["Root"]
      490 DUPTABLE                         R23 K133 [{["isOpen"], ["testId"] = "--asset-management-searchable-submenu"}]
      491 SETTABLEKS                       R7 R23 K131 ["isOpen"]
      493 DUPTABLE                         R24 K135 [{"Anchor", "Content"}]
      494 GETUPVAL                         R25 2
      495 GETTABLEKS                       R25 R25 K18 ["createElement"]
      497 GETUPVAL                         R26 0
      498 GETTABLEKS                       R26 R26 K129 ["Popover"]
      500 GETTABLEKS                       R26 R26 K134 ["Anchor"]
      502 DUPTABLE                         R27 K137 [{"anchorRef"}]
      503 SETTABLEKS                       R3 R27 K136 ["anchorRef"]
      505 CALL                             R25 2 1
      506 SETTABLEKS                       R25 R24 K134 ["Anchor"]
      508 GETUPVAL                         R25 2
      509 GETTABLEKS                       R25 R25 K18 ["createElement"]
      511 GETUPVAL                         R26 0
      512 GETTABLEKS                       R26 R26 K129 ["Popover"]
      514 GETTABLEKS                       R26 R26 K81 ["Content"]
      516 DUPTABLE                         R27 K145 [{["side"], ["align"], ["hasArrow"] = False, ["onPressedOutside"], ["backgroundStyle"], ["radius"]}]
      517 DUPTABLE                         R28 K148 [{"position", "offset"}]
      518 GETUPVAL                         R29 0
      519 GETTABLEKS                       R29 R29 K37 ["Enums"]
      521 GETTABLEKS                       R29 R29 K149 ["PopoverSide"]
      523 GETTABLEKS                       R29 R29 K150 ["Right"]
      525 SETTABLEKS                       R29 R28 K146 ["position"]
      527 GETTABLEKS                       R31 R8 K151 ["groupPadding"]
      529 DIVK                             R30 R31 K83 [2]
      530 GETTABLEKS                       R31 R1 K152 ["Stroke"]
      532 GETTABLEKS                       R31 R31 K153 ["Standard"]
      534 ADD                              R29 R30 R31
      535 SETTABLEKS                       R29 R28 K147 ["offset"]
      537 SETTABLEKS                       R28 R27 K138 ["side"]
      539 DUPTABLE                         R28 K148 [{"position", "offset"}]
      540 GETUPVAL                         R29 0
      541 GETTABLEKS                       R29 R29 K37 ["Enums"]
      543 GETTABLEKS                       R29 R29 K154 ["PopoverAlign"]
      545 GETTABLEKS                       R29 R29 K155 ["Start"]
      547 SETTABLEKS                       R29 R28 K146 ["position"]
      549 GETTABLEKS                       R30 R8 K151 ["groupPadding"]
      551 MINUS                            R29 R30
      552 SETTABLEKS                       R29 R28 K147 ["offset"]
      554 SETTABLEKS                       R28 R27 K139 ["align"]
      556 GETTABLEKS                       R28 R2 K7 ["submenus"]
      558 GETTABLEKS                       R28 R28 K156 ["closeAll"]
      560 SETTABLEKS                       R28 R27 K142 ["onPressedOutside"]
      562 GETTABLEKS                       R28 R1 K157 ["Color"]
      564 GETTABLEKS                       R28 R28 K158 ["Surface"]
      566 GETTABLEKS                       R28 R28 K159 ["Surface_200"]
      568 SETTABLEKS                       R28 R27 K143 ["backgroundStyle"]
      570 GETUPVAL                         R28 0
      571 GETTABLEKS                       R28 R28 K37 ["Enums"]
      573 GETTABLEKS                       R28 R28 K160 ["Radius"]
      575 GETTABLEKS                       R28 R28 K161 ["Medium"]
      577 SETTABLEKS                       R28 R27 K144 ["radius"]
      579 MOVE                             R28 R16
      580 CALL                             R25 3 1
      581 SETTABLEKS                       R25 R24 K81 ["Content"]
      583 CALL                             R21 3 1
      584 SETTABLEKS                       R21 R20 K127 ["Submenu"]
      586 CALL                             R17 3 -1
      587 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Packages"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K8 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R6 R6 K10 ["Parent"]
       32 GETTABLEKS                       R6 R6 K11 ["SearchableMenuContext"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R7 R7 K10 ["Parent"]
       41 GETTABLEKS                       R7 R7 K12 ["SubmenuScrollView"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R8 R8 K10 ["Parent"]
       50 GETTABLEKS                       R8 R8 K13 ["getMenuItemStyle"]
       52 CALL                             R7 1 1
       53 DUPCLOSURE                       R8 K14 [PROTO_5]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R6
       59 GETTABLEKS                       R9 R3 K15 ["memo"]
       61 MOVE                             R10 R8
       62 CALL                             R9 1 -1
       63 RETURN                           R9 -1
