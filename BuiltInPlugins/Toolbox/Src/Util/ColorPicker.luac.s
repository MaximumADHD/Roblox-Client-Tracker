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
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 GETTABLEKS                       R1 R0 K0 ["Localization"]
       10 JUMPIFNOT                        R1 ; [+6]
       11 LOADK                            R4 K1 ["General"]
       12 LOADK                            R5 K2 ["PleaseSelectAColor"]
       13 NAMECALL                         R2 R1 K3 ["getText"]
       15 CALL                             R2 3 1
       16 JUMP                             ; [+1]
       17 LOADK                            R2 K4 ["Select a color"]
       18 GETTABLEKS                       R3 R0 K5 ["selectedColor"]
       20 GETTABLEKS                       R4 R0 K6 ["setSelectedColor"]
       22 GETTABLEKS                       R5 R0 K7 ["LayoutOrder"]
       24 GETTABLEKS                       R7 R0 K9 ["Width"]
       26 ORK                              R6 R7 K8 [400]
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R7 R8 K10 ["useState"]
       30 LOADB                            R8 0
       31 CALL                             R7 1 2
       32 JUMPIFNOTEQKNIL                  R3 ; [+2]
       34 LOADB                            R9 0 +1
       35 LOADB                            R9 1
       36 GETTABLEKS                       R11 R0 K11 ["showRequiredError"]
       38 JUMPIFEQKB                       R11 TRUE ; [+2]
       40 LOADB                            R10 0 +1
       41 LOADB                            R10 1
       42 JUMPIFNOT                        R3 ; [+4]
       43 GETUPVAL                         R11 3
       44 MOVE                             R12 R3
       45 CALL                             R11 1 1
       46 JUMP                             ; [+1]
       47 LOADK                            R11 K12 [""]
       48 GETUPVAL                         R13 2
       49 GETTABLEKS                       R12 R13 K10 ["useState"]
       51 MOVE                             R13 R11
       52 CALL                             R12 1 2
       53 GETUPVAL                         R15 2
       54 GETTABLEKS                       R14 R15 K10 ["useState"]
       56 LOADNIL                          R15
       57 CALL                             R14 1 2
       58 GETUPVAL                         R17 2
       59 GETTABLEKS                       R16 R17 K10 ["useState"]
       61 LOADN                            R17 0
       62 CALL                             R16 1 2
       63 GETUPVAL                         R19 2
       64 GETTABLEKS                       R18 R19 K13 ["useRef"]
       66 DUPTABLE                         R19 K16 [{"fromPicker", "previousColor"}]
       67 LOADB                            R20 0
       68 SETTABLEKS                       R20 R19 K14 ["fromPicker"]
       70 SETTABLEKS                       R3 R19 K15 ["previousColor"]
       72 CALL                             R18 1 1
       73 GETUPVAL                         R20 2
       74 GETTABLEKS                       R19 R20 K17 ["useEffect"]
       76 NEWCLOSURE                       R20 P0
       77 CAPTURE                          VAL R18
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R13
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          VAL R15
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R17
       84 NEWTABLE                         R21 0 2
       86 MOVE                             R22 R3
       87 MOVE                             R23 R7
       88 SETLIST                          R21 R22 2 [1]
       90 CALL                             R19 2 0
       91 GETUPVAL                         R20 2
       92 GETTABLEKS                       R19 R20 K18 ["useCallback"]
       94 NEWCLOSURE                       R20 P1
       95 CAPTURE                          VAL R8
       96 NEWTABLE                         R21 0 0
       98 CALL                             R19 2 1
       99 GETUPVAL                         R21 2
      100 GETTABLEKS                       R20 R21 K18 ["useCallback"]
      102 NEWCLOSURE                       R21 P2
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R8
      105 NEWTABLE                         R22 0 1
      107 MOVE                             R23 R14
      108 SETLIST                          R22 R23 1 [1]
      110 CALL                             R20 2 1
      111 GETUPVAL                         R22 2
      112 GETTABLEKS                       R21 R22 K18 ["useCallback"]
      114 NEWCLOSURE                       R22 P3
      115 CAPTURE                          VAL R18
      116 CAPTURE                          VAL R4
      117 NEWTABLE                         R23 0 1
      119 MOVE                             R24 R4
      120 SETLIST                          R23 R24 1 [1]
      122 CALL                             R21 2 1
      123 GETUPVAL                         R23 2
      124 GETTABLEKS                       R22 R23 K18 ["useCallback"]
      126 NEWCLOSURE                       R23 P4
      127 CAPTURE                          VAL R18
      128 CAPTURE                          VAL R4
      129 NEWTABLE                         R24 0 1
      131 MOVE                             R25 R4
      132 SETLIST                          R24 R25 1 [1]
      134 CALL                             R22 2 1
      135 GETUPVAL                         R24 2
      136 GETTABLEKS                       R23 R24 K18 ["useCallback"]
      138 NEWCLOSURE                       R24 P5
      139 CAPTURE                          VAL R13
      140 CAPTURE                          UPVAL U4
      141 CAPTURE                          VAL R15
      142 NEWTABLE                         R25 0 0
      144 CALL                             R23 2 1
      145 GETUPVAL                         R25 2
      146 GETTABLEKS                       R24 R25 K18 ["useCallback"]
      148 NEWCLOSURE                       R25 P6
      149 CAPTURE                          UPVAL U4
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R15
      154 NEWTABLE                         R26 0 2
      156 MOVE                             R27 R12
      157 MOVE                             R28 R4
      158 SETLIST                          R26 R27 2 [1]
      160 CALL                             R24 2 1
      161 GETUPVAL                         R26 2
      162 GETTABLEKS                       R25 R26 K19 ["useMemo"]
      164 NEWCLOSURE                       R26 P7
      165 CAPTURE                          UPVAL U5
      166 CAPTURE                          VAL R3
      167 CAPTURE                          UPVAL U2
      168 CAPTURE                          UPVAL U6
      169 CAPTURE                          VAL R22
      170 NEWTABLE                         R27 0 2
      172 MOVE                             R28 R3
      173 MOVE                             R29 R22
      174 SETLIST                          R27 R28 2 [1]
      176 CALL                             R25 2 1
      177 GETUPVAL                         R27 2
      178 GETTABLEKS                       R26 R27 K20 ["createElement"]
      180 GETUPVAL                         R27 6
      181 DUPTABLE                         R28 K24 [{"tag", "Size", "onActivated"}]
      182 JUMPIFNOT                        R10 ; [+2]
      183 LOADK                            R29 K25 ["bg-surface-100 row align-y-center gap-small padding-small radius-small stroke-system-alert"]
      184 JUMP                             ; [+1]
      185 LOADK                            R29 K26 ["bg-surface-100 row align-y-center gap-small padding-small radius-small stroke-default"]
      186 SETTABLEKS                       R29 R28 K21 ["tag"]
      188 GETIMPORT                        R29 K29 [UDim2.fromOffset]
      190 MOVE                             R30 R6
      191 LOADN                            R31 32
      192 CALL                             R29 2 1
      193 SETTABLEKS                       R29 R28 K22 ["Size"]
      195 SETTABLEKS                       R19 R28 K23 ["onActivated"]
      197 DUPTABLE                         R29 K32 [{"ColorSwatch", "ColorLabelContainer"}]
      198 JUMPIFNOT                        R9 ; [+38]
      199 GETUPVAL                         R31 2
      200 GETTABLEKS                       R30 R31 K20 ["createElement"]
      202 LOADK                            R31 K33 ["Frame"]
      203 DUPTABLE                         R32 K36 [{"Size", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      204 GETIMPORT                        R33 K29 [UDim2.fromOffset]
      206 LOADN                            R34 16
      207 LOADN                            R35 16
      208 CALL                             R33 2 1
      209 SETTABLEKS                       R33 R32 K22 ["Size"]
      211 SETTABLEKS                       R3 R32 K34 ["BackgroundColor3"]
      213 LOADN                            R33 0
      214 SETTABLEKS                       R33 R32 K35 ["BorderSizePixel"]
      216 LOADN                            R33 1
      217 SETTABLEKS                       R33 R32 K7 ["LayoutOrder"]
      219 DUPTABLE                         R33 K38 [{"UICorner"}]
      220 GETUPVAL                         R35 2
      221 GETTABLEKS                       R34 R35 K20 ["createElement"]
      223 LOADK                            R35 K37 ["UICorner"]
      224 DUPTABLE                         R36 K40 [{"CornerRadius"}]
      225 GETIMPORT                        R37 K43 [UDim.new]
      227 LOADN                            R38 0
      228 LOADN                            R39 2
      229 CALL                             R37 2 1
      230 SETTABLEKS                       R37 R36 K39 ["CornerRadius"]
      232 CALL                             R34 2 1
      233 SETTABLEKS                       R34 R33 K37 ["UICorner"]
      235 CALL                             R30 3 1
      236 JUMP                             ; [+19]
      237 GETUPVAL                         R31 2
      238 GETTABLEKS                       R30 R31 K20 ["createElement"]
      240 GETUPVAL                         R31 6
      241 DUPTABLE                         R32 K44 [{"tag", "Size", "LayoutOrder"}]
      242 LOADK                            R33 K45 ["radius-small stroke-default"]
      243 SETTABLEKS                       R33 R32 K21 ["tag"]
      245 GETIMPORT                        R33 K29 [UDim2.fromOffset]
      247 LOADN                            R34 16
      248 LOADN                            R35 16
      249 CALL                             R33 2 1
      250 SETTABLEKS                       R33 R32 K22 ["Size"]
      252 LOADN                            R33 1
      253 SETTABLEKS                       R33 R32 K7 ["LayoutOrder"]
      255 CALL                             R30 2 1
      256 SETTABLEKS                       R30 R29 K30 ["ColorSwatch"]
      258 GETUPVAL                         R31 2
      259 GETTABLEKS                       R30 R31 K20 ["createElement"]
      261 GETUPVAL                         R31 6
      262 DUPTABLE                         R32 K47 [{"tag", "LayoutOrder", "AutomaticSize"}]
      263 LOADK                            R33 K48 ["row align-y-center gap-xsmall"]
      264 SETTABLEKS                       R33 R32 K21 ["tag"]
      266 LOADN                            R33 2
      267 SETTABLEKS                       R33 R32 K7 ["LayoutOrder"]
      269 GETIMPORT                        R33 K51 [Enum.AutomaticSize.X]
      271 SETTABLEKS                       R33 R32 K46 ["AutomaticSize"]
      273 DUPTABLE                         R33 K54 [{"ColorLabel", "HexErrorMessage"}]
      274 JUMPIFNOT                        R9 ; [+32]
      275 GETUPVAL                         R35 2
      276 GETTABLEKS                       R34 R35 K20 ["createElement"]
      278 GETUPVAL                         R35 7
      279 DUPTABLE                         R36 K61 [{"text", "label", "size", "width", "onChanged", "onFocusLost"}]
      280 SETTABLEKS                       R12 R36 K55 ["text"]
      282 LOADK                            R37 K12 [""]
      283 SETTABLEKS                       R37 R36 K56 ["label"]
      285 GETUPVAL                         R40 8
      286 GETTABLEKS                       R39 R40 K62 ["Enums"]
      288 GETTABLEKS                       R38 R39 K63 ["InputSize"]
      290 GETTABLEKS                       R37 R38 K64 ["XSmall"]
      292 SETTABLEKS                       R37 R36 K57 ["size"]
      294 GETIMPORT                        R37 K43 [UDim.new]
      296 LOADN                            R38 0
      297 LOADN                            R39 80
      298 CALL                             R37 2 1
      299 SETTABLEKS                       R37 R36 K58 ["width"]
      301 SETTABLEKS                       R23 R36 K59 ["onChanged"]
      303 SETTABLEKS                       R24 R36 K60 ["onFocusLost"]
      305 CALL                             R34 2 1
      306 JUMP                             ; [+14]
      307 GETUPVAL                         R35 2
      308 GETTABLEKS                       R34 R35 K20 ["createElement"]
      310 GETUPVAL                         R35 9
      311 DUPTABLE                         R36 K66 [{"tag", "Text", "LayoutOrder"}]
      312 LOADK                            R37 K67 ["text-body-small content-secondary auto-xy"]
      313 SETTABLEKS                       R37 R36 K21 ["tag"]
      315 SETTABLEKS                       R2 R36 K65 ["Text"]
      317 LOADN                            R37 1
      318 SETTABLEKS                       R37 R36 K7 ["LayoutOrder"]
      320 CALL                             R34 2 1
      321 SETTABLEKS                       R34 R33 K52 ["ColorLabel"]
      323 JUMPIFNOT                        R14 ; [+63]
      324 GETUPVAL                         R35 2
      325 GETTABLEKS                       R34 R35 K20 ["createElement"]
      327 GETUPVAL                         R35 6
      328 DUPTABLE                         R36 K47 [{"tag", "LayoutOrder", "AutomaticSize"}]
      329 LOADK                            R37 K68 ["row align-y-center"]
      330 SETTABLEKS                       R37 R36 K21 ["tag"]
      332 LOADN                            R37 2
      333 SETTABLEKS                       R37 R36 K7 ["LayoutOrder"]
      335 GETIMPORT                        R37 K51 [Enum.AutomaticSize.X]
      337 SETTABLEKS                       R37 R36 K46 ["AutomaticSize"]
      339 DUPTABLE                         R37 K71 [{"Spacer", "ErrorText"}]
      340 GETUPVAL                         R39 2
      341 GETTABLEKS                       R38 R39 K20 ["createElement"]
      343 LOADK                            R39 K33 ["Frame"]
      344 DUPTABLE                         R40 K73 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      345 GETIMPORT                        R41 K29 [UDim2.fromOffset]
      347 LOADN                            R42 8
      348 LOADN                            R43 0
      349 CALL                             R41 2 1
      350 SETTABLEKS                       R41 R40 K22 ["Size"]
      352 LOADN                            R41 1
      353 SETTABLEKS                       R41 R40 K72 ["BackgroundTransparency"]
      355 LOADN                            R41 1
      356 SETTABLEKS                       R41 R40 K7 ["LayoutOrder"]
      358 CALL                             R38 2 1
      359 SETTABLEKS                       R38 R37 K69 ["Spacer"]
      361 GETUPVAL                         R39 2
      362 GETTABLEKS                       R38 R39 K20 ["createElement"]
      364 GETUPVAL                         R39 9
      365 DUPTABLE                         R40 K66 [{"tag", "Text", "LayoutOrder"}]
      366 LOADK                            R41 K74 ["text-body-small content-alert auto-xy"]
      367 SETTABLEKS                       R41 R40 K21 ["tag"]
      369 JUMPIFNOT                        R1 ; [+6]
      370 LOADK                            R43 K75 ["Error"]
      371 MOVE                             R44 R14
      372 NAMECALL                         R41 R1 K3 ["getText"]
      374 CALL                             R41 3 1
      375 JUMP                             ; [+1]
      376 MOVE                             R41 R14
      377 SETTABLEKS                       R41 R40 K65 ["Text"]
      379 LOADN                            R41 2
      380 SETTABLEKS                       R41 R40 K7 ["LayoutOrder"]
      382 CALL                             R38 2 1
      383 SETTABLEKS                       R38 R37 K70 ["ErrorText"]
      385 CALL                             R34 3 1
      386 JUMPIF                           R34 ; [+1]
      387 LOADNIL                          R34
      388 SETTABLEKS                       R34 R33 K53 ["HexErrorMessage"]
      390 CALL                             R30 3 1
      391 SETTABLEKS                       R30 R29 K31 ["ColorLabelContainer"]
      393 CALL                             R26 3 1
      394 GETUPVAL                         R28 2
      395 GETTABLEKS                       R27 R28 K20 ["createElement"]
      397 GETUPVAL                         R28 6
      398 DUPTABLE                         R29 K76 [{"Size", "LayoutOrder", "tag"}]
      399 GETIMPORT                        R30 K77 [UDim2.new]
      401 LOADN                            R31 0
      402 MOVE                             R32 R6
      403 LOADN                            R33 0
      404 JUMPIFNOT                        R10 ; [+2]
      405 LOADN                            R34 54
      406 JUMP                             ; [+1]
      407 LOADN                            R34 38
      408 CALL                             R30 4 1
      409 SETTABLEKS                       R30 R29 K22 ["Size"]
      411 SETTABLEKS                       R5 R29 K7 ["LayoutOrder"]
      413 JUMPIFNOT                        R10 ; [+2]
      414 LOADK                            R30 K78 ["col gap-xxsmall"]
      415 JUMP                             ; [+1]
      416 LOADK                            R30 K79 ["col gap-xsmall"]
      417 SETTABLEKS                       R30 R29 K21 ["tag"]
      419 DUPTABLE                         R30 K82 [{"PopoverRoot", "RequiredErrorText"}]
      420 GETUPVAL                         R32 2
      421 GETTABLEKS                       R31 R32 K20 ["createElement"]
      423 GETUPVAL                         R33 10
      424 GETTABLEKS                       R32 R33 K83 ["Root"]
      426 DUPTABLE                         R33 K85 [{"isOpen"}]
      427 SETTABLEKS                       R7 R33 K84 ["isOpen"]
      429 DUPTABLE                         R34 K88 [{"Anchor", "Content"}]
      430 GETUPVAL                         R36 2
      431 GETTABLEKS                       R35 R36 K20 ["createElement"]
      433 GETUPVAL                         R37 10
      434 GETTABLEKS                       R36 R37 K86 ["Anchor"]
      436 LOADNIL                          R37
      437 DUPTABLE                         R38 K90 [{"ColorSwatchButton"}]
      438 JUMPIFNOT                        R1 ; [+27]
      439 GETUPVAL                         R40 2
      440 GETTABLEKS                       R39 R40 K20 ["createElement"]
      442 GETUPVAL                         R40 11
      443 DUPTABLE                         R41 K93 [{"title", "text", "side"}]
      444 LOADK                            R44 K1 ["General"]
      445 LOADK                            R45 K94 ["ThumbnailSkinTone"]
      446 NAMECALL                         R42 R1 K3 ["getText"]
      448 CALL                             R42 3 1
      449 SETTABLEKS                       R42 R41 K91 ["title"]
      451 LOADK                            R44 K1 ["General"]
      452 LOADK                            R45 K95 ["TooltipThumbnailSkinColorDescription"]
      453 NAMECALL                         R42 R1 K3 ["getText"]
      455 CALL                             R42 3 1
      456 SETTABLEKS                       R42 R41 K55 ["text"]
      458 GETUPVAL                         R43 12
      459 GETTABLEKS                       R42 R43 K96 ["Bottom"]
      461 SETTABLEKS                       R42 R41 K92 ["side"]
      463 MOVE                             R42 R26
      464 CALL                             R39 3 1
      465 JUMP                             ; [+1]
      466 MOVE                             R39 R26
      467 SETTABLEKS                       R39 R38 K89 ["ColorSwatchButton"]
      469 CALL                             R35 3 1
      470 SETTABLEKS                       R35 R34 K86 ["Anchor"]
      472 GETUPVAL                         R36 2
      473 GETTABLEKS                       R35 R36 K20 ["createElement"]
      475 GETUPVAL                         R37 10
      476 GETTABLEKS                       R36 R37 K87 ["Content"]
      478 DUPTABLE                         R37 K100 [{"onPressedOutside", "side", "align", "hasArrow"}]
      479 SETTABLEKS                       R20 R37 K97 ["onPressedOutside"]
      481 DUPTABLE                         R38 K103 [{"position", "offset"}]
      482 GETUPVAL                         R40 12
      483 GETTABLEKS                       R39 R40 K96 ["Bottom"]
      485 SETTABLEKS                       R39 R38 K101 ["position"]
      487 LOADN                            R39 8
      488 SETTABLEKS                       R39 R38 K102 ["offset"]
      490 SETTABLEKS                       R38 R37 K92 ["side"]
      492 GETUPVAL                         R39 13
      493 GETTABLEKS                       R38 R39 K104 ["Start"]
      495 SETTABLEKS                       R38 R37 K98 ["align"]
      497 LOADB                            R38 0
      498 SETTABLEKS                       R38 R37 K99 ["hasArrow"]
      500 MOVE                             R38 R7
      501 JUMPIFNOT                        R38 ; [+109]
      502 GETUPVAL                         R39 2
      503 GETTABLEKS                       R38 R39 K20 ["createElement"]
      505 GETUPVAL                         R39 6
      506 DUPTABLE                         R40 K106 [{"tag", "ClipsDescendants"}]
      507 LOADK                            R41 K107 ["col padding-small gap-small bg-surface-100 radius-small stroke-default auto-xy"]
      508 SETTABLEKS                       R41 R40 K21 ["tag"]
      510 LOADB                            R41 0
      511 SETTABLEKS                       R41 R40 K105 ["ClipsDescendants"]
      513 DUPTABLE                         R41 K110 [{"Picker", "Spacer", "PresetsSection"}]
      514 GETUPVAL                         R43 2
      515 GETTABLEKS                       R42 R43 K20 ["createElement"]
      517 GETUPVAL                         R43 6
      518 DUPTABLE                         R44 K111 [{"Size", "LayoutOrder"}]
      519 GETIMPORT                        R45 K29 [UDim2.fromOffset]
      521 LOADN                            R46 26
      522 LOADN                            R47 150
      523 CALL                             R45 2 1
      524 SETTABLEKS                       R45 R44 K22 ["Size"]
      526 LOADN                            R45 1
      527 SETTABLEKS                       R45 R44 K7 ["LayoutOrder"]
      529 DUPTABLE                         R45 K113 [{"ColorPickerComponent"}]
      530 GETUPVAL                         R47 2
      531 GETTABLEKS                       R46 R47 K20 ["createElement"]
      533 GETUPVAL                         R48 8
      534 GETTABLEKS                       R47 R48 K114 ["ColorPicker"]
      536 DUPTABLE                         R48 K120 [{"key", "initialColor", "availableModes", "initialMode", "onColorChanged"}]
      537 SETTABLEKS                       R16 R48 K115 ["key"]
      539 JUMPIFNOT                        R3 ; [+2]
      540 MOVE                             R49 R3
      541 JUMP                             ; [+4]
      542 DUPTABLE                         R49 K122 [{"H"}]
      543 LOADN                            R50 15
      544 SETTABLEKS                       R50 R49 K121 ["H"]
      546 SETTABLEKS                       R49 R48 K116 ["initialColor"]
      548 NEWTABLE                         R49 0 2
      550 LOADK                            R50 K123 ["RGB"]
      551 LOADK                            R51 K124 ["HSV"]
      552 SETLIST                          R49 R50 2 [1]
      554 SETTABLEKS                       R49 R48 K117 ["availableModes"]
      556 LOADK                            R49 K124 ["HSV"]
      557 SETTABLEKS                       R49 R48 K118 ["initialMode"]
      559 SETTABLEKS                       R21 R48 K119 ["onColorChanged"]
      561 CALL                             R46 2 1
      562 SETTABLEKS                       R46 R45 K112 ["ColorPickerComponent"]
      564 CALL                             R42 3 1
      565 SETTABLEKS                       R42 R41 K108 ["Picker"]
      567 GETUPVAL                         R43 2
      568 GETTABLEKS                       R42 R43 K20 ["createElement"]
      570 GETUPVAL                         R43 6
      571 DUPTABLE                         R44 K111 [{"Size", "LayoutOrder"}]
      572 GETIMPORT                        R45 K29 [UDim2.fromOffset]
      574 LOADN                            R46 26
      575 LOADN                            R47 65
      576 CALL                             R45 2 1
      577 SETTABLEKS                       R45 R44 K22 ["Size"]
      579 LOADN                            R45 2
      580 SETTABLEKS                       R45 R44 K7 ["LayoutOrder"]
      582 CALL                             R42 2 1
      583 SETTABLEKS                       R42 R41 K69 ["Spacer"]
      585 GETUPVAL                         R43 2
      586 GETTABLEKS                       R42 R43 K20 ["createElement"]
      588 GETUPVAL                         R43 6
      589 DUPTABLE                         R44 K126 [{"tag", "layout", "LayoutOrder", "Size"}]
      590 LOADK                            R45 K127 ["align-x-center"]
      591 SETTABLEKS                       R45 R44 K21 ["tag"]
      593 GETUPVAL                         R45 14
      594 SETTABLEKS                       R45 R44 K125 ["layout"]
      596 LOADN                            R45 3
      597 SETTABLEKS                       R45 R44 K7 ["LayoutOrder"]
      599 GETIMPORT                        R45 K29 [UDim2.fromOffset]
      601 LOADN                            R46 26
      602 LOADN                            R47 52
      603 CALL                             R45 2 1
      604 SETTABLEKS                       R45 R44 K22 ["Size"]
      606 MOVE                             R45 R25
      607 CALL                             R42 3 1
      608 SETTABLEKS                       R42 R41 K109 ["PresetsSection"]
      610 CALL                             R38 3 1
      611 CALL                             R35 3 1
      612 SETTABLEKS                       R35 R34 K87 ["Content"]
      614 CALL                             R31 3 1
      615 SETTABLEKS                       R31 R30 K80 ["PopoverRoot"]
      617 JUMPIFNOT                        R10 ; [+21]
      618 JUMPIFNOT                        R1 ; [+20]
      619 GETUPVAL                         R32 2
      620 GETTABLEKS                       R31 R32 K20 ["createElement"]
      622 GETUPVAL                         R32 9
      623 DUPTABLE                         R33 K66 [{"tag", "Text", "LayoutOrder"}]
      624 LOADK                            R34 K128 ["text-body-small content-alert auto-xy padding-top-xsmall"]
      625 SETTABLEKS                       R34 R33 K21 ["tag"]
      627 LOADK                            R36 K75 ["Error"]
      628 LOADK                            R37 K129 ["SkinColorRequired"]
      629 NAMECALL                         R34 R1 K3 ["getText"]
      631 CALL                             R34 3 1
      632 SETTABLEKS                       R34 R33 K65 ["Text"]
      634 LOADN                            R34 2
      635 SETTABLEKS                       R34 R33 K7 ["LayoutOrder"]
      637 CALL                             R31 2 1
      638 JUMPIF                           R31 ; [+1]
      639 LOADNIL                          R31
      640 SETTABLEKS                       R31 R30 K81 ["RequiredErrorText"]
      642 CALL                             R27 3 -1
      643 RETURN                           R27 -1

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
       50 GETTABLEKS                       R14 R15 K18 ["Flags"]
       52 GETTABLEKS                       R13 R14 K20 ["getFFlagToolboxMigrateFoundation"]
       54 CALL                             R12 1 1
       55 GETIMPORT                        R13 K6 [require]
       57 GETTABLEKS                       R16 R0 K17 ["Src"]
       59 GETTABLEKS                       R15 R16 K21 ["Util"]
       61 GETTABLEKS                       R14 R15 K22 ["ColorPickerUtil"]
       63 CALL                             R13 1 1
       64 GETTABLEKS                       R14 R13 K23 ["color3ToHex"]
       66 GETTABLEKS                       R15 R13 K24 ["hexToColor3"]
       68 DUPTABLE                         R16 K29 [{"FillDirection", "SortOrder", "Wraps", "Padding"}]
       69 GETIMPORT                        R17 K32 [Enum.FillDirection.Horizontal]
       71 SETTABLEKS                       R17 R16 K25 ["FillDirection"]
       73 GETIMPORT                        R17 K34 [Enum.SortOrder.LayoutOrder]
       75 SETTABLEKS                       R17 R16 K26 ["SortOrder"]
       77 LOADB                            R17 1
       78 SETTABLEKS                       R17 R16 K27 ["Wraps"]
       80 GETIMPORT                        R17 K37 [UDim.new]
       82 LOADN                            R18 0
       83 LOADN                            R19 4
       84 CALL                             R17 2 1
       85 SETTABLEKS                       R17 R16 K28 ["Padding"]
       87 NEWTABLE                         R17 0 20
       89 GETIMPORT                        R18 K40 [Color3.fromHex]
       91 LOADK                            R19 K41 ["#312C25"]
       92 CALL                             R18 1 1
       93 GETIMPORT                        R19 K40 [Color3.fromHex]
       95 LOADK                            R20 K42 ["#3D2F25"]
       96 CALL                             R19 1 1
       97 GETIMPORT                        R20 K40 [Color3.fromHex]
       99 LOADK                            R21 K43 ["#5A462E"]
      100 CALL                             R20 1 1
      101 GETIMPORT                        R21 K40 [Color3.fromHex]
      103 LOADK                            R22 K44 ["#60392D"]
      104 CALL                             R21 1 1
      105 GETIMPORT                        R22 K40 [Color3.fromHex]
      107 LOADK                            R23 K45 ["#594234"]
      108 CALL                             R22 1 1
      109 GETIMPORT                        R23 K40 [Color3.fromHex]
      111 LOADK                            R24 K46 ["#8F5424"]
      112 CALL                             R23 1 1
      113 GETIMPORT                        R24 K40 [Color3.fromHex]
      115 LOADK                            R25 K47 ["#74573E"]
      116 CALL                             R24 1 1
      117 GETIMPORT                        R25 K40 [Color3.fromHex]
      119 LOADK                            R26 K48 ["#765243"]
      120 CALL                             R25 1 1
      121 GETIMPORT                        R26 K40 [Color3.fromHex]
      123 LOADK                            R27 K49 ["#AE7966"]
      124 CALL                             R26 1 1
      125 GETIMPORT                        R27 K40 [Color3.fromHex]
      127 LOADK                            R28 K50 ["#AE9381"]
      128 CALL                             R27 1 1
      129 GETIMPORT                        R28 K40 [Color3.fromHex]
      131 LOADK                            R29 K51 ["#CC8E69"]
      132 CALL                             R28 1 1
      133 GETIMPORT                        R29 K40 [Color3.fromHex]
      135 LOADK                            R30 K52 ["#D4A784"]
      136 CALL                             R29 1 1
      137 GETIMPORT                        R30 K40 [Color3.fromHex]
      139 LOADK                            R31 K53 ["#D49E8C"]
      140 CALL                             R30 1 1
      141 GETIMPORT                        R31 K40 [Color3.fromHex]
      143 LOADK                            R32 K54 ["#E8BAAA"]
      144 CALL                             R31 1 1
      145 GETIMPORT                        R32 K40 [Color3.fromHex]
      147 LOADK                            R33 K55 ["#E8B995"]
      148 CALL                             R32 1 1
      149 GETIMPORT                        R33 K40 [Color3.fromHex]
      151 LOADK                            R34 K56 ["#EED6B5"]
      152 CALL                             R33 1 1
      153 SETLIST                          R17 R18 16 [1]
      155 GETIMPORT                        R18 K40 [Color3.fromHex]
      157 LOADK                            R19 K57 ["#F8F8F8"]
      158 CALL                             R18 1 1
      159 GETIMPORT                        R19 K40 [Color3.fromHex]
      161 LOADK                            R20 K58 ["#CDCDCD"]
      162 CALL                             R19 1 1
      163 GETIMPORT                        R20 K40 [Color3.fromHex]
      165 LOADK                            R21 K59 ["#A3A2A5"]
      166 CALL                             R20 1 1
      167 GETIMPORT                        R21 K40 [Color3.fromHex]
      169 LOADK                            R22 K60 ["#635F62"]
      170 CALL                             R21 1 -1
      171 SETLIST                          R17 R18 -1 [17]
      173 DUPCLOSURE                       R18 K61 [PROTO_11]
      174 CAPTURE                          VAL R11
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R2
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R17
      180 CAPTURE                          VAL R4
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R5
      184 CAPTURE                          VAL R8
      185 CAPTURE                          VAL R7
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R16
      189 RETURN                           R18 1
