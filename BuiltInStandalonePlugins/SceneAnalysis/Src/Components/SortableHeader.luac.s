PROTO_0:
        0 MOVE                             R3 R2
        1 LOADK                            R4 K0 ["selected"]
        2 JUMPIF                           R0 ; [+1]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADK                            R5 K1 ["SceneAnalysis-Hovered"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R5
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ColumnHeaders"]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["headerKey"]
        5 NAMECALL                         R0 R0 K2 ["getText"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sortStateObservable"]
        3 GETTABLEKS                       R1 R1 K1 ["get"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R1 R1 K2 ["column"]
        8 GETUPVAL                         R2 1
        9 JUMPIFEQ                         R1 R2 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K1 ["get"]
       16 CALL                             R1 0 1
       17 GETUPVAL                         R2 3
       18 MOVE                             R3 R2
       19 LOADK                            R4 K3 ["selected"]
       20 JUMPIF                           R0 ; [+1]
       21 JUMPIFNOT                        R1 ; [+2]
       22 LOADK                            R5 K4 ["SceneAnalysis-Hovered"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R5
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onHoverChange"]
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["onHoverChange"]
       10 LOADB                            R1 1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onHoverChange"]
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["onHoverChange"]
       10 LOADB                            R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R2 R3 ; [+7]
        6 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        8 GETIMPORT                        R3 K5 [Enum.UserInputType.Touch]
       10 JUMPIFNOTEQ                      R2 R3 ; [+70]
       12 GETIMPORT                        R2 K8 [os.clock]
       14 CALL                             R2 0 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K9 ["current"]
       18 SUB                              R3 R2 R4
       19 LOADK                            R4 K10 [0.3]
       20 JUMPIFNOTLT                      R3 R4 ; [+13]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K11 ["onDoubleClick"]
       25 JUMPIFNOT                        R3 ; [+8]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K11 ["onDoubleClick"]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K12 ["id"]
       32 CALL                             R3 1 0
       33 JUMP                             ; [+44]
       34 GETUPVAL                         R3 2
       35 GETUPVAL                         R5 3
       36 JUMPIFNOT                        R5 ; [+7]
       37 GETUPVAL                         R4 3
       38 GETTABLEKS                       R4 R4 K13 ["getMousePosition"]
       40 CALL                             R4 0 1
       41 GETTABLEKS                       R4 R4 K14 ["X"]
       43 JUMPIF                           R4 ; [+6]
       44 GETUPVAL                         R4 4
       45 NAMECALL                         R4 R4 K15 ["GetMouse"]
       47 CALL                             R4 1 1
       48 GETTABLEKS                       R4 R4 K14 ["X"]
       50 SETTABLEKS                       R4 R3 K9 ["current"]
       52 GETUPVAL                         R3 5
       53 GETUPVAL                         R5 6
       54 GETTABLEKS                       R5 R5 K9 ["current"]
       56 JUMPIFNOT                        R5 ; [+8]
       57 GETUPVAL                         R4 6
       58 GETTABLEKS                       R4 R4 K9 ["current"]
       60 GETTABLEKS                       R4 R4 K16 ["AbsoluteSize"]
       62 GETTABLEKS                       R4 R4 K14 ["X"]
       64 JUMPIF                           R4 ; [+1]
       65 LOADN                            R4 0
       66 SETTABLEKS                       R4 R3 K9 ["current"]
       68 GETUPVAL                         R3 7
       69 LOADB                            R4 1
       70 CALL                             R3 1 0
       71 GETUPVAL                         R3 4
       72 NAMECALL                         R3 R3 K15 ["GetMouse"]
       74 CALL                             R3 1 1
       75 LOADK                            R4 K17 ["rbxasset://textures/StudioUIEditor/icon_resize2.png"]
       76 SETTABLEKS                       R4 R3 K18 ["Icon"]
       78 GETUPVAL                         R3 0
       79 SETTABLEKS                       R2 R3 K9 ["current"]
       81 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+28]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["onResize"]
        5 JUMPIFNOT                        R1 ; [+24]
        6 GETTABLEKS                       R2 R0 K1 ["X"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["current"]
       11 SUB                              R1 R2 R3
       12 LOADN                            R3 20
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K2 ["current"]
       16 ADD                              R4 R5 R1
       17 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       19 GETIMPORT                        R2 K5 [math.max]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K0 ["onResize"]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K6 ["id"]
       28 MOVE                             R5 R2
       29 CALL                             R3 2 0
       30 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K0 ["GetMouse"]
        8 CALL                             R0 1 1
        9 LOADK                            R1 K1 [""]
       10 SETTABLEKS                       R1 R0 K2 ["Icon"]
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetMouse"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K1 ["rbxasset://textures/StudioUIEditor/icon_resize2.png"]
        5 SETTABLEKS                       R1 R0 K2 ["Icon"]
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["GetMouse"]
        5 CALL                             R0 1 1
        6 LOADK                            R1 K1 [""]
        7 SETTABLEKS                       R1 R0 K2 ["Icon"]
        9 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["column"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["column"]
        2 GETTABLEKS                       R2 R0 K1 ["onSort"]
        4 GETTABLEKS                       R3 R0 K2 ["size"]
        6 JUMPIF                           R3 ; [+7]
        7 GETIMPORT                        R3 K5 [UDim2.new]
        9 LOADK                            R4 K6 [0.2]
       10 LOADN                            R5 252
       11 LOADN                            R6 1
       12 LOADN                            R7 0
       13 CALL                             R3 4 1
       14 GETTABLEKS                       R5 R0 K8 ["layoutOrder"]
       16 ORK                              R4 R5 K7 [1]
       17 GETTABLEKS                       R5 R0 K9 ["textAlignment"]
       19 JUMPIF                           R5 ; [+2]
       20 GETIMPORT                        R5 K13 [Enum.TextXAlignment.Left]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K14 ["useRef"]
       25 LOADNIL                          R7
       26 CALL                             R6 1 1
       27 GETUPVAL                         R7 1
       28 MOVE                             R8 R6
       29 CALL                             R7 1 1
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K15 ["useState"]
       33 LOADB                            R9 0
       34 CALL                             R8 1 2
       35 GETUPVAL                         R10 3
       36 GETTABLEKS                       R10 R10 K16 ["Plugin"]
       38 NAMECALL                         R10 R10 K17 ["use"]
       40 CALL                             R10 1 1
       41 NAMECALL                         R10 R10 K18 ["get"]
       43 CALL                             R10 1 1
       44 GETUPVAL                         R11 3
       45 GETTABLEKS                       R11 R11 K19 ["Localization"]
       47 NAMECALL                         R11 R11 K17 ["use"]
       49 CALL                             R11 1 1
       50 GETTABLEKS                       R12 R0 K20 ["text"]
       52 GETTABLEKS                       R13 R0 K21 ["headerKey"]
       54 JUMPIFNOT                        R13 ; [+12]
       55 JUMPIFNOT                        R11 ; [+11]
       56 GETIMPORT                        R13 K23 [pcall]
       58 NEWCLOSURE                       R14 P0
       59 CAPTURE                          VAL R11
       60 CAPTURE                          VAL R0
       61 CALL                             R13 1 2
       62 JUMPIFNOT                        R13 ; [+4]
       63 JUMPIFNOT                        R14 ; [+3]
       64 JUMPIFEQKS                       R14 K24 [""] ; [+2]
       66 MOVE                             R12 R14
       67 GETUPVAL                         R13 0
       68 GETTABLEKS                       R13 R13 K25 ["useCallback"]
       70 NEWCLOSURE                       R14 P1
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R7
       75 NEWTABLE                         R15 0 4
       77 GETTABLEKS                       R16 R0 K26 ["sortStateObservable"]
       79 MOVE                             R17 R8
       80 MOVE                             R18 R7
       81 MOVE                             R19 R1
       82 SETLIST                          R15 R16 4 [1]
       84 CALL                             R13 2 1
       85 GETUPVAL                         R14 2
       86 GETTABLEKS                       R14 R14 K27 ["useEffect"]
       88 GETTABLEKS                       R15 R0 K26 ["sortStateObservable"]
       90 MOVE                             R16 R13
       91 NEWTABLE                         R17 0 1
       93 MOVE                             R18 R13
       94 SETLIST                          R17 R18 1 [1]
       96 CALL                             R14 3 0
       97 GETUPVAL                         R14 2
       98 GETTABLEKS                       R14 R14 K27 ["useEffect"]
      100 MOVE                             R15 R8
      101 MOVE                             R16 R13
      102 NEWTABLE                         R17 0 1
      104 MOVE                             R18 R13
      105 SETLIST                          R17 R18 1 [1]
      107 CALL                             R14 3 0
      108 GETUPVAL                         R14 0
      109 GETTABLEKS                       R14 R14 K25 ["useCallback"]
      111 NEWCLOSURE                       R15 P2
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R1
      114 NEWTABLE                         R16 0 2
      116 MOVE                             R17 R2
      117 MOVE                             R18 R1
      118 SETLIST                          R16 R17 2 [1]
      120 CALL                             R14 2 1
      121 GETUPVAL                         R15 0
      122 GETTABLEKS                       R15 R15 K25 ["useCallback"]
      124 NEWCLOSURE                       R16 P3
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R0
      127 NEWTABLE                         R17 0 2
      129 MOVE                             R18 R9
      130 GETTABLEKS                       R19 R0 K28 ["onHoverChange"]
      132 SETLIST                          R17 R18 2 [1]
      134 CALL                             R15 2 1
      135 GETUPVAL                         R16 0
      136 GETTABLEKS                       R16 R16 K25 ["useCallback"]
      138 NEWCLOSURE                       R17 P4
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R0
      141 NEWTABLE                         R18 0 2
      143 MOVE                             R19 R9
      144 GETTABLEKS                       R20 R0 K28 ["onHoverChange"]
      146 SETLIST                          R18 R19 2 [1]
      148 CALL                             R16 2 1
      149 GETUPVAL                         R17 0
      150 GETTABLEKS                       R17 R17 K29 ["useContext"]
      152 GETUPVAL                         R18 4
      153 CALL                             R17 1 1
      154 GETUPVAL                         R18 0
      155 GETTABLEKS                       R18 R18 K15 ["useState"]
      157 LOADB                            R19 0
      158 CALL                             R18 1 2
      159 GETUPVAL                         R20 0
      160 GETTABLEKS                       R20 R20 K14 ["useRef"]
      162 LOADN                            R21 0
      163 CALL                             R20 1 1
      164 GETUPVAL                         R21 0
      165 GETTABLEKS                       R21 R21 K14 ["useRef"]
      167 LOADN                            R22 0
      168 CALL                             R21 1 1
      169 GETUPVAL                         R22 0
      170 GETTABLEKS                       R22 R22 K14 ["useRef"]
      172 LOADN                            R23 0
      173 CALL                             R22 1 1
      174 GETUPVAL                         R23 0
      175 GETTABLEKS                       R23 R23 K25 ["useCallback"]
      177 NEWCLOSURE                       R24 P5
      178 CAPTURE                          VAL R22
      179 CAPTURE                          VAL R0
      180 CAPTURE                          VAL R20
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R10
      183 CAPTURE                          VAL R21
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R19
      186 NEWTABLE                         R25 0 4
      188 GETTABLEKS                       R26 R0 K30 ["id"]
      190 GETTABLEKS                       R27 R0 K31 ["onDoubleClick"]
      192 MOVE                             R28 R10
      193 MOVE                             R29 R17
      194 SETLIST                          R25 R26 4 [1]
      196 CALL                             R23 2 1
      197 GETUPVAL                         R24 0
      198 GETTABLEKS                       R24 R24 K25 ["useCallback"]
      200 NEWCLOSURE                       R25 P6
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R0
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R21
      205 NEWTABLE                         R26 0 3
      207 MOVE                             R27 R18
      208 GETTABLEKS                       R28 R0 K30 ["id"]
      210 GETTABLEKS                       R29 R0 K32 ["onResize"]
      212 SETLIST                          R26 R27 3 [1]
      214 CALL                             R24 2 1
      215 GETUPVAL                         R25 0
      216 GETTABLEKS                       R25 R25 K25 ["useCallback"]
      218 NEWCLOSURE                       R26 P7
      219 CAPTURE                          VAL R18
      220 CAPTURE                          VAL R19
      221 CAPTURE                          VAL R10
      222 NEWTABLE                         R27 0 2
      224 MOVE                             R28 R18
      225 MOVE                             R29 R10
      226 SETLIST                          R27 R28 2 [1]
      228 CALL                             R25 2 1
      229 JUMPIFNOT                        R17 ; [+20]
      230 GETUPVAL                         R26 5
      231 GETTABLEKS                       R27 R17 K33 ["mouseMoved"]
      233 MOVE                             R28 R24
      234 NEWTABLE                         R29 0 1
      236 MOVE                             R30 R24
      237 SETLIST                          R29 R30 1 [1]
      239 CALL                             R26 3 0
      240 GETUPVAL                         R26 5
      241 GETTABLEKS                       R27 R17 K34 ["mouseUp"]
      243 MOVE                             R28 R25
      244 NEWTABLE                         R29 0 1
      246 MOVE                             R30 R25
      247 SETLIST                          R29 R30 1 [1]
      249 CALL                             R26 3 0
      250 GETUPVAL                         R26 0
      251 GETTABLEKS                       R26 R26 K25 ["useCallback"]
      253 NEWCLOSURE                       R27 P8
      254 CAPTURE                          VAL R10
      255 NEWTABLE                         R28 0 1
      257 MOVE                             R29 R10
      258 SETLIST                          R28 R29 1 [1]
      260 CALL                             R26 2 1
      261 GETUPVAL                         R27 0
      262 GETTABLEKS                       R27 R27 K25 ["useCallback"]
      264 NEWCLOSURE                       R28 P9
      265 CAPTURE                          VAL R18
      266 CAPTURE                          VAL R10
      267 NEWTABLE                         R29 0 2
      269 MOVE                             R30 R10
      270 MOVE                             R31 R18
      271 SETLIST                          R29 R30 2 [1]
      273 CALL                             R27 2 1
      274 GETUPVAL                         R28 0
      275 GETTABLEKS                       R28 R28 K35 ["createElement"]
      277 LOADK                            R29 K36 ["TextButton"]
      278 NEWTABLE                         R30 16 0
      280 SETTABLEKS                       R3 R30 K37 ["Size"]
      282 LOADN                            R31 0
      283 SETTABLEKS                       R31 R30 K38 ["BorderSizePixel"]
      285 SETTABLEKS                       R4 R30 K39 ["LayoutOrder"]
      287 LOADB                            R31 0
      288 SETTABLEKS                       R31 R30 K40 ["AutoButtonColor"]
      290 LOADK                            R31 K24 [""]
      291 SETTABLEKS                       R31 R30 K41 ["Text"]
      293 SETTABLEKS                       R6 R30 K42 ["ref"]
      295 LOADB                            R31 1
      296 SETTABLEKS                       R31 R30 K43 ["ClipsDescendants"]
      298 GETUPVAL                         R31 0
      299 GETTABLEKS                       R31 R31 K44 ["Event"]
      301 GETTABLEKS                       R31 R31 K45 ["Activated"]
      303 SETTABLE                         R14 R30 R31
      304 GETUPVAL                         R31 0
      305 GETTABLEKS                       R31 R31 K44 ["Event"]
      307 GETTABLEKS                       R31 R31 K46 ["MouseEnter"]
      309 SETTABLE                         R15 R30 R31
      310 GETUPVAL                         R31 0
      311 GETTABLEKS                       R31 R31 K44 ["Event"]
      313 GETTABLEKS                       R31 R31 K47 ["MouseLeave"]
      315 SETTABLE                         R16 R30 R31
      316 GETUPVAL                         R31 0
      317 GETTABLEKS                       R31 R31 K48 ["Tag"]
      319 LOADK                            R32 K49 ["SceneAnalysis-DefaultButtonFrame"]
      320 SETTABLE                         R32 R30 R31
      321 DUPTABLE                         R31 K54 [{"Padding", "Label", "SortIcon", "Resizer"}]
      322 GETUPVAL                         R32 0
      323 GETTABLEKS                       R32 R32 K35 ["createElement"]
      325 LOADK                            R33 K55 ["UIPadding"]
      326 DUPTABLE                         R34 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      327 GETIMPORT                        R35 K62 [UDim.new]
      329 LOADN                            R36 0
      330 LOADN                            R37 4
      331 CALL                             R35 2 1
      332 SETTABLEKS                       R35 R34 K56 ["PaddingLeft"]
      334 GETIMPORT                        R35 K62 [UDim.new]
      336 LOADN                            R36 0
      337 LOADN                            R37 10
      338 CALL                             R35 2 1
      339 SETTABLEKS                       R35 R34 K57 ["PaddingRight"]
      341 GETIMPORT                        R35 K62 [UDim.new]
      343 LOADN                            R36 0
      344 LOADN                            R37 2
      345 CALL                             R35 2 1
      346 SETTABLEKS                       R35 R34 K58 ["PaddingTop"]
      348 GETIMPORT                        R35 K62 [UDim.new]
      350 LOADN                            R36 0
      351 LOADN                            R37 2
      352 CALL                             R35 2 1
      353 SETTABLEKS                       R35 R34 K59 ["PaddingBottom"]
      355 CALL                             R32 2 1
      356 SETTABLEKS                       R32 R31 K50 ["Padding"]
      358 GETUPVAL                         R32 0
      359 GETTABLEKS                       R32 R32 K35 ["createElement"]
      361 LOADK                            R33 K63 ["TextLabel"]
      362 NEWTABLE                         R34 8 0
      364 GETIMPORT                        R35 K5 [UDim2.new]
      366 LOADN                            R36 1
      367 LOADN                            R37 242
      368 LOADN                            R38 1
      369 LOADN                            R39 0
      370 CALL                             R35 4 1
      371 SETTABLEKS                       R35 R34 K37 ["Size"]
      373 LOADN                            R35 1
      374 SETTABLEKS                       R35 R34 K64 ["BackgroundTransparency"]
      376 SETTABLEKS                       R5 R34 K11 ["TextXAlignment"]
      378 GETIMPORT                        R35 K67 [Enum.TextYAlignment.Center]
      380 SETTABLEKS                       R35 R34 K65 ["TextYAlignment"]
      382 GETIMPORT                        R35 K70 [Enum.TextTruncate.AtEnd]
      384 SETTABLEKS                       R35 R34 K68 ["TextTruncate"]
      386 SETTABLEKS                       R12 R34 K41 ["Text"]
      388 GETUPVAL                         R35 0
      389 GETTABLEKS                       R35 R35 K48 ["Tag"]
      391 LOADK                            R36 K71 ["SceneAnalysis-StandardText"]
      392 SETTABLE                         R36 R34 R35
      393 CALL                             R32 2 1
      394 SETTABLEKS                       R32 R31 K51 ["Label"]
      396 GETUPVAL                         R32 0
      397 GETTABLEKS                       R32 R32 K35 ["createElement"]
      399 LOADK                            R33 K72 ["Frame"]
      400 DUPTABLE                         R34 K76 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency", "Visible"}]
      401 GETIMPORT                        R35 K5 [UDim2.new]
      403 LOADN                            R36 0
      404 LOADN                            R37 14
      405 LOADN                            R38 1
      406 LOADN                            R39 0
      407 CALL                             R35 4 1
      408 SETTABLEKS                       R35 R34 K37 ["Size"]
      410 GETIMPORT                        R35 K5 [UDim2.new]
      412 LOADN                            R36 1
      413 LOADN                            R37 0
      414 LOADN                            R38 0
      415 LOADN                            R39 0
      416 CALL                             R35 4 1
      417 SETTABLEKS                       R35 R34 K73 ["Position"]
      419 GETIMPORT                        R35 K78 [Vector2.new]
      421 LOADN                            R36 1
      422 LOADN                            R37 0
      423 CALL                             R35 2 1
      424 SETTABLEKS                       R35 R34 K74 ["AnchorPoint"]
      426 LOADN                            R35 1
      427 SETTABLEKS                       R35 R34 K64 ["BackgroundTransparency"]
      429 GETTABLEKS                       R35 R0 K26 ["sortStateObservable"]
      431 GETTABLEKS                       R35 R35 K79 ["getBinding"]
      433 CALL                             R35 0 1
      434 NEWCLOSURE                       R37 P10
      435 CAPTURE                          VAL R1
      436 NAMECALL                         R35 R35 K80 ["map"]
      438 CALL                             R35 2 1
      439 SETTABLEKS                       R35 R34 K75 ["Visible"]
      441 DUPTABLE                         R35 K82 [{"Icon"}]
      442 GETUPVAL                         R36 0
      443 GETTABLEKS                       R36 R36 K35 ["createElement"]
      445 GETUPVAL                         R37 6
      446 DUPTABLE                         R38 K84 [{"name", "size"}]
      447 LOADK                            R39 K85 ["two-arrows-down-and-up"]
      448 SETTABLEKS                       R39 R38 K83 ["name"]
      450 GETUPVAL                         R39 7
      451 GETTABLEKS                       R39 R39 K86 ["Enums"]
      453 GETTABLEKS                       R39 R39 K87 ["IconSize"]
      455 GETTABLEKS                       R39 R39 K88 ["Small"]
      457 SETTABLEKS                       R39 R38 K2 ["size"]
      459 CALL                             R36 2 1
      460 SETTABLEKS                       R36 R35 K81 ["Icon"]
      462 CALL                             R32 3 1
      463 SETTABLEKS                       R32 R31 K52 ["SortIcon"]
      465 GETTABLEKS                       R33 R0 K89 ["hideResizer"]
      467 JUMPIF                           R33 ; [+101]
      468 GETUPVAL                         R32 0
      469 GETTABLEKS                       R32 R32 K35 ["createElement"]
      471 LOADK                            R33 K36 ["TextButton"]
      472 NEWTABLE                         R34 16 0
      474 GETIMPORT                        R35 K5 [UDim2.new]
      476 LOADN                            R36 0
      477 LOADN                            R37 8
      478 LOADN                            R38 1
      479 LOADN                            R39 0
      480 CALL                             R35 4 1
      481 SETTABLEKS                       R35 R34 K37 ["Size"]
      483 GETIMPORT                        R35 K5 [UDim2.new]
      485 LOADN                            R36 1
      486 LOADN                            R37 10
      487 LOADN                            R38 0
      488 LOADN                            R39 0
      489 CALL                             R35 4 1
      490 SETTABLEKS                       R35 R34 K73 ["Position"]
      492 GETIMPORT                        R35 K78 [Vector2.new]
      494 LOADN                            R36 1
      495 LOADN                            R37 0
      496 CALL                             R35 2 1
      497 SETTABLEKS                       R35 R34 K74 ["AnchorPoint"]
      499 LOADN                            R35 1
      500 SETTABLEKS                       R35 R34 K64 ["BackgroundTransparency"]
      502 LOADN                            R35 10
      503 SETTABLEKS                       R35 R34 K90 ["ZIndex"]
      505 LOADK                            R35 K24 [""]
      506 SETTABLEKS                       R35 R34 K41 ["Text"]
      508 GETUPVAL                         R35 0
      509 GETTABLEKS                       R35 R35 K44 ["Event"]
      511 GETTABLEKS                       R35 R35 K91 ["InputBegan"]
      513 SETTABLE                         R23 R34 R35
      514 GETUPVAL                         R35 0
      515 GETTABLEKS                       R35 R35 K44 ["Event"]
      517 GETTABLEKS                       R35 R35 K46 ["MouseEnter"]
      519 SETTABLE                         R26 R34 R35
      520 GETUPVAL                         R35 0
      521 GETTABLEKS                       R35 R35 K44 ["Event"]
      523 GETTABLEKS                       R35 R35 K47 ["MouseLeave"]
      525 SETTABLE                         R27 R34 R35
      526 DUPTABLE                         R35 K93 [{"Line"}]
      527 GETUPVAL                         R36 0
      528 GETTABLEKS                       R36 R36 K35 ["createElement"]
      530 LOADK                            R37 K72 ["Frame"]
      531 NEWTABLE                         R38 8 0
      533 GETIMPORT                        R39 K5 [UDim2.new]
      535 LOADN                            R40 0
      536 LOADN                            R41 1
      537 LOADK                            R42 K94 [0.4]
      538 LOADN                            R43 0
      539 CALL                             R39 4 1
      540 SETTABLEKS                       R39 R38 K37 ["Size"]
      542 GETIMPORT                        R39 K96 [UDim2.fromScale]
      544 LOADK                            R40 K97 [0.5]
      545 LOADK                            R41 K97 [0.5]
      546 CALL                             R39 2 1
      547 SETTABLEKS                       R39 R38 K73 ["Position"]
      549 GETIMPORT                        R39 K78 [Vector2.new]
      551 LOADK                            R40 K97 [0.5]
      552 LOADK                            R41 K97 [0.5]
      553 CALL                             R39 2 1
      554 SETTABLEKS                       R39 R38 K74 ["AnchorPoint"]
      556 LOADN                            R39 0
      557 SETTABLEKS                       R39 R38 K38 ["BorderSizePixel"]
      559 GETUPVAL                         R39 0
      560 GETTABLEKS                       R39 R39 K48 ["Tag"]
      562 LOADK                            R40 K98 ["SceneAnalysis-StrokeDefault"]
      563 SETTABLE                         R40 R38 R39
      564 CALL                             R36 2 1
      565 SETTABLEKS                       R36 R35 K92 ["Line"]
      567 CALL                             R32 3 1
      568 JUMP                             ; [+1]
      569 LOADNIL                          R32
      570 SETTABLEKS                       R32 R31 K53 ["Resizer"]
      572 CALL                             R28 3 -1
      573 RETURN                           R28 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K11 ["Icon"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Hooks"]
       38 GETTABLEKS                       R7 R7 K14 ["useImperativeTagger"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Util"]
       47 GETTABLEKS                       R8 R8 K16 ["Observable"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K12 ["Src"]
       54 GETTABLEKS                       R9 R9 K17 ["Contexts"]
       56 GETTABLEKS                       R9 R9 K18 ["MouseContext"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K12 ["Src"]
       63 GETTABLEKS                       R10 R10 K13 ["Hooks"]
       65 GETTABLEKS                       R10 R10 K19 ["useEventConnection"]
       67 CALL                             R9 1 1
       68 DUPCLOSURE                       R10 K20 [PROTO_0]
       69 DUPCLOSURE                       R11 K21 [PROTO_12]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R4
       78 RETURN                           R11 1
