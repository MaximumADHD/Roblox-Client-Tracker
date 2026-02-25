PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Priority"]
        2 GETTABLEKS                       R4 R1 K0 ["Priority"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Value"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K1 ["MaterialIndex"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K1 ["MaterialIndex"]
       10 JUMPIFEQ                         R1 R2 ; [+6]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R1 R2 K1 ["MaterialIndex"]
       15 SETTABLEKS                       R1 R0 K1 ["MaterialIndex"]
       17 GETIMPORT                        R1 K4 [table.sort]
       19 GETTABLEKS                       R2 R0 K5 ["MaterialList"]
       21 DUPCLOSURE                       R3 K6 [PROTO_0]
       22 CALL                             R1 2 0
       23 GETUPVAL                         R1 3
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLE                         R8 R0 R6
        7 JUMPIFNOT                        R8 ; [+12]
        8 GETTABLE                         R9 R0 R6
        9 FASTCALL1                        TYPEOF R9 ; [+2]
       10 GETIMPORT                        R8 K1 [typeof]
       12 CALL                             R8 1 1
       13 FASTCALL1                        TYPEOF R7 ; [+3]
       14 MOVE                             R10 R7
       15 GETIMPORT                        R9 K1 [typeof]
       17 CALL                             R9 1 1
       18 JUMPIFEQ                         R8 R9 ; [+3]
       20 SETTABLE                         R7 R2 R6
       21 JUMP                             ; [+17]
       22 FASTCALL1                        TYPEOF R7 ; [+3]
       23 MOVE                             R9 R7
       24 GETIMPORT                        R8 K1 [typeof]
       26 CALL                             R8 1 1
       27 JUMPIFNOTEQKS                    R8 K2 ["table"] ; [+7]
       29 GETUPVAL                         R8 0
       30 GETTABLE                         R9 R0 R6
       31 MOVE                             R10 R7
       32 CALL                             R8 2 1
       33 SETTABLE                         R8 R2 R6
       34 JUMP                             ; [+4]
       35 GETTABLE                         R8 R0 R6
       36 JUMPIFEQ                         R7 R8 ; [+2]
       38 SETTABLE                         R7 R2 R6
       39 FORGLOOP                         R3 2 ; [-34]
       41 MOVE                             R3 R0
       42 LOADNIL                          R4
       43 LOADNIL                          R5
       44 FORGPREP                         R3
       45 GETTABLE                         R8 R1 R6
       46 JUMPIF                           R8 ; [+2]
       47 LOADB                            R8 0
       48 SETTABLE                         R8 R2 R6
       49 FORGLOOP                         R3 2 ; [-5]
       51 GETIMPORT                        R3 K4 [next]
       53 MOVE                             R4 R2
       54 CALL                             R3 1 1
       55 JUMPIFNOTEQKNIL                  R3 ; [+3]
       57 LOADNIL                          R3
       58 RETURN                           R3 1
       59 RETURN                           R2 1

PROTO_3:
        0 DUPCLOSURE                       R2 K0 [PROTO_2]
        1 CAPTURE                          VAL R2
        2 MOVE                             R3 R2
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 JUMPIF                           R3 ; [+4]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K1 ["None"]
       10 RETURN                           R4 1
       11 MOVE                             R4 R3
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 JUMPIFEQKS                       R7 K2 ["MaterialIndex"] ; [+5]
       17 GETUPVAL                         R10 0
       18 GETTABLEKS                       R9 R10 K3 ["Multiple"]
       20 RETURN                           R9 1
       21 FORGLOOP                         R4 2 ; [-7]
       23 GETIMPORT                        R4 K5 [next]
       25 MOVE                             R5 R3
       26 CALL                             R4 1 1
       27 JUMPIFEQKNIL                     R4 ; [+5]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R4 R5 K2 ["MaterialIndex"]
       32 RETURN                           R4 1
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R4 R5 K1 ["None"]
       36 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Get"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+19]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 GETTABLEKS                       R0 R1 K1 ["AbsoluteSize"]
        9 GETTABLEKS                       R1 R0 K2 ["Y"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K3 ["MinHeight"]
       14 JUMPIFNOTLT                      R1 R2 ; [+5]
       16 GETUPVAL                         R1 2
       17 LOADB                            R2 1
       18 CALL                             R1 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 2
       21 LOADB                            R2 0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R3 3
        6 GETTABLEKS                       R2 R3 K0 ["Value"]
        8 CALL                             R0 2 2
        9 GETUPVAL                         R3 4
       10 GETTABLEKS                       R2 R3 K1 ["None"]
       12 JUMPIFEQ                         R1 R2 ; [+6]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K2 ["OnChanged"]
       17 GETUPVAL                         R3 2
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["Priority"]
        2 GETTABLEKS                       R4 R1 K0 ["Priority"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Set"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 1
        7 GETIMPORT                        R2 K3 [table.sort]
        9 GETTABLEKS                       R3 R1 K4 ["MaterialList"]
       11 DUPCLOSURE                       R4 K5 [PROTO_9]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 3
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 4
       17 GETUPVAL                         R3 1
       18 MOVE                             R4 R1
       19 CALL                             R2 2 1
       20 GETUPVAL                         R4 5
       21 GETTABLEKS                       R3 R4 K6 ["Multiple"]
       23 JUMPIFNOTEQ                      R2 R3 ; [+6]
       25 GETUPVAL                         R4 6
       26 GETTABLEKS                       R3 R4 K7 ["OnChanged"]
       28 MOVE                             R4 R1
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Value"]
        3 CALL                             R1 1 2
        4 GETUPVAL                         R3 1
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R2
       10 NEWTABLE                         R5 0 1
       12 GETTABLEKS                       R6 R0 K0 ["Value"]
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 0
       17 GETTABLEKS                       R3 R0 K1 ["Schema"]
       19 GETTABLEKS                       R4 R3 K2 ["Height"]
       21 GETUPVAL                         R5 3
       22 NAMECALL                         R5 R5 K3 ["use"]
       24 CALL                             R5 1 1
       25 NAMECALL                         R6 R5 K4 ["getRoot"]
       27 CALL                             R6 1 1
       28 GETUPVAL                         R7 0
       29 LOADB                            R8 0
       30 CALL                             R7 1 2
       31 GETUPVAL                         R9 4
       32 NAMECALL                         R9 R9 K3 ["use"]
       34 CALL                             R9 1 1
       35 GETUPVAL                         R10 5
       36 LOADK                            R12 K5 ["MaterialRangesRenderer"]
       37 NAMECALL                         R10 R10 K3 ["use"]
       39 CALL                             R10 2 1
       40 GETUPVAL                         R11 5
       41 LOADK                            R13 K6 ["MaterialRenderer"]
       42 NAMECALL                         R11 R11 K3 ["use"]
       44 CALL                             R11 2 1
       45 GETUPVAL                         R12 6
       46 DUPCLOSURE                       R13 K7 [PROTO_3]
       47 CAPTURE                          UPVAL U7
       48 CALL                             R12 1 1
       49 GETUPVAL                         R13 8
       50 NEWCLOSURE                       R14 P2
       51 CAPTURE                          UPVAL U9
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R11
       55 NEWTABLE                         R15 0 1
       57 MOVE                             R16 R1
       58 SETLIST                          R15 R16 1 [1]
       60 CALL                             R13 2 1
       61 GETUPVAL                         R14 0
       62 LOADB                            R15 0
       63 CALL                             R14 1 2
       64 GETUPVAL                         R16 10
       65 CALL                             R16 0 1
       66 GETUPVAL                         R17 6
       67 NEWCLOSURE                       R18 P3
       68 CAPTURE                          VAL R16
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R15
       71 NEWTABLE                         R19 0 0
       73 CALL                             R17 2 1
       74 GETUPVAL                         R18 0
       75 NEWTABLE                         R19 0 0
       77 CALL                             R18 1 2
       78 GETUPVAL                         R21 11
       79 GETTABLEKS                       R20 R21 K8 ["createElement"]
       81 GETUPVAL                         R21 12
       82 DUPTABLE                         R22 K10 [{"Size"}]
       83 GETIMPORT                        R23 K13 [UDim2.new]
       85 LOADN                            R24 1
       86 LOADN                            R25 0
       87 LOADN                            R26 0
       88 LOADN                            R27 32
       89 CALL                             R23 4 1
       90 SETTABLEKS                       R23 R22 K9 ["Size"]
       92 DUPTABLE                         R23 K16 [{"Button", "Portal"}]
       93 GETUPVAL                         R25 13
       94 CALL                             R25 0 1
       95 JUMPIFNOT                        R25 ; [+49]
       96 GETUPVAL                         R25 11
       97 GETTABLEKS                       R24 R25 K8 ["createElement"]
       99 GETUPVAL                         R26 14
      100 GETTABLEKS                       R25 R26 K14 ["Button"]
      102 DUPTABLE                         R26 K22 [{"text", "onActivated", "isDisabled", "size", "testId"}]
      103 GETUPVAL                         R30 15
      104 GETTABLEKS                       R29 R30 K23 ["ElevationSettings"]
      106 LOADK                            R30 K24 ["Edit"]
      107 NAMECALL                         R27 R9 K25 ["getText"]
      109 CALL                             R27 3 1
      110 SETTABLEKS                       R27 R26 K17 ["text"]
      112 NEWCLOSURE                       R27 P4
      113 CAPTURE                          VAL R8
      114 SETTABLEKS                       R27 R26 K18 ["onActivated"]
      116 GETTABLEKS                       R27 R0 K26 ["Disabled"]
      118 SETTABLEKS                       R27 R26 K19 ["isDisabled"]
      120 GETUPVAL                         R30 14
      121 GETTABLEKS                       R29 R30 K27 ["Enums"]
      123 GETTABLEKS                       R28 R29 K28 ["InputSize"]
      125 GETTABLEKS                       R27 R28 K29 ["Small"]
      127 SETTABLEKS                       R27 R26 K20 ["size"]
      129 LOADK                            R28 K30 ["button-%*"]
      130 GETUPVAL                         R33 15
      131 GETTABLEKS                       R32 R33 K23 ["ElevationSettings"]
      133 LOADK                            R33 K24 ["Edit"]
      134 NAMECALL                         R30 R9 K25 ["getText"]
      136 CALL                             R30 3 1
      137 NAMECALL                         R28 R28 K31 ["format"]
      139 CALL                             R28 2 1
      140 MOVE                             R27 R28
      141 SETTABLEKS                       R27 R26 K21 ["testId"]
      143 CALL                             R24 2 1
      144 JUMP                             ; [+34]
      145 GETUPVAL                         R25 11
      146 GETTABLEKS                       R24 R25 K8 ["createElement"]
      148 GETUPVAL                         R25 16
      149 DUPTABLE                         R26 K35 [{"Disabled", "OnClick", "Size", "Text", "TextXAlignment"}]
      150 GETTABLEKS                       R27 R0 K26 ["Disabled"]
      152 SETTABLEKS                       R27 R26 K26 ["Disabled"]
      154 NEWCLOSURE                       R27 P5
      155 CAPTURE                          VAL R8
      156 SETTABLEKS                       R27 R26 K32 ["OnClick"]
      158 GETIMPORT                        R27 K37 [UDim2.fromScale]
      160 LOADN                            R28 1
      161 LOADN                            R29 1
      162 CALL                             R27 2 1
      163 SETTABLEKS                       R27 R26 K9 ["Size"]
      165 GETUPVAL                         R30 15
      166 GETTABLEKS                       R29 R30 K23 ["ElevationSettings"]
      168 LOADK                            R30 K24 ["Edit"]
      169 NAMECALL                         R27 R9 K25 ["getText"]
      171 CALL                             R27 3 1
      172 SETTABLEKS                       R27 R26 K33 ["Text"]
      174 GETIMPORT                        R27 K40 [Enum.TextXAlignment.Center]
      176 SETTABLEKS                       R27 R26 K34 ["TextXAlignment"]
      178 CALL                             R24 2 1
      179 SETTABLEKS                       R24 R23 K14 ["Button"]
      181 JUMPIFNOT                        R7 ; [+273]
      182 JUMPIFNOT                        R6 ; [+272]
      183 GETUPVAL                         R25 17
      184 GETTABLEKS                       R24 R25 K41 ["createPortal"]
      186 DUPTABLE                         R25 K44 [{"Dismiss", "Image", "Edit"}]
      187 GETUPVAL                         R27 11
      188 GETTABLEKS                       R26 R27 K8 ["createElement"]
      190 LOADK                            R27 K45 ["TextButton"]
      191 NEWTABLE                         R28 8 0
      193 LOADB                            R29 0
      194 SETTABLEKS                       R29 R28 K46 ["AutoButtonColor"]
      196 GETTABLEKS                       R29 R10 K47 ["BackgroundColor"]
      198 SETTABLEKS                       R29 R28 K47 ["BackgroundColor"]
      200 LOADK                            R29 K48 [0.2]
      201 SETTABLEKS                       R29 R28 K49 ["BackgroundTransparency"]
      203 GETIMPORT                        R29 K51 [UDim2.fromOffset]
      205 LOADN                            R30 0
      206 LOADN                            R31 0
      207 CALL                             R29 2 1
      208 SETTABLEKS                       R29 R28 K52 ["Position"]
      210 SETTABLEKS                       R16 R28 K53 ["ref"]
      212 GETIMPORT                        R29 K37 [UDim2.fromScale]
      214 LOADN                            R30 1
      215 LOADN                            R31 1
      216 CALL                             R29 2 1
      217 SETTABLEKS                       R29 R28 K9 ["Size"]
      219 GETUPVAL                         R31 11
      220 GETTABLEKS                       R30 R31 K54 ["Event"]
      222 GETTABLEKS                       R29 R30 K55 ["Activated"]
      224 NEWCLOSURE                       R30 P6
      225 CAPTURE                          VAL R8
      226 CAPTURE                          VAL R12
      227 CAPTURE                          VAL R1
      228 CAPTURE                          VAL R0
      229 CAPTURE                          UPVAL U7
      230 SETTABLE                         R30 R28 R29
      231 GETUPVAL                         R31 11
      232 GETTABLEKS                       R30 R31 K56 ["Change"]
      234 GETTABLEKS                       R29 R30 K57 ["AbsoluteSize"]
      236 SETTABLE                         R17 R28 R29
      237 CALL                             R26 2 1
      238 SETTABLEKS                       R26 R25 K42 ["Dismiss"]
      240 GETUPVAL                         R27 11
      241 GETTABLEKS                       R26 R27 K8 ["createElement"]
      243 LOADK                            R27 K58 ["ImageLabel"]
      244 GETTABLEKS                       R28 R10 K59 ["CloseButton"]
      246 CALL                             R26 2 1
      247 SETTABLEKS                       R26 R25 K43 ["Image"]
      249 GETUPVAL                         R27 11
      250 GETTABLEKS                       R26 R27 K8 ["createElement"]
      252 LOADK                            R27 K45 ["TextButton"]
      253 NEWTABLE                         R28 8 0
      255 JUMPIFNOT                        R14 ; [+2]
      256 LOADNIL                          R29
      257 JUMP                             ; [+2]
      258 GETIMPORT                        R29 K62 [Enum.AutomaticSize.Y]
      260 SETTABLEKS                       R29 R28 K60 ["AutomaticSize"]
      262 LOADB                            R29 0
      263 SETTABLEKS                       R29 R28 K46 ["AutoButtonColor"]
      265 GETTABLEKS                       R30 R10 K63 ["Dialog"]
      267 GETTABLEKS                       R29 R30 K64 ["AnchorPoint"]
      269 SETTABLEKS                       R29 R28 K64 ["AnchorPoint"]
      271 GETTABLEKS                       R30 R10 K63 ["Dialog"]
      273 GETTABLEKS                       R29 R30 K52 ["Position"]
      275 SETTABLEKS                       R29 R28 K52 ["Position"]
      277 JUMPIFNOT                        R14 ; [+5]
      278 GETTABLEKS                       R30 R10 K63 ["Dialog"]
      280 GETTABLEKS                       R29 R30 K65 ["FillSize"]
      282 JUMP                             ; [+4]
      283 GETTABLEKS                       R30 R10 K63 ["Dialog"]
      285 GETTABLEKS                       R29 R30 K9 ["Size"]
      287 SETTABLEKS                       R29 R28 K9 ["Size"]
      289 GETUPVAL                         R31 11
      290 GETTABLEKS                       R30 R31 K56 ["Change"]
      292 GETTABLEKS                       R29 R30 K57 ["AbsoluteSize"]
      294 SETTABLE                         R17 R28 R29
      295 DUPTABLE                         R29 K67 [{"Contents"}]
      296 GETUPVAL                         R31 11
      297 GETTABLEKS                       R30 R31 K8 ["createElement"]
      299 GETUPVAL                         R31 12
      300 DUPTABLE                         R32 K72 [{"AutomaticSize", "BackgroundColor", "HorizontalAlignment", "Layout", "Padding", "Size", "Spacing"}]
      301 JUMPIFNOT                        R14 ; [+2]
      302 LOADNIL                          R33
      303 JUMP                             ; [+2]
      304 GETIMPORT                        R33 K62 [Enum.AutomaticSize.Y]
      306 SETTABLEKS                       R33 R32 K60 ["AutomaticSize"]
      308 GETTABLEKS                       R34 R10 K63 ["Dialog"]
      310 GETTABLEKS                       R33 R34 K47 ["BackgroundColor"]
      312 SETTABLEKS                       R33 R32 K47 ["BackgroundColor"]
      314 GETIMPORT                        R33 K74 [Enum.HorizontalAlignment.Left]
      316 SETTABLEKS                       R33 R32 K68 ["HorizontalAlignment"]
      318 GETIMPORT                        R33 K77 [Enum.FillDirection.Vertical]
      320 SETTABLEKS                       R33 R32 K69 ["Layout"]
      322 GETTABLEKS                       R33 R10 K70 ["Padding"]
      324 SETTABLEKS                       R33 R32 K70 ["Padding"]
      326 JUMPIFNOT                        R14 ; [+6]
      327 GETIMPORT                        R33 K37 [UDim2.fromScale]
      329 LOADN                            R34 1
      330 LOADN                            R35 1
      331 CALL                             R33 2 1
      332 JUMP                             ; [+5]
      333 GETIMPORT                        R33 K37 [UDim2.fromScale]
      335 LOADN                            R34 1
      336 LOADN                            R35 0
      337 CALL                             R33 2 1
      338 SETTABLEKS                       R33 R32 K9 ["Size"]
      340 GETTABLEKS                       R33 R10 K70 ["Padding"]
      342 SETTABLEKS                       R33 R32 K71 ["Spacing"]
      344 DUPTABLE                         R33 K79 [{"Form", "Button"}]
      345 GETUPVAL                         R35 11
      346 GETTABLEKS                       R34 R35 K8 ["createElement"]
      348 GETUPVAL                         R35 18
      349 DUPTABLE                         R36 K89 [{"Expansion", "ExpandByDefault", "Items", "LabelHeight", "LayoutOrder", "OnChange", "OnExpansionChange", "Renderers", "Size", "UseScrollingFrame"}]
      350 SETTABLEKS                       R18 R36 K80 ["Expansion"]
      352 LOADB                            R37 1
      353 SETTABLEKS                       R37 R36 K81 ["ExpandByDefault"]
      355 SETTABLEKS                       R13 R36 K82 ["Items"]
      357 LOADN                            R37 20
      358 SETTABLEKS                       R37 R36 K83 ["LabelHeight"]
      360 LOADN                            R37 1
      361 SETTABLEKS                       R37 R36 K84 ["LayoutOrder"]
      363 NEWCLOSURE                       R37 P7
      364 CAPTURE                          UPVAL U9
      365 CAPTURE                          VAL R1
      366 CAPTURE                          VAL R4
      367 CAPTURE                          VAL R2
      368 CAPTURE                          VAL R12
      369 CAPTURE                          UPVAL U7
      370 CAPTURE                          VAL R0
      371 SETTABLEKS                       R37 R36 K85 ["OnChange"]
      373 SETTABLEKS                       R19 R36 K86 ["OnExpansionChange"]
      375 DUPTABLE                         R37 K93 [{"Elevation", "Material", "Slope"}]
      376 GETUPVAL                         R38 19
      377 SETTABLEKS                       R38 R37 K90 ["Elevation"]
      379 GETUPVAL                         R38 20
      380 SETTABLEKS                       R38 R37 K91 ["Material"]
      382 GETUPVAL                         R38 21
      383 SETTABLEKS                       R38 R37 K92 ["Slope"]
      385 SETTABLEKS                       R37 R36 K87 ["Renderers"]
      387 JUMPIFNOT                        R14 ; [+16]
      388 GETIMPORT                        R37 K13 [UDim2.new]
      390 LOADN                            R38 1
      391 LOADN                            R39 0
      392 LOADN                            R40 1
      393 GETTABLEKS                       R45 R10 K94 ["Reset"]
      395 GETTABLEKS                       R44 R45 K9 ["Size"]
      397 GETTABLEKS                       R43 R44 K61 ["Y"]
      399 GETTABLEKS                       R42 R43 K95 ["Offset"]
      401 MINUS                            R41 R42
      402 CALL                             R37 4 1
      403 JUMP                             ; [+5]
      404 GETIMPORT                        R37 K37 [UDim2.fromScale]
      406 LOADN                            R38 1
      407 LOADN                            R39 0
      408 CALL                             R37 2 1
      409 SETTABLEKS                       R37 R36 K9 ["Size"]
      411 SETTABLEKS                       R14 R36 K88 ["UseScrollingFrame"]
      413 CALL                             R34 2 1
      414 SETTABLEKS                       R34 R33 K78 ["Form"]
      416 GETUPVAL                         R35 11
      417 GETTABLEKS                       R34 R35 K8 ["createElement"]
      419 GETUPVAL                         R35 16
      420 DUPTABLE                         R36 K97 [{"LayoutOrder", "LeftIcon", "OnClick", "Size", "Text"}]
      421 LOADN                            R37 2
      422 SETTABLEKS                       R37 R36 K84 ["LayoutOrder"]
      424 GETTABLEKS                       R38 R10 K94 ["Reset"]
      426 GETTABLEKS                       R37 R38 K98 ["Icon"]
      428 SETTABLEKS                       R37 R36 K96 ["LeftIcon"]
      430 GETTABLEKS                       R37 R3 K99 ["OnReset"]
      432 SETTABLEKS                       R37 R36 K32 ["OnClick"]
      434 GETTABLEKS                       R38 R10 K94 ["Reset"]
      436 GETTABLEKS                       R37 R38 K9 ["Size"]
      438 SETTABLEKS                       R37 R36 K9 ["Size"]
      440 LOADK                            R37 K94 ["Reset"]
      441 SETTABLEKS                       R37 R36 K33 ["Text"]
      443 CALL                             R34 2 1
      444 SETTABLEKS                       R34 R33 K14 ["Button"]
      446 CALL                             R30 3 1
      447 SETTABLEKS                       R30 R29 K66 ["Contents"]
      449 CALL                             R26 3 1
      450 SETTABLEKS                       R26 R25 K24 ["Edit"]
      452 MOVE                             R26 R6
      453 CALL                             R24 2 1
      454 JUMP                             ; [+1]
      455 LOADNIL                          R24
      456 SETTABLEKS                       R24 R23 K15 ["Portal"]
      458 CALL                             R20 3 -1
      459 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["ReactRoblox"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R6 R2 K11 ["ContextServices"]
       37 GETTABLEKS                       R5 R6 K12 ["Localization"]
       39 GETTABLEKS                       R7 R2 K11 ["ContextServices"]
       41 GETTABLEKS                       R6 R7 K13 ["Stylizer"]
       43 GETTABLEKS                       R8 R2 K14 ["Util"]
       45 GETTABLEKS                       R7 R8 K15 ["deepCopy"]
       47 GETTABLEKS                       R8 R3 K16 ["useCallback"]
       49 GETTABLEKS                       R9 R3 K17 ["useEffect"]
       51 GETTABLEKS                       R10 R3 K18 ["useMemo"]
       53 GETTABLEKS                       R11 R3 K19 ["useRef"]
       55 GETTABLEKS                       R12 R3 K20 ["useState"]
       57 GETTABLEKS                       R14 R2 K21 ["UI"]
       59 GETTABLEKS                       R13 R14 K22 ["Form"]
       61 GETTABLEKS                       R15 R2 K21 ["UI"]
       63 GETTABLEKS                       R14 R15 K23 ["IconButton"]
       65 GETTABLEKS                       R16 R2 K21 ["UI"]
       67 GETTABLEKS                       R15 R16 K24 ["Pane"]
       69 GETIMPORT                        R16 K5 [require]
       71 GETTABLEKS                       R20 R0 K25 ["Src"]
       73 GETTABLEKS                       R19 R20 K26 ["Components"]
       75 GETTABLEKS                       R18 R19 K27 ["Renderers"]
       77 GETTABLEKS                       R17 R18 K28 ["Material"]
       79 CALL                             R16 1 1
       80 GETIMPORT                        R17 K5 [require]
       82 GETIMPORT                        R19 K1 [script]
       84 GETTABLEKS                       R18 R19 K29 ["Elevation"]
       86 CALL                             R17 1 1
       87 GETIMPORT                        R18 K5 [require]
       89 GETIMPORT                        R20 K1 [script]
       91 GETTABLEKS                       R19 R20 K30 ["Slope"]
       93 CALL                             R18 1 1
       94 GETIMPORT                        R19 K5 [require]
       96 GETTABLEKS                       R22 R0 K25 ["Src"]
       98 GETTABLEKS                       R21 R22 K31 ["Controllers"]
      100 GETTABLEKS                       R20 R21 K32 ["PluginController"]
      102 CALL                             R19 1 1
      103 GETIMPORT                        R20 K5 [require]
      105 GETTABLEKS                       R23 R0 K25 ["Src"]
      107 GETTABLEKS                       R22 R23 K14 ["Util"]
      109 GETTABLEKS                       R21 R22 K33 ["MaterialPresetSettingsHelper"]
      111 CALL                             R20 1 1
      112 GETIMPORT                        R21 K5 [require]
      114 GETTABLEKS                       R23 R0 K25 ["Src"]
      116 GETTABLEKS                       R22 R23 K34 ["Types"]
      118 CALL                             R21 1 1
      119 GETTABLEKS                       R22 R21 K35 ["Category"]
      121 GETIMPORT                        R23 K5 [require]
      123 GETTABLEKS                       R26 R0 K25 ["Src"]
      125 GETTABLEKS                       R25 R26 K36 ["Resources"]
      127 GETTABLEKS                       R24 R25 K37 ["Theme"]
      129 CALL                             R23 1 1
      130 GETIMPORT                        R24 K5 [require]
      132 GETTABLEKS                       R27 R0 K25 ["Src"]
      134 GETTABLEKS                       R26 R27 K38 ["Flags"]
      136 GETTABLEKS                       R25 R26 K39 ["getFFlagTerrainEditorMigrateFoundationFonts"]
      138 CALL                             R24 1 1
      139 DUPTABLE                         R25 K43 [{"MaterialIndex", "Multiple", "None"}]
      140 LOADK                            R26 K40 ["MaterialIndex"]
      141 SETTABLEKS                       R26 R25 K40 ["MaterialIndex"]
      143 LOADK                            R26 K41 ["Multiple"]
      144 SETTABLEKS                       R26 R25 K41 ["Multiple"]
      146 LOADK                            R26 K42 ["None"]
      147 SETTABLEKS                       R26 R25 K42 ["None"]
      149 DUPCLOSURE                       R26 K44 [PROTO_11]
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R25
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R24
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R22
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R13
      169 CAPTURE                          VAL R17
      170 CAPTURE                          VAL R16
      171 CAPTURE                          VAL R18
      172 RETURN                           R26 1
