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
       59 GETUPVAL                         R19 10
       60 CALL                             R19 0 1
       61 JUMPIFNOT                        R19 ; [+6]
       62 NEWTABLE                         R18 0 1
       64 MOVE                             R19 R8
       65 SETLIST                          R18 R19 1 [1]
       67 JUMP                             ; [+1]
       68 LOADNIL                          R18
       69 CALL                             R16 2 1
       70 GETUPVAL                         R18 6
       71 GETTABLEKS                       R17 R18 K5 ["createElement"]
       73 GETUPVAL                         R18 11
       74 DUPTABLE                         R19 K8 [{"Size", "tag"}]
       75 GETIMPORT                        R20 K11 [UDim2.fromOffset]
       77 GETUPVAL                         R23 12
       78 GETTABLEKS                       R22 R23 K12 ["AMR_FILTERTYPES_WIDTH"]
       80 FASTCALL2                        MATH_MIN R22 R10 ; [+4]
       82 MOVE                             R23 R10
       83 GETIMPORT                        R21 K15 [math.min]
       85 CALL                             R21 2 1
       86 GETUPVAL                         R24 12
       87 GETTABLEKS                       R23 R24 K16 ["AMR_FILTERTYPES_HEIGHT"]
       89 GETUPVAL                         R26 12
       90 GETTABLEKS                       R25 R26 K17 ["AMR_HEADERROW_HEIGHT"]
       92 SUB                              R24 R11 R25
       93 FASTCALL2                        MATH_MIN R23 R24 ; [+3]
       95 GETIMPORT                        R22 K15 [math.min]
       97 CALL                             R22 2 1
       98 CALL                             R20 2 1
       99 SETTABLEKS                       R20 R19 K6 ["Size"]
      101 LOADK                            R20 K18 ["col flex-fill gap-small padding-small bg-surface-100 stroke-standard stroke-default radius-medium"]
      102 SETTABLEKS                       R20 R19 K7 ["tag"]
      104 DUPTABLE                         R20 K21 [{"Content", "Footer"}]
      105 GETUPVAL                         R22 6
      106 GETTABLEKS                       R21 R22 K5 ["createElement"]
      108 GETUPVAL                         R22 13
      109 DUPTABLE                         R23 K26 [{"LayoutOrder", "layout", "scroll", "scrollingFrameRef", "tag"}]
      110 LOADN                            R24 1
      111 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      113 DUPTABLE                         R24 K28 [{"FillDirection"}]
      114 GETIMPORT                        R25 K31 [Enum.FillDirection.Vertical]
      116 SETTABLEKS                       R25 R24 K27 ["FillDirection"]
      118 SETTABLEKS                       R24 R23 K23 ["layout"]
      120 DUPTABLE                         R24 K36 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
      121 GETIMPORT                        R25 K39 [Enum.AutomaticSize.Y]
      123 SETTABLEKS                       R25 R24 K32 ["AutomaticCanvasSize"]
      125 GETIMPORT                        R25 K11 [UDim2.fromOffset]
      127 LOADN                            R26 0
      128 LOADN                            R27 0
      129 CALL                             R25 2 1
      130 SETTABLEKS                       R25 R24 K33 ["CanvasSize"]
      132 GETIMPORT                        R25 K40 [Enum.ScrollingDirection.Y]
      134 SETTABLEKS                       R25 R24 K34 ["ScrollingDirection"]
      136 GETIMPORT                        R25 K43 [Enum.ScrollBarInset.ScrollBar]
      138 SETTABLEKS                       R25 R24 K35 ["VerticalScrollBarInset"]
      140 SETTABLEKS                       R24 R23 K24 ["scroll"]
      142 SETTABLEKS                       R8 R23 K25 ["scrollingFrameRef"]
      144 LOADK                            R24 K44 ["size-full"]
      145 SETTABLEKS                       R24 R23 K7 ["tag"]
      147 DUPTABLE                         R24 K47 [{"Header", "Items"}]
      148 GETUPVAL                         R26 6
      149 GETTABLEKS                       R25 R26 K5 ["createElement"]
      151 GETUPVAL                         R26 11
      152 DUPTABLE                         R27 K48 [{"LayoutOrder", "tag"}]
      153 LOADN                            R28 1
      154 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      156 LOADK                            R28 K49 ["col size-full-0 auto-y gap-small padding-bottom-small"]
      157 SETTABLEKS                       R28 R27 K7 ["tag"]
      159 DUPTABLE                         R28 K51 [{"SearchInput"}]
      160 GETUPVAL                         R30 6
      161 GETTABLEKS                       R29 R30 K5 ["createElement"]
      163 GETUPVAL                         R30 14
      164 DUPTABLE                         R31 K61 [{"LayoutOrder", "label", "placeholder", "text", "leadingIcon", "iconTrailing", "onChanged", "width", "size", "textBoxRef"}]
      165 LOADN                            R32 2
      166 SETTABLEKS                       R32 R31 K22 ["LayoutOrder"]
      168 LOADK                            R32 K1 [""]
      169 SETTABLEKS                       R32 R31 K52 ["label"]
      171 LOADK                            R34 K62 ["FiltersByType"]
      172 LOADK                            R35 K63 ["SearchAllPlaceholder"]
      173 NAMECALL                         R32 R5 K64 ["getText"]
      175 CALL                             R32 3 1
      176 SETTABLEKS                       R32 R31 K53 ["placeholder"]
      178 SETTABLEKS                       R6 R31 K54 ["text"]
      180 GETUPVAL                         R34 15
      181 GETTABLEKS                       R33 R34 K65 ["IconName"]
      183 GETTABLEKS                       R32 R33 K66 ["MagnifyingGlass"]
      185 SETTABLEKS                       R32 R31 K55 ["leadingIcon"]
      187 LENGTH                           R33 R6
      188 LOADN                            R34 0
      189 JUMPIFNOTLT                      R34 R33 ; [+14]
      191 DUPTABLE                         R32 K69 [{"name", "onActivated"}]
      192 GETUPVAL                         R35 15
      193 GETTABLEKS                       R34 R35 K65 ["IconName"]
      195 GETTABLEKS                       R33 R34 K70 ["CircleX"]
      197 SETTABLEKS                       R33 R32 K67 ["name"]
      199 NEWCLOSURE                       R33 P3
      200 CAPTURE                          VAL R7
      201 SETTABLEKS                       R33 R32 K68 ["onActivated"]
      203 JUMP                             ; [+1]
      204 LOADNIL                          R32
      205 SETTABLEKS                       R32 R31 K56 ["iconTrailing"]
      207 SETTABLEKS                       R16 R31 K57 ["onChanged"]
      209 GETIMPORT                        R32 K73 [UDim.new]
      211 LOADN                            R33 1
      212 LOADN                            R34 0
      213 CALL                             R32 2 1
      214 SETTABLEKS                       R32 R31 K58 ["width"]
      216 GETUPVAL                         R34 15
      217 GETTABLEKS                       R33 R34 K74 ["InputSize"]
      219 GETTABLEKS                       R32 R33 K75 ["Small"]
      221 SETTABLEKS                       R32 R31 K59 ["size"]
      223 GETTABLEKS                       R32 R0 K76 ["searchTextBoxRef"]
      225 SETTABLEKS                       R32 R31 K60 ["textBoxRef"]
      227 CALL                             R29 2 1
      228 SETTABLEKS                       R29 R28 K50 ["SearchInput"]
      230 CALL                             R25 3 1
      231 SETTABLEKS                       R25 R24 K45 ["Header"]
      233 GETUPVAL                         R26 6
      234 GETTABLEKS                       R25 R26 K5 ["createElement"]
      236 GETUPVAL                         R26 11
      237 DUPTABLE                         R27 K48 [{"LayoutOrder", "tag"}]
      238 LOADN                            R28 2
      239 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      241 LOADK                            R28 K77 ["col auto-xy gap-xsmall"]
      242 SETTABLEKS                       R28 R27 K7 ["tag"]
      244 GETIMPORT                        R30 K79 [next]
      246 MOVE                             R31 R13
      247 CALL                             R30 1 1
      248 JUMPIFNOTEQKNIL                  R30 ; [+2]
      250 LOADB                            R29 0 +1
      251 LOADB                            R29 1
      252 JUMPIFNOT                        R29 ; [+10]
      253 GETUPVAL                         R29 16
      254 GETTABLEKS                       R28 R29 K80 ["map"]
      256 MOVE                             R29 R13
      257 NEWCLOSURE                       R30 P4
      258 CAPTURE                          UPVAL U6
      259 CAPTURE                          UPVAL U17
      260 CAPTURE                          VAL R14
      261 CALL                             R28 2 1
      262 JUMP                             ; [+20]
      263 NEWTABLE                         R28 0 1
      265 GETUPVAL                         R30 6
      266 GETTABLEKS                       R29 R30 K5 ["createElement"]
      268 GETUPVAL                         R30 18
      269 DUPTABLE                         R31 K82 [{"Text", "tag"}]
      270 LOADK                            R34 K83 ["Plugin"]
      271 LOADK                            R35 K84 ["NoAssets"]
      272 NAMECALL                         R32 R5 K64 ["getText"]
      274 CALL                             R32 3 1
      275 SETTABLEKS                       R32 R31 K81 ["Text"]
      277 LOADK                            R32 K85 ["size-full text-title-medium text-align-x-center text-align-y-center"]
      278 SETTABLEKS                       R32 R31 K7 ["tag"]
      280 CALL                             R29 2 -1
      281 SETLIST                          R28 R29 -1 [1]
      283 CALL                             R25 3 1
      284 SETTABLEKS                       R25 R24 K46 ["Items"]
      286 CALL                             R21 3 1
      287 SETTABLEKS                       R21 R20 K19 ["Content"]
      289 GETIMPORT                        R23 K79 [next]
      291 MOVE                             R24 R13
      292 CALL                             R23 1 1
      293 JUMPIFNOTEQKNIL                  R23 ; [+2]
      295 LOADB                            R22 0 +1
      296 LOADB                            R22 1
      297 JUMPIFNOT                        R22 ; [+75]
      298 GETUPVAL                         R22 6
      299 GETTABLEKS                       R21 R22 K5 ["createElement"]
      301 GETUPVAL                         R22 11
      302 DUPTABLE                         R23 K48 [{"LayoutOrder", "tag"}]
      303 LOADN                            R24 2
      304 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      306 LOADK                            R24 K86 ["col size-full-0 auto-y padding-top-small padding-bottom-small gap-small"]
      307 SETTABLEKS                       R24 R23 K7 ["tag"]
      309 DUPTABLE                         R24 K89 [{"BottomDivider", "ResetButton"}]
      310 GETUPVAL                         R26 6
      311 GETTABLEKS                       R25 R26 K5 ["createElement"]
      313 GETUPVAL                         R26 19
      314 DUPTABLE                         R27 K91 [{"LayoutOrder", "orientation"}]
      315 LOADN                            R28 1
      316 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      318 GETUPVAL                         R30 15
      319 GETTABLEKS                       R29 R30 K92 ["DividerOrientation"]
      321 GETTABLEKS                       R28 R29 K93 ["Horizontal"]
      323 SETTABLEKS                       R28 R27 K90 ["orientation"]
      325 CALL                             R25 2 1
      326 SETTABLEKS                       R25 R24 K87 ["BottomDivider"]
      328 GETUPVAL                         R26 6
      329 GETTABLEKS                       R25 R26 K5 ["createElement"]
      331 GETUPVAL                         R26 20
      332 DUPTABLE                         R27 K95 [{"LayoutOrder", "text", "onActivated", "variant", "width", "size"}]
      333 LOADN                            R28 2
      334 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      336 LOADK                            R30 K96 ["Filters"]
      337 LOADK                            R31 K97 ["ResetFilters"]
      338 NAMECALL                         R28 R5 K64 ["getText"]
      340 CALL                             R28 3 1
      341 SETTABLEKS                       R28 R27 K54 ["text"]
      343 NEWCLOSURE                       R28 P5
      344 CAPTURE                          VAL R3
      345 SETTABLEKS                       R28 R27 K68 ["onActivated"]
      347 GETUPVAL                         R30 15
      348 GETTABLEKS                       R29 R30 K98 ["ButtonVariant"]
      350 GETTABLEKS                       R28 R29 K99 ["Utility"]
      352 SETTABLEKS                       R28 R27 K94 ["variant"]
      354 GETIMPORT                        R28 K73 [UDim.new]
      356 LOADN                            R29 1
      357 LOADN                            R30 0
      358 CALL                             R28 2 1
      359 SETTABLEKS                       R28 R27 K58 ["width"]
      361 GETUPVAL                         R30 15
      362 GETTABLEKS                       R29 R30 K74 ["InputSize"]
      364 GETTABLEKS                       R28 R29 K75 ["Small"]
      366 SETTABLEKS                       R28 R27 K59 ["size"]
      368 CALL                             R25 2 1
      369 SETTABLEKS                       R25 R24 K88 ["ResetButton"]
      371 CALL                             R21 3 1
      372 JUMP                             ; [+1]
      373 LOADNIL                          R21
      374 SETTABLEKS                       R21 R20 K20 ["Footer"]
      376 CALL                             R17 3 -1
      377 RETURN                           R17 -1

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
       24 GETUPVAL                         R11 5
       25 CALL                             R11 0 1
       26 JUMPIFNOT                        R11 ; [+3]
       27 NEWTABLE                         R10 0 0
       29 JUMP                             ; [+1]
       30 LOADNIL                          R10
       31 CALL                             R8 2 1
       32 GETUPVAL                         R10 1
       33 GETTABLEKS                       R9 R10 K3 ["createElement"]
       35 GETUPVAL                         R11 6
       36 GETTABLEKS                       R10 R11 K4 ["Root"]
       38 DUPTABLE                         R11 K6 [{"isOpen"}]
       39 SETTABLEKS                       R1 R11 K5 ["isOpen"]
       41 DUPTABLE                         R12 K9 [{"Anchor", "Content"}]
       42 GETUPVAL                         R14 1
       43 GETTABLEKS                       R13 R14 K3 ["createElement"]
       45 GETUPVAL                         R15 6
       46 GETTABLEKS                       R14 R15 K7 ["Anchor"]
       48 DUPTABLE                         R15 K11 [{"LayoutOrder"}]
       49 GETTABLEKS                       R16 R0 K10 ["LayoutOrder"]
       51 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
       53 GETUPVAL                         R17 1
       54 GETTABLEKS                       R16 R17 K3 ["createElement"]
       56 GETUPVAL                         R17 7
       57 DUPTABLE                         R18 K14 [{"title", "side"}]
       58 LOADK                            R21 K15 ["SearchBar"]
       59 LOADK                            R22 K16 ["PlaceholderText"]
       60 NAMECALL                         R19 R4 K17 ["getText"]
       62 CALL                             R19 3 1
       63 SETTABLEKS                       R19 R18 K12 ["title"]
       65 GETUPVAL                         R21 8
       66 GETTABLEKS                       R20 R21 K18 ["PopoverSide"]
       68 GETTABLEKS                       R19 R20 K19 ["Bottom"]
       70 SETTABLEKS                       R19 R18 K13 ["side"]
       72 GETUPVAL                         R20 1
       73 GETTABLEKS                       R19 R20 K3 ["createElement"]
       75 GETUPVAL                         R20 9
       76 DUPTABLE                         R21 K24 [{"onActivated", "variant", "size", "icon"}]
       77 SETTABLEKS                       R8 R21 K20 ["onActivated"]
       79 JUMPIFNOT                        R7 ; [+6]
       80 GETUPVAL                         R24 8
       81 GETTABLEKS                       R23 R24 K25 ["ButtonVariant"]
       83 GETTABLEKS                       R22 R23 K26 ["Emphasis"]
       85 JUMP                             ; [+5]
       86 GETUPVAL                         R24 8
       87 GETTABLEKS                       R23 R24 K25 ["ButtonVariant"]
       89 GETTABLEKS                       R22 R23 K27 ["Utility"]
       91 SETTABLEKS                       R22 R21 K21 ["variant"]
       93 GETUPVAL                         R24 8
       94 GETTABLEKS                       R23 R24 K28 ["InputSize"]
       96 GETTABLEKS                       R22 R23 K29 ["XSmall"]
       98 SETTABLEKS                       R22 R21 K22 ["size"]
      100 GETUPVAL                         R24 8
      101 GETTABLEKS                       R23 R24 K30 ["IconName"]
      103 GETTABLEKS                       R22 R23 K31 ["ThreeBarsHorizontalNarrowing"]
      105 SETTABLEKS                       R22 R21 K23 ["icon"]
      107 CALL                             R19 2 -1
      108 CALL                             R16 -1 -1
      109 CALL                             R13 -1 1
      110 SETTABLEKS                       R13 R12 K7 ["Anchor"]
      112 GETUPVAL                         R14 1
      113 GETTABLEKS                       R13 R14 K3 ["createElement"]
      115 GETUPVAL                         R15 6
      116 GETTABLEKS                       R14 R15 K8 ["Content"]
      118 DUPTABLE                         R15 K35 [{"hasArrow", "side", "align", "onPressedOutside"}]
      119 LOADB                            R16 0
      120 SETTABLEKS                       R16 R15 K32 ["hasArrow"]
      122 GETUPVAL                         R18 8
      123 GETTABLEKS                       R17 R18 K18 ["PopoverSide"]
      125 GETTABLEKS                       R16 R17 K19 ["Bottom"]
      127 SETTABLEKS                       R16 R15 K13 ["side"]
      129 GETUPVAL                         R18 8
      130 GETTABLEKS                       R17 R18 K36 ["PopoverAlign"]
      132 GETTABLEKS                       R16 R17 K37 ["Center"]
      134 SETTABLEKS                       R16 R15 K33 ["align"]
      136 NEWCLOSURE                       R16 P1
      137 CAPTURE                          VAL R2
      138 SETTABLEKS                       R16 R15 K34 ["onPressedOutside"]
      140 GETUPVAL                         R17 1
      141 GETTABLEKS                       R16 R17 K3 ["createElement"]
      143 GETUPVAL                         R17 10
      144 DUPTABLE                         R18 K39 [{"searchTextBoxRef"}]
      145 SETTABLEKS                       R3 R18 K38 ["searchTextBoxRef"]
      147 CALL                             R16 2 -1
      148 CALL                             R13 -1 1
      149 SETTABLEKS                       R13 R12 K8 ["Content"]
      151 CALL                             R9 3 -1
      152 RETURN                           R9 -1

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
      154 GETIMPORT                        R29 K5 [require]
      156 GETTABLEKS                       R32 R0 K6 ["Src"]
      158 GETTABLEKS                       R31 R32 K40 ["Flags"]
      160 GETTABLEKS                       R30 R31 K41 ["getFFlagAmrMiscCallbackFixes"]
      162 CALL                             R29 1 1
      163 DUPCLOSURE                       R30 K42 [PROTO_6]
      164 CAPTURE                          VAL R23
      165 CAPTURE                          VAL R20
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R22
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R25
      172 CAPTURE                          VAL R27
      173 CAPTURE                          VAL R26
      174 CAPTURE                          VAL R29
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R9
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R13
      185 DUPCLOSURE                       R31 K43 [PROTO_9]
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R6
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R28
      190 CAPTURE                          VAL R24
      191 CAPTURE                          VAL R29
      192 CAPTURE                          VAL R12
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R9
      195 CAPTURE                          VAL R18
      196 CAPTURE                          VAL R30
      197 RETURN                           R31 1
