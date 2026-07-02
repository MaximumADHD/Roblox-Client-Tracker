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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["Localization"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 LOADK                            R4 K1 ["General"]
        9 LOADK                            R5 K2 ["PleaseSelectAColor"]
       10 NAMECALL                         R2 R1 K3 ["getText"]
       12 CALL                             R2 3 1
       13 JUMP                             ; [+1]
       14 LOADK                            R2 K4 ["Select a color"]
       15 GETTABLEKS                       R3 R0 K5 ["selectedColor"]
       17 GETTABLEKS                       R4 R0 K6 ["setSelectedColor"]
       19 GETTABLEKS                       R5 R0 K7 ["LayoutOrder"]
       21 GETTABLEKS                       R7 R0 K9 ["Width"]
       23 ORK                              R6 R7 K8 [400]
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K10 ["useState"]
       27 LOADB                            R8 0
       28 CALL                             R7 1 2
       29 JUMPIFNOTEQKNIL                  R3 ; [+2]
       31 LOADB                            R9 0 +1
       32 LOADB                            R9 1
       33 GETTABLEKS                       R11 R0 K11 ["showRequiredError"]
       35 JUMPIFEQKB                       R11 TRUE ; [+2]
       37 LOADB                            R10 0 +1
       38 LOADB                            R10 1
       39 JUMPIFNOT                        R3 ; [+4]
       40 GETUPVAL                         R11 2
       41 MOVE                             R12 R3
       42 CALL                             R11 1 1
       43 JUMP                             ; [+1]
       44 LOADK                            R11 K12 [""]
       45 GETUPVAL                         R12 1
       46 GETTABLEKS                       R12 R12 K10 ["useState"]
       48 MOVE                             R13 R11
       49 CALL                             R12 1 2
       50 GETUPVAL                         R14 1
       51 GETTABLEKS                       R14 R14 K10 ["useState"]
       53 LOADNIL                          R15
       54 CALL                             R14 1 2
       55 GETUPVAL                         R16 1
       56 GETTABLEKS                       R16 R16 K10 ["useState"]
       58 LOADN                            R17 0
       59 CALL                             R16 1 2
       60 GETUPVAL                         R18 1
       61 GETTABLEKS                       R18 R18 K13 ["useRef"]
       63 DUPTABLE                         R19 K17 [{["fromPicker"] = False, ["previousColor"]}]
       64 SETTABLEKS                       R3 R19 K16 ["previousColor"]
       66 CALL                             R18 1 1
       67 GETUPVAL                         R19 1
       68 GETTABLEKS                       R19 R19 K18 ["useEffect"]
       70 NEWCLOSURE                       R20 P0
       71 CAPTURE                          VAL R18
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R13
       74 CAPTURE                          UPVAL U2
       75 CAPTURE                          VAL R15
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R17
       78 NEWTABLE                         R21 0 2
       80 MOVE                             R22 R3
       81 MOVE                             R23 R7
       82 SETLIST                          R21 R22 2 [1]
       84 CALL                             R19 2 0
       85 GETUPVAL                         R19 1
       86 GETTABLEKS                       R19 R19 K19 ["useCallback"]
       88 NEWCLOSURE                       R20 P1
       89 CAPTURE                          VAL R8
       90 NEWTABLE                         R21 0 0
       92 CALL                             R19 2 1
       93 GETUPVAL                         R20 1
       94 GETTABLEKS                       R20 R20 K19 ["useCallback"]
       96 NEWCLOSURE                       R21 P2
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R8
       99 NEWTABLE                         R22 0 1
      101 MOVE                             R23 R14
      102 SETLIST                          R22 R23 1 [1]
      104 CALL                             R20 2 1
      105 GETUPVAL                         R21 1
      106 GETTABLEKS                       R21 R21 K19 ["useCallback"]
      108 NEWCLOSURE                       R22 P3
      109 CAPTURE                          VAL R18
      110 CAPTURE                          VAL R4
      111 NEWTABLE                         R23 0 1
      113 MOVE                             R24 R4
      114 SETLIST                          R23 R24 1 [1]
      116 CALL                             R21 2 1
      117 GETUPVAL                         R22 1
      118 GETTABLEKS                       R22 R22 K19 ["useCallback"]
      120 NEWCLOSURE                       R23 P4
      121 CAPTURE                          VAL R18
      122 CAPTURE                          VAL R4
      123 NEWTABLE                         R24 0 1
      125 MOVE                             R25 R4
      126 SETLIST                          R24 R25 1 [1]
      128 CALL                             R22 2 1
      129 GETUPVAL                         R23 1
      130 GETTABLEKS                       R23 R23 K19 ["useCallback"]
      132 NEWCLOSURE                       R24 P5
      133 CAPTURE                          VAL R13
      134 CAPTURE                          UPVAL U3
      135 CAPTURE                          VAL R15
      136 NEWTABLE                         R25 0 0
      138 CALL                             R23 2 1
      139 GETUPVAL                         R24 1
      140 GETTABLEKS                       R24 R24 K19 ["useCallback"]
      142 NEWCLOSURE                       R25 P6
      143 CAPTURE                          UPVAL U3
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R15
      148 NEWTABLE                         R26 0 2
      150 MOVE                             R27 R12
      151 MOVE                             R28 R4
      152 SETLIST                          R26 R27 2 [1]
      154 CALL                             R24 2 1
      155 GETUPVAL                         R25 1
      156 GETTABLEKS                       R25 R25 K20 ["useMemo"]
      158 NEWCLOSURE                       R26 P7
      159 CAPTURE                          UPVAL U4
      160 CAPTURE                          VAL R3
      161 CAPTURE                          UPVAL U1
      162 CAPTURE                          UPVAL U5
      163 CAPTURE                          VAL R22
      164 NEWTABLE                         R27 0 2
      166 MOVE                             R28 R3
      167 MOVE                             R29 R22
      168 SETLIST                          R27 R28 2 [1]
      170 CALL                             R25 2 1
      171 GETUPVAL                         R26 1
      172 GETTABLEKS                       R26 R26 K21 ["createElement"]
      174 GETUPVAL                         R27 5
      175 DUPTABLE                         R28 K25 [{"tag", "Size", "onActivated"}]
      176 JUMPIFNOT                        R10 ; [+2]
      177 LOADK                            R29 K26 ["row align-y-center gap-small padding-small stroke-system-alert radius-small bg-surface-100"]
      178 JUMP                             ; [+1]
      179 LOADK                            R29 K27 ["row align-y-center gap-small padding-small stroke-default radius-small bg-surface-100"]
      180 SETTABLEKS                       R29 R28 K22 ["tag"]
      182 GETIMPORT                        R29 K30 [UDim2.fromOffset]
      184 MOVE                             R30 R6
      185 LOADN                            R31 32
      186 CALL                             R29 2 1
      187 SETTABLEKS                       R29 R28 K23 ["Size"]
      189 SETTABLEKS                       R19 R28 K24 ["onActivated"]
      191 DUPTABLE                         R29 K33 [{"ColorSwatch", "ColorLabelContainer"}]
      192 JUMPIFNOT                        R9 ; [+32]
      193 GETUPVAL                         R30 1
      194 GETTABLEKS                       R30 R30 K21 ["createElement"]
      196 LOADK                            R31 K34 ["Frame"]
      197 DUPTABLE                         R32 K39 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 1}]
      198 GETIMPORT                        R33 K30 [UDim2.fromOffset]
      200 LOADN                            R34 16
      201 LOADN                            R35 16
      202 CALL                             R33 2 1
      203 SETTABLEKS                       R33 R32 K23 ["Size"]
      205 SETTABLEKS                       R3 R32 K35 ["BackgroundColor3"]
      207 DUPTABLE                         R33 K41 [{"UICorner"}]
      208 GETUPVAL                         R34 1
      209 GETTABLEKS                       R34 R34 K21 ["createElement"]
      211 LOADK                            R35 K40 ["UICorner"]
      212 DUPTABLE                         R36 K43 [{"CornerRadius"}]
      213 GETIMPORT                        R37 K46 [UDim.new]
      215 LOADN                            R38 0
      216 LOADN                            R39 2
      217 CALL                             R37 2 1
      218 SETTABLEKS                       R37 R36 K42 ["CornerRadius"]
      220 CALL                             R34 2 1
      221 SETTABLEKS                       R34 R33 K40 ["UICorner"]
      223 CALL                             R30 3 1
      224 JUMP                             ; [+13]
      225 GETUPVAL                         R30 1
      226 GETTABLEKS                       R30 R30 K21 ["createElement"]
      228 GETUPVAL                         R31 5
      229 DUPTABLE                         R32 K48 [{["tag"] = "stroke-default radius-small", ["Size"], ["LayoutOrder"] = 1}]
      230 GETIMPORT                        R33 K30 [UDim2.fromOffset]
      232 LOADN                            R34 16
      233 LOADN                            R35 16
      234 CALL                             R33 2 1
      235 SETTABLEKS                       R33 R32 K23 ["Size"]
      237 CALL                             R30 2 1
      238 SETTABLEKS                       R30 R29 K31 ["ColorSwatch"]
      240 GETUPVAL                         R30 1
      241 GETTABLEKS                       R30 R30 K21 ["createElement"]
      243 GETUPVAL                         R31 5
      244 DUPTABLE                         R32 K52 [{["tag"] = "row align-y-center gap-xsmall", ["LayoutOrder"] = 2, ["AutomaticSize"]}]
      245 GETIMPORT                        R33 K55 [Enum.AutomaticSize.X]
      247 SETTABLEKS                       R33 R32 K51 ["AutomaticSize"]
      249 DUPTABLE                         R33 K58 [{"ColorLabel", "HexErrorMessage"}]
      250 JUMPIFNOT                        R9 ; [+29]
      251 GETUPVAL                         R34 1
      252 GETTABLEKS                       R34 R34 K21 ["createElement"]
      254 GETUPVAL                         R35 6
      255 DUPTABLE                         R36 K65 [{["text"], ["label"] = "", ["size"], ["width"], ["onChanged"], ["onFocusLost"]}]
      256 SETTABLEKS                       R12 R36 K59 ["text"]
      258 GETUPVAL                         R37 7
      259 GETTABLEKS                       R37 R37 K66 ["Enums"]
      261 GETTABLEKS                       R37 R37 K67 ["InputSize"]
      263 GETTABLEKS                       R37 R37 K68 ["XSmall"]
      265 SETTABLEKS                       R37 R36 K61 ["size"]
      267 GETIMPORT                        R37 K46 [UDim.new]
      269 LOADN                            R38 0
      270 LOADN                            R39 80
      271 CALL                             R37 2 1
      272 SETTABLEKS                       R37 R36 K62 ["width"]
      274 SETTABLEKS                       R23 R36 K63 ["onChanged"]
      276 SETTABLEKS                       R24 R36 K64 ["onFocusLost"]
      278 CALL                             R34 2 1
      279 JUMP                             ; [+8]
      280 GETUPVAL                         R34 1
      281 GETTABLEKS                       R34 R34 K21 ["createElement"]
      283 GETUPVAL                         R35 8
      284 DUPTABLE                         R36 K71 [{["tag"] = "content-secondary auto-xy text-body-small", ["Text"], ["LayoutOrder"] = 1}]
      285 SETTABLEKS                       R2 R36 K70 ["Text"]
      287 CALL                             R34 2 1
      288 SETTABLEKS                       R34 R33 K56 ["ColorLabel"]
      290 JUMPIFNOT                        R14 ; [+45]
      291 GETUPVAL                         R34 1
      292 GETTABLEKS                       R34 R34 K21 ["createElement"]
      294 GETUPVAL                         R35 5
      295 DUPTABLE                         R36 K73 [{["tag"] = "row align-y-center", ["LayoutOrder"] = 2, ["AutomaticSize"]}]
      296 GETIMPORT                        R37 K55 [Enum.AutomaticSize.X]
      298 SETTABLEKS                       R37 R36 K51 ["AutomaticSize"]
      300 DUPTABLE                         R37 K76 [{"Spacer", "ErrorText"}]
      301 GETUPVAL                         R38 1
      302 GETTABLEKS                       R38 R38 K21 ["createElement"]
      304 LOADK                            R39 K34 ["Frame"]
      305 DUPTABLE                         R40 K78 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      306 GETIMPORT                        R41 K30 [UDim2.fromOffset]
      308 LOADN                            R42 8
      309 LOADN                            R43 0
      310 CALL                             R41 2 1
      311 SETTABLEKS                       R41 R40 K23 ["Size"]
      313 CALL                             R38 2 1
      314 SETTABLEKS                       R38 R37 K74 ["Spacer"]
      316 GETUPVAL                         R38 1
      317 GETTABLEKS                       R38 R38 K21 ["createElement"]
      319 GETUPVAL                         R39 8
      320 DUPTABLE                         R40 K80 [{["tag"] = "auto-xy text-body-small content-alert", ["Text"], ["LayoutOrder"] = 2}]
      321 JUMPIFNOT                        R1 ; [+6]
      322 LOADK                            R43 K81 ["Error"]
      323 MOVE                             R44 R14
      324 NAMECALL                         R41 R1 K3 ["getText"]
      326 CALL                             R41 3 1
      327 JUMP                             ; [+1]
      328 MOVE                             R41 R14
      329 SETTABLEKS                       R41 R40 K70 ["Text"]
      331 CALL                             R38 2 1
      332 SETTABLEKS                       R38 R37 K75 ["ErrorText"]
      334 CALL                             R34 3 1
      335 JUMPIF                           R34 ; [+1]
      336 LOADNIL                          R34
      337 SETTABLEKS                       R34 R33 K57 ["HexErrorMessage"]
      339 CALL                             R30 3 1
      340 SETTABLEKS                       R30 R29 K32 ["ColorLabelContainer"]
      342 CALL                             R26 3 1
      343 GETUPVAL                         R27 1
      344 GETTABLEKS                       R27 R27 K21 ["createElement"]
      346 GETUPVAL                         R28 5
      347 DUPTABLE                         R29 K82 [{"Size", "LayoutOrder", "tag"}]
      348 GETIMPORT                        R30 K83 [UDim2.new]
      350 LOADN                            R31 0
      351 MOVE                             R32 R6
      352 LOADN                            R33 0
      353 JUMPIFNOT                        R10 ; [+2]
      354 LOADN                            R34 54
      355 JUMP                             ; [+1]
      356 LOADN                            R34 38
      357 CALL                             R30 4 1
      358 SETTABLEKS                       R30 R29 K23 ["Size"]
      360 SETTABLEKS                       R5 R29 K7 ["LayoutOrder"]
      362 JUMPIFNOT                        R10 ; [+2]
      363 LOADK                            R30 K84 ["col gap-xxsmall"]
      364 JUMP                             ; [+1]
      365 LOADK                            R30 K85 ["col gap-xsmall"]
      366 SETTABLEKS                       R30 R29 K22 ["tag"]
      368 DUPTABLE                         R30 K88 [{"PopoverRoot", "RequiredErrorText"}]
      369 GETUPVAL                         R31 1
      370 GETTABLEKS                       R31 R31 K21 ["createElement"]
      372 GETUPVAL                         R32 9
      373 GETTABLEKS                       R32 R32 K89 ["Root"]
      375 DUPTABLE                         R33 K91 [{"isOpen"}]
      376 SETTABLEKS                       R7 R33 K90 ["isOpen"]
      378 DUPTABLE                         R34 K94 [{"Anchor", "Content"}]
      379 GETUPVAL                         R35 1
      380 GETTABLEKS                       R35 R35 K21 ["createElement"]
      382 GETUPVAL                         R36 9
      383 GETTABLEKS                       R36 R36 K92 ["Anchor"]
      385 LOADNIL                          R37
      386 DUPTABLE                         R38 K96 [{"ColorSwatchButton"}]
      387 JUMPIFNOT                        R1 ; [+27]
      388 GETUPVAL                         R39 1
      389 GETTABLEKS                       R39 R39 K21 ["createElement"]
      391 GETUPVAL                         R40 10
      392 DUPTABLE                         R41 K99 [{"title", "text", "side"}]
      393 LOADK                            R44 K1 ["General"]
      394 LOADK                            R45 K100 ["ThumbnailSkinTone"]
      395 NAMECALL                         R42 R1 K3 ["getText"]
      397 CALL                             R42 3 1
      398 SETTABLEKS                       R42 R41 K97 ["title"]
      400 LOADK                            R44 K1 ["General"]
      401 LOADK                            R45 K101 ["TooltipThumbnailSkinColorDescription"]
      402 NAMECALL                         R42 R1 K3 ["getText"]
      404 CALL                             R42 3 1
      405 SETTABLEKS                       R42 R41 K59 ["text"]
      407 GETUPVAL                         R42 11
      408 GETTABLEKS                       R42 R42 K102 ["Bottom"]
      410 SETTABLEKS                       R42 R41 K98 ["side"]
      412 MOVE                             R42 R26
      413 CALL                             R39 3 1
      414 JUMP                             ; [+1]
      415 MOVE                             R39 R26
      416 SETTABLEKS                       R39 R38 K95 ["ColorSwatchButton"]
      418 CALL                             R35 3 1
      419 SETTABLEKS                       R35 R34 K92 ["Anchor"]
      421 GETUPVAL                         R35 1
      422 GETTABLEKS                       R35 R35 K21 ["createElement"]
      424 GETUPVAL                         R36 9
      425 GETTABLEKS                       R36 R36 K93 ["Content"]
      427 DUPTABLE                         R37 K106 [{["onPressedOutside"], ["side"], ["align"], ["hasArrow"] = False}]
      428 SETTABLEKS                       R20 R37 K103 ["onPressedOutside"]
      430 DUPTABLE                         R38 K110 [{["position"], ["offset"] = 8}]
      431 GETUPVAL                         R39 11
      432 GETTABLEKS                       R39 R39 K102 ["Bottom"]
      434 SETTABLEKS                       R39 R38 K107 ["position"]
      436 SETTABLEKS                       R38 R37 K98 ["side"]
      438 GETUPVAL                         R38 12
      439 GETTABLEKS                       R38 R38 K111 ["Start"]
      441 SETTABLEKS                       R38 R37 K104 ["align"]
      443 MOVE                             R38 R7
      444 JUMPIFNOT                        R38 ; [+85]
      445 GETUPVAL                         R38 1
      446 GETTABLEKS                       R38 R38 K21 ["createElement"]
      448 GETUPVAL                         R39 5
      449 DUPTABLE                         R40 K114 [{["tag"] = "col gap-small auto-xy padding-small stroke-default radius-small bg-surface-100", ["ClipsDescendants"] = False}]
      450 DUPTABLE                         R41 K117 [{"Picker", "Spacer", "PresetsSection"}]
      451 GETUPVAL                         R42 1
      452 GETTABLEKS                       R42 R42 K21 ["createElement"]
      454 GETUPVAL                         R43 5
      455 DUPTABLE                         R44 K118 [{["Size"], ["LayoutOrder"] = 1}]
      456 GETIMPORT                        R45 K30 [UDim2.fromOffset]
      458 LOADN                            R46 282
      459 LOADN                            R47 150
      460 CALL                             R45 2 1
      461 SETTABLEKS                       R45 R44 K23 ["Size"]
      463 DUPTABLE                         R45 K120 [{"ColorPickerComponent"}]
      464 GETUPVAL                         R46 1
      465 GETTABLEKS                       R46 R46 K21 ["createElement"]
      467 GETUPVAL                         R47 7
      468 GETTABLEKS                       R47 R47 K121 ["ColorPicker"]
      470 DUPTABLE                         R48 K128 [{["key"], ["initialColor"], ["availableModes"], ["initialMode"] = "HSV", ["onColorChanged"]}]
      471 SETTABLEKS                       R16 R48 K122 ["key"]
      473 JUMPIFNOT                        R3 ; [+2]
      474 MOVE                             R49 R3
      475 JUMP                             ; [+1]
      476 DUPTABLE                         R49 K131 [{["H"] = 15}]
      477 SETTABLEKS                       R49 R48 K123 ["initialColor"]
      479 NEWTABLE                         R49 0 2
      481 LOADK                            R50 K132 ["RGB"]
      482 LOADK                            R51 K126 ["HSV"]
      483 SETLIST                          R49 R50 2 [1]
      485 SETTABLEKS                       R49 R48 K124 ["availableModes"]
      487 SETTABLEKS                       R21 R48 K127 ["onColorChanged"]
      489 CALL                             R46 2 1
      490 SETTABLEKS                       R46 R45 K119 ["ColorPickerComponent"]
      492 CALL                             R42 3 1
      493 SETTABLEKS                       R42 R41 K115 ["Picker"]
      495 GETUPVAL                         R42 1
      496 GETTABLEKS                       R42 R42 K21 ["createElement"]
      498 GETUPVAL                         R43 5
      499 DUPTABLE                         R44 K133 [{["Size"], ["LayoutOrder"] = 2}]
      500 GETIMPORT                        R45 K30 [UDim2.fromOffset]
      502 LOADN                            R46 282
      503 LOADN                            R47 65
      504 CALL                             R45 2 1
      505 SETTABLEKS                       R45 R44 K23 ["Size"]
      507 CALL                             R42 2 1
      508 SETTABLEKS                       R42 R41 K74 ["Spacer"]
      510 GETUPVAL                         R42 1
      511 GETTABLEKS                       R42 R42 K21 ["createElement"]
      513 GETUPVAL                         R43 5
      514 DUPTABLE                         R44 K137 [{["tag"] = "align-x-center", ["layout"], ["LayoutOrder"] = 3, ["Size"]}]
      515 GETUPVAL                         R45 13
      516 SETTABLEKS                       R45 R44 K135 ["layout"]
      518 GETIMPORT                        R45 K30 [UDim2.fromOffset]
      520 LOADN                            R46 282
      521 LOADN                            R47 52
      522 CALL                             R45 2 1
      523 SETTABLEKS                       R45 R44 K23 ["Size"]
      525 MOVE                             R45 R25
      526 CALL                             R42 3 1
      527 SETTABLEKS                       R42 R41 K116 ["PresetsSection"]
      529 CALL                             R38 3 1
      530 CALL                             R35 3 1
      531 SETTABLEKS                       R35 R34 K93 ["Content"]
      533 CALL                             R31 3 1
      534 SETTABLEKS                       R31 R30 K86 ["PopoverRoot"]
      536 JUMPIFNOT                        R10 ; [+15]
      537 JUMPIFNOT                        R1 ; [+14]
      538 GETUPVAL                         R31 1
      539 GETTABLEKS                       R31 R31 K21 ["createElement"]
      541 GETUPVAL                         R32 8
      542 DUPTABLE                         R33 K139 [{["tag"] = "auto-xy padding-top-xsmall text-body-small content-alert", ["Text"], ["LayoutOrder"] = 2}]
      543 LOADK                            R36 K81 ["Error"]
      544 LOADK                            R37 K140 ["SkinColorRequired"]
      545 NAMECALL                         R34 R1 K3 ["getText"]
      547 CALL                             R34 3 1
      548 SETTABLEKS                       R34 R33 K70 ["Text"]
      550 CALL                             R31 2 1
      551 JUMPIF                           R31 ; [+1]
      552 LOADNIL                          R31
      553 SETTABLEKS                       R31 R30 K87 ["RequiredErrorText"]
      555 CALL                             R27 3 -1
      556 RETURN                           R27 -1

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
       41 GETTABLEKS                       R12 R12 K18 ["Flags"]
       43 GETTABLEKS                       R12 R12 K19 ["getFFlagEnableUploadingMakeup"]
       45 CALL                             R11 1 1
       46 GETIMPORT                        R12 K6 [require]
       48 GETTABLEKS                       R13 R0 K17 ["Src"]
       50 GETTABLEKS                       R13 R13 K20 ["Util"]
       52 GETTABLEKS                       R13 R13 K21 ["ColorPickerUtil"]
       54 CALL                             R12 1 1
       55 GETTABLEKS                       R13 R12 K22 ["color3ToHex"]
       57 GETTABLEKS                       R14 R12 K23 ["hexToColor3"]
       59 DUPTABLE                         R15 K29 [{["FillDirection"], ["SortOrder"], ["Wraps"] = True, ["Padding"]}]
       60 GETIMPORT                        R16 K32 [Enum.FillDirection.Horizontal]
       62 SETTABLEKS                       R16 R15 K24 ["FillDirection"]
       64 GETIMPORT                        R16 K34 [Enum.SortOrder.LayoutOrder]
       66 SETTABLEKS                       R16 R15 K25 ["SortOrder"]
       68 GETIMPORT                        R16 K37 [UDim.new]
       70 LOADN                            R17 0
       71 LOADN                            R18 4
       72 CALL                             R16 2 1
       73 SETTABLEKS                       R16 R15 K28 ["Padding"]
       75 NEWTABLE                         R16 0 20
       77 GETIMPORT                        R17 K40 [Color3.fromHex]
       79 LOADK                            R18 K41 ["#312C25"]
       80 CALL                             R17 1 1
       81 GETIMPORT                        R18 K40 [Color3.fromHex]
       83 LOADK                            R19 K42 ["#3D2F25"]
       84 CALL                             R18 1 1
       85 GETIMPORT                        R19 K40 [Color3.fromHex]
       87 LOADK                            R20 K43 ["#5A462E"]
       88 CALL                             R19 1 1
       89 GETIMPORT                        R20 K40 [Color3.fromHex]
       91 LOADK                            R21 K44 ["#60392D"]
       92 CALL                             R20 1 1
       93 GETIMPORT                        R21 K40 [Color3.fromHex]
       95 LOADK                            R22 K45 ["#594234"]
       96 CALL                             R21 1 1
       97 GETIMPORT                        R22 K40 [Color3.fromHex]
       99 LOADK                            R23 K46 ["#8F5424"]
      100 CALL                             R22 1 1
      101 GETIMPORT                        R23 K40 [Color3.fromHex]
      103 LOADK                            R24 K47 ["#74573E"]
      104 CALL                             R23 1 1
      105 GETIMPORT                        R24 K40 [Color3.fromHex]
      107 LOADK                            R25 K48 ["#765243"]
      108 CALL                             R24 1 1
      109 GETIMPORT                        R25 K40 [Color3.fromHex]
      111 LOADK                            R26 K49 ["#AE7966"]
      112 CALL                             R25 1 1
      113 GETIMPORT                        R26 K40 [Color3.fromHex]
      115 LOADK                            R27 K50 ["#AE9381"]
      116 CALL                             R26 1 1
      117 GETIMPORT                        R27 K40 [Color3.fromHex]
      119 LOADK                            R28 K51 ["#CC8E69"]
      120 CALL                             R27 1 1
      121 GETIMPORT                        R28 K40 [Color3.fromHex]
      123 LOADK                            R29 K52 ["#D4A784"]
      124 CALL                             R28 1 1
      125 GETIMPORT                        R29 K40 [Color3.fromHex]
      127 LOADK                            R30 K53 ["#D49E8C"]
      128 CALL                             R29 1 1
      129 GETIMPORT                        R30 K40 [Color3.fromHex]
      131 LOADK                            R31 K54 ["#E8BAAA"]
      132 CALL                             R30 1 1
      133 GETIMPORT                        R31 K40 [Color3.fromHex]
      135 LOADK                            R32 K55 ["#E8B995"]
      136 CALL                             R31 1 1
      137 GETIMPORT                        R32 K40 [Color3.fromHex]
      139 LOADK                            R33 K56 ["#EED6B5"]
      140 CALL                             R32 1 1
      141 SETLIST                          R16 R17 16 [1]
      143 GETIMPORT                        R17 K40 [Color3.fromHex]
      145 LOADK                            R18 K57 ["#F8F8F8"]
      146 CALL                             R17 1 1
      147 GETIMPORT                        R18 K40 [Color3.fromHex]
      149 LOADK                            R19 K58 ["#CDCDCD"]
      150 CALL                             R18 1 1
      151 GETIMPORT                        R19 K40 [Color3.fromHex]
      153 LOADK                            R20 K59 ["#A3A2A5"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K40 [Color3.fromHex]
      157 LOADK                            R21 K60 ["#635F62"]
      158 CALL                             R20 1 -1
      159 SETLIST                          R16 R17 -1 [17]
      161 DUPCLOSURE                       R17 K61 [PROTO_11]
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R15
      176 RETURN                           R17 1
