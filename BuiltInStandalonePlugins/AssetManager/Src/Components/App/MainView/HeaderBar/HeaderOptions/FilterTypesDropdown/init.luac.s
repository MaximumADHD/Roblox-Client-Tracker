PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["focus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [next]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 JUMPIFNOT                        R1 ; [+10]
        7 GETIMPORT                        R2 K3 [Vector2.new]
        9 GETTABLEKS                       R3 R1 K4 ["CanvasPosition"]
       11 GETTABLEKS                       R3 R3 K5 ["X"]
       13 LOADN                            R4 0
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K4 ["CanvasPosition"]
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{"LayoutOrder", "Text", "Items", "KeepExpanded"}]
        5 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
        9 GETTABLEKS                       R5 R0 K2 ["Text"]
       11 SETTABLEKS                       R5 R4 K2 ["Text"]
       13 GETTABLEKS                       R5 R0 K3 ["Items"]
       15 SETTABLEKS                       R5 R4 K3 ["Items"]
       17 GETUPVAL                         R5 2
       18 SETTABLEKS                       R5 R4 K4 ["KeepExpanded"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearFilters"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 LOADK                            R4 K1 [""]
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K2 ["useRef"]
       14 LOADNIL                          R6
       15 CALL                             R5 1 1
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R6 R6 K3 ["useEffect"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R5
       21 NEWTABLE                         R8 0 0
       23 CALL                             R6 2 0
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K2 ["useRef"]
       27 LOADNIL                          R7
       28 CALL                             R6 1 1
       29 GETUPVAL                         R7 4
       30 CALL                             R7 0 1
       31 GETUPVAL                         R8 5
       32 CALL                             R8 0 3
       33 GETUPVAL                         R11 3
       34 GETTABLEKS                       R11 R11 K4 ["useMemo"]
       36 NEWCLOSURE                       R12 P1
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R3
       40 NEWTABLE                         R13 0 2
       42 MOVE                             R14 R7
       43 MOVE                             R15 R3
       44 SETLIST                          R13 R14 2 [1]
       46 CALL                             R11 2 2
       47 NEWCLOSURE                       R13 P2
       48 CAPTURE                          VAL R11
       49 NEWCLOSURE                       R14 P3
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R6
       52 GETUPVAL                         R15 3
       53 GETTABLEKS                       R15 R15 K5 ["createElement"]
       55 GETUPVAL                         R16 7
       56 GETTABLEKS                       R16 R16 K6 ["View"]
       58 DUPTABLE                         R17 K9 [{"Size", "tag"}]
       59 GETIMPORT                        R18 K12 [UDim2.fromOffset]
       61 GETUPVAL                         R20 8
       62 GETTABLEKS                       R20 R20 K13 ["FilterTypesWidth"]
       64 FASTCALL2                        MATH_MIN R20 R8 ; [+4]
       66 MOVE                             R21 R8
       67 GETIMPORT                        R19 K16 [math.min]
       69 CALL                             R19 2 1
       70 GETUPVAL                         R21 8
       71 GETTABLEKS                       R21 R21 K17 ["FilterTypesHeight"]
       73 GETUPVAL                         R23 8
       74 GETTABLEKS                       R23 R23 K18 ["HeaderRowHeight"]
       76 SUB                              R22 R9 R23
       77 FASTCALL2                        MATH_MIN R21 R22 ; [+3]
       79 GETIMPORT                        R20 K16 [math.min]
       81 CALL                             R20 2 1
       82 CALL                             R18 2 1
       83 SETTABLEKS                       R18 R17 K7 ["Size"]
       85 LOADK                            R18 K19 ["col flex-fill padding-small bg-surface-100 stroke-default radius-medium"]
       86 SETTABLEKS                       R18 R17 K8 ["tag"]
       88 DUPTABLE                         R18 K22 [{"Content", "Footer"}]
       89 GETUPVAL                         R19 3
       90 GETTABLEKS                       R19 R19 K5 ["createElement"]
       92 GETUPVAL                         R20 7
       93 GETTABLEKS                       R20 R20 K23 ["ScrollView"]
       95 DUPTABLE                         R21 K28 [{"LayoutOrder", "layout", "scroll", "scrollingFrameRef", "tag"}]
       96 LOADN                            R22 1
       97 SETTABLEKS                       R22 R21 K24 ["LayoutOrder"]
       99 DUPTABLE                         R22 K30 [{"FillDirection"}]
      100 GETIMPORT                        R23 K33 [Enum.FillDirection.Vertical]
      102 SETTABLEKS                       R23 R22 K29 ["FillDirection"]
      104 SETTABLEKS                       R22 R21 K25 ["layout"]
      106 DUPTABLE                         R22 K38 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
      107 GETIMPORT                        R23 K41 [Enum.AutomaticSize.Y]
      109 SETTABLEKS                       R23 R22 K34 ["AutomaticCanvasSize"]
      111 GETIMPORT                        R23 K12 [UDim2.fromOffset]
      113 LOADN                            R24 0
      114 LOADN                            R25 0
      115 CALL                             R23 2 1
      116 SETTABLEKS                       R23 R22 K35 ["CanvasSize"]
      118 GETIMPORT                        R23 K42 [Enum.ScrollingDirection.Y]
      120 SETTABLEKS                       R23 R22 K36 ["ScrollingDirection"]
      122 GETIMPORT                        R23 K45 [Enum.ScrollBarInset.ScrollBar]
      124 SETTABLEKS                       R23 R22 K37 ["VerticalScrollBarInset"]
      126 SETTABLEKS                       R22 R21 K26 ["scroll"]
      128 SETTABLEKS                       R6 R21 K27 ["scrollingFrameRef"]
      130 LOADK                            R22 K46 ["size-full"]
      131 SETTABLEKS                       R22 R21 K8 ["tag"]
      133 DUPTABLE                         R22 K49 [{"Header", "Items"}]
      134 GETUPVAL                         R23 3
      135 GETTABLEKS                       R23 R23 K5 ["createElement"]
      137 GETUPVAL                         R24 7
      138 GETTABLEKS                       R24 R24 K6 ["View"]
      140 DUPTABLE                         R25 K50 [{"LayoutOrder", "tag"}]
      141 LOADN                            R26 1
      142 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      144 LOADK                            R26 K51 ["col size-full-0 auto-y gap-small padding-bottom-small"]
      145 SETTABLEKS                       R26 R25 K8 ["tag"]
      147 DUPTABLE                         R26 K53 [{"SearchInput"}]
      148 GETUPVAL                         R27 3
      149 GETTABLEKS                       R27 R27 K5 ["createElement"]
      151 GETUPVAL                         R28 7
      152 GETTABLEKS                       R28 R28 K54 ["TextInput"]
      154 DUPTABLE                         R29 K64 [{"label", "placeholder", "text", "leadingIcon", "iconTrailing", "onChanged", "width", "size", "textBoxRef"}]
      155 LOADK                            R30 K1 [""]
      156 SETTABLEKS                       R30 R29 K55 ["label"]
      158 LOADK                            R32 K65 ["FiltersByType"]
      159 LOADK                            R33 K66 ["SearchAllPlaceholder"]
      160 NAMECALL                         R30 R2 K67 ["getText"]
      162 CALL                             R30 3 1
      163 SETTABLEKS                       R30 R29 K56 ["placeholder"]
      165 SETTABLEKS                       R3 R29 K57 ["text"]
      167 GETUPVAL                         R30 7
      168 GETTABLEKS                       R30 R30 K68 ["Enums"]
      170 GETTABLEKS                       R30 R30 K69 ["IconName"]
      172 GETTABLEKS                       R30 R30 K70 ["MagnifyingGlass"]
      174 SETTABLEKS                       R30 R29 K58 ["leadingIcon"]
      176 LENGTH                           R31 R3
      177 LOADN                            R32 0
      178 JUMPIFNOTLT                      R32 R31 ; [+16]
      180 DUPTABLE                         R30 K73 [{"name", "onActivated"}]
      181 GETUPVAL                         R31 7
      182 GETTABLEKS                       R31 R31 K68 ["Enums"]
      184 GETTABLEKS                       R31 R31 K69 ["IconName"]
      186 GETTABLEKS                       R31 R31 K74 ["CircleX"]
      188 SETTABLEKS                       R31 R30 K71 ["name"]
      190 NEWCLOSURE                       R31 P4
      191 CAPTURE                          VAL R4
      192 SETTABLEKS                       R31 R30 K72 ["onActivated"]
      194 JUMP                             ; [+1]
      195 LOADNIL                          R30
      196 SETTABLEKS                       R30 R29 K59 ["iconTrailing"]
      198 SETTABLEKS                       R14 R29 K60 ["onChanged"]
      200 GETIMPORT                        R30 K77 [UDim.new]
      202 LOADN                            R31 1
      203 LOADN                            R32 0
      204 CALL                             R30 2 1
      205 SETTABLEKS                       R30 R29 K61 ["width"]
      207 GETUPVAL                         R30 7
      208 GETTABLEKS                       R30 R30 K68 ["Enums"]
      210 GETTABLEKS                       R30 R30 K78 ["InputSize"]
      212 GETTABLEKS                       R30 R30 K79 ["Small"]
      214 SETTABLEKS                       R30 R29 K62 ["size"]
      216 SETTABLEKS                       R5 R29 K63 ["textBoxRef"]
      218 CALL                             R27 2 1
      219 SETTABLEKS                       R27 R26 K52 ["SearchInput"]
      221 CALL                             R23 3 1
      222 SETTABLEKS                       R23 R22 K47 ["Header"]
      224 GETUPVAL                         R23 3
      225 GETTABLEKS                       R23 R23 K5 ["createElement"]
      227 GETUPVAL                         R24 7
      228 GETTABLEKS                       R24 R24 K6 ["View"]
      230 DUPTABLE                         R25 K50 [{"LayoutOrder", "tag"}]
      231 LOADN                            R26 2
      232 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      234 LOADK                            R26 K80 ["col auto-xy gap-xsmall"]
      235 SETTABLEKS                       R26 R25 K8 ["tag"]
      237 GETIMPORT                        R28 K82 [next]
      239 MOVE                             R29 R11
      240 CALL                             R28 1 1
      241 JUMPIFNOTEQKNIL                  R28 ; [+2]
      243 LOADB                            R27 0 +1
      244 LOADB                            R27 1
      245 JUMPIFNOT                        R27 ; [+10]
      246 GETUPVAL                         R26 9
      247 GETTABLEKS                       R26 R26 K83 ["map"]
      249 MOVE                             R27 R11
      250 NEWCLOSURE                       R28 P5
      251 CAPTURE                          UPVAL U3
      252 CAPTURE                          UPVAL U10
      253 CAPTURE                          VAL R12
      254 CALL                             R26 2 1
      255 JUMP                             ; [+22]
      256 NEWTABLE                         R26 0 1
      258 GETUPVAL                         R27 3
      259 GETTABLEKS                       R27 R27 K5 ["createElement"]
      261 GETUPVAL                         R28 7
      262 GETTABLEKS                       R28 R28 K84 ["Text"]
      264 DUPTABLE                         R29 K85 [{"Text", "tag"}]
      265 LOADK                            R32 K86 ["Plugin"]
      266 LOADK                            R33 K87 ["NoAssets"]
      267 NAMECALL                         R30 R2 K67 ["getText"]
      269 CALL                             R30 3 1
      270 SETTABLEKS                       R30 R29 K84 ["Text"]
      272 LOADK                            R30 K88 ["size-full text-title-medium text-align-x-center text-align-y-center"]
      273 SETTABLEKS                       R30 R29 K8 ["tag"]
      275 CALL                             R27 2 -1
      276 SETLIST                          R26 R27 -1 [1]
      278 CALL                             R23 3 1
      279 SETTABLEKS                       R23 R22 K48 ["Items"]
      281 CALL                             R19 3 1
      282 SETTABLEKS                       R19 R18 K20 ["Content"]
      284 GETIMPORT                        R21 K82 [next]
      286 MOVE                             R22 R11
      287 CALL                             R21 1 1
      288 JUMPIFNOTEQKNIL                  R21 ; [+2]
      290 LOADB                            R20 0 +1
      291 LOADB                            R20 1
      292 JUMPIFNOT                        R20 ; [+87]
      293 GETUPVAL                         R19 3
      294 GETTABLEKS                       R19 R19 K5 ["createElement"]
      296 GETUPVAL                         R20 7
      297 GETTABLEKS                       R20 R20 K6 ["View"]
      299 DUPTABLE                         R21 K50 [{"LayoutOrder", "tag"}]
      300 LOADN                            R22 2
      301 SETTABLEKS                       R22 R21 K24 ["LayoutOrder"]
      303 LOADK                            R22 K89 ["col size-full-0 auto-y padding-bottom-xxsmall gap-xsmall"]
      304 SETTABLEKS                       R22 R21 K8 ["tag"]
      306 DUPTABLE                         R22 K92 [{"BottomDivider", "ResetButton"}]
      307 GETUPVAL                         R23 3
      308 GETTABLEKS                       R23 R23 K5 ["createElement"]
      310 GETUPVAL                         R24 7
      311 GETTABLEKS                       R24 R24 K93 ["Divider"]
      313 DUPTABLE                         R25 K95 [{"LayoutOrder", "orientation"}]
      314 LOADN                            R26 1
      315 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      317 GETUPVAL                         R26 7
      318 GETTABLEKS                       R26 R26 K68 ["Enums"]
      320 GETTABLEKS                       R26 R26 K96 ["DividerOrientation"]
      322 GETTABLEKS                       R26 R26 K97 ["Horizontal"]
      324 SETTABLEKS                       R26 R25 K94 ["orientation"]
      326 CALL                             R23 2 1
      327 SETTABLEKS                       R23 R22 K90 ["BottomDivider"]
      329 GETUPVAL                         R23 3
      330 GETTABLEKS                       R23 R23 K5 ["createElement"]
      332 GETUPVAL                         R24 7
      333 GETTABLEKS                       R24 R24 K98 ["Button"]
      335 DUPTABLE                         R25 K100 [{"LayoutOrder", "text", "onActivated", "variant", "width", "size"}]
      336 LOADN                            R26 2
      337 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      339 LOADK                            R28 K101 ["Filters"]
      340 LOADK                            R29 K102 ["ResetFilters"]
      341 NAMECALL                         R26 R2 K67 ["getText"]
      343 CALL                             R26 3 1
      344 SETTABLEKS                       R26 R25 K57 ["text"]
      346 NEWCLOSURE                       R26 P6
      347 CAPTURE                          VAL R1
      348 SETTABLEKS                       R26 R25 K72 ["onActivated"]
      350 GETUPVAL                         R26 7
      351 GETTABLEKS                       R26 R26 K68 ["Enums"]
      353 GETTABLEKS                       R26 R26 K103 ["ButtonVariant"]
      355 GETTABLEKS                       R26 R26 K104 ["Utility"]
      357 SETTABLEKS                       R26 R25 K99 ["variant"]
      359 GETIMPORT                        R26 K77 [UDim.new]
      361 LOADN                            R27 1
      362 LOADN                            R28 0
      363 CALL                             R26 2 1
      364 SETTABLEKS                       R26 R25 K61 ["width"]
      366 GETUPVAL                         R26 7
      367 GETTABLEKS                       R26 R26 K68 ["Enums"]
      369 GETTABLEKS                       R26 R26 K78 ["InputSize"]
      371 GETTABLEKS                       R26 R26 K79 ["Small"]
      373 SETTABLEKS                       R26 R25 K62 ["size"]
      375 CALL                             R23 2 1
      376 SETTABLEKS                       R23 R22 K91 ["ResetButton"]
      378 CALL                             R19 3 1
      379 JUMP                             ; [+1]
      380 LOADNIL                          R19
      381 SETTABLEKS                       R19 R18 K21 ["Footer"]
      383 CALL                             R15 3 -1
      384 RETURN                           R15 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 2
        8 CALL                             R4 0 2
        9 GETUPVAL                         R6 3
       10 MOVE                             R7 R5
       11 CALL                             R6 1 1
       12 GETUPVAL                         R7 4
       13 GETTABLEKS                       R7 R7 K1 ["createElement"]
       15 GETUPVAL                         R8 5
       16 GETTABLEKS                       R8 R8 K2 ["Popover"]
       18 GETTABLEKS                       R8 R8 K3 ["Root"]
       20 DUPTABLE                         R9 K5 [{"isOpen"}]
       21 SETTABLEKS                       R2 R9 K4 ["isOpen"]
       23 DUPTABLE                         R10 K8 [{"Anchor", "Content"}]
       24 GETUPVAL                         R11 4
       25 GETTABLEKS                       R11 R11 K1 ["createElement"]
       27 GETUPVAL                         R12 5
       28 GETTABLEKS                       R12 R12 K2 ["Popover"]
       30 GETTABLEKS                       R12 R12 K6 ["Anchor"]
       32 DUPTABLE                         R13 K10 [{"LayoutOrder"}]
       33 GETTABLEKS                       R14 R0 K9 ["LayoutOrder"]
       35 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       37 GETUPVAL                         R14 4
       38 GETTABLEKS                       R14 R14 K1 ["createElement"]
       40 GETUPVAL                         R15 5
       41 GETTABLEKS                       R15 R15 K11 ["Tooltip"]
       43 DUPTABLE                         R16 K14 [{"title", "side"}]
       44 LOADK                            R19 K15 ["SearchBar"]
       45 LOADK                            R20 K16 ["PlaceholderText"]
       46 NAMECALL                         R17 R1 K17 ["getText"]
       48 CALL                             R17 3 1
       49 SETTABLEKS                       R17 R16 K12 ["title"]
       51 GETUPVAL                         R17 5
       52 GETTABLEKS                       R17 R17 K18 ["Enums"]
       54 GETTABLEKS                       R17 R17 K19 ["PopoverSide"]
       56 GETTABLEKS                       R17 R17 K20 ["Bottom"]
       58 SETTABLEKS                       R17 R16 K13 ["side"]
       60 GETUPVAL                         R17 4
       61 GETTABLEKS                       R17 R17 K1 ["createElement"]
       63 GETUPVAL                         R18 5
       64 GETTABLEKS                       R18 R18 K21 ["IconButton"]
       66 DUPTABLE                         R19 K26 [{"onActivated", "variant", "size", "icon"}]
       67 NEWCLOSURE                       R20 P0
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R20 R19 K22 ["onActivated"]
       72 JUMPIFNOT                        R6 ; [+8]
       73 GETUPVAL                         R20 5
       74 GETTABLEKS                       R20 R20 K18 ["Enums"]
       76 GETTABLEKS                       R20 R20 K27 ["ButtonVariant"]
       78 GETTABLEKS                       R20 R20 K28 ["Emphasis"]
       80 JUMP                             ; [+7]
       81 GETUPVAL                         R20 5
       82 GETTABLEKS                       R20 R20 K18 ["Enums"]
       84 GETTABLEKS                       R20 R20 K27 ["ButtonVariant"]
       86 GETTABLEKS                       R20 R20 K29 ["Utility"]
       88 SETTABLEKS                       R20 R19 K23 ["variant"]
       90 GETUPVAL                         R20 5
       91 GETTABLEKS                       R20 R20 K18 ["Enums"]
       93 GETTABLEKS                       R20 R20 K30 ["InputSize"]
       95 GETTABLEKS                       R20 R20 K31 ["XSmall"]
       97 SETTABLEKS                       R20 R19 K24 ["size"]
       99 GETUPVAL                         R20 5
      100 GETTABLEKS                       R20 R20 K18 ["Enums"]
      102 GETTABLEKS                       R20 R20 K32 ["IconName"]
      104 GETTABLEKS                       R20 R20 K33 ["ThreeBarsHorizontalNarrowing"]
      106 SETTABLEKS                       R20 R19 K25 ["icon"]
      108 CALL                             R17 2 -1
      109 CALL                             R14 -1 -1
      110 CALL                             R11 -1 1
      111 SETTABLEKS                       R11 R10 K6 ["Anchor"]
      113 GETUPVAL                         R11 4
      114 GETTABLEKS                       R11 R11 K1 ["createElement"]
      116 GETUPVAL                         R12 5
      117 GETTABLEKS                       R12 R12 K2 ["Popover"]
      119 GETTABLEKS                       R12 R12 K7 ["Content"]
      121 DUPTABLE                         R13 K37 [{"hasArrow", "side", "align", "onPressedOutside"}]
      122 LOADB                            R14 0
      123 SETTABLEKS                       R14 R13 K34 ["hasArrow"]
      125 GETUPVAL                         R14 5
      126 GETTABLEKS                       R14 R14 K18 ["Enums"]
      128 GETTABLEKS                       R14 R14 K19 ["PopoverSide"]
      130 GETTABLEKS                       R14 R14 K20 ["Bottom"]
      132 SETTABLEKS                       R14 R13 K13 ["side"]
      134 GETUPVAL                         R14 5
      135 GETTABLEKS                       R14 R14 K18 ["Enums"]
      137 GETTABLEKS                       R14 R14 K38 ["PopoverAlign"]
      139 GETTABLEKS                       R14 R14 K39 ["Center"]
      141 SETTABLEKS                       R14 R13 K35 ["align"]
      143 NEWCLOSURE                       R14 P1
      144 CAPTURE                          VAL R3
      145 SETTABLEKS                       R14 R13 K36 ["onPressedOutside"]
      147 GETUPVAL                         R14 4
      148 GETTABLEKS                       R14 R14 K1 ["createElement"]
      150 GETUPVAL                         R15 6
      151 CALL                             R14 1 -1
      152 CALL                             R11 -1 1
      153 SETTABLEKS                       R11 R10 K7 ["Content"]
      155 CALL                             R7 3 -1
      156 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["Localization"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K9 ["Packages"]
       38 GETTABLEKS                       R7 R7 K14 ["Dash"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K9 ["Packages"]
       45 GETTABLEKS                       R8 R8 K15 ["React"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R7 K16 ["useState"]
       50 GETIMPORT                        R9 K5 [require]
       52 GETIMPORT                        R10 K1 [script]
       54 GETTABLEKS                       R10 R10 K17 ["FilterTypeGroup"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R0 K6 ["Src"]
       61 GETTABLEKS                       R11 R11 K18 ["Controllers"]
       63 GETTABLEKS                       R11 R11 K19 ["ItemsController"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R0 K6 ["Src"]
       70 GETTABLEKS                       R12 R12 K20 ["Util"]
       72 GETTABLEKS                       R12 R12 K21 ["hasActiveFilters"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K5 [require]
       77 GETTABLEKS                       R13 R0 K6 ["Src"]
       79 GETTABLEKS                       R13 R13 K20 ["Util"]
       81 GETTABLEKS                       R13 R13 K22 ["searchFilterTypes"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K5 [require]
       86 GETTABLEKS                       R14 R0 K6 ["Src"]
       88 GETTABLEKS                       R14 R14 K23 ["Hooks"]
       90 GETTABLEKS                       R14 R14 K24 ["usePluginSize"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K5 [require]
       95 GETTABLEKS                       R15 R0 K6 ["Src"]
       97 GETTABLEKS                       R15 R15 K23 ["Hooks"]
       99 GETTABLEKS                       R15 R15 K25 ["useSortFilter"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K5 [require]
      104 GETTABLEKS                       R16 R0 K6 ["Src"]
      106 GETTABLEKS                       R16 R16 K23 ["Hooks"]
      108 GETTABLEKS                       R16 R16 K26 ["useFilterTypeTable"]
      110 CALL                             R15 1 1
      111 DUPCLOSURE                       R16 K27 [PROTO_7]
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R9
      123 DUPCLOSURE                       R17 K28 [PROTO_10]
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R16
      131 RETURN                           R17 1
