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
       10 JUMPIFNOTEQ                      R2 R3 ; [+74]
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
       33 JUMP                             ; [+48]
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
       69 LOADB                            R4 0
       70 SETTABLEKS                       R4 R3 K9 ["current"]
       72 GETUPVAL                         R3 8
       73 LOADB                            R4 1
       74 CALL                             R3 1 0
       75 GETUPVAL                         R3 4
       76 NAMECALL                         R3 R3 K15 ["GetMouse"]
       78 CALL                             R3 1 1
       79 LOADK                            R4 K17 ["rbxasset://textures/StudioUIEditor/icon_resize2.png"]
       80 SETTABLEKS                       R4 R3 K18 ["Icon"]
       82 GETUPVAL                         R3 0
       83 SETTABLEKS                       R2 R3 K9 ["current"]
       85 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+51]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["onResize"]
        5 JUMPIFNOT                        R1 ; [+47]
        6 GETTABLEKS                       R2 R0 K1 ["X"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["current"]
       11 SUB                              R1 R2 R3
       12 GETUPVAL                         R2 3
       13 JUMPIFNOT                        R2 ; [+21]
       14 GETUPVAL                         R2 4
       15 GETTABLEKS                       R2 R2 K2 ["current"]
       17 JUMPIF                           R2 ; [+17]
       18 JUMPIFEQKN                       R1 K3 [0] ; [+16]
       20 GETUPVAL                         R2 4
       21 LOADB                            R3 1
       22 SETTABLEKS                       R3 R2 K2 ["current"]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K4 ["onResizeStart"]
       27 JUMPIFNOT                        R2 ; [+7]
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K4 ["onResizeStart"]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K5 ["id"]
       34 CALL                             R2 1 0
       35 LOADN                            R3 20
       36 GETUPVAL                         R5 5
       37 GETTABLEKS                       R5 R5 K2 ["current"]
       39 ADD                              R4 R5 R1
       40 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       42 GETIMPORT                        R2 K8 [math.max]
       44 CALL                             R2 2 1
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R3 R3 K0 ["onResize"]
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R4 R4 K5 ["id"]
       51 MOVE                             R5 R2
       52 CALL                             R3 2 0
       53 RETURN                           R0 0

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
       10 LOADN                            R5 -4
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
      175 GETTABLEKS                       R23 R23 K14 ["useRef"]
      177 LOADB                            R24 0
      178 CALL                             R23 1 1
      179 GETUPVAL                         R24 0
      180 GETTABLEKS                       R24 R24 K25 ["useCallback"]
      182 NEWCLOSURE                       R25 P5
      183 CAPTURE                          VAL R22
      184 CAPTURE                          VAL R0
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R17
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R21
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R23
      191 CAPTURE                          VAL R19
      192 NEWTABLE                         R26 0 4
      194 GETTABLEKS                       R27 R0 K30 ["id"]
      196 GETTABLEKS                       R28 R0 K31 ["onDoubleClick"]
      198 MOVE                             R29 R10
      199 MOVE                             R30 R17
      200 SETLIST                          R26 R27 4 [1]
      202 CALL                             R24 2 1
      203 GETUPVAL                         R25 0
      204 GETTABLEKS                       R25 R25 K25 ["useCallback"]
      206 NEWCLOSURE                       R26 P6
      207 CAPTURE                          VAL R18
      208 CAPTURE                          VAL R0
      209 CAPTURE                          VAL R20
      210 CAPTURE                          UPVAL U5
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R21
      213 NEWTABLE                         R27 0 4
      215 MOVE                             R28 R18
      216 GETTABLEKS                       R29 R0 K30 ["id"]
      218 GETTABLEKS                       R30 R0 K32 ["onResize"]
      220 GETTABLEKS                       R31 R0 K33 ["onResizeStart"]
      222 SETLIST                          R27 R28 4 [1]
      224 CALL                             R25 2 1
      225 GETUPVAL                         R26 0
      226 GETTABLEKS                       R26 R26 K25 ["useCallback"]
      228 NEWCLOSURE                       R27 P7
      229 CAPTURE                          VAL R18
      230 CAPTURE                          VAL R19
      231 CAPTURE                          VAL R10
      232 NEWTABLE                         R28 0 2
      234 MOVE                             R29 R18
      235 MOVE                             R30 R10
      236 SETLIST                          R28 R29 2 [1]
      238 CALL                             R26 2 1
      239 JUMPIFNOT                        R17 ; [+20]
      240 GETUPVAL                         R27 6
      241 GETTABLEKS                       R28 R17 K34 ["mouseMoved"]
      243 MOVE                             R29 R25
      244 NEWTABLE                         R30 0 1
      246 MOVE                             R31 R25
      247 SETLIST                          R30 R31 1 [1]
      249 CALL                             R27 3 0
      250 GETUPVAL                         R27 6
      251 GETTABLEKS                       R28 R17 K35 ["mouseUp"]
      253 MOVE                             R29 R26
      254 NEWTABLE                         R30 0 1
      256 MOVE                             R31 R26
      257 SETLIST                          R30 R31 1 [1]
      259 CALL                             R27 3 0
      260 GETUPVAL                         R27 0
      261 GETTABLEKS                       R27 R27 K25 ["useCallback"]
      263 NEWCLOSURE                       R28 P8
      264 CAPTURE                          VAL R10
      265 NEWTABLE                         R29 0 1
      267 MOVE                             R30 R10
      268 SETLIST                          R29 R30 1 [1]
      270 CALL                             R27 2 1
      271 GETUPVAL                         R28 0
      272 GETTABLEKS                       R28 R28 K25 ["useCallback"]
      274 NEWCLOSURE                       R29 P9
      275 CAPTURE                          VAL R18
      276 CAPTURE                          VAL R10
      277 NEWTABLE                         R30 0 2
      279 MOVE                             R31 R10
      280 MOVE                             R32 R18
      281 SETLIST                          R30 R31 2 [1]
      283 CALL                             R28 2 1
      284 GETUPVAL                         R29 0
      285 GETTABLEKS                       R29 R29 K36 ["createElement"]
      287 LOADK                            R30 K37 ["TextButton"]
      288 NEWTABLE                         R31 16 0
      290 SETTABLEKS                       R3 R31 K38 ["Size"]
      292 LOADN                            R32 0
      293 SETTABLEKS                       R32 R31 K39 ["BorderSizePixel"]
      295 SETTABLEKS                       R4 R31 K40 ["LayoutOrder"]
      297 LOADB                            R32 0
      298 SETTABLEKS                       R32 R31 K41 ["AutoButtonColor"]
      300 LOADK                            R32 K24 [""]
      301 SETTABLEKS                       R32 R31 K42 ["Text"]
      303 SETTABLEKS                       R6 R31 K43 ["ref"]
      305 LOADB                            R32 1
      306 SETTABLEKS                       R32 R31 K44 ["ClipsDescendants"]
      308 GETUPVAL                         R32 0
      309 GETTABLEKS                       R32 R32 K45 ["Event"]
      311 GETTABLEKS                       R32 R32 K46 ["Activated"]
      313 SETTABLE                         R14 R31 R32
      314 GETUPVAL                         R32 0
      315 GETTABLEKS                       R32 R32 K45 ["Event"]
      317 GETTABLEKS                       R32 R32 K47 ["MouseEnter"]
      319 SETTABLE                         R15 R31 R32
      320 GETUPVAL                         R32 0
      321 GETTABLEKS                       R32 R32 K45 ["Event"]
      323 GETTABLEKS                       R32 R32 K48 ["MouseLeave"]
      325 SETTABLE                         R16 R31 R32
      326 GETUPVAL                         R32 0
      327 GETTABLEKS                       R32 R32 K49 ["Tag"]
      329 LOADK                            R33 K50 ["SceneAnalysis-DefaultButtonFrame"]
      330 SETTABLE                         R33 R31 R32
      331 DUPTABLE                         R32 K55 [{"Padding", "Label", "SortIcon", "Resizer"}]
      332 GETUPVAL                         R33 0
      333 GETTABLEKS                       R33 R33 K36 ["createElement"]
      335 LOADK                            R34 K56 ["UIPadding"]
      336 DUPTABLE                         R35 K61 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      337 GETIMPORT                        R36 K63 [UDim.new]
      339 LOADN                            R37 0
      340 LOADN                            R38 4
      341 CALL                             R36 2 1
      342 SETTABLEKS                       R36 R35 K57 ["PaddingLeft"]
      344 GETIMPORT                        R36 K63 [UDim.new]
      346 LOADN                            R37 0
      347 LOADN                            R38 10
      348 CALL                             R36 2 1
      349 SETTABLEKS                       R36 R35 K58 ["PaddingRight"]
      351 GETIMPORT                        R36 K63 [UDim.new]
      353 LOADN                            R37 0
      354 LOADN                            R38 2
      355 CALL                             R36 2 1
      356 SETTABLEKS                       R36 R35 K59 ["PaddingTop"]
      358 GETIMPORT                        R36 K63 [UDim.new]
      360 LOADN                            R37 0
      361 LOADN                            R38 2
      362 CALL                             R36 2 1
      363 SETTABLEKS                       R36 R35 K60 ["PaddingBottom"]
      365 CALL                             R33 2 1
      366 SETTABLEKS                       R33 R32 K51 ["Padding"]
      368 GETUPVAL                         R33 0
      369 GETTABLEKS                       R33 R33 K36 ["createElement"]
      371 LOADK                            R34 K64 ["TextLabel"]
      372 NEWTABLE                         R35 8 0
      374 GETIMPORT                        R36 K5 [UDim2.new]
      376 LOADN                            R37 1
      377 LOADN                            R38 -14
      378 LOADN                            R39 1
      379 LOADN                            R40 0
      380 CALL                             R36 4 1
      381 SETTABLEKS                       R36 R35 K38 ["Size"]
      383 LOADN                            R36 1
      384 SETTABLEKS                       R36 R35 K65 ["BackgroundTransparency"]
      386 SETTABLEKS                       R5 R35 K11 ["TextXAlignment"]
      388 GETIMPORT                        R36 K68 [Enum.TextYAlignment.Center]
      390 SETTABLEKS                       R36 R35 K66 ["TextYAlignment"]
      392 GETIMPORT                        R36 K71 [Enum.TextTruncate.AtEnd]
      394 SETTABLEKS                       R36 R35 K69 ["TextTruncate"]
      396 SETTABLEKS                       R12 R35 K42 ["Text"]
      398 GETUPVAL                         R36 0
      399 GETTABLEKS                       R36 R36 K49 ["Tag"]
      401 LOADK                            R37 K72 ["SceneAnalysis-StandardText"]
      402 SETTABLE                         R37 R35 R36
      403 CALL                             R33 2 1
      404 SETTABLEKS                       R33 R32 K52 ["Label"]
      406 GETUPVAL                         R33 0
      407 GETTABLEKS                       R33 R33 K36 ["createElement"]
      409 LOADK                            R34 K73 ["Frame"]
      410 DUPTABLE                         R35 K77 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Visible"]}]
      411 GETIMPORT                        R36 K5 [UDim2.new]
      413 LOADN                            R37 0
      414 LOADN                            R38 14
      415 LOADN                            R39 1
      416 LOADN                            R40 0
      417 CALL                             R36 4 1
      418 SETTABLEKS                       R36 R35 K38 ["Size"]
      420 GETIMPORT                        R36 K5 [UDim2.new]
      422 LOADN                            R37 1
      423 LOADN                            R38 0
      424 LOADN                            R39 0
      425 LOADN                            R40 0
      426 CALL                             R36 4 1
      427 SETTABLEKS                       R36 R35 K74 ["Position"]
      429 GETIMPORT                        R36 K79 [Vector2.new]
      431 LOADN                            R37 1
      432 LOADN                            R38 0
      433 CALL                             R36 2 1
      434 SETTABLEKS                       R36 R35 K75 ["AnchorPoint"]
      436 GETTABLEKS                       R36 R0 K26 ["sortStateObservable"]
      438 GETTABLEKS                       R36 R36 K80 ["getBinding"]
      440 CALL                             R36 0 1
      441 NEWCLOSURE                       R38 P10
      442 CAPTURE                          VAL R1
      443 NAMECALL                         R36 R36 K81 ["map"]
      445 CALL                             R36 2 1
      446 SETTABLEKS                       R36 R35 K76 ["Visible"]
      448 DUPTABLE                         R36 K83 [{"Icon"}]
      449 GETUPVAL                         R37 0
      450 GETTABLEKS                       R37 R37 K36 ["createElement"]
      452 GETUPVAL                         R38 7
      453 DUPTABLE                         R39 K86 [{["name"] = "two-arrows-down-and-up", ["size"]}]
      454 GETUPVAL                         R40 8
      455 GETTABLEKS                       R40 R40 K87 ["Enums"]
      457 GETTABLEKS                       R40 R40 K88 ["IconSize"]
      459 GETTABLEKS                       R40 R40 K89 ["Small"]
      461 SETTABLEKS                       R40 R39 K2 ["size"]
      463 CALL                             R37 2 1
      464 SETTABLEKS                       R37 R36 K82 ["Icon"]
      466 CALL                             R33 3 1
      467 SETTABLEKS                       R33 R32 K53 ["SortIcon"]
      469 GETTABLEKS                       R34 R0 K90 ["hideResizer"]
      471 JUMPIF                           R34 ; [+101]
      472 GETUPVAL                         R33 0
      473 GETTABLEKS                       R33 R33 K36 ["createElement"]
      475 LOADK                            R34 K37 ["TextButton"]
      476 NEWTABLE                         R35 16 0
      478 GETIMPORT                        R36 K5 [UDim2.new]
      480 LOADN                            R37 0
      481 LOADN                            R38 8
      482 LOADN                            R39 1
      483 LOADN                            R40 0
      484 CALL                             R36 4 1
      485 SETTABLEKS                       R36 R35 K38 ["Size"]
      487 GETIMPORT                        R36 K5 [UDim2.new]
      489 LOADN                            R37 1
      490 LOADN                            R38 10
      491 LOADN                            R39 0
      492 LOADN                            R40 0
      493 CALL                             R36 4 1
      494 SETTABLEKS                       R36 R35 K74 ["Position"]
      496 GETIMPORT                        R36 K79 [Vector2.new]
      498 LOADN                            R37 1
      499 LOADN                            R38 0
      500 CALL                             R36 2 1
      501 SETTABLEKS                       R36 R35 K75 ["AnchorPoint"]
      503 LOADN                            R36 1
      504 SETTABLEKS                       R36 R35 K65 ["BackgroundTransparency"]
      506 LOADN                            R36 10
      507 SETTABLEKS                       R36 R35 K91 ["ZIndex"]
      509 LOADK                            R36 K24 [""]
      510 SETTABLEKS                       R36 R35 K42 ["Text"]
      512 GETUPVAL                         R36 0
      513 GETTABLEKS                       R36 R36 K45 ["Event"]
      515 GETTABLEKS                       R36 R36 K92 ["InputBegan"]
      517 SETTABLE                         R24 R35 R36
      518 GETUPVAL                         R36 0
      519 GETTABLEKS                       R36 R36 K45 ["Event"]
      521 GETTABLEKS                       R36 R36 K47 ["MouseEnter"]
      523 SETTABLE                         R27 R35 R36
      524 GETUPVAL                         R36 0
      525 GETTABLEKS                       R36 R36 K45 ["Event"]
      527 GETTABLEKS                       R36 R36 K48 ["MouseLeave"]
      529 SETTABLE                         R28 R35 R36
      530 DUPTABLE                         R36 K94 [{"Line"}]
      531 GETUPVAL                         R37 0
      532 GETTABLEKS                       R37 R37 K36 ["createElement"]
      534 LOADK                            R38 K73 ["Frame"]
      535 NEWTABLE                         R39 8 0
      537 GETIMPORT                        R40 K5 [UDim2.new]
      539 LOADN                            R41 0
      540 LOADN                            R42 1
      541 LOADK                            R43 K95 [0.4]
      542 LOADN                            R44 0
      543 CALL                             R40 4 1
      544 SETTABLEKS                       R40 R39 K38 ["Size"]
      546 GETIMPORT                        R40 K97 [UDim2.fromScale]
      548 LOADK                            R41 K98 [0.5]
      549 LOADK                            R42 K98 [0.5]
      550 CALL                             R40 2 1
      551 SETTABLEKS                       R40 R39 K74 ["Position"]
      553 GETIMPORT                        R40 K79 [Vector2.new]
      555 LOADK                            R41 K98 [0.5]
      556 LOADK                            R42 K98 [0.5]
      557 CALL                             R40 2 1
      558 SETTABLEKS                       R40 R39 K75 ["AnchorPoint"]
      560 LOADN                            R40 0
      561 SETTABLEKS                       R40 R39 K39 ["BorderSizePixel"]
      563 GETUPVAL                         R40 0
      564 GETTABLEKS                       R40 R40 K49 ["Tag"]
      566 LOADK                            R41 K99 ["SceneAnalysis-StrokeDefault"]
      567 SETTABLE                         R41 R39 R40
      568 CALL                             R37 2 1
      569 SETTABLEKS                       R37 R36 K93 ["Line"]
      571 CALL                             R33 3 1
      572 JUMP                             ; [+1]
      573 LOADNIL                          R33
      574 SETTABLEKS                       R33 R32 K54 ["Resizer"]
      576 CALL                             R29 3 -1
      577 RETURN                           R29 -1

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
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K20 ["Bin"]
       72 GETTABLEKS                       R11 R11 K21 ["Common"]
       74 GETTABLEKS                       R11 R11 K22 ["defineLuaFlags"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R11 R10 K23 ["getFFlagSceneAnalysisBugfixesMay2026"]
       79 CALL                             R11 0 1
       80 DUPCLOSURE                       R12 K24 [PROTO_0]
       81 DUPCLOSURE                       R13 K25 [PROTO_12]
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R4
       91 RETURN                           R13 1
