PROTO_0:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R2 R0 K1 ["fromPicker"]
        5 NOT                              R1 R2
        6 GETUPVAL                         R2 0
        7 DUPTABLE                         R3 K4 [{["fromPicker"] = False, ["previousColor"]}]
        8 GETUPVAL                         R4 1
        9 SETTABLEKS                       R4 R3 K3 ["previousColor"]
       11 SETTABLEKS                       R3 R2 K0 ["current"]
       13 GETUPVAL                         R2 1
       14 JUMPIFNOT                        R2 ; [+5]
       15 GETUPVAL                         R2 2
       16 GETUPVAL                         R3 3
       17 GETUPVAL                         R4 1
       18 CALL                             R3 1 -1
       19 CALL                             R2 -1 0
       20 GETUPVAL                         R2 4
       21 LOADNIL                          R3
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 5
       24 JUMPIFNOT                        R2 ; [+9]
       25 JUMPIFNOT                        R1 ; [+8]
       26 GETTABLEKS                       R2 R0 K3 ["previousColor"]
       28 GETUPVAL                         R3 1
       29 JUMPIFEQ                         R2 R3 ; [+4]
       31 GETUPVAL                         R2 6
       32 DUPCLOSURE                       R3 K5 [PROTO_0]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_2:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_2]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 LOADB                            R3 1
        4 SETTABLEKS                       R3 R2 K1 ["fromPicker"]
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R1 K1 ["fromPicker"]
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETUPVAL                         R3 2
        8 LOADNIL                          R4
        9 CALL                             R3 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R2
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 2
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["current"]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K1 ["fromPicker"]
       10 GETUPVAL                         R2 3
       11 MOVE                             R3 R0
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 4
       14 LOADNIL                          R3
       15 CALL                             R2 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 4
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [ipairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_INEXT                   R1
        7 LOADB                            R6 0
        8 GETUPVAL                         R7 1
        9 JUMPIFEQKNIL                     R7 ; [+6]
       11 GETUPVAL                         R7 1
       12 JUMPIFEQ                         R5 R7 ; [+2]
       14 LOADB                            R6 0 +1
       15 LOADB                            R6 1
       16 FASTCALL1                        TOSTRING R4 ; [+3]
       17 MOVE                             R8 R4
       18 GETIMPORT                        R7 K3 [tostring]
       20 CALL                             R7 1 1
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R8 R8 K4 ["createElement"]
       24 GETUPVAL                         R9 3
       25 DUPTABLE                         R10 K10 [{["tag"] = "stroke-standard stroke-default radius-small", ["Size"], ["LayoutOrder"], ["onActivated"]}]
       26 GETIMPORT                        R11 K13 [UDim2.fromOffset]
       28 LOADN                            R12 24
       29 LOADN                            R13 24
       30 CALL                             R11 2 1
       31 SETTABLEKS                       R11 R10 K7 ["Size"]
       33 SETTABLEKS                       R4 R10 K8 ["LayoutOrder"]
       35 NEWCLOSURE                       R11 P0
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          VAL R5
       38 SETTABLEKS                       R11 R10 K9 ["onActivated"]
       40 DUPTABLE                         R11 K15 [{"ColorSwatch"}]
       41 GETUPVAL                         R12 2
       42 GETTABLEKS                       R12 R12 K4 ["createElement"]
       44 LOADK                            R13 K16 ["Frame"]
       45 DUPTABLE                         R14 K19 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
       46 GETIMPORT                        R15 K21 [UDim2.new]
       48 LOADN                            R16 1
       49 LOADN                            R17 0
       50 LOADN                            R18 1
       51 LOADN                            R19 0
       52 CALL                             R15 4 1
       53 SETTABLEKS                       R15 R14 K7 ["Size"]
       55 SETTABLEKS                       R5 R14 K17 ["BackgroundColor3"]
       57 JUMPIFNOT                        R6 ; [+2]
       58 LOADN                            R15 2
       59 JUMP                             ; [+1]
       60 LOADN                            R15 1
       61 SETTABLEKS                       R15 R14 K18 ["BorderSizePixel"]
       63 DUPTABLE                         R15 K23 [{"UICorner"}]
       64 GETUPVAL                         R16 2
       65 GETTABLEKS                       R16 R16 K4 ["createElement"]
       67 LOADK                            R17 K22 ["UICorner"]
       68 DUPTABLE                         R18 K25 [{"CornerRadius"}]
       69 GETIMPORT                        R19 K27 [UDim.new]
       71 LOADN                            R20 0
       72 LOADN                            R21 4
       73 CALL                             R19 2 1
       74 SETTABLEKS                       R19 R18 K24 ["CornerRadius"]
       76 CALL                             R16 2 1
       77 SETTABLEKS                       R16 R15 K22 ["UICorner"]
       79 CALL                             R12 3 1
       80 SETTABLEKS                       R12 R11 K14 ["ColorSwatch"]
       82 CALL                             R8 3 1
       83 SETTABLE                         R8 R0 R7
       84 FORGLOOP                         R1 2 [inext] ; [-78]
       86 RETURN                           R0 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["Localization"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 LOADK                            R4 K1 ["General"]
        4 LOADK                            R5 K2 ["PleaseSelectAColor"]
        5 NAMECALL                         R2 R1 K3 ["getText"]
        7 CALL                             R2 3 1
        8 JUMP                             ; [+1]
        9 LOADK                            R2 K4 ["Select a color"]
       10 GETTABLEKS                       R3 R0 K5 ["selectedColor"]
       12 GETTABLEKS                       R4 R0 K6 ["setSelectedColor"]
       14 GETTABLEKS                       R5 R0 K7 ["LayoutOrder"]
       16 GETTABLEKS                       R7 R0 K9 ["Width"]
       18 ORK                              R6 R7 K8 [400]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K10 ["useState"]
       22 LOADB                            R8 0
       23 CALL                             R7 1 2
       24 JUMPIFNOTEQKNIL                  R3 ; [+2]
       26 LOADB                            R9 0 +1
       27 LOADB                            R9 1
       28 GETTABLEKS                       R11 R0 K11 ["showRequiredError"]
       30 JUMPIFEQKB                       R11 TRUE ; [+2]
       32 LOADB                            R10 0 +1
       33 LOADB                            R10 1
       34 JUMPIFNOT                        R3 ; [+4]
       35 GETUPVAL                         R11 1
       36 MOVE                             R12 R3
       37 CALL                             R11 1 1
       38 JUMP                             ; [+1]
       39 LOADK                            R11 K12 [""]
       40 GETUPVAL                         R12 0
       41 GETTABLEKS                       R12 R12 K10 ["useState"]
       43 MOVE                             R13 R11
       44 CALL                             R12 1 2
       45 GETUPVAL                         R14 0
       46 GETTABLEKS                       R14 R14 K10 ["useState"]
       48 LOADNIL                          R15
       49 CALL                             R14 1 2
       50 GETUPVAL                         R16 0
       51 GETTABLEKS                       R16 R16 K10 ["useState"]
       53 LOADN                            R17 0
       54 CALL                             R16 1 2
       55 GETUPVAL                         R18 0
       56 GETTABLEKS                       R18 R18 K13 ["useRef"]
       58 DUPTABLE                         R19 K17 [{["fromPicker"] = False, ["previousColor"]}]
       59 SETTABLEKS                       R3 R19 K16 ["previousColor"]
       61 CALL                             R18 1 1
       62 GETUPVAL                         R19 0
       63 GETTABLEKS                       R19 R19 K18 ["useEffect"]
       65 NEWCLOSURE                       R20 P0
       66 CAPTURE                          VAL R18
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R13
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          VAL R15
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R17
       73 NEWTABLE                         R21 0 2
       75 MOVE                             R22 R3
       76 MOVE                             R23 R7
       77 SETLIST                          R21 R22 2 [1]
       79 CALL                             R19 2 0
       80 GETUPVAL                         R19 0
       81 GETTABLEKS                       R19 R19 K19 ["useCallback"]
       83 NEWCLOSURE                       R20 P1
       84 CAPTURE                          VAL R8
       85 NEWTABLE                         R21 0 0
       87 CALL                             R19 2 1
       88 GETUPVAL                         R20 0
       89 GETTABLEKS                       R20 R20 K19 ["useCallback"]
       91 NEWCLOSURE                       R21 P2
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R8
       94 NEWTABLE                         R22 0 1
       96 MOVE                             R23 R14
       97 SETLIST                          R22 R23 1 [1]
       99 CALL                             R20 2 1
      100 GETUPVAL                         R21 0
      101 GETTABLEKS                       R21 R21 K19 ["useCallback"]
      103 NEWCLOSURE                       R22 P3
      104 CAPTURE                          VAL R18
      105 CAPTURE                          VAL R4
      106 NEWTABLE                         R23 0 1
      108 MOVE                             R24 R4
      109 SETLIST                          R23 R24 1 [1]
      111 CALL                             R21 2 1
      112 GETUPVAL                         R22 0
      113 GETTABLEKS                       R22 R22 K19 ["useCallback"]
      115 NEWCLOSURE                       R23 P4
      116 CAPTURE                          VAL R18
      117 CAPTURE                          VAL R4
      118 NEWTABLE                         R24 0 1
      120 MOVE                             R25 R4
      121 SETLIST                          R24 R25 1 [1]
      123 CALL                             R22 2 1
      124 GETUPVAL                         R23 0
      125 GETTABLEKS                       R23 R23 K19 ["useCallback"]
      127 NEWCLOSURE                       R24 P5
      128 CAPTURE                          VAL R13
      129 CAPTURE                          UPVAL U2
      130 CAPTURE                          VAL R15
      131 NEWTABLE                         R25 0 0
      133 CALL                             R23 2 1
      134 GETUPVAL                         R24 0
      135 GETTABLEKS                       R24 R24 K19 ["useCallback"]
      137 NEWCLOSURE                       R25 P6
      138 CAPTURE                          UPVAL U2
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R18
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R15
      143 NEWTABLE                         R26 0 2
      145 MOVE                             R27 R12
      146 MOVE                             R28 R4
      147 SETLIST                          R26 R27 2 [1]
      149 CALL                             R24 2 1
      150 GETUPVAL                         R25 0
      151 GETTABLEKS                       R25 R25 K20 ["useMemo"]
      153 NEWCLOSURE                       R26 P7
      154 CAPTURE                          UPVAL U3
      155 CAPTURE                          VAL R3
      156 CAPTURE                          UPVAL U0
      157 CAPTURE                          UPVAL U4
      158 CAPTURE                          VAL R22
      159 NEWTABLE                         R27 0 2
      161 MOVE                             R28 R3
      162 MOVE                             R29 R22
      163 SETLIST                          R27 R28 2 [1]
      165 CALL                             R25 2 1
      166 GETUPVAL                         R26 0
      167 GETTABLEKS                       R26 R26 K21 ["createElement"]
      169 GETUPVAL                         R27 4
      170 DUPTABLE                         R28 K25 [{"tag", "Size", "onActivated"}]
      171 JUMPIFNOT                        R10 ; [+2]
      172 LOADK                            R29 K26 ["row align-y-center gap-small padding-small stroke-system-alert radius-small bg-surface-100"]
      173 JUMP                             ; [+1]
      174 LOADK                            R29 K27 ["row align-y-center gap-small padding-small stroke-default radius-small bg-surface-100"]
      175 SETTABLEKS                       R29 R28 K22 ["tag"]
      177 GETIMPORT                        R29 K30 [UDim2.fromOffset]
      179 MOVE                             R30 R6
      180 LOADN                            R31 32
      181 CALL                             R29 2 1
      182 SETTABLEKS                       R29 R28 K23 ["Size"]
      184 SETTABLEKS                       R19 R28 K24 ["onActivated"]
      186 DUPTABLE                         R29 K33 [{"ColorSwatch", "ColorLabelContainer"}]
      187 JUMPIFNOT                        R9 ; [+32]
      188 GETUPVAL                         R30 0
      189 GETTABLEKS                       R30 R30 K21 ["createElement"]
      191 LOADK                            R31 K34 ["Frame"]
      192 DUPTABLE                         R32 K39 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 1}]
      193 GETIMPORT                        R33 K30 [UDim2.fromOffset]
      195 LOADN                            R34 16
      196 LOADN                            R35 16
      197 CALL                             R33 2 1
      198 SETTABLEKS                       R33 R32 K23 ["Size"]
      200 SETTABLEKS                       R3 R32 K35 ["BackgroundColor3"]
      202 DUPTABLE                         R33 K41 [{"UICorner"}]
      203 GETUPVAL                         R34 0
      204 GETTABLEKS                       R34 R34 K21 ["createElement"]
      206 LOADK                            R35 K40 ["UICorner"]
      207 DUPTABLE                         R36 K43 [{"CornerRadius"}]
      208 GETIMPORT                        R37 K46 [UDim.new]
      210 LOADN                            R38 0
      211 LOADN                            R39 2
      212 CALL                             R37 2 1
      213 SETTABLEKS                       R37 R36 K42 ["CornerRadius"]
      215 CALL                             R34 2 1
      216 SETTABLEKS                       R34 R33 K40 ["UICorner"]
      218 CALL                             R30 3 1
      219 JUMP                             ; [+13]
      220 GETUPVAL                         R30 0
      221 GETTABLEKS                       R30 R30 K21 ["createElement"]
      223 GETUPVAL                         R31 4
      224 DUPTABLE                         R32 K48 [{["tag"] = "stroke-default radius-small", ["Size"], ["LayoutOrder"] = 1}]
      225 GETIMPORT                        R33 K30 [UDim2.fromOffset]
      227 LOADN                            R34 16
      228 LOADN                            R35 16
      229 CALL                             R33 2 1
      230 SETTABLEKS                       R33 R32 K23 ["Size"]
      232 CALL                             R30 2 1
      233 SETTABLEKS                       R30 R29 K31 ["ColorSwatch"]
      235 GETUPVAL                         R30 0
      236 GETTABLEKS                       R30 R30 K21 ["createElement"]
      238 GETUPVAL                         R31 4
      239 DUPTABLE                         R32 K52 [{["tag"] = "row align-y-center gap-xsmall", ["LayoutOrder"] = 2, ["AutomaticSize"]}]
      240 GETIMPORT                        R33 K55 [Enum.AutomaticSize.X]
      242 SETTABLEKS                       R33 R32 K51 ["AutomaticSize"]
      244 DUPTABLE                         R33 K58 [{"ColorLabel", "HexErrorMessage"}]
      245 JUMPIFNOT                        R9 ; [+29]
      246 GETUPVAL                         R34 0
      247 GETTABLEKS                       R34 R34 K21 ["createElement"]
      249 GETUPVAL                         R35 5
      250 DUPTABLE                         R36 K65 [{["text"], ["label"] = "", ["size"], ["width"], ["onChanged"], ["onFocusLost"]}]
      251 SETTABLEKS                       R12 R36 K59 ["text"]
      253 GETUPVAL                         R37 6
      254 GETTABLEKS                       R37 R37 K66 ["Enums"]
      256 GETTABLEKS                       R37 R37 K67 ["InputSize"]
      258 GETTABLEKS                       R37 R37 K68 ["XSmall"]
      260 SETTABLEKS                       R37 R36 K61 ["size"]
      262 GETIMPORT                        R37 K46 [UDim.new]
      264 LOADN                            R38 0
      265 LOADN                            R39 80
      266 CALL                             R37 2 1
      267 SETTABLEKS                       R37 R36 K62 ["width"]
      269 SETTABLEKS                       R23 R36 K63 ["onChanged"]
      271 SETTABLEKS                       R24 R36 K64 ["onFocusLost"]
      273 CALL                             R34 2 1
      274 JUMP                             ; [+8]
      275 GETUPVAL                         R34 0
      276 GETTABLEKS                       R34 R34 K21 ["createElement"]
      278 GETUPVAL                         R35 7
      279 DUPTABLE                         R36 K71 [{["tag"] = "auto-xy text-body-small", ["Text"], ["LayoutOrder"] = 1}]
      280 SETTABLEKS                       R2 R36 K70 ["Text"]
      282 CALL                             R34 2 1
      283 SETTABLEKS                       R34 R33 K56 ["ColorLabel"]
      285 JUMPIFNOT                        R14 ; [+45]
      286 GETUPVAL                         R34 0
      287 GETTABLEKS                       R34 R34 K21 ["createElement"]
      289 GETUPVAL                         R35 4
      290 DUPTABLE                         R36 K73 [{["tag"] = "row align-y-center", ["LayoutOrder"] = 2, ["AutomaticSize"]}]
      291 GETIMPORT                        R37 K55 [Enum.AutomaticSize.X]
      293 SETTABLEKS                       R37 R36 K51 ["AutomaticSize"]
      295 DUPTABLE                         R37 K76 [{"Spacer", "ErrorText"}]
      296 GETUPVAL                         R38 0
      297 GETTABLEKS                       R38 R38 K21 ["createElement"]
      299 LOADK                            R39 K34 ["Frame"]
      300 DUPTABLE                         R40 K78 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      301 GETIMPORT                        R41 K30 [UDim2.fromOffset]
      303 LOADN                            R42 8
      304 LOADN                            R43 0
      305 CALL                             R41 2 1
      306 SETTABLEKS                       R41 R40 K23 ["Size"]
      308 CALL                             R38 2 1
      309 SETTABLEKS                       R38 R37 K74 ["Spacer"]
      311 GETUPVAL                         R38 0
      312 GETTABLEKS                       R38 R38 K21 ["createElement"]
      314 GETUPVAL                         R39 7
      315 DUPTABLE                         R40 K80 [{["tag"] = "auto-xy text-body-small content-alert", ["Text"], ["LayoutOrder"] = 2}]
      316 JUMPIFNOT                        R1 ; [+6]
      317 LOADK                            R43 K81 ["Error"]
      318 MOVE                             R44 R14
      319 NAMECALL                         R41 R1 K3 ["getText"]
      321 CALL                             R41 3 1
      322 JUMP                             ; [+1]
      323 MOVE                             R41 R14
      324 SETTABLEKS                       R41 R40 K70 ["Text"]
      326 CALL                             R38 2 1
      327 SETTABLEKS                       R38 R37 K75 ["ErrorText"]
      329 CALL                             R34 3 1
      330 JUMPIF                           R34 ; [+1]
      331 LOADNIL                          R34
      332 SETTABLEKS                       R34 R33 K57 ["HexErrorMessage"]
      334 CALL                             R30 3 1
      335 SETTABLEKS                       R30 R29 K32 ["ColorLabelContainer"]
      337 CALL                             R26 3 1
      338 GETUPVAL                         R27 0
      339 GETTABLEKS                       R27 R27 K21 ["createElement"]
      341 GETUPVAL                         R28 4
      342 DUPTABLE                         R29 K82 [{"Size", "LayoutOrder", "tag"}]
      343 GETIMPORT                        R30 K83 [UDim2.new]
      345 LOADN                            R31 0
      346 MOVE                             R32 R6
      347 LOADN                            R33 0
      348 JUMPIFNOT                        R10 ; [+2]
      349 LOADN                            R34 54
      350 JUMP                             ; [+1]
      351 LOADN                            R34 38
      352 CALL                             R30 4 1
      353 SETTABLEKS                       R30 R29 K23 ["Size"]
      355 SETTABLEKS                       R5 R29 K7 ["LayoutOrder"]
      357 JUMPIFNOT                        R10 ; [+2]
      358 LOADK                            R30 K84 ["col gap-xxsmall"]
      359 JUMP                             ; [+1]
      360 LOADK                            R30 K85 ["col gap-xsmall"]
      361 SETTABLEKS                       R30 R29 K22 ["tag"]
      363 DUPTABLE                         R30 K88 [{"PopoverRoot", "RequiredErrorText"}]
      364 GETUPVAL                         R31 0
      365 GETTABLEKS                       R31 R31 K21 ["createElement"]
      367 GETUPVAL                         R32 8
      368 GETTABLEKS                       R32 R32 K89 ["Root"]
      370 DUPTABLE                         R33 K91 [{"isOpen"}]
      371 SETTABLEKS                       R7 R33 K90 ["isOpen"]
      373 DUPTABLE                         R34 K94 [{"Anchor", "Content"}]
      374 GETUPVAL                         R35 0
      375 GETTABLEKS                       R35 R35 K21 ["createElement"]
      377 GETUPVAL                         R36 8
      378 GETTABLEKS                       R36 R36 K92 ["Anchor"]
      380 LOADNIL                          R37
      381 DUPTABLE                         R38 K96 [{"ColorSwatchButton"}]
      382 JUMPIFNOT                        R1 ; [+27]
      383 GETUPVAL                         R39 0
      384 GETTABLEKS                       R39 R39 K21 ["createElement"]
      386 GETUPVAL                         R40 9
      387 DUPTABLE                         R41 K99 [{"title", "text", "side"}]
      388 LOADK                            R44 K1 ["General"]
      389 LOADK                            R45 K100 ["ThumbnailSkinTone"]
      390 NAMECALL                         R42 R1 K3 ["getText"]
      392 CALL                             R42 3 1
      393 SETTABLEKS                       R42 R41 K97 ["title"]
      395 LOADK                            R44 K1 ["General"]
      396 LOADK                            R45 K101 ["TooltipThumbnailSkinColorDescription"]
      397 NAMECALL                         R42 R1 K3 ["getText"]
      399 CALL                             R42 3 1
      400 SETTABLEKS                       R42 R41 K59 ["text"]
      402 GETUPVAL                         R42 10
      403 GETTABLEKS                       R42 R42 K102 ["Bottom"]
      405 SETTABLEKS                       R42 R41 K98 ["side"]
      407 MOVE                             R42 R26
      408 CALL                             R39 3 1
      409 JUMP                             ; [+1]
      410 MOVE                             R39 R26
      411 SETTABLEKS                       R39 R38 K95 ["ColorSwatchButton"]
      413 CALL                             R35 3 1
      414 SETTABLEKS                       R35 R34 K92 ["Anchor"]
      416 GETUPVAL                         R35 0
      417 GETTABLEKS                       R35 R35 K21 ["createElement"]
      419 GETUPVAL                         R36 8
      420 GETTABLEKS                       R36 R36 K93 ["Content"]
      422 DUPTABLE                         R37 K106 [{["onPressedOutside"], ["side"], ["align"], ["hasArrow"] = False}]
      423 SETTABLEKS                       R20 R37 K103 ["onPressedOutside"]
      425 DUPTABLE                         R38 K110 [{["position"], ["offset"] = 8}]
      426 GETUPVAL                         R39 10
      427 GETTABLEKS                       R39 R39 K102 ["Bottom"]
      429 SETTABLEKS                       R39 R38 K107 ["position"]
      431 SETTABLEKS                       R38 R37 K98 ["side"]
      433 GETUPVAL                         R38 11
      434 GETTABLEKS                       R38 R38 K111 ["Start"]
      436 SETTABLEKS                       R38 R37 K104 ["align"]
      438 MOVE                             R38 R7
      439 JUMPIFNOT                        R38 ; [+85]
      440 GETUPVAL                         R38 0
      441 GETTABLEKS                       R38 R38 K21 ["createElement"]
      443 GETUPVAL                         R39 4
      444 DUPTABLE                         R40 K114 [{["tag"] = "col gap-small auto-xy padding-small stroke-default radius-small bg-surface-100", ["ClipsDescendants"] = False}]
      445 DUPTABLE                         R41 K117 [{"Picker", "Spacer", "PresetsSection"}]
      446 GETUPVAL                         R42 0
      447 GETTABLEKS                       R42 R42 K21 ["createElement"]
      449 GETUPVAL                         R43 4
      450 DUPTABLE                         R44 K118 [{["Size"], ["LayoutOrder"] = 1}]
      451 GETIMPORT                        R45 K30 [UDim2.fromOffset]
      453 LOADN                            R46 282
      454 LOADN                            R47 150
      455 CALL                             R45 2 1
      456 SETTABLEKS                       R45 R44 K23 ["Size"]
      458 DUPTABLE                         R45 K120 [{"ColorPickerComponent"}]
      459 GETUPVAL                         R46 0
      460 GETTABLEKS                       R46 R46 K21 ["createElement"]
      462 GETUPVAL                         R47 6
      463 GETTABLEKS                       R47 R47 K121 ["ColorPicker"]
      465 DUPTABLE                         R48 K128 [{["key"], ["initialColor"], ["availableModes"], ["initialMode"] = "HSV", ["onColorChanged"]}]
      466 SETTABLEKS                       R16 R48 K122 ["key"]
      468 JUMPIFNOT                        R3 ; [+2]
      469 MOVE                             R49 R3
      470 JUMP                             ; [+1]
      471 DUPTABLE                         R49 K131 [{["H"] = 15}]
      472 SETTABLEKS                       R49 R48 K123 ["initialColor"]
      474 NEWTABLE                         R49 0 2
      476 LOADK                            R50 K132 ["RGB"]
      477 LOADK                            R51 K126 ["HSV"]
      478 SETLIST                          R49 R50 2 [1]
      480 SETTABLEKS                       R49 R48 K124 ["availableModes"]
      482 SETTABLEKS                       R21 R48 K127 ["onColorChanged"]
      484 CALL                             R46 2 1
      485 SETTABLEKS                       R46 R45 K119 ["ColorPickerComponent"]
      487 CALL                             R42 3 1
      488 SETTABLEKS                       R42 R41 K115 ["Picker"]
      490 GETUPVAL                         R42 0
      491 GETTABLEKS                       R42 R42 K21 ["createElement"]
      493 GETUPVAL                         R43 4
      494 DUPTABLE                         R44 K133 [{["Size"], ["LayoutOrder"] = 2}]
      495 GETIMPORT                        R45 K30 [UDim2.fromOffset]
      497 LOADN                            R46 282
      498 LOADN                            R47 65
      499 CALL                             R45 2 1
      500 SETTABLEKS                       R45 R44 K23 ["Size"]
      502 CALL                             R42 2 1
      503 SETTABLEKS                       R42 R41 K74 ["Spacer"]
      505 GETUPVAL                         R42 0
      506 GETTABLEKS                       R42 R42 K21 ["createElement"]
      508 GETUPVAL                         R43 4
      509 DUPTABLE                         R44 K137 [{["tag"] = "align-x-center", ["layout"], ["LayoutOrder"] = 3, ["Size"]}]
      510 GETUPVAL                         R45 12
      511 SETTABLEKS                       R45 R44 K135 ["layout"]
      513 GETIMPORT                        R45 K30 [UDim2.fromOffset]
      515 LOADN                            R46 282
      516 LOADN                            R47 52
      517 CALL                             R45 2 1
      518 SETTABLEKS                       R45 R44 K23 ["Size"]
      520 MOVE                             R45 R25
      521 CALL                             R42 3 1
      522 SETTABLEKS                       R42 R41 K116 ["PresetsSection"]
      524 CALL                             R38 3 1
      525 CALL                             R35 3 1
      526 SETTABLEKS                       R35 R34 K93 ["Content"]
      528 CALL                             R31 3 1
      529 SETTABLEKS                       R31 R30 K86 ["PopoverRoot"]
      531 JUMPIFNOT                        R10 ; [+15]
      532 JUMPIFNOT                        R1 ; [+14]
      533 GETUPVAL                         R31 0
      534 GETTABLEKS                       R31 R31 K21 ["createElement"]
      536 GETUPVAL                         R32 7
      537 DUPTABLE                         R33 K139 [{["tag"] = "auto-xy padding-top-xsmall text-body-small content-alert", ["Text"], ["LayoutOrder"] = 2}]
      538 LOADK                            R36 K81 ["Error"]
      539 LOADK                            R37 K140 ["SkinColorRequired"]
      540 NAMECALL                         R34 R1 K3 ["getText"]
      542 CALL                             R34 3 1
      543 SETTABLEKS                       R34 R33 K70 ["Text"]
      545 CALL                             R31 2 1
      546 JUMPIF                           R31 ; [+1]
      547 LOADNIL                          R31
      548 SETTABLEKS                       R31 R30 K87 ["RequiredErrorText"]
      550 CALL                             R27 3 -1
      551 RETURN                           R27 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["View"]
       21 GETTABLEKS                       R5 R3 K10 ["Text"]
       23 GETTABLEKS                       R6 R3 K11 ["TextInput"]
       25 GETTABLEKS                       R7 R3 K12 ["Tooltip"]
       27 GETTABLEKS                       R8 R3 K13 ["Popover"]
       29 GETTABLEKS                       R9 R3 K14 ["Enums"]
       31 GETTABLEKS                       R9 R9 K15 ["PopoverSide"]
       33 GETTABLEKS                       R10 R3 K14 ["Enums"]
       35 GETTABLEKS                       R10 R10 K16 ["PopoverAlign"]
       37 GETIMPORT                        R11 K6 [require]
       39 GETTABLEKS                       R12 R0 K17 ["Src"]
       41 GETTABLEKS                       R12 R12 K18 ["Util"]
       43 GETTABLEKS                       R12 R12 K19 ["ColorPickerUtil"]
       45 CALL                             R11 1 1
       46 GETTABLEKS                       R12 R11 K20 ["color3ToHex"]
       48 GETTABLEKS                       R13 R11 K21 ["hexToColor3"]
       50 DUPTABLE                         R14 K27 [{["FillDirection"], ["SortOrder"], ["Wraps"] = True, ["Padding"]}]
       51 GETIMPORT                        R15 K30 [Enum.FillDirection.Horizontal]
       53 SETTABLEKS                       R15 R14 K22 ["FillDirection"]
       55 GETIMPORT                        R15 K32 [Enum.SortOrder.LayoutOrder]
       57 SETTABLEKS                       R15 R14 K23 ["SortOrder"]
       59 GETIMPORT                        R15 K35 [UDim.new]
       61 LOADN                            R16 0
       62 LOADN                            R17 4
       63 CALL                             R15 2 1
       64 SETTABLEKS                       R15 R14 K26 ["Padding"]
       66 NEWTABLE                         R15 0 20
       68 GETIMPORT                        R16 K38 [Color3.fromHex]
       70 LOADK                            R17 K39 ["#312C25"]
       71 CALL                             R16 1 1
       72 GETIMPORT                        R17 K38 [Color3.fromHex]
       74 LOADK                            R18 K40 ["#3D2F25"]
       75 CALL                             R17 1 1
       76 GETIMPORT                        R18 K38 [Color3.fromHex]
       78 LOADK                            R19 K41 ["#5A462E"]
       79 CALL                             R18 1 1
       80 GETIMPORT                        R19 K38 [Color3.fromHex]
       82 LOADK                            R20 K42 ["#60392D"]
       83 CALL                             R19 1 1
       84 GETIMPORT                        R20 K38 [Color3.fromHex]
       86 LOADK                            R21 K43 ["#594234"]
       87 CALL                             R20 1 1
       88 GETIMPORT                        R21 K38 [Color3.fromHex]
       90 LOADK                            R22 K44 ["#8F5424"]
       91 CALL                             R21 1 1
       92 GETIMPORT                        R22 K38 [Color3.fromHex]
       94 LOADK                            R23 K45 ["#74573E"]
       95 CALL                             R22 1 1
       96 GETIMPORT                        R23 K38 [Color3.fromHex]
       98 LOADK                            R24 K46 ["#765243"]
       99 CALL                             R23 1 1
      100 GETIMPORT                        R24 K38 [Color3.fromHex]
      102 LOADK                            R25 K47 ["#AE7966"]
      103 CALL                             R24 1 1
      104 GETIMPORT                        R25 K38 [Color3.fromHex]
      106 LOADK                            R26 K48 ["#AE9381"]
      107 CALL                             R25 1 1
      108 GETIMPORT                        R26 K38 [Color3.fromHex]
      110 LOADK                            R27 K49 ["#CC8E69"]
      111 CALL                             R26 1 1
      112 GETIMPORT                        R27 K38 [Color3.fromHex]
      114 LOADK                            R28 K50 ["#D4A784"]
      115 CALL                             R27 1 1
      116 GETIMPORT                        R28 K38 [Color3.fromHex]
      118 LOADK                            R29 K51 ["#D49E8C"]
      119 CALL                             R28 1 1
      120 GETIMPORT                        R29 K38 [Color3.fromHex]
      122 LOADK                            R30 K52 ["#E8BAAA"]
      123 CALL                             R29 1 1
      124 GETIMPORT                        R30 K38 [Color3.fromHex]
      126 LOADK                            R31 K53 ["#E8B995"]
      127 CALL                             R30 1 1
      128 GETIMPORT                        R31 K38 [Color3.fromHex]
      130 LOADK                            R32 K54 ["#EED6B5"]
      131 CALL                             R31 1 1
      132 SETLIST                          R15 R16 16 [1]
      134 GETIMPORT                        R16 K38 [Color3.fromHex]
      136 LOADK                            R17 K55 ["#F8F8F8"]
      137 CALL                             R16 1 1
      138 GETIMPORT                        R17 K38 [Color3.fromHex]
      140 LOADK                            R18 K56 ["#CDCDCD"]
      141 CALL                             R17 1 1
      142 GETIMPORT                        R18 K38 [Color3.fromHex]
      144 LOADK                            R19 K57 ["#A3A2A5"]
      145 CALL                             R18 1 1
      146 GETIMPORT                        R19 K38 [Color3.fromHex]
      148 LOADK                            R20 K58 ["#635F62"]
      149 CALL                             R19 1 -1
      150 SETLIST                          R15 R16 -1 [17]
      152 DUPCLOSURE                       R16 K59 [PROTO_11]
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R4
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R14
      166 RETURN                           R16 1
