PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["Hidden"]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 2
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K1 ["Dragging"]
       11 RETURN                           R0 1
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R0 R1 K2 ["Idle"]
       15 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["knobVisibility"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["None"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+5]
        8 GETUPVAL                         R0 2
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K0 ["knobVisibility"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K2 ["Always"]
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
       29 GETUPVAL                         R4 5
       30 GETTABLEKS                       R3 R4 K3 ["Hover"]
       32 JUMPIFEQ                         R2 R3 ; [+16]
       34 LOADB                            R1 1
       35 GETUPVAL                         R2 4
       36 GETUPVAL                         R4 5
       37 GETTABLEKS                       R3 R4 K4 ["Selected"]
       39 JUMPIFEQ                         R2 R3 ; [+9]
       41 GETUPVAL                         R2 4
       42 GETUPVAL                         R4 5
       43 GETTABLEKS                       R3 R4 K5 ["Pressed"]
       45 JUMPIFEQ                         R2 R3 ; [+2]
       47 LOADB                            R1 0 +1
       48 LOADB                            R1 1
       49 CALL                             R0 1 0
       50 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+24]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["current"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K1 ["range"]
       12 CALL                             R1 3 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K2 ["step"]
       16 JUMPIFNOT                        R2 ; [+10]
       17 GETUPVAL                         R2 3
       18 MOVE                             R3 R1
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K2 ["step"]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R5 R6 K1 ["range"]
       25 CALL                             R2 3 -1
       26 RETURN                           R2 -1
       27 RETURN                           R1 1
       28 LOADN                            R1 0
       29 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getValue"]
        3 CALL                             R1 1 1
        4 JUMPIFEQ                         R0 R1 ; [+10]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K1 ["onValueChanged"]
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K1 ["onValueChanged"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getValue"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 1
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R1 R2 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 LOADB                            R3 1
        5 CALL                             R2 1 0
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["onDragStarted"]
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K1 ["onDragStarted"]
       13 CALL                             R2 0 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+135]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["current"]
        7 JUMPIFNOT                        R2 ; [+131]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K1 ["step"]
       11 JUMPIFNOT                        R2 ; [+82]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K1 ["step"]
       15 LOADN                            R3 0
       16 JUMPIFNOTLT                      R3 R2 ; [+77]
       18 GETUPVAL                         R2 3
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R3 R4 K2 ["Directional"]
       22 JUMPIFNOTEQ                      R2 R3 ; [+61]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R3 R4 K0 ["current"]
       27 SUB                              R2 R1 R3
       28 GETTABLEKS                       R4 R2 K3 ["X"]
       30 FASTCALL1                        MATH_ABS R4 ; [+2]
       31 GETIMPORT                        R3 K6 [math.abs]
       33 CALL                             R3 1 1
       34 GETUPVAL                         R4 5
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R7 R8 K0 ["current"]
       38 GETTABLEKS                       R6 R7 K7 ["AbsoluteSize"]
       40 GETTABLEKS                       R5 R6 K3 ["X"]
       42 GETUPVAL                         R7 2
       43 GETTABLEKS                       R6 R7 K1 ["step"]
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R7 R8 K8 ["range"]
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
       68 GETUPVAL                         R11 2
       69 GETTABLEKS                       R10 R11 K1 ["step"]
       71 GETUPVAL                         R12 2
       72 GETTABLEKS                       R11 R12 K8 ["range"]
       74 CALL                             R7 4 1
       75 JUMPIFEQ                         R7 R6 ; [+63]
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
       94 GETUPVAL                         R5 0
       95 GETTABLEKS                       R4 R5 K0 ["current"]
       97 GETTABLEKS                       R3 R4 K7 ["AbsoluteSize"]
       99 GETTABLEKS                       R2 R3 K11 ["Magnitude"]
      101 GETUPVAL                         R3 10
      102 MOVE                             R4 R1
      103 GETUPVAL                         R6 1
      104 GETTABLEKS                       R5 R6 K0 ["current"]
      106 MOVE                             R6 R2
      107 CALL                             R3 3 1
      108 GETUPVAL                         R4 1
      109 SETTABLEKS                       R1 R4 K0 ["current"]
      111 GETUPVAL                         R4 3
      112 GETUPVAL                         R6 4
      113 GETTABLEKS                       R5 R6 K2 ["Directional"]
      115 JUMPIFNOTEQ                      R4 R5 ; [+10]
      117 FASTCALL1                        MATH_ABS R3 ; [+3]
      118 MOVE                             R5 R3
      119 GETIMPORT                        R4 K6 [math.abs]
      121 CALL                             R4 1 1
      122 LOADK                            R5 K12 [0.01]
      123 JUMPIFNOTLT                      R5 R4 ; [+2]
      125 RETURN                           R0 0
      126 GETUPVAL                         R4 11
      127 GETUPVAL                         R5 6
      128 NAMECALL                         R5 R5 K10 ["getValue"]
      130 CALL                             R5 1 1
      131 MOVE                             R6 R3
      132 GETUPVAL                         R8 2
      133 GETTABLEKS                       R7 R8 K8 ["range"]
      135 CALL                             R4 3 1
      136 GETUPVAL                         R5 8
      137 MOVE                             R6 R4
      138 CALL                             R5 1 0
      139 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K0 ["current"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K1 ["onDragEnded"]
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R0 R1 K1 ["onDragEnded"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["Pressed"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+3]
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["range"]
        3 GETTABLEKS                       R3 R4 K1 ["Min"]
        5 SUB                              R2 R0 R3
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K0 ["range"]
        9 GETTABLEKS                       R4 R5 K2 ["Max"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K0 ["range"]
       14 GETTABLEKS                       R5 R6 K1 ["Min"]
       16 SUB                              R3 R4 R5
       17 DIV                              R1 R2 R3
       18 GETIMPORT                        R2 K5 [Vector2.new]
       20 MOVE                             R3 R1
       21 LOADK                            R4 K6 [0.5]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1

PROTO_11:
        0 GETIMPORT                        R1 K2 [UDim2.fromScale]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K3 ["range"]
        5 GETTABLEKS                       R4 R5 K4 ["Min"]
        7 SUB                              R3 R0 R4
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R6 R7 K3 ["range"]
       11 GETTABLEKS                       R5 R6 K5 ["Max"]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R7 R8 K3 ["range"]
       16 GETTABLEKS                       R6 R7 K4 ["Min"]
       18 SUB                              R4 R5 R6
       19 DIV                              R2 R3 R4
       20 LOADN                            R3 1
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R4 R5 K0 ["useState"]
        9 GETUPVAL                         R6 4
       10 GETTABLEKS                       R5 R6 K1 ["Initialize"]
       12 CALL                             R4 1 2
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R6 R7 K0 ["useState"]
       16 LOADB                            R7 0
       17 CALL                             R6 1 2
       18 GETUPVAL                         R9 3
       19 GETTABLEKS                       R8 R9 K0 ["useState"]
       21 LOADB                            R9 0
       22 CALL                             R8 1 2
       23 GETUPVAL                         R10 5
       24 GETTABLEKS                       R11 R2 K2 ["value"]
       26 CALL                             R10 1 1
       27 GETUPVAL                         R12 3
       28 GETTABLEKS                       R11 R12 K3 ["useRef"]
       30 LOADNIL                          R12
       31 CALL                             R11 1 1
       32 GETUPVAL                         R12 6
       33 CALL                             R12 0 1
       34 GETUPVAL                         R14 3
       35 GETTABLEKS                       R13 R14 K3 ["useRef"]
       37 LOADNIL                          R14
       38 CALL                             R13 1 1
       39 GETUPVAL                         R15 3
       40 GETTABLEKS                       R14 R15 K4 ["useImperativeHandle"]
       42 MOVE                             R15 R1
       43 NEWCLOSURE                       R16 P0
       44 CAPTURE                          VAL R13
       45 NEWTABLE                         R17 0 0
       47 CALL                             R14 3 0
       48 GETUPVAL                         R14 7
       49 GETTABLEKS                       R15 R13 K5 ["current"]
       51 CALL                             R14 1 1
       52 GETUPVAL                         R15 8
       53 MOVE                             R16 R3
       54 GETTABLEKS                       R17 R2 K6 ["size"]
       56 GETTABLEKS                       R18 R2 K7 ["variant"]
       58 CALL                             R15 3 1
       59 GETUPVAL                         R16 9
       60 GETTABLEKS                       R18 R15 K8 ["knob"]
       62 GETTABLEKS                       R17 R18 K9 ["style"]
       64 GETTABLEKS                       R19 R15 K8 ["knob"]
       66 GETTABLEKS                       R18 R19 K10 ["dragStyle"]
       68 CALL                             R16 2 1
       69 GETUPVAL                         R18 3
       70 GETTABLEKS                       R17 R18 K11 ["useMemo"]
       72 NEWCLOSURE                       R18 P1
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R16
       75 CAPTURE                          VAL R6
       76 NEWTABLE                         R19 0 4
       78 MOVE                             R20 R3
       79 MOVE                             R21 R8
       80 MOVE                             R22 R6
       81 MOVE                             R23 R16
       82 SETLIST                          R19 R20 4 [1]
       84 CALL                             R17 2 1
       85 GETUPVAL                         R19 3
       86 GETTABLEKS                       R18 R19 K12 ["useEffect"]
       88 NEWCLOSURE                       R19 P2
       89 CAPTURE                          VAL R2
       90 CAPTURE                          UPVAL U10
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R4
       94 CAPTURE                          UPVAL U4
       95 NEWTABLE                         R20 0 3
       97 GETTABLEKS                       R21 R2 K13 ["knobVisibility"]
       99 MOVE                             R22 R4
      100 MOVE                             R23 R6
      101 SETLIST                          R20 R21 3 [1]
      103 CALL                             R18 2 0
      104 GETUPVAL                         R19 3
      105 GETTABLEKS                       R18 R19 K14 ["useCallback"]
      107 NEWCLOSURE                       R19 P3
      108 CAPTURE                          VAL R13
      109 CAPTURE                          UPVAL U11
      110 CAPTURE                          VAL R2
      111 CAPTURE                          UPVAL U12
      112 NEWTABLE                         R20 0 3
      114 MOVE                             R21 R13
      115 GETTABLEKS                       R22 R2 K15 ["range"]
      117 GETTABLEKS                       R23 R2 K16 ["step"]
      119 SETLIST                          R20 R21 3 [1]
      121 CALL                             R18 2 1
      122 GETUPVAL                         R20 3
      123 GETTABLEKS                       R19 R20 K14 ["useCallback"]
      125 NEWCLOSURE                       R20 P4
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R2
      128 NEWTABLE                         R21 0 2
      130 MOVE                             R22 R10
      131 GETTABLEKS                       R23 R2 K17 ["onValueChanged"]
      133 SETLIST                          R21 R22 2 [1]
      135 CALL                             R19 2 1
      136 GETUPVAL                         R21 3
      137 GETTABLEKS                       R20 R21 K14 ["useCallback"]
      139 NEWCLOSURE                       R21 P5
      140 CAPTURE                          VAL R18
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R19
      143 NEWTABLE                         R22 0 3
      145 MOVE                             R23 R18
      146 MOVE                             R24 R14
      147 MOVE                             R25 R19
      148 SETLIST                          R22 R23 3 [1]
      150 CALL                             R20 2 1
      151 GETUPVAL                         R22 3
      152 GETTABLEKS                       R21 R22 K14 ["useCallback"]
      154 NEWCLOSURE                       R22 P6
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R2
      158 NEWTABLE                         R23 0 1
      160 GETTABLEKS                       R24 R2 K18 ["onDragStarted"]
      162 SETLIST                          R23 R24 1 [1]
      164 CALL                             R21 2 1
      165 GETUPVAL                         R23 3
      166 GETTABLEKS                       R22 R23 K14 ["useCallback"]
      168 NEWCLOSURE                       R23 P7
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R12
      173 CAPTURE                          UPVAL U13
      174 CAPTURE                          UPVAL U14
      175 CAPTURE                          VAL R10
      176 CAPTURE                          UPVAL U15
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R18
      179 CAPTURE                          UPVAL U16
      180 CAPTURE                          UPVAL U17
      181 NEWTABLE                         R24 0 6
      183 GETTABLEKS                       R25 R2 K16 ["step"]
      185 GETTABLEKS                       R26 R2 K15 ["range"]
      187 MOVE                             R27 R12
      188 MOVE                             R28 R10
      189 MOVE                             R29 R19
      190 MOVE                             R30 R18
      191 SETLIST                          R24 R25 6 [1]
      193 CALL                             R22 2 1
      194 GETUPVAL                         R24 3
      195 GETTABLEKS                       R23 R24 K14 ["useCallback"]
      197 NEWCLOSURE                       R24 P8
      198 CAPTURE                          VAL R7
      199 CAPTURE                          VAL R11
      200 CAPTURE                          VAL R2
      201 NEWTABLE                         R25 0 1
      203 GETTABLEKS                       R26 R2 K19 ["onDragEnded"]
      205 SETLIST                          R25 R26 1 [1]
      207 CALL                             R23 2 1
      208 GETUPVAL                         R25 3
      209 GETTABLEKS                       R24 R25 K14 ["useCallback"]
      211 NEWCLOSURE                       R25 P9
      212 CAPTURE                          VAL R5
      213 CAPTURE                          UPVAL U4
      214 CAPTURE                          VAL R20
      215 NEWTABLE                         R26 0 1
      217 MOVE                             R27 R20
      218 SETLIST                          R26 R27 1 [1]
      220 CALL                             R24 2 1
      221 GETIMPORT                        R25 K22 [UDim2.fromScale]
      223 LOADN                            R26 1
      224 LOADK                            R27 K23 [0.5]
      225 CALL                             R25 2 1
      226 GETTABLEKS                       R27 R2 K24 ["isContained"]
      228 JUMPIFNOT                        R27 ; [+6]
      229 NEWCLOSURE                       R28 P10
      230 CAPTURE                          VAL R2
      231 NAMECALL                         R26 R10 K25 ["map"]
      233 CALL                             R26 2 1
      234 JUMP                             ; [+5]
      235 GETIMPORT                        R26 K28 [Vector2.new]
      237 LOADK                            R27 K23 [0.5]
      238 LOADK                            R28 K23 [0.5]
      239 CALL                             R26 2 1
      240 GETUPVAL                         R28 3
      241 GETTABLEKS                       R27 R28 K29 ["createElement"]
      243 GETUPVAL                         R28 18
      244 GETUPVAL                         R29 19
      245 MOVE                             R30 R2
      246 DUPTABLE                         R31 K36 [{"Size", "GroupTransparency", "stateLayer", "onStateChanged", "isDisabled", "ref"}]
      247 GETIMPORT                        R32 K37 [UDim2.new]
      249 GETTABLEKS                       R33 R2 K38 ["width"]
      251 GETIMPORT                        R34 K40 [UDim.new]
      253 LOADN                            R35 0
      254 GETTABLEKS                       R37 R15 K41 ["hitbox"]
      256 GETTABLEKS                       R36 R37 K42 ["height"]
      258 CALL                             R34 2 -1
      259 CALL                             R32 -1 1
      260 SETTABLEKS                       R32 R31 K30 ["Size"]
      262 GETTABLEKS                       R33 R2 K34 ["isDisabled"]
      264 JUMPIFNOT                        R33 ; [+2]
      265 LOADK                            R32 K23 [0.5]
      266 JUMP                             ; [+1]
      267 LOADNIL                          R32
      268 SETTABLEKS                       R32 R31 K31 ["GroupTransparency"]
      270 DUPTABLE                         R32 K44 [{"affordance"}]
      271 GETUPVAL                         R34 20
      272 GETTABLEKS                       R33 R34 K45 ["None"]
      274 SETTABLEKS                       R33 R32 K43 ["affordance"]
      276 SETTABLEKS                       R32 R31 K32 ["stateLayer"]
      278 SETTABLEKS                       R24 R31 K33 ["onStateChanged"]
      280 GETTABLEKS                       R32 R2 K34 ["isDisabled"]
      282 SETTABLEKS                       R32 R31 K34 ["isDisabled"]
      284 SETTABLEKS                       R13 R31 K35 ["ref"]
      286 CALL                             R29 2 1
      287 DUPTABLE                         R30 K48 [{"DragDetector", "Bar"}]
      288 GETUPVAL                         R32 3
      289 GETTABLEKS                       R31 R32 K29 ["createElement"]
      291 LOADK                            R32 K49 ["UIDragDetector"]
      292 NEWTABLE                         R33 8 0
      294 GETIMPORT                        R34 K53 [Enum.UIDragDetectorDragStyle.Scriptable]
      296 SETTABLEKS                       R34 R33 K54 ["DragStyle"]
      298 GETUPVAL                         R36 3
      299 GETTABLEKS                       R35 R36 K55 ["Event"]
      301 GETTABLEKS                       R34 R35 K56 ["DragStart"]
      303 SETTABLE                         R21 R33 R34
      304 GETUPVAL                         R36 3
      305 GETTABLEKS                       R35 R36 K55 ["Event"]
      307 GETTABLEKS                       R34 R35 K57 ["DragContinue"]
      309 SETTABLE                         R22 R33 R34
      310 GETUPVAL                         R36 3
      311 GETTABLEKS                       R35 R36 K55 ["Event"]
      313 GETTABLEKS                       R34 R35 K58 ["DragEnd"]
      315 SETTABLE                         R23 R33 R34
      316 GETTABLEKS                       R35 R2 K34 ["isDisabled"]
      318 NOT                              R34 R35
      319 SETTABLEKS                       R34 R33 K59 ["Enabled"]
      321 CALL                             R31 2 1
      322 SETTABLEKS                       R31 R30 K46 ["DragDetector"]
      324 GETUPVAL                         R32 3
      325 GETTABLEKS                       R31 R32 K29 ["createElement"]
      327 GETUPVAL                         R32 18
      328 DUPTABLE                         R33 K62 [{"tag", "testId"}]
      329 GETTABLEKS                       R35 R15 K63 ["bar"]
      331 GETTABLEKS                       R34 R35 K60 ["tag"]
      333 SETTABLEKS                       R34 R33 K60 ["tag"]
      335 LOADK                            R35 K64 ["%*--bar"]
      336 GETTABLEKS                       R37 R2 K61 ["testId"]
      338 NAMECALL                         R35 R35 K65 ["format"]
      340 CALL                             R35 2 1
      341 MOVE                             R34 R35
      342 SETTABLEKS                       R34 R33 K61 ["testId"]
      344 DUPTABLE                         R34 K67 [{"Fill"}]
      345 GETUPVAL                         R36 3
      346 GETTABLEKS                       R35 R36 K29 ["createElement"]
      348 GETUPVAL                         R36 18
      349 DUPTABLE                         R37 K68 [{"tag", "Size", "testId"}]
      350 GETTABLEKS                       R39 R15 K69 ["fill"]
      352 GETTABLEKS                       R38 R39 K60 ["tag"]
      354 SETTABLEKS                       R38 R37 K60 ["tag"]
      356 NEWCLOSURE                       R40 P11
      357 CAPTURE                          VAL R2
      358 NAMECALL                         R38 R10 K25 ["map"]
      360 CALL                             R38 2 1
      361 SETTABLEKS                       R38 R37 K30 ["Size"]
      363 LOADK                            R39 K70 ["%*--fill"]
      364 GETTABLEKS                       R41 R2 K61 ["testId"]
      366 NAMECALL                         R39 R39 K65 ["format"]
      368 CALL                             R39 2 1
      369 MOVE                             R38 R39
      370 SETTABLEKS                       R38 R37 K61 ["testId"]
      372 DUPTABLE                         R38 K72 [{"Knob"}]
      373 GETTABLEKS                       R40 R2 K8 ["knob"]
      375 JUMPIFNOT                        R40 ; [+27]
      376 GETUPVAL                         R40 3
      377 GETTABLEKS                       R39 R40 K29 ["createElement"]
      379 GETUPVAL                         R40 18
      380 DUPTABLE                         R41 K76 [{"tag", "AnchorPoint", "Position", "Visible", "testId"}]
      381 LOADK                            R42 K77 ["auto-xy size-0-0"]
      382 SETTABLEKS                       R42 R41 K60 ["tag"]
      384 SETTABLEKS                       R26 R41 K73 ["AnchorPoint"]
      386 SETTABLEKS                       R25 R41 K74 ["Position"]
      388 SETTABLEKS                       R8 R41 K75 ["Visible"]
      390 LOADK                            R43 K78 ["%*--custom-knob"]
      391 GETTABLEKS                       R45 R2 K61 ["testId"]
      393 NAMECALL                         R43 R43 K65 ["format"]
      395 CALL                             R43 2 1
      396 MOVE                             R42 R43
      397 SETTABLEKS                       R42 R41 K61 ["testId"]
      399 GETTABLEKS                       R42 R2 K8 ["knob"]
      401 CALL                             R39 3 1
      402 JUMP                             ; [+97]
      403 GETUPVAL                         R41 21
      404 GETTABLEKS                       R40 R41 K79 ["FoundationUpdateKnobComponent"]
      406 JUMPIFNOT                        R40 ; [+54]
      407 GETUPVAL                         R40 3
      408 GETTABLEKS                       R39 R40 K29 ["createElement"]
      410 GETUPVAL                         R41 22
      411 GETTABLEKS                       R40 R41 K80 ["Provider"]
      413 DUPTABLE                         R41 K81 [{"value"}]
      414 GETUPVAL                         R42 23
      415 SETTABLEKS                       R42 R41 K2 ["value"]
      417 DUPTABLE                         R42 K72 [{"Knob"}]
      418 GETUPVAL                         R44 3
      419 GETTABLEKS                       R43 R44 K29 ["createElement"]
      421 GETUPVAL                         R44 24
      422 DUPTABLE                         R45 K84 [{"AnchorPoint", "Position", "size", "style", "stroke", "hasShadow", "testId"}]
      423 SETTABLEKS                       R26 R45 K73 ["AnchorPoint"]
      425 SETTABLEKS                       R25 R45 K74 ["Position"]
      427 GETTABLEKS                       R46 R2 K6 ["size"]
      429 SETTABLEKS                       R46 R45 K6 ["size"]
      431 GETTABLEKS                       R46 R17 K85 ["knobStyle"]
      433 SETTABLEKS                       R46 R45 K9 ["style"]
      435 GETTABLEKS                       R47 R15 K8 ["knob"]
      437 GETTABLEKS                       R46 R47 K82 ["stroke"]
      439 SETTABLEKS                       R46 R45 K82 ["stroke"]
      441 GETTABLEKS                       R47 R15 K8 ["knob"]
      443 GETTABLEKS                       R46 R47 K83 ["hasShadow"]
      445 SETTABLEKS                       R46 R45 K83 ["hasShadow"]
      447 LOADK                            R47 K86 ["%*--knob"]
      448 GETTABLEKS                       R49 R2 K61 ["testId"]
      450 NAMECALL                         R47 R47 K65 ["format"]
      452 CALL                             R47 2 1
      453 MOVE                             R46 R47
      454 SETTABLEKS                       R46 R45 K61 ["testId"]
      456 CALL                             R43 2 1
      457 SETTABLEKS                       R43 R42 K71 ["Knob"]
      459 CALL                             R39 3 1
      460 JUMP                             ; [+39]
      461 GETUPVAL                         R40 3
      462 GETTABLEKS                       R39 R40 K29 ["createElement"]
      464 GETUPVAL                         R40 24
      465 DUPTABLE                         R41 K84 [{"AnchorPoint", "Position", "size", "style", "stroke", "hasShadow", "testId"}]
      466 SETTABLEKS                       R26 R41 K73 ["AnchorPoint"]
      468 SETTABLEKS                       R25 R41 K74 ["Position"]
      470 GETTABLEKS                       R42 R2 K6 ["size"]
      472 SETTABLEKS                       R42 R41 K6 ["size"]
      474 GETTABLEKS                       R42 R17 K85 ["knobStyle"]
      476 SETTABLEKS                       R42 R41 K9 ["style"]
      478 GETTABLEKS                       R43 R15 K8 ["knob"]
      480 GETTABLEKS                       R42 R43 K82 ["stroke"]
      482 SETTABLEKS                       R42 R41 K82 ["stroke"]
      484 GETTABLEKS                       R43 R15 K8 ["knob"]
      486 GETTABLEKS                       R42 R43 K83 ["hasShadow"]
      488 SETTABLEKS                       R42 R41 K83 ["hasShadow"]
      490 LOADK                            R43 K86 ["%*--knob"]
      491 GETTABLEKS                       R45 R2 K61 ["testId"]
      493 NAMECALL                         R43 R43 K65 ["format"]
      495 CALL                             R43 2 1
      496 MOVE                             R42 R43
      497 SETTABLEKS                       R42 R41 K61 ["testId"]
      499 CALL                             R39 2 1
      500 SETTABLEKS                       R39 R38 K71 ["Knob"]
      502 CALL                             R35 3 1
      503 SETTABLEKS                       R35 R34 K66 ["Fill"]
      505 CALL                             R31 3 1
      506 SETTABLEKS                       R31 R30 K47 ["Bar"]
      508 CALL                             R27 3 -1
      509 RETURN                           R27 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Utility"]
       32 GETTABLEKS                       R6 R7 K12 ["withCommonProps"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K11 ["Utility"]
       39 GETTABLEKS                       R7 R8 K13 ["withDefaults"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K11 ["Utility"]
       46 GETTABLEKS                       R8 R9 K14 ["useBindable"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K11 ["Utility"]
       53 GETTABLEKS                       R9 R10 K15 ["usePointerPosition"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R12 R0 K11 ["Utility"]
       60 GETTABLEKS                       R11 R12 K16 ["Input"]
       62 GETTABLEKS                       R10 R11 K17 ["useLastInputMode"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R13 R0 K11 ["Utility"]
       69 GETTABLEKS                       R12 R13 K16 ["Input"]
       71 GETTABLEKS                       R11 R12 K18 ["InputMode"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETIMPORT                        R14 K1 [script]
       78 GETTABLEKS                       R13 R14 K4 ["Parent"]
       80 GETTABLEKS                       R12 R13 K19 ["calculateSliderValueFromPosition"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETIMPORT                        R15 K1 [script]
       87 GETTABLEKS                       R14 R15 K4 ["Parent"]
       89 GETTABLEKS                       R13 R14 K20 ["calculateSliderPositionDelta"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K6 [require]
       94 GETIMPORT                        R16 K1 [script]
       96 GETTABLEKS                       R15 R16 K4 ["Parent"]
       98 GETTABLEKS                       R14 R15 K21 ["calculateSliderValueFromDelta"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K6 [require]
      103 GETIMPORT                        R17 K1 [script]
      105 GETTABLEKS                       R16 R17 K4 ["Parent"]
      107 GETTABLEKS                       R15 R16 K22 ["calculatePixelsPerStep"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K6 [require]
      112 GETIMPORT                        R18 K1 [script]
      114 GETTABLEKS                       R17 R18 K4 ["Parent"]
      116 GETTABLEKS                       R16 R17 K23 ["calculateNextStepValue"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K6 [require]
      121 GETIMPORT                        R19 K1 [script]
      123 GETTABLEKS                       R18 R19 K4 ["Parent"]
      125 GETTABLEKS                       R17 R18 K24 ["calculateSliderStepValue"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K6 [require]
      130 GETTABLEKS                       R19 R0 K25 ["Enums"]
      132 GETTABLEKS                       R18 R19 K26 ["InputSize"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K6 [require]
      137 GETTABLEKS                       R20 R0 K25 ["Enums"]
      139 GETTABLEKS                       R19 R20 K27 ["Visibility"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K6 [require]
      144 GETTABLEKS                       R21 R0 K25 ["Enums"]
      146 GETTABLEKS                       R20 R21 K28 ["SliderVariant"]
      148 CALL                             R19 1 1
      149 GETIMPORT                        R20 K6 [require]
      151 GETTABLEKS                       R22 R0 K25 ["Enums"]
      153 GETTABLEKS                       R21 R22 K29 ["StateLayerAffordance"]
      155 CALL                             R20 1 1
      156 GETIMPORT                        R21 K6 [require]
      158 GETTABLEKS                       R23 R0 K25 ["Enums"]
      160 GETTABLEKS                       R22 R23 K30 ["ControlState"]
      162 CALL                             R21 1 1
      163 GETIMPORT                        R22 K6 [require]
      165 GETTABLEKS                       R25 R0 K31 ["Providers"]
      167 GETTABLEKS                       R24 R25 K32 ["Style"]
      169 GETTABLEKS                       R23 R24 K33 ["useTokens"]
      171 CALL                             R22 1 1
      172 GETIMPORT                        R23 K6 [require]
      174 GETTABLEKS                       R26 R0 K8 ["Components"]
      176 GETTABLEKS                       R25 R26 K34 ["Slider"]
      178 GETTABLEKS                       R24 R25 K35 ["useSliderVariants"]
      180 CALL                             R23 1 1
      181 GETIMPORT                        R24 K6 [require]
      183 GETTABLEKS                       R27 R0 K8 ["Components"]
      185 GETTABLEKS                       R26 R27 K34 ["Slider"]
      187 GETTABLEKS                       R25 R26 K36 ["useSliderMotionStates"]
      189 CALL                             R24 1 1
      190 GETIMPORT                        R25 K6 [require]
      192 GETTABLEKS                       R27 R0 K8 ["Components"]
      194 GETTABLEKS                       R26 R27 K37 ["Knob"]
      196 CALL                             R25 1 1
      197 GETIMPORT                        R26 K6 [require]
      199 GETTABLEKS                       R29 R0 K31 ["Providers"]
      201 GETTABLEKS                       R28 R29 K32 ["Style"]
      203 GETTABLEKS                       R27 R28 K38 ["PresentationContext"]
      205 CALL                             R26 1 1
      206 GETIMPORT                        R27 K6 [require]
      208 GETTABLEKS                       R29 R0 K11 ["Utility"]
      210 GETTABLEKS                       R28 R29 K39 ["Flags"]
      212 CALL                             R27 1 1
      213 DUPTABLE                         R28 K48 [{"range", "size", "width", "variant", "isDisabled", "isContained", "knobVisibility", "testId"}]
      214 GETIMPORT                        R29 K51 [NumberRange.new]
      216 LOADN                            R30 0
      217 LOADN                            R31 1
      218 CALL                             R29 2 1
      219 SETTABLEKS                       R29 R28 K40 ["range"]
      221 GETTABLEKS                       R29 R17 K52 ["Medium"]
      223 SETTABLEKS                       R29 R28 K41 ["size"]
      225 GETIMPORT                        R29 K54 [UDim.new]
      227 LOADN                            R30 1
      228 LOADN                            R31 0
      229 CALL                             R29 2 1
      230 SETTABLEKS                       R29 R28 K42 ["width"]
      232 GETTABLEKS                       R29 R19 K55 ["Standard"]
      234 SETTABLEKS                       R29 R28 K43 ["variant"]
      236 LOADB                            R29 0
      237 SETTABLEKS                       R29 R28 K44 ["isDisabled"]
      239 LOADB                            R29 0
      240 SETTABLEKS                       R29 R28 K45 ["isContained"]
      242 GETTABLEKS                       R29 R18 K56 ["Auto"]
      244 SETTABLEKS                       R29 R28 K46 ["knobVisibility"]
      246 LOADK                            R29 K57 ["--foundation-slider"]
      247 SETTABLEKS                       R29 R28 K47 ["testId"]
      249 DUPTABLE                         R29 K59 [{"isInverse"}]
      250 LOADB                            R30 1
      251 SETTABLEKS                       R30 R29 K58 ["isInverse"]
      253 DUPCLOSURE                       R30 K60 [PROTO_12]
      254 CAPTURE                          VAL R6
      255 CAPTURE                          VAL R28
      256 CAPTURE                          VAL R22
      257 CAPTURE                          VAL R2
      258 CAPTURE                          VAL R21
      259 CAPTURE                          VAL R7
      260 CAPTURE                          VAL R9
      261 CAPTURE                          VAL R8
      262 CAPTURE                          VAL R23
      263 CAPTURE                          VAL R24
      264 CAPTURE                          VAL R18
      265 CAPTURE                          VAL R11
      266 CAPTURE                          VAL R16
      267 CAPTURE                          VAL R10
      268 CAPTURE                          VAL R14
      269 CAPTURE                          VAL R15
      270 CAPTURE                          VAL R12
      271 CAPTURE                          VAL R13
      272 CAPTURE                          VAL R3
      273 CAPTURE                          VAL R5
      274 CAPTURE                          VAL R20
      275 CAPTURE                          VAL R27
      276 CAPTURE                          VAL R26
      277 CAPTURE                          VAL R29
      278 CAPTURE                          VAL R25
      279 GETTABLEKS                       R31 R2 K61 ["forwardRef"]
      281 MOVE                             R32 R30
      282 CALL                             R31 1 -1
      283 RETURN                           R31 -1
