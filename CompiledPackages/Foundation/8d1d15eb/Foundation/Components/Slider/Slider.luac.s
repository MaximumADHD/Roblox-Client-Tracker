PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["range"]
        3 GETTABLEKS                       R3 R3 K1 ["Min"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["range"]
        8 GETTABLEKS                       R4 R4 K2 ["Max"]
       10 FASTCALL3                        MATH_CLAMP R0 R3 R4
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K5 [math.clamp]
       15 CALL                             R1 3 1
       16 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["Hidden"]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 2
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["Dragging"]
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K2 ["Idle"]
       15 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["knobVisibility"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["None"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+5]
        8 GETUPVAL                         R0 2
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["knobVisibility"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K2 ["Always"]
       18 JUMPIFNOTEQ                      R0 R1 ; [+5]
       20 GETUPVAL                         R0 2
       21 LOADB                            R1 1
       22 CALL                             R0 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R0 2
       25 GETUPVAL                         R1 3
       26 JUMPIF                           R1 ; [+22]
       27 LOADB                            R1 1
       28 GETUPVAL                         R2 4
       29 GETUPVAL                         R3 5
       30 GETTABLEKS                       R3 R3 K3 ["Hover"]
       32 JUMPIFEQ                         R2 R3 ; [+16]
       34 LOADB                            R1 1
       35 GETUPVAL                         R2 4
       36 GETUPVAL                         R3 5
       37 GETTABLEKS                       R3 R3 K4 ["Selected"]
       39 JUMPIFEQ                         R2 R3 ; [+9]
       41 GETUPVAL                         R2 4
       42 GETUPVAL                         R3 5
       43 GETTABLEKS                       R3 R3 K5 ["Pressed"]
       45 JUMPIFEQ                         R2 R3 ; [+2]
       47 LOADB                            R1 0 +1
       48 LOADB                            R1 1
       49 CALL                             R0 1 0
       50 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+24]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["current"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K1 ["range"]
       12 CALL                             R1 3 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K2 ["step"]
       16 JUMPIFNOT                        R2 ; [+10]
       17 GETUPVAL                         R2 3
       18 MOVE                             R3 R1
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K2 ["step"]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K1 ["range"]
       25 CALL                             R2 3 -1
       26 RETURN                           R2 -1
       27 RETURN                           R1 1
       28 LOADN                            R1 0
       29 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getValue"]
        3 CALL                             R1 1 1
        4 JUMPIFEQ                         R0 R1 ; [+10]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["onValueChanged"]
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["onValueChanged"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getValue"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 1
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R1 R2 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 LOADB                            R3 1
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["onDragStarted"]
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["onDragStarted"]
       13 CALL                             R2 0 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+128]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["current"]
        7 JUMPIFNOT                        R2 ; [+124]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["step"]
       11 JUMPIFNOT                        R2 ; [+82]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K1 ["step"]
       15 LOADN                            R3 0
       16 JUMPIFNOTLT                      R3 R2 ; [+77]
       18 GETUPVAL                         R2 3
       19 GETUPVAL                         R3 4
       20 GETTABLEKS                       R3 R3 K2 ["Directional"]
       22 JUMPIFNOTEQ                      R2 R3 ; [+61]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K0 ["current"]
       27 SUB                              R2 R1 R3
       28 GETTABLEKS                       R4 R2 K3 ["X"]
       30 FASTCALL1                        MATH_ABS R4 ; [+2]
       31 GETIMPORT                        R3 K6 [math.abs]
       33 CALL                             R3 1 1
       34 GETUPVAL                         R4 5
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K0 ["current"]
       38 GETTABLEKS                       R5 R5 K7 ["AbsoluteSize"]
       40 GETTABLEKS                       R5 R5 K3 ["X"]
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R6 R6 K1 ["step"]
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K8 ["range"]
       48 CALL                             R4 3 1
       49 MULK                             R5 R4 K9 [2]
       50 JUMPIFNOTLT                      R5 R3 ; [+5]
       52 GETUPVAL                         R6 1
       53 SETTABLEKS                       R1 R6 K0 ["current"]
       55 RETURN                           R0 0
       56 DIVK                             R6 R4 K9 [2]
       57 JUMPIFNOTLT                      R3 R6 ; [+2]
       59 RETURN                           R0 0
       60 GETUPVAL                         R6 6
       61 NAMECALL                         R6 R6 K10 ["getValue"]
       63 CALL                             R6 1 1
       64 GETUPVAL                         R7 7
       65 GETTABLEKS                       R8 R2 K3 ["X"]
       67 MOVE                             R9 R6
       68 GETUPVAL                         R10 2
       69 GETTABLEKS                       R10 R10 K1 ["step"]
       71 GETUPVAL                         R11 2
       72 GETTABLEKS                       R11 R11 K8 ["range"]
       74 CALL                             R7 4 1
       75 JUMPIFEQ                         R7 R6 ; [+56]
       77 GETUPVAL                         R8 8
       78 MOVE                             R9 R7
       79 CALL                             R8 1 0
       80 GETUPVAL                         R8 1
       81 SETTABLEKS                       R1 R8 K0 ["current"]
       83 RETURN                           R0 0
       84 GETUPVAL                         R2 9
       85 MOVE                             R3 R1
       86 CALL                             R2 1 1
       87 GETUPVAL                         R3 8
       88 MOVE                             R4 R2
       89 CALL                             R3 1 0
       90 GETUPVAL                         R3 1
       91 SETTABLEKS                       R1 R3 K0 ["current"]
       93 RETURN                           R0 0
       94 GETUPVAL                         R2 0
       95 GETTABLEKS                       R2 R2 K0 ["current"]
       97 GETTABLEKS                       R2 R2 K7 ["AbsoluteSize"]
       99 GETTABLEKS                       R2 R2 K11 ["Magnitude"]
      101 GETUPVAL                         R3 10
      102 MOVE                             R4 R1
      103 GETUPVAL                         R5 1
      104 GETTABLEKS                       R5 R5 K0 ["current"]
      106 MOVE                             R6 R2
      107 CALL                             R3 3 1
      108 GETUPVAL                         R4 1
      109 SETTABLEKS                       R1 R4 K0 ["current"]
      111 GETUPVAL                         R4 3
      112 GETUPVAL                         R5 4
      113 GETTABLEKS                       R5 R5 K2 ["Directional"]
      115 JUMPIFNOTEQ                      R4 R5 ; [+10]
      117 FASTCALL1                        MATH_ABS R3 ; [+3]
      118 MOVE                             R5 R3
      119 GETIMPORT                        R4 K6 [math.abs]
      121 CALL                             R4 1 1
      122 LOADK                            R5 K12 [0.01]
      123 JUMPIFNOTLT                      R5 R4 ; [+2]
      125 RETURN                           R0 0
      126 GETUPVAL                         R4 9
      127 MOVE                             R5 R1
      128 CALL                             R4 1 1
      129 GETUPVAL                         R5 8
      130 MOVE                             R6 R4
      131 CALL                             R5 1 0
      132 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K0 ["current"]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["onDragEnded"]
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K1 ["onDragEnded"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["Pressed"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+3]
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["range"]
        3 GETTABLEKS                       R3 R3 K1 ["Min"]
        5 SUB                              R2 R0 R3
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["range"]
        9 GETTABLEKS                       R4 R4 K2 ["Max"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K0 ["range"]
       14 GETTABLEKS                       R5 R5 K1 ["Min"]
       16 SUB                              R3 R4 R5
       17 DIV                              R1 R2 R3
       18 GETIMPORT                        R2 K5 [Vector2.new]
       20 MOVE                             R3 R1
       21 LOADK                            R4 K6 [0.5]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1

PROTO_12:
        0 GETIMPORT                        R1 K2 [UDim2.fromScale]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K3 ["range"]
        5 GETTABLEKS                       R4 R4 K4 ["Min"]
        7 SUB                              R3 R0 R4
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K3 ["range"]
       11 GETTABLEKS                       R5 R5 K5 ["Max"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K3 ["range"]
       16 GETTABLEKS                       R6 R6 K4 ["Min"]
       18 SUB                              R4 R5 R6
       19 DIV                              R2 R3 R4
       20 LOADN                            R3 1
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["useState"]
        9 GETUPVAL                         R5 4
       10 GETTABLEKS                       R5 R5 K1 ["Initialize"]
       12 CALL                             R4 1 2
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R6 R6 K0 ["useState"]
       16 LOADB                            R7 0
       17 CALL                             R6 1 2
       18 GETUPVAL                         R8 3
       19 GETTABLEKS                       R8 R8 K0 ["useState"]
       21 LOADB                            R9 0
       22 CALL                             R8 1 2
       23 GETUPVAL                         R10 5
       24 GETTABLEKS                       R11 R2 K2 ["value"]
       26 CALL                             R10 1 1
       27 NEWCLOSURE                       R12 P0
       28 CAPTURE                          VAL R2
       29 NAMECALL                         R10 R10 K3 ["map"]
       31 CALL                             R10 2 1
       32 GETUPVAL                         R11 3
       33 GETTABLEKS                       R11 R11 K4 ["useRef"]
       35 LOADNIL                          R12
       36 CALL                             R11 1 1
       37 GETUPVAL                         R12 6
       38 CALL                             R12 0 1
       39 GETUPVAL                         R13 3
       40 GETTABLEKS                       R13 R13 K4 ["useRef"]
       42 LOADNIL                          R14
       43 CALL                             R13 1 1
       44 GETUPVAL                         R14 3
       45 GETTABLEKS                       R14 R14 K5 ["useImperativeHandle"]
       47 MOVE                             R15 R1
       48 NEWCLOSURE                       R16 P1
       49 CAPTURE                          VAL R13
       50 NEWTABLE                         R17 0 0
       52 CALL                             R14 3 0
       53 GETUPVAL                         R14 7
       54 GETTABLEKS                       R15 R13 K6 ["current"]
       56 CALL                             R14 1 1
       57 GETUPVAL                         R15 8
       58 MOVE                             R16 R3
       59 GETTABLEKS                       R17 R2 K7 ["size"]
       61 GETTABLEKS                       R18 R2 K8 ["variant"]
       63 CALL                             R15 3 1
       64 GETUPVAL                         R16 9
       65 GETTABLEKS                       R17 R15 K9 ["knob"]
       67 GETTABLEKS                       R17 R17 K10 ["style"]
       69 GETTABLEKS                       R18 R15 K9 ["knob"]
       71 GETTABLEKS                       R18 R18 K11 ["dragStyle"]
       73 CALL                             R16 2 1
       74 GETUPVAL                         R17 3
       75 GETTABLEKS                       R17 R17 K12 ["useMemo"]
       77 NEWCLOSURE                       R18 P2
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R16
       80 CAPTURE                          VAL R6
       81 NEWTABLE                         R19 0 4
       83 MOVE                             R20 R3
       84 MOVE                             R21 R8
       85 MOVE                             R22 R6
       86 MOVE                             R23 R16
       87 SETLIST                          R19 R20 4 [1]
       89 CALL                             R17 2 1
       90 GETUPVAL                         R18 3
       91 GETTABLEKS                       R18 R18 K13 ["useEffect"]
       93 NEWCLOSURE                       R19 P3
       94 CAPTURE                          VAL R2
       95 CAPTURE                          UPVAL U10
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R4
       99 CAPTURE                          UPVAL U4
      100 NEWTABLE                         R20 0 3
      102 GETTABLEKS                       R21 R2 K14 ["knobVisibility"]
      104 MOVE                             R22 R4
      105 MOVE                             R23 R6
      106 SETLIST                          R20 R21 3 [1]
      108 CALL                             R18 2 0
      109 GETUPVAL                         R18 3
      110 GETTABLEKS                       R18 R18 K15 ["useCallback"]
      112 NEWCLOSURE                       R19 P4
      113 CAPTURE                          VAL R13
      114 CAPTURE                          UPVAL U11
      115 CAPTURE                          VAL R2
      116 CAPTURE                          UPVAL U12
      117 NEWTABLE                         R20 0 3
      119 MOVE                             R21 R13
      120 GETTABLEKS                       R22 R2 K16 ["range"]
      122 GETTABLEKS                       R23 R2 K17 ["step"]
      124 SETLIST                          R20 R21 3 [1]
      126 CALL                             R18 2 1
      127 GETUPVAL                         R19 3
      128 GETTABLEKS                       R19 R19 K15 ["useCallback"]
      130 NEWCLOSURE                       R20 P5
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R2
      133 NEWTABLE                         R21 0 2
      135 MOVE                             R22 R10
      136 GETTABLEKS                       R23 R2 K18 ["onValueChanged"]
      138 SETLIST                          R21 R22 2 [1]
      140 CALL                             R19 2 1
      141 GETUPVAL                         R20 3
      142 GETTABLEKS                       R20 R20 K15 ["useCallback"]
      144 NEWCLOSURE                       R21 P6
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R19
      148 NEWTABLE                         R22 0 3
      150 MOVE                             R23 R18
      151 MOVE                             R24 R14
      152 MOVE                             R25 R19
      153 SETLIST                          R22 R23 3 [1]
      155 CALL                             R20 2 1
      156 GETUPVAL                         R21 3
      157 GETTABLEKS                       R21 R21 K15 ["useCallback"]
      159 NEWCLOSURE                       R22 P7
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R2
      163 NEWTABLE                         R23 0 1
      165 GETTABLEKS                       R24 R2 K19 ["onDragStarted"]
      167 SETLIST                          R23 R24 1 [1]
      169 CALL                             R21 2 1
      170 GETUPVAL                         R22 3
      171 GETTABLEKS                       R22 R22 K15 ["useCallback"]
      173 NEWCLOSURE                       R23 P8
      174 CAPTURE                          VAL R13
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R2
      177 CAPTURE                          VAL R12
      178 CAPTURE                          UPVAL U13
      179 CAPTURE                          UPVAL U14
      180 CAPTURE                          VAL R10
      181 CAPTURE                          UPVAL U15
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R18
      184 CAPTURE                          UPVAL U16
      185 NEWTABLE                         R24 0 6
      187 GETTABLEKS                       R25 R2 K17 ["step"]
      189 GETTABLEKS                       R26 R2 K16 ["range"]
      191 MOVE                             R27 R12
      192 MOVE                             R28 R10
      193 MOVE                             R29 R19
      194 MOVE                             R30 R18
      195 SETLIST                          R24 R25 6 [1]
      197 CALL                             R22 2 1
      198 GETUPVAL                         R23 3
      199 GETTABLEKS                       R23 R23 K15 ["useCallback"]
      201 NEWCLOSURE                       R24 P9
      202 CAPTURE                          VAL R7
      203 CAPTURE                          VAL R11
      204 CAPTURE                          VAL R2
      205 NEWTABLE                         R25 0 1
      207 GETTABLEKS                       R26 R2 K20 ["onDragEnded"]
      209 SETLIST                          R25 R26 1 [1]
      211 CALL                             R23 2 1
      212 GETUPVAL                         R24 3
      213 GETTABLEKS                       R24 R24 K15 ["useCallback"]
      215 NEWCLOSURE                       R25 P10
      216 CAPTURE                          VAL R5
      217 CAPTURE                          UPVAL U4
      218 CAPTURE                          VAL R20
      219 NEWTABLE                         R26 0 1
      221 MOVE                             R27 R20
      222 SETLIST                          R26 R27 1 [1]
      224 CALL                             R24 2 1
      225 GETIMPORT                        R25 K23 [UDim2.fromScale]
      227 LOADN                            R26 1
      228 LOADK                            R27 K24 [0.5]
      229 CALL                             R25 2 1
      230 GETTABLEKS                       R27 R2 K25 ["isContained"]
      232 JUMPIFNOT                        R27 ; [+6]
      233 NEWCLOSURE                       R28 P11
      234 CAPTURE                          VAL R2
      235 NAMECALL                         R26 R10 K3 ["map"]
      237 CALL                             R26 2 1
      238 JUMP                             ; [+5]
      239 GETIMPORT                        R26 K28 [Vector2.new]
      241 LOADK                            R27 K24 [0.5]
      242 LOADK                            R28 K24 [0.5]
      243 CALL                             R26 2 1
      244 GETUPVAL                         R27 3
      245 GETTABLEKS                       R27 R27 K29 ["createElement"]
      247 GETUPVAL                         R28 17
      248 GETUPVAL                         R29 18
      249 MOVE                             R30 R2
      250 DUPTABLE                         R31 K36 [{"Size", "GroupTransparency", "stateLayer", "onStateChanged", "isDisabled", "ref"}]
      251 GETIMPORT                        R32 K37 [UDim2.new]
      253 GETTABLEKS                       R33 R2 K38 ["width"]
      255 GETIMPORT                        R34 K40 [UDim.new]
      257 LOADN                            R35 0
      258 GETTABLEKS                       R36 R15 K41 ["hitbox"]
      260 GETTABLEKS                       R36 R36 K42 ["height"]
      262 CALL                             R34 2 -1
      263 CALL                             R32 -1 1
      264 SETTABLEKS                       R32 R31 K30 ["Size"]
      266 GETTABLEKS                       R33 R2 K34 ["isDisabled"]
      268 JUMPIFNOT                        R33 ; [+4]
      269 GETUPVAL                         R32 19
      270 GETTABLEKS                       R32 R32 K43 ["DISABLED_TRANSPARENCY"]
      272 JUMP                             ; [+1]
      273 LOADNIL                          R32
      274 SETTABLEKS                       R32 R31 K31 ["GroupTransparency"]
      276 DUPTABLE                         R32 K45 [{"affordance"}]
      277 GETUPVAL                         R33 20
      278 GETTABLEKS                       R33 R33 K46 ["None"]
      280 SETTABLEKS                       R33 R32 K44 ["affordance"]
      282 SETTABLEKS                       R32 R31 K32 ["stateLayer"]
      284 SETTABLEKS                       R24 R31 K33 ["onStateChanged"]
      286 GETTABLEKS                       R32 R2 K34 ["isDisabled"]
      288 SETTABLEKS                       R32 R31 K34 ["isDisabled"]
      290 SETTABLEKS                       R13 R31 K35 ["ref"]
      292 CALL                             R29 2 1
      293 DUPTABLE                         R30 K49 [{"DragDetector", "Bar"}]
      294 GETUPVAL                         R31 3
      295 GETTABLEKS                       R31 R31 K29 ["createElement"]
      297 LOADK                            R32 K50 ["UIDragDetector"]
      298 NEWTABLE                         R33 8 0
      300 GETIMPORT                        R34 K54 [Enum.UIDragDetectorDragStyle.Scriptable]
      302 SETTABLEKS                       R34 R33 K55 ["DragStyle"]
      304 GETUPVAL                         R34 3
      305 GETTABLEKS                       R34 R34 K56 ["Event"]
      307 GETTABLEKS                       R34 R34 K57 ["DragStart"]
      309 SETTABLE                         R21 R33 R34
      310 GETUPVAL                         R34 3
      311 GETTABLEKS                       R34 R34 K56 ["Event"]
      313 GETTABLEKS                       R34 R34 K58 ["DragContinue"]
      315 SETTABLE                         R22 R33 R34
      316 GETUPVAL                         R34 3
      317 GETTABLEKS                       R34 R34 K56 ["Event"]
      319 GETTABLEKS                       R34 R34 K59 ["DragEnd"]
      321 SETTABLE                         R23 R33 R34
      322 GETTABLEKS                       R35 R2 K34 ["isDisabled"]
      324 NOT                              R34 R35
      325 SETTABLEKS                       R34 R33 K60 ["Enabled"]
      327 CALL                             R31 2 1
      328 SETTABLEKS                       R31 R30 K47 ["DragDetector"]
      330 GETUPVAL                         R31 3
      331 GETTABLEKS                       R31 R31 K29 ["createElement"]
      333 GETUPVAL                         R32 17
      334 DUPTABLE                         R33 K63 [{"tag", "testId"}]
      335 GETTABLEKS                       R34 R15 K64 ["bar"]
      337 GETTABLEKS                       R34 R34 K61 ["tag"]
      339 SETTABLEKS                       R34 R33 K61 ["tag"]
      341 LOADK                            R35 K65 ["%*--bar"]
      342 GETTABLEKS                       R37 R2 K62 ["testId"]
      344 NAMECALL                         R35 R35 K66 ["format"]
      346 CALL                             R35 2 1
      347 MOVE                             R34 R35
      348 SETTABLEKS                       R34 R33 K62 ["testId"]
      350 DUPTABLE                         R34 K68 [{"Fill"}]
      351 GETUPVAL                         R35 3
      352 GETTABLEKS                       R35 R35 K29 ["createElement"]
      354 GETUPVAL                         R36 17
      355 DUPTABLE                         R37 K69 [{"tag", "Size", "testId"}]
      356 GETTABLEKS                       R38 R15 K70 ["fill"]
      358 GETTABLEKS                       R38 R38 K61 ["tag"]
      360 SETTABLEKS                       R38 R37 K61 ["tag"]
      362 NEWCLOSURE                       R40 P12
      363 CAPTURE                          VAL R2
      364 NAMECALL                         R38 R10 K3 ["map"]
      366 CALL                             R38 2 1
      367 SETTABLEKS                       R38 R37 K30 ["Size"]
      369 LOADK                            R39 K71 ["%*--fill"]
      370 GETTABLEKS                       R41 R2 K62 ["testId"]
      372 NAMECALL                         R39 R39 K66 ["format"]
      374 CALL                             R39 2 1
      375 MOVE                             R38 R39
      376 SETTABLEKS                       R38 R37 K62 ["testId"]
      378 DUPTABLE                         R38 K73 [{"Knob"}]
      379 GETTABLEKS                       R40 R2 K9 ["knob"]
      381 JUMPIFNOT                        R40 ; [+24]
      382 GETUPVAL                         R39 3
      383 GETTABLEKS                       R39 R39 K29 ["createElement"]
      385 GETUPVAL                         R40 17
      386 DUPTABLE                         R41 K78 [{["tag"] = "auto-xy size-0-0", ["AnchorPoint"], ["Position"], ["Visible"], ["testId"]}]
      387 SETTABLEKS                       R26 R41 K75 ["AnchorPoint"]
      389 SETTABLEKS                       R25 R41 K76 ["Position"]
      391 SETTABLEKS                       R8 R41 K77 ["Visible"]
      393 LOADK                            R43 K79 ["%*--custom-knob"]
      394 GETTABLEKS                       R45 R2 K62 ["testId"]
      396 NAMECALL                         R43 R43 K66 ["format"]
      398 CALL                             R43 2 1
      399 MOVE                             R42 R43
      400 SETTABLEKS                       R42 R41 K62 ["testId"]
      402 GETTABLEKS                       R42 R2 K9 ["knob"]
      404 CALL                             R39 3 1
      405 JUMP                             ; [+97]
      406 GETUPVAL                         R40 21
      407 GETTABLEKS                       R40 R40 K80 ["FoundationToggleVisualUpdate"]
      409 JUMPIFNOT                        R40 ; [+54]
      410 GETUPVAL                         R39 3
      411 GETTABLEKS                       R39 R39 K29 ["createElement"]
      413 GETUPVAL                         R40 22
      414 GETTABLEKS                       R40 R40 K81 ["Provider"]
      416 DUPTABLE                         R41 K82 [{"value"}]
      417 GETUPVAL                         R42 23
      418 SETTABLEKS                       R42 R41 K2 ["value"]
      420 DUPTABLE                         R42 K73 [{"Knob"}]
      421 GETUPVAL                         R43 3
      422 GETTABLEKS                       R43 R43 K29 ["createElement"]
      424 GETUPVAL                         R44 24
      425 DUPTABLE                         R45 K85 [{"AnchorPoint", "Position", "size", "style", "stroke", "hasShadow", "testId"}]
      426 SETTABLEKS                       R26 R45 K75 ["AnchorPoint"]
      428 SETTABLEKS                       R25 R45 K76 ["Position"]
      430 GETTABLEKS                       R46 R2 K7 ["size"]
      432 SETTABLEKS                       R46 R45 K7 ["size"]
      434 GETTABLEKS                       R46 R17 K86 ["knobStyle"]
      436 SETTABLEKS                       R46 R45 K10 ["style"]
      438 GETTABLEKS                       R46 R15 K9 ["knob"]
      440 GETTABLEKS                       R46 R46 K83 ["stroke"]
      442 SETTABLEKS                       R46 R45 K83 ["stroke"]
      444 GETTABLEKS                       R46 R15 K9 ["knob"]
      446 GETTABLEKS                       R46 R46 K84 ["hasShadow"]
      448 SETTABLEKS                       R46 R45 K84 ["hasShadow"]
      450 LOADK                            R47 K87 ["%*--knob"]
      451 GETTABLEKS                       R49 R2 K62 ["testId"]
      453 NAMECALL                         R47 R47 K66 ["format"]
      455 CALL                             R47 2 1
      456 MOVE                             R46 R47
      457 SETTABLEKS                       R46 R45 K62 ["testId"]
      459 CALL                             R43 2 1
      460 SETTABLEKS                       R43 R42 K72 ["Knob"]
      462 CALL                             R39 3 1
      463 JUMP                             ; [+39]
      464 GETUPVAL                         R39 3
      465 GETTABLEKS                       R39 R39 K29 ["createElement"]
      467 GETUPVAL                         R40 24
      468 DUPTABLE                         R41 K85 [{"AnchorPoint", "Position", "size", "style", "stroke", "hasShadow", "testId"}]
      469 SETTABLEKS                       R26 R41 K75 ["AnchorPoint"]
      471 SETTABLEKS                       R25 R41 K76 ["Position"]
      473 GETTABLEKS                       R42 R2 K7 ["size"]
      475 SETTABLEKS                       R42 R41 K7 ["size"]
      477 GETTABLEKS                       R42 R17 K86 ["knobStyle"]
      479 SETTABLEKS                       R42 R41 K10 ["style"]
      481 GETTABLEKS                       R42 R15 K9 ["knob"]
      483 GETTABLEKS                       R42 R42 K83 ["stroke"]
      485 SETTABLEKS                       R42 R41 K83 ["stroke"]
      487 GETTABLEKS                       R42 R15 K9 ["knob"]
      489 GETTABLEKS                       R42 R42 K84 ["hasShadow"]
      491 SETTABLEKS                       R42 R41 K84 ["hasShadow"]
      493 LOADK                            R43 K87 ["%*--knob"]
      494 GETTABLEKS                       R45 R2 K62 ["testId"]
      496 NAMECALL                         R43 R43 K66 ["format"]
      498 CALL                             R43 2 1
      499 MOVE                             R42 R43
      500 SETTABLEKS                       R42 R41 K62 ["testId"]
      502 CALL                             R39 2 1
      503 SETTABLEKS                       R39 R38 K72 ["Knob"]
      505 CALL                             R35 3 1
      506 SETTABLEKS                       R35 R34 K67 ["Fill"]
      508 CALL                             R31 3 1
      509 SETTABLEKS                       R31 R30 K48 ["Bar"]
      511 CALL                             R27 3 -1
      512 RETURN                           R27 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Constants"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["Input"]
       25 GETTABLEKS                       R5 R5 K11 ["InputMode"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Components"]
       32 GETTABLEKS                       R6 R6 K13 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Components"]
       39 GETTABLEKS                       R7 R7 K14 ["View"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K9 ["Utility"]
       46 GETTABLEKS                       R8 R8 K15 ["useBindable"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K9 ["Utility"]
       53 GETTABLEKS                       R9 R9 K10 ["Input"]
       55 GETTABLEKS                       R9 R9 K16 ["useLastInputMode"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K9 ["Utility"]
       62 GETTABLEKS                       R10 R10 K17 ["usePointerPosition"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K9 ["Utility"]
       69 GETTABLEKS                       R11 R11 K18 ["withCommonProps"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K9 ["Utility"]
       76 GETTABLEKS                       R12 R12 K19 ["withDefaults"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETIMPORT                        R13 K1 [script]
       83 GETTABLEKS                       R13 R13 K4 ["Parent"]
       85 GETTABLEKS                       R13 R13 K20 ["calculateNextStepValue"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K6 [require]
       90 GETIMPORT                        R14 K1 [script]
       92 GETTABLEKS                       R14 R14 K4 ["Parent"]
       94 GETTABLEKS                       R14 R14 K21 ["calculatePixelsPerStep"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K6 [require]
       99 GETIMPORT                        R15 K1 [script]
      101 GETTABLEKS                       R15 R15 K4 ["Parent"]
      103 GETTABLEKS                       R15 R15 K22 ["calculateSliderPositionDelta"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K6 [require]
      108 GETIMPORT                        R16 K1 [script]
      110 GETTABLEKS                       R16 R16 K4 ["Parent"]
      112 GETTABLEKS                       R16 R16 K23 ["calculateSliderStepValue"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K6 [require]
      117 GETIMPORT                        R17 K1 [script]
      119 GETTABLEKS                       R17 R17 K4 ["Parent"]
      121 GETTABLEKS                       R17 R17 K24 ["calculateSliderValueFromPosition"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K6 [require]
      126 GETTABLEKS                       R18 R0 K25 ["Enums"]
      128 GETTABLEKS                       R18 R18 K26 ["InputSize"]
      130 CALL                             R17 1 1
      131 GETIMPORT                        R18 K6 [require]
      133 GETTABLEKS                       R19 R0 K25 ["Enums"]
      135 GETTABLEKS                       R19 R19 K27 ["Visibility"]
      137 CALL                             R18 1 1
      138 GETIMPORT                        R19 K6 [require]
      140 GETTABLEKS                       R20 R0 K25 ["Enums"]
      142 GETTABLEKS                       R20 R20 K28 ["SliderVariant"]
      144 CALL                             R19 1 1
      145 GETIMPORT                        R20 K6 [require]
      147 GETTABLEKS                       R21 R0 K25 ["Enums"]
      149 GETTABLEKS                       R21 R21 K29 ["ColorMode"]
      151 CALL                             R20 1 1
      152 GETIMPORT                        R21 K6 [require]
      154 GETTABLEKS                       R22 R0 K25 ["Enums"]
      156 GETTABLEKS                       R22 R22 K30 ["ControlState"]
      158 CALL                             R21 1 1
      159 GETIMPORT                        R22 K6 [require]
      161 GETTABLEKS                       R23 R0 K25 ["Enums"]
      163 GETTABLEKS                       R23 R23 K31 ["StateLayerAffordance"]
      165 CALL                             R22 1 1
      166 GETIMPORT                        R23 K6 [require]
      168 GETTABLEKS                       R24 R0 K9 ["Utility"]
      170 GETTABLEKS                       R24 R24 K32 ["Flags"]
      172 CALL                             R23 1 1
      173 GETIMPORT                        R24 K6 [require]
      175 GETTABLEKS                       R25 R0 K12 ["Components"]
      177 GETTABLEKS                       R25 R25 K33 ["Knob"]
      179 CALL                             R24 1 1
      180 GETIMPORT                        R25 K6 [require]
      182 GETTABLEKS                       R26 R0 K34 ["Providers"]
      184 GETTABLEKS                       R26 R26 K35 ["Style"]
      186 GETTABLEKS                       R26 R26 K36 ["PresentationContext"]
      188 CALL                             R25 1 1
      189 GETIMPORT                        R26 K6 [require]
      191 GETTABLEKS                       R27 R0 K12 ["Components"]
      193 GETTABLEKS                       R27 R27 K37 ["Slider"]
      195 GETTABLEKS                       R27 R27 K38 ["useSliderMotionStates"]
      197 CALL                             R26 1 1
      198 GETIMPORT                        R27 K6 [require]
      200 GETTABLEKS                       R28 R0 K12 ["Components"]
      202 GETTABLEKS                       R28 R28 K37 ["Slider"]
      204 GETTABLEKS                       R28 R28 K39 ["useSliderVariants"]
      206 CALL                             R27 1 1
      207 GETIMPORT                        R28 K6 [require]
      209 GETTABLEKS                       R29 R0 K34 ["Providers"]
      211 GETTABLEKS                       R29 R29 K35 ["Style"]
      213 GETTABLEKS                       R29 R29 K40 ["useTokens"]
      215 CALL                             R28 1 1
      216 DUPTABLE                         R29 K51 [{["range"], ["size"], ["width"], ["variant"], ["isDisabled"] = False, ["isContained"] = False, ["knobVisibility"], ["testId"] = "--foundation-slider"}]
      217 GETIMPORT                        R30 K54 [NumberRange.new]
      219 LOADN                            R31 0
      220 LOADN                            R32 1
      221 CALL                             R30 2 1
      222 SETTABLEKS                       R30 R29 K41 ["range"]
      224 GETTABLEKS                       R30 R17 K55 ["Medium"]
      226 SETTABLEKS                       R30 R29 K42 ["size"]
      228 GETIMPORT                        R30 K57 [UDim.new]
      230 LOADN                            R31 1
      231 LOADN                            R32 0
      232 CALL                             R30 2 1
      233 SETTABLEKS                       R30 R29 K43 ["width"]
      235 GETTABLEKS                       R30 R19 K58 ["Standard"]
      237 SETTABLEKS                       R30 R29 K44 ["variant"]
      239 GETTABLEKS                       R30 R18 K59 ["Auto"]
      241 SETTABLEKS                       R30 R29 K48 ["knobVisibility"]
      243 DUPTABLE                         R30 K61 [{"colorMode"}]
      244 GETTABLEKS                       R31 R20 K62 ["Inverse"]
      246 SETTABLEKS                       R31 R30 K60 ["colorMode"]
      248 DUPCLOSURE                       R31 K63 [PROTO_13]
      249 CAPTURE                          VAL R11
      250 CAPTURE                          VAL R29
      251 CAPTURE                          VAL R28
      252 CAPTURE                          VAL R2
      253 CAPTURE                          VAL R21
      254 CAPTURE                          VAL R7
      255 CAPTURE                          VAL R8
      256 CAPTURE                          VAL R9
      257 CAPTURE                          VAL R27
      258 CAPTURE                          VAL R26
      259 CAPTURE                          VAL R18
      260 CAPTURE                          VAL R16
      261 CAPTURE                          VAL R15
      262 CAPTURE                          VAL R4
      263 CAPTURE                          VAL R13
      264 CAPTURE                          VAL R12
      265 CAPTURE                          VAL R14
      266 CAPTURE                          VAL R6
      267 CAPTURE                          VAL R10
      268 CAPTURE                          VAL R3
      269 CAPTURE                          VAL R22
      270 CAPTURE                          VAL R23
      271 CAPTURE                          VAL R25
      272 CAPTURE                          VAL R30
      273 CAPTURE                          VAL R24
      274 GETTABLEKS                       R32 R2 K64 ["forwardRef"]
      276 MOVE                             R33 R31
      277 CALL                             R32 1 -1
      278 RETURN                           R32 -1
