PROTO_0:
        0 DUPTABLE                         R0 K3 [{"submenus", "width", "height"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["submenus"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["width"]
        7 SETTABLEKS                       R1 R0 K1 ["width"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["height"]
       12 SETTABLEKS                       R1 R0 K2 ["height"]
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        3 JUMPIF                           R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 LOADK                            R1 K1 [""]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K2 ["closeAll"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["closeAll"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["current"]
        8 JUMPIFNOT                        R0 ; [+6]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["current"]
       12 GETTABLEKS                       R0 R0 K2 ["focus"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useRef"]
        9 LOADNIL                          R3
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["useState"]
       14 LOADK                            R4 K4 [""]
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 2
       17 CALL                             R5 0 1
       18 LENGTH                           R7 R3
       19 LOADN                            R8 0
       20 JUMPIFLT                         R8 R7 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 GETTABLEKS                       R7 R0 K5 ["side"]
       26 JUMPIF                           R7 ; [+7]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K6 ["Enums"]
       30 GETTABLEKS                       R7 R7 K7 ["PopoverSide"]
       32 GETTABLEKS                       R7 R7 K8 ["Bottom"]
       34 GETTABLEKS                       R8 R0 K9 ["align"]
       36 JUMPIF                           R8 ; [+7]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R8 R8 K6 ["Enums"]
       40 GETTABLEKS                       R8 R8 K10 ["PopoverAlign"]
       42 GETTABLEKS                       R8 R8 K11 ["Start"]
       44 GETUPVAL                         R9 1
       45 GETTABLEKS                       R9 R9 K12 ["useMemo"]
       47 NEWCLOSURE                       R10 P0
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R11 0 3
       52 MOVE                             R12 R5
       53 GETTABLEKS                       R13 R0 K13 ["width"]
       55 GETTABLEKS                       R14 R0 K14 ["height"]
       57 SETLIST                          R11 R12 3 [1]
       59 CALL                             R9 2 1
       60 GETUPVAL                         R10 1
       61 GETTABLEKS                       R10 R10 K15 ["useEffect"]
       63 NEWCLOSURE                       R11 P1
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 NEWTABLE                         R12 0 2
       69 GETTABLEKS                       R13 R0 K16 ["isOpen"]
       71 GETTABLEKS                       R14 R5 K17 ["closeAll"]
       73 SETLIST                          R12 R13 2 [1]
       75 CALL                             R10 2 0
       76 GETUPVAL                         R10 1
       77 GETTABLEKS                       R10 R10 K15 ["useEffect"]
       79 NEWCLOSURE                       R11 P2
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R5
       82 NEWTABLE                         R12 0 2
       84 MOVE                             R13 R6
       85 GETTABLEKS                       R14 R5 K17 ["closeAll"]
       87 SETLIST                          R12 R13 2 [1]
       89 CALL                             R10 2 0
       90 GETUPVAL                         R10 1
       91 GETTABLEKS                       R10 R10 K15 ["useEffect"]
       93 NEWCLOSURE                       R11 P3
       94 CAPTURE                          VAL R0
       95 CAPTURE                          VAL R2
       96 NEWTABLE                         R12 0 1
       98 GETTABLEKS                       R13 R0 K16 ["isOpen"]
      100 SETLIST                          R12 R13 1 [1]
      102 CALL                             R10 2 0
      103 JUMPIFNOT                        R6 ; [+17]
      104 GETUPVAL                         R10 1
      105 GETTABLEKS                       R10 R10 K18 ["createElement"]
      107 GETUPVAL                         R11 3
      108 DUPTABLE                         R12 K22 [{"items", "searchText", "noResultsText"}]
      109 GETTABLEKS                       R13 R0 K19 ["items"]
      111 SETTABLEKS                       R13 R12 K19 ["items"]
      113 SETTABLEKS                       R3 R12 K20 ["searchText"]
      115 GETTABLEKS                       R13 R0 K23 ["emptySearchResultsText"]
      117 SETTABLEKS                       R13 R12 K21 ["noResultsText"]
      119 CALL                             R10 2 1
      120 JUMP                             ; [+18]
      121 GETUPVAL                         R10 1
      122 GETTABLEKS                       R10 R10 K18 ["createElement"]
      124 GETUPVAL                         R11 0
      125 GETTABLEKS                       R11 R11 K24 ["View"]
      127 DUPTABLE                         R12 K27 [{["tag"] = "col size-full-0 auto-y"}]
      128 GETUPVAL                         R13 1
      129 GETTABLEKS                       R13 R13 K18 ["createElement"]
      131 GETUPVAL                         R14 4
      132 DUPTABLE                         R15 K30 [{["items"], ["depth"] = 1}]
      133 GETTABLEKS                       R16 R0 K19 ["items"]
      135 SETTABLEKS                       R16 R15 K19 ["items"]
      137 CALL                             R13 2 -1
      138 CALL                             R10 -1 1
      139 GETTABLEKS                       R12 R0 K31 ["footer"]
      141 JUMPIFNOT                        R12 ; [+39]
      142 GETUPVAL                         R11 1
      143 GETTABLEKS                       R11 R11 K18 ["createElement"]
      145 GETUPVAL                         R12 0
      146 GETTABLEKS                       R12 R12 K24 ["View"]
      148 DUPTABLE                         R13 K35 [{["LayoutOrder"] = 3, ["flexItem"], ["tag"] = "col size-full-0 auto-y"}]
      149 DUPTABLE                         R14 K37 [{"FlexMode"}]
      150 GETIMPORT                        R15 K41 [Enum.UIFlexMode.None]
      152 SETTABLEKS                       R15 R14 K36 ["FlexMode"]
      154 SETTABLEKS                       R14 R13 K34 ["flexItem"]
      156 DUPTABLE                         R14 K44 [{"Divider", "Content"}]
      157 GETUPVAL                         R15 1
      158 GETTABLEKS                       R15 R15 K18 ["createElement"]
      160 GETUPVAL                         R16 0
      161 GETTABLEKS                       R16 R16 K42 ["Divider"]
      163 DUPTABLE                         R17 K45 [{["LayoutOrder"] = 1}]
      164 CALL                             R15 2 1
      165 SETTABLEKS                       R15 R14 K42 ["Divider"]
      167 GETUPVAL                         R15 1
      168 GETTABLEKS                       R15 R15 K18 ["createElement"]
      170 GETUPVAL                         R16 0
      171 GETTABLEKS                       R16 R16 K24 ["View"]
      173 DUPTABLE                         R17 K48 [{["LayoutOrder"] = 2, ["tag"] = "col size-full-0 auto-y padding-xxsmall"}]
      174 GETTABLEKS                       R18 R0 K31 ["footer"]
      176 CALL                             R15 3 1
      177 SETTABLEKS                       R15 R14 K43 ["Content"]
      179 CALL                             R11 3 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R11
      182 GETUPVAL                         R12 1
      183 GETTABLEKS                       R12 R12 K18 ["createElement"]
      185 GETUPVAL                         R13 0
      186 GETTABLEKS                       R13 R13 K49 ["Popover"]
      188 GETTABLEKS                       R13 R13 K50 ["Root"]
      190 DUPTABLE                         R14 K51 [{"isOpen"}]
      191 GETTABLEKS                       R15 R0 K16 ["isOpen"]
      193 SETTABLEKS                       R15 R14 K16 ["isOpen"]
      195 DUPTABLE                         R15 K53 [{"Anchor", "Content"}]
      196 GETUPVAL                         R16 1
      197 GETTABLEKS                       R16 R16 K18 ["createElement"]
      199 GETUPVAL                         R17 0
      200 GETTABLEKS                       R17 R17 K49 ["Popover"]
      202 GETTABLEKS                       R17 R17 K52 ["Anchor"]
      204 DUPTABLE                         R18 K55 [{"anchorRef"}]
      205 GETTABLEKS                       R19 R0 K54 ["anchorRef"]
      207 SETTABLEKS                       R19 R18 K54 ["anchorRef"]
      209 GETTABLEKS                       R20 R0 K54 ["anchorRef"]
      211 JUMPIFNOT                        R20 ; [+2]
      212 LOADNIL                          R19
      213 JUMP                             ; [+2]
      214 GETTABLEKS                       R19 R0 K56 ["children"]
      216 CALL                             R16 3 1
      217 SETTABLEKS                       R16 R15 K52 ["Anchor"]
      219 GETUPVAL                         R16 1
      220 GETTABLEKS                       R16 R16 K18 ["createElement"]
      222 GETUPVAL                         R17 0
      223 GETTABLEKS                       R17 R17 K49 ["Popover"]
      225 GETTABLEKS                       R17 R17 K43 ["Content"]
      227 DUPTABLE                         R18 K64 [{["side"], ["align"], ["hasArrow"] = False, ["isFocusable"] = True, ["onPressedOutside"], ["backgroundStyle"], ["radius"]}]
      228 DUPTABLE                         R19 K67 [{"position", "offset"}]
      229 SETTABLEKS                       R7 R19 K65 ["position"]
      231 GETTABLEKS                       R21 R1 K68 ["Stroke"]
      233 GETTABLEKS                       R21 R21 K69 ["Standard"]
      235 GETTABLEKS                       R22 R1 K70 ["Padding"]
      237 GETTABLEKS                       R22 R22 K71 ["Small"]
      239 ADD                              R20 R21 R22
      240 SETTABLEKS                       R20 R19 K66 ["offset"]
      242 SETTABLEKS                       R19 R18 K5 ["side"]
      244 SETTABLEKS                       R8 R18 K9 ["align"]
      246 GETTABLEKS                       R19 R0 K61 ["onPressedOutside"]
      248 SETTABLEKS                       R19 R18 K61 ["onPressedOutside"]
      250 GETTABLEKS                       R19 R1 K72 ["Color"]
      252 GETTABLEKS                       R19 R19 K73 ["Surface"]
      254 GETTABLEKS                       R19 R19 K74 ["Surface_200"]
      256 SETTABLEKS                       R19 R18 K62 ["backgroundStyle"]
      258 GETUPVAL                         R19 0
      259 GETTABLEKS                       R19 R19 K6 ["Enums"]
      261 GETTABLEKS                       R19 R19 K75 ["Radius"]
      263 GETTABLEKS                       R19 R19 K76 ["Medium"]
      265 SETTABLEKS                       R19 R18 K63 ["radius"]
      267 DUPTABLE                         R19 K78 [{"Menu"}]
      268 GETUPVAL                         R20 1
      269 GETTABLEKS                       R20 R20 K18 ["createElement"]
      271 GETUPVAL                         R21 5
      272 GETTABLEKS                       R21 R21 K79 ["Provider"]
      274 DUPTABLE                         R22 K81 [{"value"}]
      275 SETTABLEKS                       R9 R22 K80 ["value"]
      277 GETUPVAL                         R23 1
      278 GETTABLEKS                       R23 R23 K18 ["createElement"]
      280 GETUPVAL                         R24 0
      281 GETTABLEKS                       R24 R24 K24 ["View"]
      283 DUPTABLE                         R25 K85 [{["Size"], ["tag"] = "col stroke-standard stroke-default radius-medium", ["layout"]}]
      284 GETIMPORT                        R26 K88 [UDim2.new]
      286 GETTABLEKS                       R27 R0 K13 ["width"]
      288 GETIMPORT                        R28 K90 [UDim.new]
      290 LOADN                            R29 0
      291 GETTABLEKS                       R30 R0 K14 ["height"]
      293 CALL                             R28 2 -1
      294 CALL                             R26 -1 1
      295 SETTABLEKS                       R26 R25 K82 ["Size"]
      297 DUPTABLE                         R26 K94 [{"FillDirection", "VerticalFlex", "SortOrder"}]
      298 GETIMPORT                        R27 K96 [Enum.FillDirection.Vertical]
      300 SETTABLEKS                       R27 R26 K91 ["FillDirection"]
      302 GETIMPORT                        R27 K99 [Enum.UIFlexAlignment.Fill]
      304 SETTABLEKS                       R27 R26 K92 ["VerticalFlex"]
      306 GETIMPORT                        R27 K100 [Enum.SortOrder.LayoutOrder]
      308 SETTABLEKS                       R27 R26 K93 ["SortOrder"]
      310 SETTABLEKS                       R26 R25 K84 ["layout"]
      312 DUPTABLE                         R26 K104 [{"Header", "Body", "Footer"}]
      313 GETUPVAL                         R27 1
      314 GETTABLEKS                       R27 R27 K18 ["createElement"]
      316 GETUPVAL                         R28 0
      317 GETTABLEKS                       R28 R28 K24 ["View"]
      319 DUPTABLE                         R29 K105 [{["LayoutOrder"] = 1, ["flexItem"], ["tag"] = "col size-full-0 auto-y padding-xxsmall"}]
      320 DUPTABLE                         R30 K37 [{"FlexMode"}]
      321 GETIMPORT                        R31 K41 [Enum.UIFlexMode.None]
      323 SETTABLEKS                       R31 R30 K36 ["FlexMode"]
      325 SETTABLEKS                       R30 R29 K34 ["flexItem"]
      327 DUPTABLE                         R30 K107 [{"SearchInput"}]
      328 GETUPVAL                         R31 1
      329 GETTABLEKS                       R31 R31 K18 ["createElement"]
      331 GETUPVAL                         R32 0
      332 GETTABLEKS                       R32 R32 K108 ["TextInput"]
      334 DUPTABLE                         R33 K117 [{["label"] = "", ["leadingIcon"], ["text"], ["placeholder"], ["iconTrailing"], ["onChanged"], ["size"], ["width"], ["textBoxRef"]}]
      335 GETUPVAL                         R34 0
      336 GETTABLEKS                       R34 R34 K6 ["Enums"]
      338 GETTABLEKS                       R34 R34 K118 ["IconName"]
      340 GETTABLEKS                       R34 R34 K119 ["MagnifyingGlass"]
      342 SETTABLEKS                       R34 R33 K110 ["leadingIcon"]
      344 SETTABLEKS                       R3 R33 K111 ["text"]
      346 GETTABLEKS                       R34 R0 K120 ["searchPlaceholder"]
      348 SETTABLEKS                       R34 R33 K112 ["placeholder"]
      350 LENGTH                           R35 R3
      351 LOADN                            R36 0
      352 JUMPIFNOTLT                      R36 R35 ; [+16]
      354 DUPTABLE                         R34 K123 [{"name", "onActivated"}]
      355 GETUPVAL                         R35 0
      356 GETTABLEKS                       R35 R35 K6 ["Enums"]
      358 GETTABLEKS                       R35 R35 K118 ["IconName"]
      360 GETTABLEKS                       R35 R35 K124 ["XSmall"]
      362 SETTABLEKS                       R35 R34 K121 ["name"]
      364 NEWCLOSURE                       R35 P4
      365 CAPTURE                          VAL R4
      366 SETTABLEKS                       R35 R34 K122 ["onActivated"]
      368 JUMP                             ; [+1]
      369 LOADNIL                          R34
      370 SETTABLEKS                       R34 R33 K113 ["iconTrailing"]
      372 SETTABLEKS                       R4 R33 K114 ["onChanged"]
      374 GETUPVAL                         R34 0
      375 GETTABLEKS                       R34 R34 K6 ["Enums"]
      377 GETTABLEKS                       R34 R34 K125 ["InputSize"]
      379 GETTABLEKS                       R34 R34 K124 ["XSmall"]
      381 SETTABLEKS                       R34 R33 K115 ["size"]
      383 GETIMPORT                        R34 K90 [UDim.new]
      385 LOADN                            R35 1
      386 LOADN                            R36 0
      387 CALL                             R34 2 1
      388 SETTABLEKS                       R34 R33 K13 ["width"]
      390 SETTABLEKS                       R2 R33 K116 ["textBoxRef"]
      392 CALL                             R31 2 1
      393 SETTABLEKS                       R31 R30 K106 ["SearchInput"]
      395 CALL                             R27 3 1
      396 SETTABLEKS                       R27 R26 K101 ["Header"]
      398 GETUPVAL                         R27 1
      399 GETTABLEKS                       R27 R27 K18 ["createElement"]
      401 GETUPVAL                         R28 0
      402 GETTABLEKS                       R28 R28 K126 ["ScrollView"]
      404 DUPTABLE                         R29 K131 [{["LayoutOrder"] = 2, ["flexItem"], ["tag"] = "size-full-0", ["testId"] = "--asset-management-searchable-menu-scroll-view", ["scroll"]}]
      405 DUPTABLE                         R30 K37 [{"FlexMode"}]
      406 GETIMPORT                        R31 K132 [Enum.UIFlexMode.Fill]
      408 SETTABLEKS                       R31 R30 K36 ["FlexMode"]
      410 SETTABLEKS                       R30 R29 K34 ["flexItem"]
      412 DUPTABLE                         R30 K136 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      413 GETIMPORT                        R31 K139 [Enum.AutomaticSize.Y]
      415 SETTABLEKS                       R31 R30 K133 ["AutomaticCanvasSize"]
      417 GETIMPORT                        R31 K141 [UDim2.fromOffset]
      419 LOADN                            R32 0
      420 LOADN                            R33 0
      421 CALL                             R31 2 1
      422 SETTABLEKS                       R31 R30 K134 ["CanvasSize"]
      424 GETIMPORT                        R31 K142 [Enum.ScrollingDirection.Y]
      426 SETTABLEKS                       R31 R30 K135 ["ScrollingDirection"]
      428 SETTABLEKS                       R30 R29 K130 ["scroll"]
      430 MOVE                             R30 R10
      431 CALL                             R27 3 1
      432 SETTABLEKS                       R27 R26 K102 ["Body"]
      434 SETTABLEKS                       R11 R26 K103 ["Footer"]
      436 CALL                             R23 3 -1
      437 CALL                             R20 -1 1
      438 SETTABLEKS                       R20 R19 K77 ["Menu"]
      440 CALL                             R16 3 1
      441 SETTABLEKS                       R16 R15 K43 ["Content"]
      443 CALL                             R12 3 -1
      444 RETURN                           R12 -1

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
       30 GETTABLEKS                       R6 R6 K10 ["MenuTree"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETIMPORT                        R7 K1 [script]
       37 GETTABLEKS                       R7 R7 K11 ["SearchResults"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETIMPORT                        R8 K1 [script]
       44 GETTABLEKS                       R8 R8 K12 ["SearchableMenuContext"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETIMPORT                        R9 K1 [script]
       51 GETTABLEKS                       R9 R9 K13 ["useSubmenus"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K14 [PROTO_5]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R7
       61 RETURN                           R9 1
