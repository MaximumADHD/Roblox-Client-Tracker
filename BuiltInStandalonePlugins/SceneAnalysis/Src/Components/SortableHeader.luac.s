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
       54 JUMPIFNOT                        R13 ; [+13]
       55 JUMPIFNOT                        R11 ; [+12]
       56 NEWCLOSURE                       R14 P0
       57 CAPTURE                          VAL R11
       58 CAPTURE                          VAL R0
       59 FASTPCALL                        pcall 1 ; [+2]
       60 GETIMPORT                        R13 K23 [pcall]
       62 CALL                             R13 1 2
       63 JUMPIFNOT                        R13 ; [+4]
       64 JUMPIFNOT                        R14 ; [+3]
       65 JUMPIFEQKS                       R14 K24 [""] ; [+2]
       67 MOVE                             R12 R14
       68 GETUPVAL                         R13 0
       69 GETTABLEKS                       R13 R13 K25 ["useCallback"]
       71 NEWCLOSURE                       R14 P1
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R7
       76 NEWTABLE                         R15 0 4
       78 GETTABLEKS                       R16 R0 K26 ["sortStateObservable"]
       80 MOVE                             R17 R8
       81 MOVE                             R18 R7
       82 MOVE                             R19 R1
       83 SETLIST                          R15 R16 4 [1]
       85 CALL                             R13 2 1
       86 GETUPVAL                         R14 2
       87 GETTABLEKS                       R14 R14 K27 ["useEffect"]
       89 GETTABLEKS                       R15 R0 K26 ["sortStateObservable"]
       91 MOVE                             R16 R13
       92 NEWTABLE                         R17 0 1
       94 MOVE                             R18 R13
       95 SETLIST                          R17 R18 1 [1]
       97 CALL                             R14 3 0
       98 GETUPVAL                         R14 2
       99 GETTABLEKS                       R14 R14 K27 ["useEffect"]
      101 MOVE                             R15 R8
      102 MOVE                             R16 R13
      103 NEWTABLE                         R17 0 1
      105 MOVE                             R18 R13
      106 SETLIST                          R17 R18 1 [1]
      108 CALL                             R14 3 0
      109 GETUPVAL                         R14 0
      110 GETTABLEKS                       R14 R14 K25 ["useCallback"]
      112 NEWCLOSURE                       R15 P2
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R1
      115 NEWTABLE                         R16 0 2
      117 MOVE                             R17 R2
      118 MOVE                             R18 R1
      119 SETLIST                          R16 R17 2 [1]
      121 CALL                             R14 2 1
      122 GETUPVAL                         R15 0
      123 GETTABLEKS                       R15 R15 K25 ["useCallback"]
      125 NEWCLOSURE                       R16 P3
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R0
      128 NEWTABLE                         R17 0 2
      130 MOVE                             R18 R9
      131 GETTABLEKS                       R19 R0 K28 ["onHoverChange"]
      133 SETLIST                          R17 R18 2 [1]
      135 CALL                             R15 2 1
      136 GETUPVAL                         R16 0
      137 GETTABLEKS                       R16 R16 K25 ["useCallback"]
      139 NEWCLOSURE                       R17 P4
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R0
      142 NEWTABLE                         R18 0 2
      144 MOVE                             R19 R9
      145 GETTABLEKS                       R20 R0 K28 ["onHoverChange"]
      147 SETLIST                          R18 R19 2 [1]
      149 CALL                             R16 2 1
      150 GETUPVAL                         R17 0
      151 GETTABLEKS                       R17 R17 K29 ["useContext"]
      153 GETUPVAL                         R18 4
      154 CALL                             R17 1 1
      155 GETUPVAL                         R18 0
      156 GETTABLEKS                       R18 R18 K15 ["useState"]
      158 LOADB                            R19 0
      159 CALL                             R18 1 2
      160 GETUPVAL                         R20 0
      161 GETTABLEKS                       R20 R20 K14 ["useRef"]
      163 LOADN                            R21 0
      164 CALL                             R20 1 1
      165 GETUPVAL                         R21 0
      166 GETTABLEKS                       R21 R21 K14 ["useRef"]
      168 LOADN                            R22 0
      169 CALL                             R21 1 1
      170 GETUPVAL                         R22 0
      171 GETTABLEKS                       R22 R22 K14 ["useRef"]
      173 LOADN                            R23 0
      174 CALL                             R22 1 1
      175 GETUPVAL                         R23 0
      176 GETTABLEKS                       R23 R23 K14 ["useRef"]
      178 LOADB                            R24 0
      179 CALL                             R23 1 1
      180 GETUPVAL                         R24 0
      181 GETTABLEKS                       R24 R24 K25 ["useCallback"]
      183 NEWCLOSURE                       R25 P5
      184 CAPTURE                          VAL R22
      185 CAPTURE                          VAL R0
      186 CAPTURE                          VAL R20
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R21
      190 CAPTURE                          VAL R6
      191 CAPTURE                          VAL R23
      192 CAPTURE                          VAL R19
      193 NEWTABLE                         R26 0 4
      195 GETTABLEKS                       R27 R0 K30 ["id"]
      197 GETTABLEKS                       R28 R0 K31 ["onDoubleClick"]
      199 MOVE                             R29 R10
      200 MOVE                             R30 R17
      201 SETLIST                          R26 R27 4 [1]
      203 CALL                             R24 2 1
      204 GETUPVAL                         R25 0
      205 GETTABLEKS                       R25 R25 K25 ["useCallback"]
      207 NEWCLOSURE                       R26 P6
      208 CAPTURE                          VAL R18
      209 CAPTURE                          VAL R0
      210 CAPTURE                          VAL R20
      211 CAPTURE                          UPVAL U5
      212 CAPTURE                          VAL R23
      213 CAPTURE                          VAL R21
      214 NEWTABLE                         R27 0 4
      216 MOVE                             R28 R18
      217 GETTABLEKS                       R29 R0 K30 ["id"]
      219 GETTABLEKS                       R30 R0 K32 ["onResize"]
      221 GETTABLEKS                       R31 R0 K33 ["onResizeStart"]
      223 SETLIST                          R27 R28 4 [1]
      225 CALL                             R25 2 1
      226 GETUPVAL                         R26 0
      227 GETTABLEKS                       R26 R26 K25 ["useCallback"]
      229 NEWCLOSURE                       R27 P7
      230 CAPTURE                          VAL R18
      231 CAPTURE                          VAL R19
      232 CAPTURE                          VAL R10
      233 NEWTABLE                         R28 0 2
      235 MOVE                             R29 R18
      236 MOVE                             R30 R10
      237 SETLIST                          R28 R29 2 [1]
      239 CALL                             R26 2 1
      240 JUMPIFNOT                        R17 ; [+20]
      241 GETUPVAL                         R27 6
      242 GETTABLEKS                       R28 R17 K34 ["mouseMoved"]
      244 MOVE                             R29 R25
      245 NEWTABLE                         R30 0 1
      247 MOVE                             R31 R25
      248 SETLIST                          R30 R31 1 [1]
      250 CALL                             R27 3 0
      251 GETUPVAL                         R27 6
      252 GETTABLEKS                       R28 R17 K35 ["mouseUp"]
      254 MOVE                             R29 R26
      255 NEWTABLE                         R30 0 1
      257 MOVE                             R31 R26
      258 SETLIST                          R30 R31 1 [1]
      260 CALL                             R27 3 0
      261 GETUPVAL                         R27 0
      262 GETTABLEKS                       R27 R27 K25 ["useCallback"]
      264 NEWCLOSURE                       R28 P8
      265 CAPTURE                          VAL R10
      266 NEWTABLE                         R29 0 1
      268 MOVE                             R30 R10
      269 SETLIST                          R29 R30 1 [1]
      271 CALL                             R27 2 1
      272 GETUPVAL                         R28 0
      273 GETTABLEKS                       R28 R28 K25 ["useCallback"]
      275 NEWCLOSURE                       R29 P9
      276 CAPTURE                          VAL R18
      277 CAPTURE                          VAL R10
      278 NEWTABLE                         R30 0 2
      280 MOVE                             R31 R10
      281 MOVE                             R32 R18
      282 SETLIST                          R30 R31 2 [1]
      284 CALL                             R28 2 1
      285 GETUPVAL                         R29 0
      286 GETTABLEKS                       R29 R29 K36 ["createElement"]
      288 LOADK                            R30 K37 ["TextButton"]
      289 NEWTABLE                         R31 16 0
      291 SETTABLEKS                       R3 R31 K38 ["Size"]
      293 LOADN                            R32 0
      294 SETTABLEKS                       R32 R31 K39 ["BorderSizePixel"]
      296 SETTABLEKS                       R4 R31 K40 ["LayoutOrder"]
      298 LOADB                            R32 0
      299 SETTABLEKS                       R32 R31 K41 ["AutoButtonColor"]
      301 LOADK                            R32 K24 [""]
      302 SETTABLEKS                       R32 R31 K42 ["Text"]
      304 SETTABLEKS                       R6 R31 K43 ["ref"]
      306 LOADB                            R32 1
      307 SETTABLEKS                       R32 R31 K44 ["ClipsDescendants"]
      309 GETUPVAL                         R32 0
      310 GETTABLEKS                       R32 R32 K45 ["Event"]
      312 GETTABLEKS                       R32 R32 K46 ["Activated"]
      314 SETTABLE                         R14 R31 R32
      315 GETUPVAL                         R32 0
      316 GETTABLEKS                       R32 R32 K45 ["Event"]
      318 GETTABLEKS                       R32 R32 K47 ["MouseEnter"]
      320 SETTABLE                         R15 R31 R32
      321 GETUPVAL                         R32 0
      322 GETTABLEKS                       R32 R32 K45 ["Event"]
      324 GETTABLEKS                       R32 R32 K48 ["MouseLeave"]
      326 SETTABLE                         R16 R31 R32
      327 GETUPVAL                         R32 0
      328 GETTABLEKS                       R32 R32 K49 ["Tag"]
      330 LOADK                            R33 K50 ["SceneAnalysis-DefaultButtonFrame"]
      331 SETTABLE                         R33 R31 R32
      332 DUPTABLE                         R32 K55 [{"Padding", "Label", "SortIcon", "Resizer"}]
      333 GETUPVAL                         R33 0
      334 GETTABLEKS                       R33 R33 K36 ["createElement"]
      336 LOADK                            R34 K56 ["UIPadding"]
      337 DUPTABLE                         R35 K61 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      338 GETIMPORT                        R36 K63 [UDim.new]
      340 LOADN                            R37 0
      341 LOADN                            R38 4
      342 CALL                             R36 2 1
      343 SETTABLEKS                       R36 R35 K57 ["PaddingLeft"]
      345 GETIMPORT                        R36 K63 [UDim.new]
      347 LOADN                            R37 0
      348 LOADN                            R38 10
      349 CALL                             R36 2 1
      350 SETTABLEKS                       R36 R35 K58 ["PaddingRight"]
      352 GETIMPORT                        R36 K63 [UDim.new]
      354 LOADN                            R37 0
      355 LOADN                            R38 2
      356 CALL                             R36 2 1
      357 SETTABLEKS                       R36 R35 K59 ["PaddingTop"]
      359 GETIMPORT                        R36 K63 [UDim.new]
      361 LOADN                            R37 0
      362 LOADN                            R38 2
      363 CALL                             R36 2 1
      364 SETTABLEKS                       R36 R35 K60 ["PaddingBottom"]
      366 CALL                             R33 2 1
      367 SETTABLEKS                       R33 R32 K51 ["Padding"]
      369 GETUPVAL                         R33 0
      370 GETTABLEKS                       R33 R33 K36 ["createElement"]
      372 LOADK                            R34 K64 ["TextLabel"]
      373 NEWTABLE                         R35 8 0
      375 GETIMPORT                        R36 K5 [UDim2.new]
      377 LOADN                            R37 1
      378 LOADN                            R38 -14
      379 LOADN                            R39 1
      380 LOADN                            R40 0
      381 CALL                             R36 4 1
      382 SETTABLEKS                       R36 R35 K38 ["Size"]
      384 LOADN                            R36 1
      385 SETTABLEKS                       R36 R35 K65 ["BackgroundTransparency"]
      387 SETTABLEKS                       R5 R35 K11 ["TextXAlignment"]
      389 GETIMPORT                        R36 K68 [Enum.TextYAlignment.Center]
      391 SETTABLEKS                       R36 R35 K66 ["TextYAlignment"]
      393 GETIMPORT                        R36 K71 [Enum.TextTruncate.AtEnd]
      395 SETTABLEKS                       R36 R35 K69 ["TextTruncate"]
      397 SETTABLEKS                       R12 R35 K42 ["Text"]
      399 GETUPVAL                         R36 0
      400 GETTABLEKS                       R36 R36 K49 ["Tag"]
      402 LOADK                            R37 K72 ["SceneAnalysis-StandardText"]
      403 SETTABLE                         R37 R35 R36
      404 CALL                             R33 2 1
      405 SETTABLEKS                       R33 R32 K52 ["Label"]
      407 GETUPVAL                         R33 0
      408 GETTABLEKS                       R33 R33 K36 ["createElement"]
      410 LOADK                            R34 K73 ["Frame"]
      411 DUPTABLE                         R35 K77 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Visible"]}]
      412 GETIMPORT                        R36 K5 [UDim2.new]
      414 LOADN                            R37 0
      415 LOADN                            R38 14
      416 LOADN                            R39 1
      417 LOADN                            R40 0
      418 CALL                             R36 4 1
      419 SETTABLEKS                       R36 R35 K38 ["Size"]
      421 GETIMPORT                        R36 K5 [UDim2.new]
      423 LOADN                            R37 1
      424 LOADN                            R38 0
      425 LOADN                            R39 0
      426 LOADN                            R40 0
      427 CALL                             R36 4 1
      428 SETTABLEKS                       R36 R35 K74 ["Position"]
      430 GETIMPORT                        R36 K79 [Vector2.new]
      432 LOADN                            R37 1
      433 LOADN                            R38 0
      434 CALL                             R36 2 1
      435 SETTABLEKS                       R36 R35 K75 ["AnchorPoint"]
      437 GETTABLEKS                       R36 R0 K26 ["sortStateObservable"]
      439 GETTABLEKS                       R36 R36 K80 ["getBinding"]
      441 CALL                             R36 0 1
      442 NEWCLOSURE                       R38 P10
      443 CAPTURE                          VAL R1
      444 NAMECALL                         R36 R36 K81 ["map"]
      446 CALL                             R36 2 1
      447 SETTABLEKS                       R36 R35 K76 ["Visible"]
      449 DUPTABLE                         R36 K83 [{"Icon"}]
      450 GETUPVAL                         R37 0
      451 GETTABLEKS                       R37 R37 K36 ["createElement"]
      453 GETUPVAL                         R38 7
      454 DUPTABLE                         R39 K86 [{["name"] = "two-arrows-down-and-up", ["size"]}]
      455 GETUPVAL                         R40 8
      456 GETTABLEKS                       R40 R40 K87 ["Enums"]
      458 GETTABLEKS                       R40 R40 K88 ["IconSize"]
      460 GETTABLEKS                       R40 R40 K89 ["Small"]
      462 SETTABLEKS                       R40 R39 K2 ["size"]
      464 CALL                             R37 2 1
      465 SETTABLEKS                       R37 R36 K82 ["Icon"]
      467 CALL                             R33 3 1
      468 SETTABLEKS                       R33 R32 K53 ["SortIcon"]
      470 GETTABLEKS                       R34 R0 K90 ["hideResizer"]
      472 JUMPIF                           R34 ; [+101]
      473 GETUPVAL                         R33 0
      474 GETTABLEKS                       R33 R33 K36 ["createElement"]
      476 LOADK                            R34 K37 ["TextButton"]
      477 NEWTABLE                         R35 16 0
      479 GETIMPORT                        R36 K5 [UDim2.new]
      481 LOADN                            R37 0
      482 LOADN                            R38 8
      483 LOADN                            R39 1
      484 LOADN                            R40 0
      485 CALL                             R36 4 1
      486 SETTABLEKS                       R36 R35 K38 ["Size"]
      488 GETIMPORT                        R36 K5 [UDim2.new]
      490 LOADN                            R37 1
      491 LOADN                            R38 10
      492 LOADN                            R39 0
      493 LOADN                            R40 0
      494 CALL                             R36 4 1
      495 SETTABLEKS                       R36 R35 K74 ["Position"]
      497 GETIMPORT                        R36 K79 [Vector2.new]
      499 LOADN                            R37 1
      500 LOADN                            R38 0
      501 CALL                             R36 2 1
      502 SETTABLEKS                       R36 R35 K75 ["AnchorPoint"]
      504 LOADN                            R36 1
      505 SETTABLEKS                       R36 R35 K65 ["BackgroundTransparency"]
      507 LOADN                            R36 10
      508 SETTABLEKS                       R36 R35 K91 ["ZIndex"]
      510 LOADK                            R36 K24 [""]
      511 SETTABLEKS                       R36 R35 K42 ["Text"]
      513 GETUPVAL                         R36 0
      514 GETTABLEKS                       R36 R36 K45 ["Event"]
      516 GETTABLEKS                       R36 R36 K92 ["InputBegan"]
      518 SETTABLE                         R24 R35 R36
      519 GETUPVAL                         R36 0
      520 GETTABLEKS                       R36 R36 K45 ["Event"]
      522 GETTABLEKS                       R36 R36 K47 ["MouseEnter"]
      524 SETTABLE                         R27 R35 R36
      525 GETUPVAL                         R36 0
      526 GETTABLEKS                       R36 R36 K45 ["Event"]
      528 GETTABLEKS                       R36 R36 K48 ["MouseLeave"]
      530 SETTABLE                         R28 R35 R36
      531 DUPTABLE                         R36 K94 [{"Line"}]
      532 GETUPVAL                         R37 0
      533 GETTABLEKS                       R37 R37 K36 ["createElement"]
      535 LOADK                            R38 K73 ["Frame"]
      536 NEWTABLE                         R39 8 0
      538 GETIMPORT                        R40 K5 [UDim2.new]
      540 LOADN                            R41 0
      541 LOADN                            R42 1
      542 LOADK                            R43 K95 [0.4]
      543 LOADN                            R44 0
      544 CALL                             R40 4 1
      545 SETTABLEKS                       R40 R39 K38 ["Size"]
      547 GETIMPORT                        R40 K97 [UDim2.fromScale]
      549 LOADK                            R41 K98 [0.5]
      550 LOADK                            R42 K98 [0.5]
      551 CALL                             R40 2 1
      552 SETTABLEKS                       R40 R39 K74 ["Position"]
      554 GETIMPORT                        R40 K79 [Vector2.new]
      556 LOADK                            R41 K98 [0.5]
      557 LOADK                            R42 K98 [0.5]
      558 CALL                             R40 2 1
      559 SETTABLEKS                       R40 R39 K75 ["AnchorPoint"]
      561 LOADN                            R40 0
      562 SETTABLEKS                       R40 R39 K39 ["BorderSizePixel"]
      564 GETUPVAL                         R40 0
      565 GETTABLEKS                       R40 R40 K49 ["Tag"]
      567 LOADK                            R41 K99 ["SceneAnalysis-StrokeDefault"]
      568 SETTABLE                         R41 R39 R40
      569 CALL                             R37 2 1
      570 SETTABLEKS                       R37 R36 K93 ["Line"]
      572 CALL                             R33 3 1
      573 JUMP                             ; [+1]
      574 LOADNIL                          R33
      575 SETTABLEKS                       R33 R32 K54 ["Resizer"]
      577 CALL                             R29 3 -1
      578 RETURN                           R29 -1

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
