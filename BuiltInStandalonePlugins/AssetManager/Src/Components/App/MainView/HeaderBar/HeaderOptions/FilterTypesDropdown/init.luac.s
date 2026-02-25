PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [next]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["current"]
        6 JUMPIFNOT                        R1 ; [+10]
        7 GETIMPORT                        R2 K3 [Vector2.new]
        9 GETTABLEKS                       R4 R1 K4 ["CanvasPosition"]
       11 GETTABLEKS                       R3 R4 K5 ["X"]
       13 LOADN                            R4 0
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K4 ["CanvasPosition"]
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearFilters"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K0 ["use"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 LOADK                            R7 K1 [""]
       22 CALL                             R6 1 2
       23 GETUPVAL                         R9 6
       24 GETTABLEKS                       R8 R9 K2 ["useRef"]
       26 LOADNIL                          R9
       27 CALL                             R8 1 1
       28 GETUPVAL                         R9 7
       29 MOVE                             R10 R1
       30 MOVE                             R11 R2
       31 MOVE                             R12 R3
       32 MOVE                             R13 R4
       33 MOVE                             R14 R5
       34 CALL                             R9 5 1
       35 GETUPVAL                         R10 8
       36 CALL                             R10 0 3
       37 GETUPVAL                         R14 6
       38 GETTABLEKS                       R13 R14 K3 ["useMemo"]
       40 NEWCLOSURE                       R14 P0
       41 CAPTURE                          UPVAL U9
       42 CAPTURE                          VAL R9
       43 CAPTURE                          VAL R6
       44 NEWTABLE                         R15 0 2
       46 MOVE                             R16 R9
       47 MOVE                             R17 R6
       48 SETLIST                          R15 R16 2 [1]
       50 CALL                             R13 2 2
       51 NEWCLOSURE                       R15 P1
       52 CAPTURE                          VAL R13
       53 GETUPVAL                         R17 6
       54 GETTABLEKS                       R16 R17 K4 ["useCallback"]
       56 NEWCLOSURE                       R17 P2
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R8
       59 CALL                             R16 1 1
       60 GETUPVAL                         R18 6
       61 GETTABLEKS                       R17 R18 K5 ["createElement"]
       63 GETUPVAL                         R18 10
       64 DUPTABLE                         R19 K8 [{"Size", "tag"}]
       65 GETIMPORT                        R20 K11 [UDim2.fromOffset]
       67 GETUPVAL                         R23 11
       68 GETTABLEKS                       R22 R23 K12 ["AMR_FILTERTYPES_WIDTH"]
       70 FASTCALL2                        MATH_MIN R22 R10 ; [+4]
       72 MOVE                             R23 R10
       73 GETIMPORT                        R21 K15 [math.min]
       75 CALL                             R21 2 1
       76 GETUPVAL                         R24 11
       77 GETTABLEKS                       R23 R24 K16 ["AMR_FILTERTYPES_HEIGHT"]
       79 GETUPVAL                         R26 11
       80 GETTABLEKS                       R25 R26 K17 ["AMR_HEADERROW_HEIGHT"]
       82 SUB                              R24 R11 R25
       83 FASTCALL2                        MATH_MIN R23 R24 ; [+3]
       85 GETIMPORT                        R22 K15 [math.min]
       87 CALL                             R22 2 1
       88 CALL                             R20 2 1
       89 SETTABLEKS                       R20 R19 K6 ["Size"]
       91 LOADK                            R20 K18 ["col flex-fill gap-small padding-small bg-surface-100 stroke-standard stroke-default radius-medium"]
       92 SETTABLEKS                       R20 R19 K7 ["tag"]
       94 DUPTABLE                         R20 K21 [{"Content", "Footer"}]
       95 GETUPVAL                         R22 6
       96 GETTABLEKS                       R21 R22 K5 ["createElement"]
       98 GETUPVAL                         R22 12
       99 DUPTABLE                         R23 K26 [{"LayoutOrder", "layout", "scroll", "scrollingFrameRef", "tag"}]
      100 LOADN                            R24 1
      101 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      103 DUPTABLE                         R24 K28 [{"FillDirection"}]
      104 GETIMPORT                        R25 K31 [Enum.FillDirection.Vertical]
      106 SETTABLEKS                       R25 R24 K27 ["FillDirection"]
      108 SETTABLEKS                       R24 R23 K23 ["layout"]
      110 DUPTABLE                         R24 K36 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
      111 GETIMPORT                        R25 K39 [Enum.AutomaticSize.Y]
      113 SETTABLEKS                       R25 R24 K32 ["AutomaticCanvasSize"]
      115 GETIMPORT                        R25 K11 [UDim2.fromOffset]
      117 LOADN                            R26 0
      118 LOADN                            R27 0
      119 CALL                             R25 2 1
      120 SETTABLEKS                       R25 R24 K33 ["CanvasSize"]
      122 GETIMPORT                        R25 K40 [Enum.ScrollingDirection.Y]
      124 SETTABLEKS                       R25 R24 K34 ["ScrollingDirection"]
      126 GETIMPORT                        R25 K43 [Enum.ScrollBarInset.ScrollBar]
      128 SETTABLEKS                       R25 R24 K35 ["VerticalScrollBarInset"]
      130 SETTABLEKS                       R24 R23 K24 ["scroll"]
      132 SETTABLEKS                       R8 R23 K25 ["scrollingFrameRef"]
      134 LOADK                            R24 K44 ["size-full"]
      135 SETTABLEKS                       R24 R23 K7 ["tag"]
      137 DUPTABLE                         R24 K47 [{"Header", "Items"}]
      138 GETUPVAL                         R26 6
      139 GETTABLEKS                       R25 R26 K5 ["createElement"]
      141 GETUPVAL                         R26 10
      142 DUPTABLE                         R27 K48 [{"LayoutOrder", "tag"}]
      143 LOADN                            R28 1
      144 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      146 LOADK                            R28 K49 ["col size-full-0 auto-y gap-small padding-bottom-small"]
      147 SETTABLEKS                       R28 R27 K7 ["tag"]
      149 DUPTABLE                         R28 K51 [{"SearchInput"}]
      150 GETUPVAL                         R30 6
      151 GETTABLEKS                       R29 R30 K5 ["createElement"]
      153 GETUPVAL                         R30 13
      154 DUPTABLE                         R31 K61 [{"LayoutOrder", "label", "placeholder", "text", "leadingIcon", "iconTrailing", "onChanged", "width", "size", "textBoxRef"}]
      155 LOADN                            R32 2
      156 SETTABLEKS                       R32 R31 K22 ["LayoutOrder"]
      158 LOADK                            R32 K1 [""]
      159 SETTABLEKS                       R32 R31 K52 ["label"]
      161 LOADK                            R34 K62 ["FiltersByType"]
      162 LOADK                            R35 K63 ["SearchAllPlaceholder"]
      163 NAMECALL                         R32 R5 K64 ["getText"]
      165 CALL                             R32 3 1
      166 SETTABLEKS                       R32 R31 K53 ["placeholder"]
      168 SETTABLEKS                       R6 R31 K54 ["text"]
      170 GETUPVAL                         R34 14
      171 GETTABLEKS                       R33 R34 K65 ["IconName"]
      173 GETTABLEKS                       R32 R33 K66 ["MagnifyingGlass"]
      175 SETTABLEKS                       R32 R31 K55 ["leadingIcon"]
      177 LENGTH                           R33 R6
      178 LOADN                            R34 0
      179 JUMPIFNOTLT                      R34 R33 ; [+14]
      181 DUPTABLE                         R32 K69 [{"name", "onActivated"}]
      182 GETUPVAL                         R35 14
      183 GETTABLEKS                       R34 R35 K65 ["IconName"]
      185 GETTABLEKS                       R33 R34 K70 ["CircleX"]
      187 SETTABLEKS                       R33 R32 K67 ["name"]
      189 NEWCLOSURE                       R33 P3
      190 CAPTURE                          VAL R7
      191 SETTABLEKS                       R33 R32 K68 ["onActivated"]
      193 JUMP                             ; [+1]
      194 LOADNIL                          R32
      195 SETTABLEKS                       R32 R31 K56 ["iconTrailing"]
      197 SETTABLEKS                       R16 R31 K57 ["onChanged"]
      199 GETIMPORT                        R32 K73 [UDim.new]
      201 LOADN                            R33 1
      202 LOADN                            R34 0
      203 CALL                             R32 2 1
      204 SETTABLEKS                       R32 R31 K58 ["width"]
      206 GETUPVAL                         R34 14
      207 GETTABLEKS                       R33 R34 K74 ["InputSize"]
      209 GETTABLEKS                       R32 R33 K75 ["Small"]
      211 SETTABLEKS                       R32 R31 K59 ["size"]
      213 GETTABLEKS                       R32 R0 K76 ["searchTextBoxRef"]
      215 SETTABLEKS                       R32 R31 K60 ["textBoxRef"]
      217 CALL                             R29 2 1
      218 SETTABLEKS                       R29 R28 K50 ["SearchInput"]
      220 CALL                             R25 3 1
      221 SETTABLEKS                       R25 R24 K45 ["Header"]
      223 GETUPVAL                         R26 6
      224 GETTABLEKS                       R25 R26 K5 ["createElement"]
      226 GETUPVAL                         R26 10
      227 DUPTABLE                         R27 K48 [{"LayoutOrder", "tag"}]
      228 LOADN                            R28 2
      229 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      231 LOADK                            R28 K77 ["col auto-xy gap-xsmall"]
      232 SETTABLEKS                       R28 R27 K7 ["tag"]
      234 GETIMPORT                        R30 K79 [next]
      236 MOVE                             R31 R13
      237 CALL                             R30 1 1
      238 JUMPIFNOTEQKNIL                  R30 ; [+2]
      240 LOADB                            R29 0 +1
      241 LOADB                            R29 1
      242 JUMPIFNOT                        R29 ; [+10]
      243 GETUPVAL                         R29 15
      244 GETTABLEKS                       R28 R29 K80 ["map"]
      246 MOVE                             R29 R13
      247 NEWCLOSURE                       R30 P4
      248 CAPTURE                          UPVAL U6
      249 CAPTURE                          UPVAL U16
      250 CAPTURE                          VAL R14
      251 CALL                             R28 2 1
      252 JUMP                             ; [+20]
      253 NEWTABLE                         R28 0 1
      255 GETUPVAL                         R30 6
      256 GETTABLEKS                       R29 R30 K5 ["createElement"]
      258 GETUPVAL                         R30 17
      259 DUPTABLE                         R31 K82 [{"Text", "tag"}]
      260 LOADK                            R34 K83 ["Plugin"]
      261 LOADK                            R35 K84 ["NoAssets"]
      262 NAMECALL                         R32 R5 K64 ["getText"]
      264 CALL                             R32 3 1
      265 SETTABLEKS                       R32 R31 K81 ["Text"]
      267 LOADK                            R32 K85 ["size-full text-title-medium text-align-x-center text-align-y-center"]
      268 SETTABLEKS                       R32 R31 K7 ["tag"]
      270 CALL                             R29 2 -1
      271 SETLIST                          R28 R29 -1 [1]
      273 CALL                             R25 3 1
      274 SETTABLEKS                       R25 R24 K46 ["Items"]
      276 CALL                             R21 3 1
      277 SETTABLEKS                       R21 R20 K19 ["Content"]
      279 GETIMPORT                        R23 K79 [next]
      281 MOVE                             R24 R13
      282 CALL                             R23 1 1
      283 JUMPIFNOTEQKNIL                  R23 ; [+2]
      285 LOADB                            R22 0 +1
      286 LOADB                            R22 1
      287 JUMPIFNOT                        R22 ; [+75]
      288 GETUPVAL                         R22 6
      289 GETTABLEKS                       R21 R22 K5 ["createElement"]
      291 GETUPVAL                         R22 10
      292 DUPTABLE                         R23 K48 [{"LayoutOrder", "tag"}]
      293 LOADN                            R24 2
      294 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      296 LOADK                            R24 K86 ["col size-full-0 auto-y padding-top-small padding-bottom-small gap-small"]
      297 SETTABLEKS                       R24 R23 K7 ["tag"]
      299 DUPTABLE                         R24 K89 [{"BottomDivider", "ResetButton"}]
      300 GETUPVAL                         R26 6
      301 GETTABLEKS                       R25 R26 K5 ["createElement"]
      303 GETUPVAL                         R26 18
      304 DUPTABLE                         R27 K91 [{"LayoutOrder", "orientation"}]
      305 LOADN                            R28 1
      306 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      308 GETUPVAL                         R30 14
      309 GETTABLEKS                       R29 R30 K92 ["DividerOrientation"]
      311 GETTABLEKS                       R28 R29 K93 ["Horizontal"]
      313 SETTABLEKS                       R28 R27 K90 ["orientation"]
      315 CALL                             R25 2 1
      316 SETTABLEKS                       R25 R24 K87 ["BottomDivider"]
      318 GETUPVAL                         R26 6
      319 GETTABLEKS                       R25 R26 K5 ["createElement"]
      321 GETUPVAL                         R26 19
      322 DUPTABLE                         R27 K95 [{"LayoutOrder", "text", "onActivated", "variant", "width", "size"}]
      323 LOADN                            R28 2
      324 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      326 LOADK                            R30 K96 ["Filters"]
      327 LOADK                            R31 K97 ["ResetFilters"]
      328 NAMECALL                         R28 R5 K64 ["getText"]
      330 CALL                             R28 3 1
      331 SETTABLEKS                       R28 R27 K54 ["text"]
      333 NEWCLOSURE                       R28 P5
      334 CAPTURE                          VAL R3
      335 SETTABLEKS                       R28 R27 K68 ["onActivated"]
      337 GETUPVAL                         R30 14
      338 GETTABLEKS                       R29 R30 K98 ["ButtonVariant"]
      340 GETTABLEKS                       R28 R29 K99 ["Utility"]
      342 SETTABLEKS                       R28 R27 K94 ["variant"]
      344 GETIMPORT                        R28 K73 [UDim.new]
      346 LOADN                            R29 1
      347 LOADN                            R30 0
      348 CALL                             R28 2 1
      349 SETTABLEKS                       R28 R27 K58 ["width"]
      351 GETUPVAL                         R30 14
      352 GETTABLEKS                       R29 R30 K74 ["InputSize"]
      354 GETTABLEKS                       R28 R29 K75 ["Small"]
      356 SETTABLEKS                       R28 R27 K59 ["size"]
      358 CALL                             R25 2 1
      359 SETTABLEKS                       R25 R24 K88 ["ResetButton"]
      361 CALL                             R21 3 1
      362 JUMP                             ; [+1]
      363 LOADNIL                          R21
      364 SETTABLEKS                       R21 R20 K20 ["Footer"]
      366 CALL                             R17 3 -1
      367 RETURN                           R17 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+10]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K0 ["current"]
        9 NAMECALL                         R0 R0 K1 ["focus"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 GETUPVAL                         R2 0
       14 NOT                              R1 R2
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 2
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["useRef"]
        6 LOADNIL                          R4
        7 CALL                             R3 1 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K1 ["use"]
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 3
       13 CALL                             R5 0 2
       14 GETUPVAL                         R7 4
       15 MOVE                             R8 R6
       16 CALL                             R7 1 1
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R8 R9 K2 ["useCallback"]
       20 NEWCLOSURE                       R9 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R2
       24 CALL                             R8 1 1
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R9 R10 K3 ["createElement"]
       28 GETUPVAL                         R11 5
       29 GETTABLEKS                       R10 R11 K4 ["Root"]
       31 DUPTABLE                         R11 K6 [{"isOpen"}]
       32 SETTABLEKS                       R1 R11 K5 ["isOpen"]
       34 DUPTABLE                         R12 K9 [{"Anchor", "Content"}]
       35 GETUPVAL                         R14 1
       36 GETTABLEKS                       R13 R14 K3 ["createElement"]
       38 GETUPVAL                         R15 5
       39 GETTABLEKS                       R14 R15 K7 ["Anchor"]
       41 DUPTABLE                         R15 K11 [{"LayoutOrder"}]
       42 GETTABLEKS                       R16 R0 K10 ["LayoutOrder"]
       44 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
       46 GETUPVAL                         R17 1
       47 GETTABLEKS                       R16 R17 K3 ["createElement"]
       49 GETUPVAL                         R17 6
       50 DUPTABLE                         R18 K14 [{"title", "side"}]
       51 LOADK                            R21 K15 ["SearchBar"]
       52 LOADK                            R22 K16 ["PlaceholderText"]
       53 NAMECALL                         R19 R4 K17 ["getText"]
       55 CALL                             R19 3 1
       56 SETTABLEKS                       R19 R18 K12 ["title"]
       58 GETUPVAL                         R21 7
       59 GETTABLEKS                       R20 R21 K18 ["PopoverSide"]
       61 GETTABLEKS                       R19 R20 K19 ["Bottom"]
       63 SETTABLEKS                       R19 R18 K13 ["side"]
       65 GETUPVAL                         R20 1
       66 GETTABLEKS                       R19 R20 K3 ["createElement"]
       68 GETUPVAL                         R20 8
       69 DUPTABLE                         R21 K24 [{"onActivated", "variant", "size", "icon"}]
       70 SETTABLEKS                       R8 R21 K20 ["onActivated"]
       72 JUMPIFNOT                        R7 ; [+6]
       73 GETUPVAL                         R24 7
       74 GETTABLEKS                       R23 R24 K25 ["ButtonVariant"]
       76 GETTABLEKS                       R22 R23 K26 ["Emphasis"]
       78 JUMP                             ; [+5]
       79 GETUPVAL                         R24 7
       80 GETTABLEKS                       R23 R24 K25 ["ButtonVariant"]
       82 GETTABLEKS                       R22 R23 K27 ["Utility"]
       84 SETTABLEKS                       R22 R21 K21 ["variant"]
       86 GETUPVAL                         R24 7
       87 GETTABLEKS                       R23 R24 K28 ["InputSize"]
       89 GETTABLEKS                       R22 R23 K29 ["XSmall"]
       91 SETTABLEKS                       R22 R21 K22 ["size"]
       93 GETUPVAL                         R24 7
       94 GETTABLEKS                       R23 R24 K30 ["IconName"]
       96 GETTABLEKS                       R22 R23 K31 ["ThreeBarsHorizontalNarrowing"]
       98 SETTABLEKS                       R22 R21 K23 ["icon"]
      100 CALL                             R19 2 -1
      101 CALL                             R16 -1 -1
      102 CALL                             R13 -1 1
      103 SETTABLEKS                       R13 R12 K7 ["Anchor"]
      105 GETUPVAL                         R14 1
      106 GETTABLEKS                       R13 R14 K3 ["createElement"]
      108 GETUPVAL                         R15 5
      109 GETTABLEKS                       R14 R15 K8 ["Content"]
      111 DUPTABLE                         R15 K35 [{"hasArrow", "side", "align", "onPressedOutside"}]
      112 LOADB                            R16 0
      113 SETTABLEKS                       R16 R15 K32 ["hasArrow"]
      115 GETUPVAL                         R18 7
      116 GETTABLEKS                       R17 R18 K18 ["PopoverSide"]
      118 GETTABLEKS                       R16 R17 K19 ["Bottom"]
      120 SETTABLEKS                       R16 R15 K13 ["side"]
      122 GETUPVAL                         R18 7
      123 GETTABLEKS                       R17 R18 K36 ["PopoverAlign"]
      125 GETTABLEKS                       R16 R17 K37 ["Center"]
      127 SETTABLEKS                       R16 R15 K33 ["align"]
      129 NEWCLOSURE                       R16 P1
      130 CAPTURE                          VAL R2
      131 SETTABLEKS                       R16 R15 K34 ["onPressedOutside"]
      133 GETUPVAL                         R17 1
      134 GETTABLEKS                       R16 R17 K3 ["createElement"]
      136 GETUPVAL                         R17 9
      137 DUPTABLE                         R18 K39 [{"searchTextBoxRef"}]
      138 SETTABLEKS                       R3 R18 K38 ["searchTextBoxRef"]
      140 CALL                             R16 2 -1
      141 CALL                             R13 -1 1
      142 SETTABLEKS                       R13 R12 K8 ["Content"]
      144 CALL                             R9 3 -1
      145 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Resources"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K12 ["Localization"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R7 R0 K9 ["Packages"]
       31 GETTABLEKS                       R6 R7 K13 ["Dash"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R8 R0 K9 ["Packages"]
       38 GETTABLEKS                       R7 R8 K14 ["React"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R6 K15 ["useState"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R10 R0 K9 ["Packages"]
       47 GETTABLEKS                       R9 R10 K16 ["Foundation"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R9 R8 K17 ["Enums"]
       52 GETTABLEKS                       R10 R8 K18 ["View"]
       54 GETTABLEKS                       R11 R8 K19 ["ScrollView"]
       56 GETTABLEKS                       R12 R8 K20 ["Popover"]
       58 GETTABLEKS                       R13 R8 K21 ["Button"]
       60 GETTABLEKS                       R14 R8 K22 ["Text"]
       62 GETTABLEKS                       R15 R8 K23 ["TextInput"]
       64 GETTABLEKS                       R16 R8 K24 ["Divider"]
       66 GETTABLEKS                       R17 R8 K25 ["Tooltip"]
       68 GETTABLEKS                       R18 R8 K26 ["IconButton"]
       70 GETIMPORT                        R19 K5 [require]
       72 GETIMPORT                        R21 K1 [script]
       74 GETTABLEKS                       R20 R21 K27 ["FilterTypeGroup"]
       76 CALL                             R19 1 1
       77 GETIMPORT                        R20 K5 [require]
       79 GETTABLEKS                       R23 R0 K6 ["Src"]
       81 GETTABLEKS                       R22 R23 K28 ["Controllers"]
       83 GETTABLEKS                       R21 R22 K29 ["Input"]
       85 CALL                             R20 1 1
       86 GETIMPORT                        R21 K5 [require]
       88 GETTABLEKS                       R24 R0 K6 ["Src"]
       90 GETTABLEKS                       R23 R24 K28 ["Controllers"]
       92 GETTABLEKS                       R22 R23 K30 ["ItemsController"]
       94 CALL                             R21 1 1
       95 GETIMPORT                        R22 K5 [require]
       97 GETTABLEKS                       R25 R0 K6 ["Src"]
       99 GETTABLEKS                       R24 R25 K28 ["Controllers"]
      101 GETTABLEKS                       R23 R24 K31 ["SearchController"]
      103 CALL                             R22 1 1
      104 GETIMPORT                        R23 K5 [require]
      106 GETTABLEKS                       R26 R0 K6 ["Src"]
      108 GETTABLEKS                       R25 R26 K28 ["Controllers"]
      110 GETTABLEKS                       R24 R25 K32 ["PluginController"]
      112 CALL                             R23 1 1
      113 GETIMPORT                        R24 K5 [require]
      115 GETTABLEKS                       R27 R0 K6 ["Src"]
      117 GETTABLEKS                       R26 R27 K33 ["Util"]
      119 GETTABLEKS                       R25 R26 K34 ["hasActiveFilters"]
      121 CALL                             R24 1 1
      122 GETIMPORT                        R25 K5 [require]
      124 GETIMPORT                        R27 K1 [script]
      126 GETTABLEKS                       R26 R27 K35 ["useFilterTypeTable"]
      128 CALL                             R25 1 1
      129 GETIMPORT                        R26 K5 [require]
      131 GETIMPORT                        R28 K1 [script]
      133 GETTABLEKS                       R27 R28 K36 ["searchFilterTypes"]
      135 CALL                             R26 1 1
      136 GETIMPORT                        R27 K5 [require]
      138 GETTABLEKS                       R30 R0 K6 ["Src"]
      140 GETTABLEKS                       R29 R30 K37 ["Hooks"]
      142 GETTABLEKS                       R28 R29 K38 ["usePluginSize"]
      144 CALL                             R27 1 1
      145 GETIMPORT                        R28 K5 [require]
      147 GETTABLEKS                       R31 R0 K6 ["Src"]
      149 GETTABLEKS                       R30 R31 K37 ["Hooks"]
      151 GETTABLEKS                       R29 R30 K39 ["useSortFilter"]
      153 CALL                             R28 1 1
      154 DUPCLOSURE                       R29 K40 [PROTO_6]
      155 CAPTURE                          VAL R23
      156 CAPTURE                          VAL R20
      157 CAPTURE                          VAL R21
      158 CAPTURE                          VAL R22
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R6
      162 CAPTURE                          VAL R25
      163 CAPTURE                          VAL R27
      164 CAPTURE                          VAL R26
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R19
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R13
      175 DUPCLOSURE                       R30 K41 [PROTO_9]
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R6
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R28
      180 CAPTURE                          VAL R24
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R9
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R29
      186 RETURN                           R30 1
