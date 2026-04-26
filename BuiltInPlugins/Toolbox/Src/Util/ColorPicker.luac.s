PROTO_0:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETTABLEKS                       R2 R0 K1 ["fromPicker"]
        5 NOT                              R1 R2
        6 GETUPVAL                         R2 0
        7 DUPTABLE                         R3 K3 [{"fromPicker", "previousColor"}]
        8 LOADB                            R4 0
        9 SETTABLEKS                       R4 R3 K1 ["fromPicker"]
       11 GETUPVAL                         R4 1
       12 SETTABLEKS                       R4 R3 K2 ["previousColor"]
       14 SETTABLEKS                       R3 R2 K0 ["current"]
       16 GETUPVAL                         R2 1
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R3 3
       20 GETUPVAL                         R4 1
       21 CALL                             R3 1 -1
       22 CALL                             R2 -1 0
       23 GETUPVAL                         R2 4
       24 LOADNIL                          R3
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 5
       27 JUMPIFNOT                        R2 ; [+9]
       28 JUMPIFNOT                        R1 ; [+8]
       29 GETTABLEKS                       R2 R0 K2 ["previousColor"]
       31 GETUPVAL                         R3 1
       32 JUMPIFEQ                         R2 R3 ; [+4]
       34 GETUPVAL                         R2 6
       35 DUPCLOSURE                       R3 K4 [PROTO_0]
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 LOADB                            R3 1
        4 SETTABLEKS                       R3 R2 K1 ["fromPicker"]
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
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
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["current"]
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
       21 GETUPVAL                         R9 2
       22 GETTABLEKS                       R8 R9 K4 ["createElement"]
       24 GETUPVAL                         R9 3
       25 DUPTABLE                         R10 K9 [{"tag", "Size", "LayoutOrder", "onActivated"}]
       26 LOADK                            R11 K10 ["radius-small stroke-standard stroke-default"]
       27 SETTABLEKS                       R11 R10 K5 ["tag"]
       29 GETIMPORT                        R11 K13 [UDim2.fromOffset]
       31 LOADN                            R12 24
       32 LOADN                            R13 24
       33 CALL                             R11 2 1
       34 SETTABLEKS                       R11 R10 K6 ["Size"]
       36 SETTABLEKS                       R4 R10 K7 ["LayoutOrder"]
       38 NEWCLOSURE                       R11 P0
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          VAL R5
       41 SETTABLEKS                       R11 R10 K8 ["onActivated"]
       43 DUPTABLE                         R11 K15 [{"ColorSwatch"}]
       44 GETUPVAL                         R13 2
       45 GETTABLEKS                       R12 R13 K4 ["createElement"]
       47 LOADK                            R13 K16 ["Frame"]
       48 DUPTABLE                         R14 K19 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
       49 GETIMPORT                        R15 K21 [UDim2.new]
       51 LOADN                            R16 1
       52 LOADN                            R17 0
       53 LOADN                            R18 1
       54 LOADN                            R19 0
       55 CALL                             R15 4 1
       56 SETTABLEKS                       R15 R14 K6 ["Size"]
       58 SETTABLEKS                       R5 R14 K17 ["BackgroundColor3"]
       60 JUMPIFNOT                        R6 ; [+2]
       61 LOADN                            R15 2
       62 JUMP                             ; [+1]
       63 LOADN                            R15 1
       64 SETTABLEKS                       R15 R14 K18 ["BorderSizePixel"]
       66 DUPTABLE                         R15 K23 [{"UICorner"}]
       67 GETUPVAL                         R17 2
       68 GETTABLEKS                       R16 R17 K4 ["createElement"]
       70 LOADK                            R17 K22 ["UICorner"]
       71 DUPTABLE                         R18 K25 [{"CornerRadius"}]
       72 GETIMPORT                        R19 K27 [UDim.new]
       74 LOADN                            R20 0
       75 LOADN                            R21 4
       76 CALL                             R19 2 1
       77 SETTABLEKS                       R19 R18 K24 ["CornerRadius"]
       79 CALL                             R16 2 1
       80 SETTABLEKS                       R16 R15 K22 ["UICorner"]
       82 CALL                             R12 3 1
       83 SETTABLEKS                       R12 R11 K14 ["ColorSwatch"]
       85 CALL                             R8 3 1
       86 SETTABLE                         R8 R0 R7
       87 FORGLOOP                         R1 2 [inext] ; [-81]
       89 RETURN                           R0 1

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
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R7 R8 K10 ["useState"]
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
       45 GETUPVAL                         R13 1
       46 GETTABLEKS                       R12 R13 K10 ["useState"]
       48 MOVE                             R13 R11
       49 CALL                             R12 1 2
       50 GETUPVAL                         R15 1
       51 GETTABLEKS                       R14 R15 K10 ["useState"]
       53 LOADNIL                          R15
       54 CALL                             R14 1 2
       55 GETUPVAL                         R17 1
       56 GETTABLEKS                       R16 R17 K10 ["useState"]
       58 LOADN                            R17 0
       59 CALL                             R16 1 2
       60 GETUPVAL                         R19 1
       61 GETTABLEKS                       R18 R19 K13 ["useRef"]
       63 DUPTABLE                         R19 K16 [{"fromPicker", "previousColor"}]
       64 LOADB                            R20 0
       65 SETTABLEKS                       R20 R19 K14 ["fromPicker"]
       67 SETTABLEKS                       R3 R19 K15 ["previousColor"]
       69 CALL                             R18 1 1
       70 GETUPVAL                         R20 1
       71 GETTABLEKS                       R19 R20 K17 ["useEffect"]
       73 NEWCLOSURE                       R20 P0
       74 CAPTURE                          VAL R18
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R13
       77 CAPTURE                          UPVAL U2
       78 CAPTURE                          VAL R15
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R17
       81 NEWTABLE                         R21 0 2
       83 MOVE                             R22 R3
       84 MOVE                             R23 R7
       85 SETLIST                          R21 R22 2 [1]
       87 CALL                             R19 2 0
       88 GETUPVAL                         R20 1
       89 GETTABLEKS                       R19 R20 K18 ["useCallback"]
       91 NEWCLOSURE                       R20 P1
       92 CAPTURE                          VAL R8
       93 NEWTABLE                         R21 0 0
       95 CALL                             R19 2 1
       96 GETUPVAL                         R21 1
       97 GETTABLEKS                       R20 R21 K18 ["useCallback"]
       99 NEWCLOSURE                       R21 P2
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R8
      102 NEWTABLE                         R22 0 1
      104 MOVE                             R23 R14
      105 SETLIST                          R22 R23 1 [1]
      107 CALL                             R20 2 1
      108 GETUPVAL                         R22 1
      109 GETTABLEKS                       R21 R22 K18 ["useCallback"]
      111 NEWCLOSURE                       R22 P3
      112 CAPTURE                          VAL R18
      113 CAPTURE                          VAL R4
      114 NEWTABLE                         R23 0 1
      116 MOVE                             R24 R4
      117 SETLIST                          R23 R24 1 [1]
      119 CALL                             R21 2 1
      120 GETUPVAL                         R23 1
      121 GETTABLEKS                       R22 R23 K18 ["useCallback"]
      123 NEWCLOSURE                       R23 P4
      124 CAPTURE                          VAL R18
      125 CAPTURE                          VAL R4
      126 NEWTABLE                         R24 0 1
      128 MOVE                             R25 R4
      129 SETLIST                          R24 R25 1 [1]
      131 CALL                             R22 2 1
      132 GETUPVAL                         R24 1
      133 GETTABLEKS                       R23 R24 K18 ["useCallback"]
      135 NEWCLOSURE                       R24 P5
      136 CAPTURE                          VAL R13
      137 CAPTURE                          UPVAL U3
      138 CAPTURE                          VAL R15
      139 NEWTABLE                         R25 0 0
      141 CALL                             R23 2 1
      142 GETUPVAL                         R25 1
      143 GETTABLEKS                       R24 R25 K18 ["useCallback"]
      145 NEWCLOSURE                       R25 P6
      146 CAPTURE                          UPVAL U3
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R18
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R15
      151 NEWTABLE                         R26 0 2
      153 MOVE                             R27 R12
      154 MOVE                             R28 R4
      155 SETLIST                          R26 R27 2 [1]
      157 CALL                             R24 2 1
      158 GETUPVAL                         R26 1
      159 GETTABLEKS                       R25 R26 K19 ["useMemo"]
      161 NEWCLOSURE                       R26 P7
      162 CAPTURE                          UPVAL U4
      163 CAPTURE                          VAL R3
      164 CAPTURE                          UPVAL U1
      165 CAPTURE                          UPVAL U5
      166 CAPTURE                          VAL R22
      167 NEWTABLE                         R27 0 2
      169 MOVE                             R28 R3
      170 MOVE                             R29 R22
      171 SETLIST                          R27 R28 2 [1]
      173 CALL                             R25 2 1
      174 GETUPVAL                         R27 1
      175 GETTABLEKS                       R26 R27 K20 ["createElement"]
      177 GETUPVAL                         R27 5
      178 DUPTABLE                         R28 K24 [{"tag", "Size", "onActivated"}]
      179 JUMPIFNOT                        R10 ; [+2]
      180 LOADK                            R29 K25 ["bg-surface-100 row align-y-center gap-small padding-small radius-small stroke-system-alert"]
      181 JUMP                             ; [+1]
      182 LOADK                            R29 K26 ["bg-surface-100 row align-y-center gap-small padding-small radius-small stroke-default"]
      183 SETTABLEKS                       R29 R28 K21 ["tag"]
      185 GETIMPORT                        R29 K29 [UDim2.fromOffset]
      187 MOVE                             R30 R6
      188 LOADN                            R31 32
      189 CALL                             R29 2 1
      190 SETTABLEKS                       R29 R28 K22 ["Size"]
      192 SETTABLEKS                       R19 R28 K23 ["onActivated"]
      194 DUPTABLE                         R29 K32 [{"ColorSwatch", "ColorLabelContainer"}]
      195 JUMPIFNOT                        R9 ; [+38]
      196 GETUPVAL                         R31 1
      197 GETTABLEKS                       R30 R31 K20 ["createElement"]
      199 LOADK                            R31 K33 ["Frame"]
      200 DUPTABLE                         R32 K36 [{"Size", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      201 GETIMPORT                        R33 K29 [UDim2.fromOffset]
      203 LOADN                            R34 16
      204 LOADN                            R35 16
      205 CALL                             R33 2 1
      206 SETTABLEKS                       R33 R32 K22 ["Size"]
      208 SETTABLEKS                       R3 R32 K34 ["BackgroundColor3"]
      210 LOADN                            R33 0
      211 SETTABLEKS                       R33 R32 K35 ["BorderSizePixel"]
      213 LOADN                            R33 1
      214 SETTABLEKS                       R33 R32 K7 ["LayoutOrder"]
      216 DUPTABLE                         R33 K38 [{"UICorner"}]
      217 GETUPVAL                         R35 1
      218 GETTABLEKS                       R34 R35 K20 ["createElement"]
      220 LOADK                            R35 K37 ["UICorner"]
      221 DUPTABLE                         R36 K40 [{"CornerRadius"}]
      222 GETIMPORT                        R37 K43 [UDim.new]
      224 LOADN                            R38 0
      225 LOADN                            R39 2
      226 CALL                             R37 2 1
      227 SETTABLEKS                       R37 R36 K39 ["CornerRadius"]
      229 CALL                             R34 2 1
      230 SETTABLEKS                       R34 R33 K37 ["UICorner"]
      232 CALL                             R30 3 1
      233 JUMP                             ; [+19]
      234 GETUPVAL                         R31 1
      235 GETTABLEKS                       R30 R31 K20 ["createElement"]
      237 GETUPVAL                         R31 5
      238 DUPTABLE                         R32 K44 [{"tag", "Size", "LayoutOrder"}]
      239 LOADK                            R33 K45 ["radius-small stroke-default"]
      240 SETTABLEKS                       R33 R32 K21 ["tag"]
      242 GETIMPORT                        R33 K29 [UDim2.fromOffset]
      244 LOADN                            R34 16
      245 LOADN                            R35 16
      246 CALL                             R33 2 1
      247 SETTABLEKS                       R33 R32 K22 ["Size"]
      249 LOADN                            R33 1
      250 SETTABLEKS                       R33 R32 K7 ["LayoutOrder"]
      252 CALL                             R30 2 1
      253 SETTABLEKS                       R30 R29 K30 ["ColorSwatch"]
      255 GETUPVAL                         R31 1
      256 GETTABLEKS                       R30 R31 K20 ["createElement"]
      258 GETUPVAL                         R31 5
      259 DUPTABLE                         R32 K47 [{"tag", "LayoutOrder", "AutomaticSize"}]
      260 LOADK                            R33 K48 ["row align-y-center gap-xsmall"]
      261 SETTABLEKS                       R33 R32 K21 ["tag"]
      263 LOADN                            R33 2
      264 SETTABLEKS                       R33 R32 K7 ["LayoutOrder"]
      266 GETIMPORT                        R33 K51 [Enum.AutomaticSize.X]
      268 SETTABLEKS                       R33 R32 K46 ["AutomaticSize"]
      270 DUPTABLE                         R33 K54 [{"ColorLabel", "HexErrorMessage"}]
      271 JUMPIFNOT                        R9 ; [+32]
      272 GETUPVAL                         R35 1
      273 GETTABLEKS                       R34 R35 K20 ["createElement"]
      275 GETUPVAL                         R35 6
      276 DUPTABLE                         R36 K61 [{"text", "label", "size", "width", "onChanged", "onFocusLost"}]
      277 SETTABLEKS                       R12 R36 K55 ["text"]
      279 LOADK                            R37 K12 [""]
      280 SETTABLEKS                       R37 R36 K56 ["label"]
      282 GETUPVAL                         R40 7
      283 GETTABLEKS                       R39 R40 K62 ["Enums"]
      285 GETTABLEKS                       R38 R39 K63 ["InputSize"]
      287 GETTABLEKS                       R37 R38 K64 ["XSmall"]
      289 SETTABLEKS                       R37 R36 K57 ["size"]
      291 GETIMPORT                        R37 K43 [UDim.new]
      293 LOADN                            R38 0
      294 LOADN                            R39 80
      295 CALL                             R37 2 1
      296 SETTABLEKS                       R37 R36 K58 ["width"]
      298 SETTABLEKS                       R23 R36 K59 ["onChanged"]
      300 SETTABLEKS                       R24 R36 K60 ["onFocusLost"]
      302 CALL                             R34 2 1
      303 JUMP                             ; [+14]
      304 GETUPVAL                         R35 1
      305 GETTABLEKS                       R34 R35 K20 ["createElement"]
      307 GETUPVAL                         R35 8
      308 DUPTABLE                         R36 K66 [{"tag", "Text", "LayoutOrder"}]
      309 LOADK                            R37 K67 ["text-body-small content-secondary auto-xy"]
      310 SETTABLEKS                       R37 R36 K21 ["tag"]
      312 SETTABLEKS                       R2 R36 K65 ["Text"]
      314 LOADN                            R37 1
      315 SETTABLEKS                       R37 R36 K7 ["LayoutOrder"]
      317 CALL                             R34 2 1
      318 SETTABLEKS                       R34 R33 K52 ["ColorLabel"]
      320 JUMPIFNOT                        R14 ; [+63]
      321 GETUPVAL                         R35 1
      322 GETTABLEKS                       R34 R35 K20 ["createElement"]
      324 GETUPVAL                         R35 5
      325 DUPTABLE                         R36 K47 [{"tag", "LayoutOrder", "AutomaticSize"}]
      326 LOADK                            R37 K68 ["row align-y-center"]
      327 SETTABLEKS                       R37 R36 K21 ["tag"]
      329 LOADN                            R37 2
      330 SETTABLEKS                       R37 R36 K7 ["LayoutOrder"]
      332 GETIMPORT                        R37 K51 [Enum.AutomaticSize.X]
      334 SETTABLEKS                       R37 R36 K46 ["AutomaticSize"]
      336 DUPTABLE                         R37 K71 [{"Spacer", "ErrorText"}]
      337 GETUPVAL                         R39 1
      338 GETTABLEKS                       R38 R39 K20 ["createElement"]
      340 LOADK                            R39 K33 ["Frame"]
      341 DUPTABLE                         R40 K73 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      342 GETIMPORT                        R41 K29 [UDim2.fromOffset]
      344 LOADN                            R42 8
      345 LOADN                            R43 0
      346 CALL                             R41 2 1
      347 SETTABLEKS                       R41 R40 K22 ["Size"]
      349 LOADN                            R41 1
      350 SETTABLEKS                       R41 R40 K72 ["BackgroundTransparency"]
      352 LOADN                            R41 1
      353 SETTABLEKS                       R41 R40 K7 ["LayoutOrder"]
      355 CALL                             R38 2 1
      356 SETTABLEKS                       R38 R37 K69 ["Spacer"]
      358 GETUPVAL                         R39 1
      359 GETTABLEKS                       R38 R39 K20 ["createElement"]
      361 GETUPVAL                         R39 8
      362 DUPTABLE                         R40 K66 [{"tag", "Text", "LayoutOrder"}]
      363 LOADK                            R41 K74 ["text-body-small content-alert auto-xy"]
      364 SETTABLEKS                       R41 R40 K21 ["tag"]
      366 JUMPIFNOT                        R1 ; [+6]
      367 LOADK                            R43 K75 ["Error"]
      368 MOVE                             R44 R14
      369 NAMECALL                         R41 R1 K3 ["getText"]
      371 CALL                             R41 3 1
      372 JUMP                             ; [+1]
      373 MOVE                             R41 R14
      374 SETTABLEKS                       R41 R40 K65 ["Text"]
      376 LOADN                            R41 2
      377 SETTABLEKS                       R41 R40 K7 ["LayoutOrder"]
      379 CALL                             R38 2 1
      380 SETTABLEKS                       R38 R37 K70 ["ErrorText"]
      382 CALL                             R34 3 1
      383 JUMPIF                           R34 ; [+1]
      384 LOADNIL                          R34
      385 SETTABLEKS                       R34 R33 K53 ["HexErrorMessage"]
      387 CALL                             R30 3 1
      388 SETTABLEKS                       R30 R29 K31 ["ColorLabelContainer"]
      390 CALL                             R26 3 1
      391 GETUPVAL                         R28 1
      392 GETTABLEKS                       R27 R28 K20 ["createElement"]
      394 GETUPVAL                         R28 5
      395 DUPTABLE                         R29 K76 [{"Size", "LayoutOrder", "tag"}]
      396 GETIMPORT                        R30 K77 [UDim2.new]
      398 LOADN                            R31 0
      399 MOVE                             R32 R6
      400 LOADN                            R33 0
      401 JUMPIFNOT                        R10 ; [+2]
      402 LOADN                            R34 54
      403 JUMP                             ; [+1]
      404 LOADN                            R34 38
      405 CALL                             R30 4 1
      406 SETTABLEKS                       R30 R29 K22 ["Size"]
      408 SETTABLEKS                       R5 R29 K7 ["LayoutOrder"]
      410 JUMPIFNOT                        R10 ; [+2]
      411 LOADK                            R30 K78 ["col gap-xxsmall"]
      412 JUMP                             ; [+1]
      413 LOADK                            R30 K79 ["col gap-xsmall"]
      414 SETTABLEKS                       R30 R29 K21 ["tag"]
      416 DUPTABLE                         R30 K82 [{"PopoverRoot", "RequiredErrorText"}]
      417 GETUPVAL                         R32 1
      418 GETTABLEKS                       R31 R32 K20 ["createElement"]
      420 GETUPVAL                         R33 9
      421 GETTABLEKS                       R32 R33 K83 ["Root"]
      423 DUPTABLE                         R33 K85 [{"isOpen"}]
      424 SETTABLEKS                       R7 R33 K84 ["isOpen"]
      426 DUPTABLE                         R34 K88 [{"Anchor", "Content"}]
      427 GETUPVAL                         R36 1
      428 GETTABLEKS                       R35 R36 K20 ["createElement"]
      430 GETUPVAL                         R37 9
      431 GETTABLEKS                       R36 R37 K86 ["Anchor"]
      433 LOADNIL                          R37
      434 DUPTABLE                         R38 K90 [{"ColorSwatchButton"}]
      435 JUMPIFNOT                        R1 ; [+27]
      436 GETUPVAL                         R40 1
      437 GETTABLEKS                       R39 R40 K20 ["createElement"]
      439 GETUPVAL                         R40 10
      440 DUPTABLE                         R41 K93 [{"title", "text", "side"}]
      441 LOADK                            R44 K1 ["General"]
      442 LOADK                            R45 K94 ["ThumbnailSkinTone"]
      443 NAMECALL                         R42 R1 K3 ["getText"]
      445 CALL                             R42 3 1
      446 SETTABLEKS                       R42 R41 K91 ["title"]
      448 LOADK                            R44 K1 ["General"]
      449 LOADK                            R45 K95 ["TooltipThumbnailSkinColorDescription"]
      450 NAMECALL                         R42 R1 K3 ["getText"]
      452 CALL                             R42 3 1
      453 SETTABLEKS                       R42 R41 K55 ["text"]
      455 GETUPVAL                         R43 11
      456 GETTABLEKS                       R42 R43 K96 ["Bottom"]
      458 SETTABLEKS                       R42 R41 K92 ["side"]
      460 MOVE                             R42 R26
      461 CALL                             R39 3 1
      462 JUMP                             ; [+1]
      463 MOVE                             R39 R26
      464 SETTABLEKS                       R39 R38 K89 ["ColorSwatchButton"]
      466 CALL                             R35 3 1
      467 SETTABLEKS                       R35 R34 K86 ["Anchor"]
      469 GETUPVAL                         R36 1
      470 GETTABLEKS                       R35 R36 K20 ["createElement"]
      472 GETUPVAL                         R37 9
      473 GETTABLEKS                       R36 R37 K87 ["Content"]
      475 DUPTABLE                         R37 K100 [{"onPressedOutside", "side", "align", "hasArrow"}]
      476 SETTABLEKS                       R20 R37 K97 ["onPressedOutside"]
      478 DUPTABLE                         R38 K103 [{"position", "offset"}]
      479 GETUPVAL                         R40 11
      480 GETTABLEKS                       R39 R40 K96 ["Bottom"]
      482 SETTABLEKS                       R39 R38 K101 ["position"]
      484 LOADN                            R39 8
      485 SETTABLEKS                       R39 R38 K102 ["offset"]
      487 SETTABLEKS                       R38 R37 K92 ["side"]
      489 GETUPVAL                         R39 12
      490 GETTABLEKS                       R38 R39 K104 ["Start"]
      492 SETTABLEKS                       R38 R37 K98 ["align"]
      494 LOADB                            R38 0
      495 SETTABLEKS                       R38 R37 K99 ["hasArrow"]
      497 MOVE                             R38 R7
      498 JUMPIFNOT                        R38 ; [+109]
      499 GETUPVAL                         R39 1
      500 GETTABLEKS                       R38 R39 K20 ["createElement"]
      502 GETUPVAL                         R39 5
      503 DUPTABLE                         R40 K106 [{"tag", "ClipsDescendants"}]
      504 LOADK                            R41 K107 ["col padding-small gap-small bg-surface-100 radius-small stroke-default auto-xy"]
      505 SETTABLEKS                       R41 R40 K21 ["tag"]
      507 LOADB                            R41 0
      508 SETTABLEKS                       R41 R40 K105 ["ClipsDescendants"]
      510 DUPTABLE                         R41 K110 [{"Picker", "Spacer", "PresetsSection"}]
      511 GETUPVAL                         R43 1
      512 GETTABLEKS                       R42 R43 K20 ["createElement"]
      514 GETUPVAL                         R43 5
      515 DUPTABLE                         R44 K111 [{"Size", "LayoutOrder"}]
      516 GETIMPORT                        R45 K29 [UDim2.fromOffset]
      518 LOADN                            R46 26
      519 LOADN                            R47 150
      520 CALL                             R45 2 1
      521 SETTABLEKS                       R45 R44 K22 ["Size"]
      523 LOADN                            R45 1
      524 SETTABLEKS                       R45 R44 K7 ["LayoutOrder"]
      526 DUPTABLE                         R45 K113 [{"ColorPickerComponent"}]
      527 GETUPVAL                         R47 1
      528 GETTABLEKS                       R46 R47 K20 ["createElement"]
      530 GETUPVAL                         R48 7
      531 GETTABLEKS                       R47 R48 K114 ["ColorPicker"]
      533 DUPTABLE                         R48 K120 [{"key", "initialColor", "availableModes", "initialMode", "onColorChanged"}]
      534 SETTABLEKS                       R16 R48 K115 ["key"]
      536 JUMPIFNOT                        R3 ; [+2]
      537 MOVE                             R49 R3
      538 JUMP                             ; [+4]
      539 DUPTABLE                         R49 K122 [{"H"}]
      540 LOADN                            R50 15
      541 SETTABLEKS                       R50 R49 K121 ["H"]
      543 SETTABLEKS                       R49 R48 K116 ["initialColor"]
      545 NEWTABLE                         R49 0 2
      547 LOADK                            R50 K123 ["RGB"]
      548 LOADK                            R51 K124 ["HSV"]
      549 SETLIST                          R49 R50 2 [1]
      551 SETTABLEKS                       R49 R48 K117 ["availableModes"]
      553 LOADK                            R49 K124 ["HSV"]
      554 SETTABLEKS                       R49 R48 K118 ["initialMode"]
      556 SETTABLEKS                       R21 R48 K119 ["onColorChanged"]
      558 CALL                             R46 2 1
      559 SETTABLEKS                       R46 R45 K112 ["ColorPickerComponent"]
      561 CALL                             R42 3 1
      562 SETTABLEKS                       R42 R41 K108 ["Picker"]
      564 GETUPVAL                         R43 1
      565 GETTABLEKS                       R42 R43 K20 ["createElement"]
      567 GETUPVAL                         R43 5
      568 DUPTABLE                         R44 K111 [{"Size", "LayoutOrder"}]
      569 GETIMPORT                        R45 K29 [UDim2.fromOffset]
      571 LOADN                            R46 26
      572 LOADN                            R47 65
      573 CALL                             R45 2 1
      574 SETTABLEKS                       R45 R44 K22 ["Size"]
      576 LOADN                            R45 2
      577 SETTABLEKS                       R45 R44 K7 ["LayoutOrder"]
      579 CALL                             R42 2 1
      580 SETTABLEKS                       R42 R41 K69 ["Spacer"]
      582 GETUPVAL                         R43 1
      583 GETTABLEKS                       R42 R43 K20 ["createElement"]
      585 GETUPVAL                         R43 5
      586 DUPTABLE                         R44 K126 [{"tag", "layout", "LayoutOrder", "Size"}]
      587 LOADK                            R45 K127 ["align-x-center"]
      588 SETTABLEKS                       R45 R44 K21 ["tag"]
      590 GETUPVAL                         R45 13
      591 SETTABLEKS                       R45 R44 K125 ["layout"]
      593 LOADN                            R45 3
      594 SETTABLEKS                       R45 R44 K7 ["LayoutOrder"]
      596 GETIMPORT                        R45 K29 [UDim2.fromOffset]
      598 LOADN                            R46 26
      599 LOADN                            R47 52
      600 CALL                             R45 2 1
      601 SETTABLEKS                       R45 R44 K22 ["Size"]
      603 MOVE                             R45 R25
      604 CALL                             R42 3 1
      605 SETTABLEKS                       R42 R41 K109 ["PresetsSection"]
      607 CALL                             R38 3 1
      608 CALL                             R35 3 1
      609 SETTABLEKS                       R35 R34 K87 ["Content"]
      611 CALL                             R31 3 1
      612 SETTABLEKS                       R31 R30 K80 ["PopoverRoot"]
      614 JUMPIFNOT                        R10 ; [+21]
      615 JUMPIFNOT                        R1 ; [+20]
      616 GETUPVAL                         R32 1
      617 GETTABLEKS                       R31 R32 K20 ["createElement"]
      619 GETUPVAL                         R32 8
      620 DUPTABLE                         R33 K66 [{"tag", "Text", "LayoutOrder"}]
      621 LOADK                            R34 K128 ["text-body-small content-alert auto-xy padding-top-xsmall"]
      622 SETTABLEKS                       R34 R33 K21 ["tag"]
      624 LOADK                            R36 K75 ["Error"]
      625 LOADK                            R37 K129 ["SkinColorRequired"]
      626 NAMECALL                         R34 R1 K3 ["getText"]
      628 CALL                             R34 3 1
      629 SETTABLEKS                       R34 R33 K65 ["Text"]
      631 LOADN                            R34 2
      632 SETTABLEKS                       R34 R33 K7 ["LayoutOrder"]
      634 CALL                             R31 2 1
      635 JUMPIF                           R31 ; [+1]
      636 LOADNIL                          R31
      637 SETTABLEKS                       R31 R30 K81 ["RequiredErrorText"]
      639 CALL                             R27 3 -1
      640 RETURN                           R27 -1

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
       29 GETTABLEKS                       R10 R3 K14 ["Enums"]
       31 GETTABLEKS                       R9 R10 K15 ["PopoverSide"]
       33 GETTABLEKS                       R11 R3 K14 ["Enums"]
       35 GETTABLEKS                       R10 R11 K16 ["PopoverAlign"]
       37 GETIMPORT                        R11 K6 [require]
       39 GETTABLEKS                       R14 R0 K17 ["Src"]
       41 GETTABLEKS                       R13 R14 K18 ["Flags"]
       43 GETTABLEKS                       R12 R13 K19 ["getFFlagEnableUploadingMakeup"]
       45 CALL                             R11 1 1
       46 GETIMPORT                        R12 K6 [require]
       48 GETTABLEKS                       R15 R0 K17 ["Src"]
       50 GETTABLEKS                       R14 R15 K20 ["Util"]
       52 GETTABLEKS                       R13 R14 K21 ["ColorPickerUtil"]
       54 CALL                             R12 1 1
       55 GETTABLEKS                       R13 R12 K22 ["color3ToHex"]
       57 GETTABLEKS                       R14 R12 K23 ["hexToColor3"]
       59 DUPTABLE                         R15 K28 [{"FillDirection", "SortOrder", "Wraps", "Padding"}]
       60 GETIMPORT                        R16 K31 [Enum.FillDirection.Horizontal]
       62 SETTABLEKS                       R16 R15 K24 ["FillDirection"]
       64 GETIMPORT                        R16 K33 [Enum.SortOrder.LayoutOrder]
       66 SETTABLEKS                       R16 R15 K25 ["SortOrder"]
       68 LOADB                            R16 1
       69 SETTABLEKS                       R16 R15 K26 ["Wraps"]
       71 GETIMPORT                        R16 K36 [UDim.new]
       73 LOADN                            R17 0
       74 LOADN                            R18 4
       75 CALL                             R16 2 1
       76 SETTABLEKS                       R16 R15 K27 ["Padding"]
       78 NEWTABLE                         R16 0 20
       80 GETIMPORT                        R17 K39 [Color3.fromHex]
       82 LOADK                            R18 K40 ["#312C25"]
       83 CALL                             R17 1 1
       84 GETIMPORT                        R18 K39 [Color3.fromHex]
       86 LOADK                            R19 K41 ["#3D2F25"]
       87 CALL                             R18 1 1
       88 GETIMPORT                        R19 K39 [Color3.fromHex]
       90 LOADK                            R20 K42 ["#5A462E"]
       91 CALL                             R19 1 1
       92 GETIMPORT                        R20 K39 [Color3.fromHex]
       94 LOADK                            R21 K43 ["#60392D"]
       95 CALL                             R20 1 1
       96 GETIMPORT                        R21 K39 [Color3.fromHex]
       98 LOADK                            R22 K44 ["#594234"]
       99 CALL                             R21 1 1
      100 GETIMPORT                        R22 K39 [Color3.fromHex]
      102 LOADK                            R23 K45 ["#8F5424"]
      103 CALL                             R22 1 1
      104 GETIMPORT                        R23 K39 [Color3.fromHex]
      106 LOADK                            R24 K46 ["#74573E"]
      107 CALL                             R23 1 1
      108 GETIMPORT                        R24 K39 [Color3.fromHex]
      110 LOADK                            R25 K47 ["#765243"]
      111 CALL                             R24 1 1
      112 GETIMPORT                        R25 K39 [Color3.fromHex]
      114 LOADK                            R26 K48 ["#AE7966"]
      115 CALL                             R25 1 1
      116 GETIMPORT                        R26 K39 [Color3.fromHex]
      118 LOADK                            R27 K49 ["#AE9381"]
      119 CALL                             R26 1 1
      120 GETIMPORT                        R27 K39 [Color3.fromHex]
      122 LOADK                            R28 K50 ["#CC8E69"]
      123 CALL                             R27 1 1
      124 GETIMPORT                        R28 K39 [Color3.fromHex]
      126 LOADK                            R29 K51 ["#D4A784"]
      127 CALL                             R28 1 1
      128 GETIMPORT                        R29 K39 [Color3.fromHex]
      130 LOADK                            R30 K52 ["#D49E8C"]
      131 CALL                             R29 1 1
      132 GETIMPORT                        R30 K39 [Color3.fromHex]
      134 LOADK                            R31 K53 ["#E8BAAA"]
      135 CALL                             R30 1 1
      136 GETIMPORT                        R31 K39 [Color3.fromHex]
      138 LOADK                            R32 K54 ["#E8B995"]
      139 CALL                             R31 1 1
      140 GETIMPORT                        R32 K39 [Color3.fromHex]
      142 LOADK                            R33 K55 ["#EED6B5"]
      143 CALL                             R32 1 1
      144 SETLIST                          R16 R17 16 [1]
      146 GETIMPORT                        R17 K39 [Color3.fromHex]
      148 LOADK                            R18 K56 ["#F8F8F8"]
      149 CALL                             R17 1 1
      150 GETIMPORT                        R18 K39 [Color3.fromHex]
      152 LOADK                            R19 K57 ["#CDCDCD"]
      153 CALL                             R18 1 1
      154 GETIMPORT                        R19 K39 [Color3.fromHex]
      156 LOADK                            R20 K58 ["#A3A2A5"]
      157 CALL                             R19 1 1
      158 GETIMPORT                        R20 K39 [Color3.fromHex]
      160 LOADK                            R21 K59 ["#635F62"]
      161 CALL                             R20 1 -1
      162 SETLIST                          R16 R17 -1 [17]
      164 DUPCLOSURE                       R17 K60 [PROTO_11]
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R3
      173 CAPTURE                          VAL R5
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R15
      179 RETURN                           R17 1
