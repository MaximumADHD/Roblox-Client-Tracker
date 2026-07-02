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
        3 JUMPIFNOT                        R2 ; [+143]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["current"]
        7 JUMPIFNOT                        R2 ; [+139]
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
       75 JUMPIFEQ                         R7 R6 ; [+71]
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
      126 GETUPVAL                         R5 11
      127 GETTABLEKS                       R5 R5 K13 ["FoundationSliderFixValueOnDrag"]
      129 JUMPIFNOT                        R5 ; [+4]
      130 GETUPVAL                         R4 9
      131 MOVE                             R5 R1
      132 CALL                             R4 1 1
      133 JUMP                             ; [+10]
      134 GETUPVAL                         R4 12
      135 GETUPVAL                         R5 6
      136 NAMECALL                         R5 R5 K10 ["getValue"]
      138 CALL                             R5 1 1
      139 MOVE                             R6 R3
      140 GETUPVAL                         R7 2
      141 GETTABLEKS                       R7 R7 K8 ["range"]
      143 CALL                             R4 3 1
      144 GETUPVAL                         R5 8
      145 MOVE                             R6 R4
      146 CALL                             R5 1 0
      147 RETURN                           R0 0

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
       23 GETUPVAL                         R11 5
       24 GETTABLEKS                       R11 R11 K2 ["FoundationSliderClampValue"]
       26 JUMPIFNOT                        R11 ; [+10]
       27 GETUPVAL                         R10 6
       28 GETTABLEKS                       R11 R2 K3 ["value"]
       30 CALL                             R10 1 1
       31 NEWCLOSURE                       R12 P0
       32 CAPTURE                          VAL R2
       33 NAMECALL                         R10 R10 K4 ["map"]
       35 CALL                             R10 2 1
       36 JUMP                             ; [+4]
       37 GETUPVAL                         R10 6
       38 GETTABLEKS                       R11 R2 K3 ["value"]
       40 CALL                             R10 1 1
       41 GETUPVAL                         R11 3
       42 GETTABLEKS                       R11 R11 K5 ["useRef"]
       44 LOADNIL                          R12
       45 CALL                             R11 1 1
       46 GETUPVAL                         R12 7
       47 CALL                             R12 0 1
       48 GETUPVAL                         R13 3
       49 GETTABLEKS                       R13 R13 K5 ["useRef"]
       51 LOADNIL                          R14
       52 CALL                             R13 1 1
       53 GETUPVAL                         R14 3
       54 GETTABLEKS                       R14 R14 K6 ["useImperativeHandle"]
       56 MOVE                             R15 R1
       57 NEWCLOSURE                       R16 P1
       58 CAPTURE                          VAL R13
       59 NEWTABLE                         R17 0 0
       61 CALL                             R14 3 0
       62 GETUPVAL                         R14 8
       63 GETTABLEKS                       R15 R13 K7 ["current"]
       65 CALL                             R14 1 1
       66 GETUPVAL                         R15 9
       67 MOVE                             R16 R3
       68 GETTABLEKS                       R17 R2 K8 ["size"]
       70 GETTABLEKS                       R18 R2 K9 ["variant"]
       72 CALL                             R15 3 1
       73 GETUPVAL                         R16 10
       74 GETTABLEKS                       R17 R15 K10 ["knob"]
       76 GETTABLEKS                       R17 R17 K11 ["style"]
       78 GETTABLEKS                       R18 R15 K10 ["knob"]
       80 GETTABLEKS                       R18 R18 K12 ["dragStyle"]
       82 CALL                             R16 2 1
       83 GETUPVAL                         R17 3
       84 GETTABLEKS                       R17 R17 K13 ["useMemo"]
       86 NEWCLOSURE                       R18 P2
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R16
       89 CAPTURE                          VAL R6
       90 NEWTABLE                         R19 0 4
       92 MOVE                             R20 R3
       93 MOVE                             R21 R8
       94 MOVE                             R22 R6
       95 MOVE                             R23 R16
       96 SETLIST                          R19 R20 4 [1]
       98 CALL                             R17 2 1
       99 GETUPVAL                         R18 3
      100 GETTABLEKS                       R18 R18 K14 ["useEffect"]
      102 NEWCLOSURE                       R19 P3
      103 CAPTURE                          VAL R2
      104 CAPTURE                          UPVAL U11
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R4
      108 CAPTURE                          UPVAL U4
      109 NEWTABLE                         R20 0 3
      111 GETTABLEKS                       R21 R2 K15 ["knobVisibility"]
      113 MOVE                             R22 R4
      114 MOVE                             R23 R6
      115 SETLIST                          R20 R21 3 [1]
      117 CALL                             R18 2 0
      118 GETUPVAL                         R18 3
      119 GETTABLEKS                       R18 R18 K16 ["useCallback"]
      121 NEWCLOSURE                       R19 P4
      122 CAPTURE                          VAL R13
      123 CAPTURE                          UPVAL U12
      124 CAPTURE                          VAL R2
      125 CAPTURE                          UPVAL U13
      126 NEWTABLE                         R20 0 3
      128 MOVE                             R21 R13
      129 GETTABLEKS                       R22 R2 K17 ["range"]
      131 GETTABLEKS                       R23 R2 K18 ["step"]
      133 SETLIST                          R20 R21 3 [1]
      135 CALL                             R18 2 1
      136 GETUPVAL                         R19 3
      137 GETTABLEKS                       R19 R19 K16 ["useCallback"]
      139 NEWCLOSURE                       R20 P5
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R2
      142 NEWTABLE                         R21 0 2
      144 MOVE                             R22 R10
      145 GETTABLEKS                       R23 R2 K19 ["onValueChanged"]
      147 SETLIST                          R21 R22 2 [1]
      149 CALL                             R19 2 1
      150 GETUPVAL                         R20 3
      151 GETTABLEKS                       R20 R20 K16 ["useCallback"]
      153 NEWCLOSURE                       R21 P6
      154 CAPTURE                          VAL R18
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R19
      157 NEWTABLE                         R22 0 3
      159 MOVE                             R23 R18
      160 MOVE                             R24 R14
      161 MOVE                             R25 R19
      162 SETLIST                          R22 R23 3 [1]
      164 CALL                             R20 2 1
      165 GETUPVAL                         R21 3
      166 GETTABLEKS                       R21 R21 K16 ["useCallback"]
      168 NEWCLOSURE                       R22 P7
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R2
      172 NEWTABLE                         R23 0 1
      174 GETTABLEKS                       R24 R2 K20 ["onDragStarted"]
      176 SETLIST                          R23 R24 1 [1]
      178 CALL                             R21 2 1
      179 GETUPVAL                         R22 3
      180 GETTABLEKS                       R22 R22 K16 ["useCallback"]
      182 NEWCLOSURE                       R23 P8
      183 CAPTURE                          VAL R13
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R12
      187 CAPTURE                          UPVAL U14
      188 CAPTURE                          UPVAL U15
      189 CAPTURE                          VAL R10
      190 CAPTURE                          UPVAL U16
      191 CAPTURE                          VAL R19
      192 CAPTURE                          VAL R18
      193 CAPTURE                          UPVAL U17
      194 CAPTURE                          UPVAL U5
      195 CAPTURE                          UPVAL U18
      196 NEWTABLE                         R24 0 6
      198 GETTABLEKS                       R25 R2 K18 ["step"]
      200 GETTABLEKS                       R26 R2 K17 ["range"]
      202 MOVE                             R27 R12
      203 MOVE                             R28 R10
      204 MOVE                             R29 R19
      205 MOVE                             R30 R18
      206 SETLIST                          R24 R25 6 [1]
      208 CALL                             R22 2 1
      209 GETUPVAL                         R23 3
      210 GETTABLEKS                       R23 R23 K16 ["useCallback"]
      212 NEWCLOSURE                       R24 P9
      213 CAPTURE                          VAL R7
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R2
      216 NEWTABLE                         R25 0 1
      218 GETTABLEKS                       R26 R2 K21 ["onDragEnded"]
      220 SETLIST                          R25 R26 1 [1]
      222 CALL                             R23 2 1
      223 GETUPVAL                         R24 3
      224 GETTABLEKS                       R24 R24 K16 ["useCallback"]
      226 NEWCLOSURE                       R25 P10
      227 CAPTURE                          VAL R5
      228 CAPTURE                          UPVAL U4
      229 CAPTURE                          VAL R20
      230 NEWTABLE                         R26 0 1
      232 MOVE                             R27 R20
      233 SETLIST                          R26 R27 1 [1]
      235 CALL                             R24 2 1
      236 GETIMPORT                        R25 K24 [UDim2.fromScale]
      238 LOADN                            R26 1
      239 LOADK                            R27 K25 [0.5]
      240 CALL                             R25 2 1
      241 GETTABLEKS                       R27 R2 K26 ["isContained"]
      243 JUMPIFNOT                        R27 ; [+6]
      244 NEWCLOSURE                       R28 P11
      245 CAPTURE                          VAL R2
      246 NAMECALL                         R26 R10 K4 ["map"]
      248 CALL                             R26 2 1
      249 JUMP                             ; [+5]
      250 GETIMPORT                        R26 K29 [Vector2.new]
      252 LOADK                            R27 K25 [0.5]
      253 LOADK                            R28 K25 [0.5]
      254 CALL                             R26 2 1
      255 GETUPVAL                         R27 3
      256 GETTABLEKS                       R27 R27 K30 ["createElement"]
      258 GETUPVAL                         R28 19
      259 GETUPVAL                         R29 20
      260 MOVE                             R30 R2
      261 DUPTABLE                         R31 K37 [{"Size", "GroupTransparency", "stateLayer", "onStateChanged", "isDisabled", "ref"}]
      262 GETIMPORT                        R32 K38 [UDim2.new]
      264 GETTABLEKS                       R33 R2 K39 ["width"]
      266 GETIMPORT                        R34 K41 [UDim.new]
      268 LOADN                            R35 0
      269 GETTABLEKS                       R36 R15 K42 ["hitbox"]
      271 GETTABLEKS                       R36 R36 K43 ["height"]
      273 CALL                             R34 2 -1
      274 CALL                             R32 -1 1
      275 SETTABLEKS                       R32 R31 K31 ["Size"]
      277 GETTABLEKS                       R33 R2 K35 ["isDisabled"]
      279 JUMPIFNOT                        R33 ; [+4]
      280 GETUPVAL                         R32 21
      281 GETTABLEKS                       R32 R32 K44 ["DISABLED_TRANSPARENCY"]
      283 JUMP                             ; [+1]
      284 LOADNIL                          R32
      285 SETTABLEKS                       R32 R31 K32 ["GroupTransparency"]
      287 DUPTABLE                         R32 K46 [{"affordance"}]
      288 GETUPVAL                         R33 22
      289 GETTABLEKS                       R33 R33 K47 ["None"]
      291 SETTABLEKS                       R33 R32 K45 ["affordance"]
      293 SETTABLEKS                       R32 R31 K33 ["stateLayer"]
      295 SETTABLEKS                       R24 R31 K34 ["onStateChanged"]
      297 GETTABLEKS                       R32 R2 K35 ["isDisabled"]
      299 SETTABLEKS                       R32 R31 K35 ["isDisabled"]
      301 SETTABLEKS                       R13 R31 K36 ["ref"]
      303 CALL                             R29 2 1
      304 DUPTABLE                         R30 K50 [{"DragDetector", "Bar"}]
      305 GETUPVAL                         R31 3
      306 GETTABLEKS                       R31 R31 K30 ["createElement"]
      308 LOADK                            R32 K51 ["UIDragDetector"]
      309 NEWTABLE                         R33 8 0
      311 GETIMPORT                        R34 K55 [Enum.UIDragDetectorDragStyle.Scriptable]
      313 SETTABLEKS                       R34 R33 K56 ["DragStyle"]
      315 GETUPVAL                         R34 3
      316 GETTABLEKS                       R34 R34 K57 ["Event"]
      318 GETTABLEKS                       R34 R34 K58 ["DragStart"]
      320 SETTABLE                         R21 R33 R34
      321 GETUPVAL                         R34 3
      322 GETTABLEKS                       R34 R34 K57 ["Event"]
      324 GETTABLEKS                       R34 R34 K59 ["DragContinue"]
      326 SETTABLE                         R22 R33 R34
      327 GETUPVAL                         R34 3
      328 GETTABLEKS                       R34 R34 K57 ["Event"]
      330 GETTABLEKS                       R34 R34 K60 ["DragEnd"]
      332 SETTABLE                         R23 R33 R34
      333 GETTABLEKS                       R35 R2 K35 ["isDisabled"]
      335 NOT                              R34 R35
      336 SETTABLEKS                       R34 R33 K61 ["Enabled"]
      338 CALL                             R31 2 1
      339 SETTABLEKS                       R31 R30 K48 ["DragDetector"]
      341 GETUPVAL                         R31 3
      342 GETTABLEKS                       R31 R31 K30 ["createElement"]
      344 GETUPVAL                         R32 19
      345 DUPTABLE                         R33 K64 [{"tag", "testId"}]
      346 GETTABLEKS                       R34 R15 K65 ["bar"]
      348 GETTABLEKS                       R34 R34 K62 ["tag"]
      350 SETTABLEKS                       R34 R33 K62 ["tag"]
      352 LOADK                            R35 K66 ["%*--bar"]
      353 GETTABLEKS                       R37 R2 K63 ["testId"]
      355 NAMECALL                         R35 R35 K67 ["format"]
      357 CALL                             R35 2 1
      358 MOVE                             R34 R35
      359 SETTABLEKS                       R34 R33 K63 ["testId"]
      361 DUPTABLE                         R34 K69 [{"Fill"}]
      362 GETUPVAL                         R35 3
      363 GETTABLEKS                       R35 R35 K30 ["createElement"]
      365 GETUPVAL                         R36 19
      366 DUPTABLE                         R37 K70 [{"tag", "Size", "testId"}]
      367 GETTABLEKS                       R38 R15 K71 ["fill"]
      369 GETTABLEKS                       R38 R38 K62 ["tag"]
      371 SETTABLEKS                       R38 R37 K62 ["tag"]
      373 NEWCLOSURE                       R40 P12
      374 CAPTURE                          VAL R2
      375 NAMECALL                         R38 R10 K4 ["map"]
      377 CALL                             R38 2 1
      378 SETTABLEKS                       R38 R37 K31 ["Size"]
      380 LOADK                            R39 K72 ["%*--fill"]
      381 GETTABLEKS                       R41 R2 K63 ["testId"]
      383 NAMECALL                         R39 R39 K67 ["format"]
      385 CALL                             R39 2 1
      386 MOVE                             R38 R39
      387 SETTABLEKS                       R38 R37 K63 ["testId"]
      389 DUPTABLE                         R38 K74 [{"Knob"}]
      390 GETTABLEKS                       R40 R2 K10 ["knob"]
      392 JUMPIFNOT                        R40 ; [+24]
      393 GETUPVAL                         R39 3
      394 GETTABLEKS                       R39 R39 K30 ["createElement"]
      396 GETUPVAL                         R40 19
      397 DUPTABLE                         R41 K79 [{["tag"] = "auto-xy size-0-0", ["AnchorPoint"], ["Position"], ["Visible"], ["testId"]}]
      398 SETTABLEKS                       R26 R41 K76 ["AnchorPoint"]
      400 SETTABLEKS                       R25 R41 K77 ["Position"]
      402 SETTABLEKS                       R8 R41 K78 ["Visible"]
      404 LOADK                            R43 K80 ["%*--custom-knob"]
      405 GETTABLEKS                       R45 R2 K63 ["testId"]
      407 NAMECALL                         R43 R43 K67 ["format"]
      409 CALL                             R43 2 1
      410 MOVE                             R42 R43
      411 SETTABLEKS                       R42 R41 K63 ["testId"]
      413 GETTABLEKS                       R42 R2 K10 ["knob"]
      415 CALL                             R39 3 1
      416 JUMP                             ; [+97]
      417 GETUPVAL                         R40 5
      418 GETTABLEKS                       R40 R40 K81 ["FoundationToggleVisualUpdate"]
      420 JUMPIFNOT                        R40 ; [+54]
      421 GETUPVAL                         R39 3
      422 GETTABLEKS                       R39 R39 K30 ["createElement"]
      424 GETUPVAL                         R40 23
      425 GETTABLEKS                       R40 R40 K82 ["Provider"]
      427 DUPTABLE                         R41 K83 [{"value"}]
      428 GETUPVAL                         R42 24
      429 SETTABLEKS                       R42 R41 K3 ["value"]
      431 DUPTABLE                         R42 K74 [{"Knob"}]
      432 GETUPVAL                         R43 3
      433 GETTABLEKS                       R43 R43 K30 ["createElement"]
      435 GETUPVAL                         R44 25
      436 DUPTABLE                         R45 K86 [{"AnchorPoint", "Position", "size", "style", "stroke", "hasShadow", "testId"}]
      437 SETTABLEKS                       R26 R45 K76 ["AnchorPoint"]
      439 SETTABLEKS                       R25 R45 K77 ["Position"]
      441 GETTABLEKS                       R46 R2 K8 ["size"]
      443 SETTABLEKS                       R46 R45 K8 ["size"]
      445 GETTABLEKS                       R46 R17 K87 ["knobStyle"]
      447 SETTABLEKS                       R46 R45 K11 ["style"]
      449 GETTABLEKS                       R46 R15 K10 ["knob"]
      451 GETTABLEKS                       R46 R46 K84 ["stroke"]
      453 SETTABLEKS                       R46 R45 K84 ["stroke"]
      455 GETTABLEKS                       R46 R15 K10 ["knob"]
      457 GETTABLEKS                       R46 R46 K85 ["hasShadow"]
      459 SETTABLEKS                       R46 R45 K85 ["hasShadow"]
      461 LOADK                            R47 K88 ["%*--knob"]
      462 GETTABLEKS                       R49 R2 K63 ["testId"]
      464 NAMECALL                         R47 R47 K67 ["format"]
      466 CALL                             R47 2 1
      467 MOVE                             R46 R47
      468 SETTABLEKS                       R46 R45 K63 ["testId"]
      470 CALL                             R43 2 1
      471 SETTABLEKS                       R43 R42 K73 ["Knob"]
      473 CALL                             R39 3 1
      474 JUMP                             ; [+39]
      475 GETUPVAL                         R39 3
      476 GETTABLEKS                       R39 R39 K30 ["createElement"]
      478 GETUPVAL                         R40 25
      479 DUPTABLE                         R41 K86 [{"AnchorPoint", "Position", "size", "style", "stroke", "hasShadow", "testId"}]
      480 SETTABLEKS                       R26 R41 K76 ["AnchorPoint"]
      482 SETTABLEKS                       R25 R41 K77 ["Position"]
      484 GETTABLEKS                       R42 R2 K8 ["size"]
      486 SETTABLEKS                       R42 R41 K8 ["size"]
      488 GETTABLEKS                       R42 R17 K87 ["knobStyle"]
      490 SETTABLEKS                       R42 R41 K11 ["style"]
      492 GETTABLEKS                       R42 R15 K10 ["knob"]
      494 GETTABLEKS                       R42 R42 K84 ["stroke"]
      496 SETTABLEKS                       R42 R41 K84 ["stroke"]
      498 GETTABLEKS                       R42 R15 K10 ["knob"]
      500 GETTABLEKS                       R42 R42 K85 ["hasShadow"]
      502 SETTABLEKS                       R42 R41 K85 ["hasShadow"]
      504 LOADK                            R43 K88 ["%*--knob"]
      505 GETTABLEKS                       R45 R2 K63 ["testId"]
      507 NAMECALL                         R43 R43 K67 ["format"]
      509 CALL                             R43 2 1
      510 MOVE                             R42 R43
      511 SETTABLEKS                       R42 R41 K63 ["testId"]
      513 CALL                             R39 2 1
      514 SETTABLEKS                       R39 R38 K73 ["Knob"]
      516 CALL                             R35 3 1
      517 SETTABLEKS                       R35 R34 K68 ["Fill"]
      519 CALL                             R31 3 1
      520 SETTABLEKS                       R31 R30 K49 ["Bar"]
      522 CALL                             R27 3 -1
      523 RETURN                           R27 -1

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
      121 GETTABLEKS                       R17 R17 K24 ["calculateSliderValueFromDelta"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K6 [require]
      126 GETIMPORT                        R18 K1 [script]
      128 GETTABLEKS                       R18 R18 K4 ["Parent"]
      130 GETTABLEKS                       R18 R18 K25 ["calculateSliderValueFromPosition"]
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K6 [require]
      135 GETTABLEKS                       R19 R0 K26 ["Enums"]
      137 GETTABLEKS                       R19 R19 K27 ["InputSize"]
      139 CALL                             R18 1 1
      140 GETIMPORT                        R19 K6 [require]
      142 GETTABLEKS                       R20 R0 K26 ["Enums"]
      144 GETTABLEKS                       R20 R20 K28 ["Visibility"]
      146 CALL                             R19 1 1
      147 GETIMPORT                        R20 K6 [require]
      149 GETTABLEKS                       R21 R0 K26 ["Enums"]
      151 GETTABLEKS                       R21 R21 K29 ["SliderVariant"]
      153 CALL                             R20 1 1
      154 GETIMPORT                        R21 K6 [require]
      156 GETTABLEKS                       R22 R0 K26 ["Enums"]
      158 GETTABLEKS                       R22 R22 K30 ["ColorMode"]
      160 CALL                             R21 1 1
      161 GETIMPORT                        R22 K6 [require]
      163 GETTABLEKS                       R23 R0 K26 ["Enums"]
      165 GETTABLEKS                       R23 R23 K31 ["ControlState"]
      167 CALL                             R22 1 1
      168 GETIMPORT                        R23 K6 [require]
      170 GETTABLEKS                       R24 R0 K26 ["Enums"]
      172 GETTABLEKS                       R24 R24 K32 ["StateLayerAffordance"]
      174 CALL                             R23 1 1
      175 GETIMPORT                        R24 K6 [require]
      177 GETTABLEKS                       R25 R0 K9 ["Utility"]
      179 GETTABLEKS                       R25 R25 K33 ["Flags"]
      181 CALL                             R24 1 1
      182 GETIMPORT                        R25 K6 [require]
      184 GETTABLEKS                       R26 R0 K12 ["Components"]
      186 GETTABLEKS                       R26 R26 K34 ["Knob"]
      188 CALL                             R25 1 1
      189 GETIMPORT                        R26 K6 [require]
      191 GETTABLEKS                       R27 R0 K35 ["Providers"]
      193 GETTABLEKS                       R27 R27 K36 ["Style"]
      195 GETTABLEKS                       R27 R27 K37 ["PresentationContext"]
      197 CALL                             R26 1 1
      198 GETIMPORT                        R27 K6 [require]
      200 GETTABLEKS                       R28 R0 K12 ["Components"]
      202 GETTABLEKS                       R28 R28 K38 ["Slider"]
      204 GETTABLEKS                       R28 R28 K39 ["useSliderMotionStates"]
      206 CALL                             R27 1 1
      207 GETIMPORT                        R28 K6 [require]
      209 GETTABLEKS                       R29 R0 K12 ["Components"]
      211 GETTABLEKS                       R29 R29 K38 ["Slider"]
      213 GETTABLEKS                       R29 R29 K40 ["useSliderVariants"]
      215 CALL                             R28 1 1
      216 GETIMPORT                        R29 K6 [require]
      218 GETTABLEKS                       R30 R0 K35 ["Providers"]
      220 GETTABLEKS                       R30 R30 K36 ["Style"]
      222 GETTABLEKS                       R30 R30 K41 ["useTokens"]
      224 CALL                             R29 1 1
      225 DUPTABLE                         R30 K52 [{["range"], ["size"], ["width"], ["variant"], ["isDisabled"] = False, ["isContained"] = False, ["knobVisibility"], ["testId"] = "--foundation-slider"}]
      226 GETIMPORT                        R31 K55 [NumberRange.new]
      228 LOADN                            R32 0
      229 LOADN                            R33 1
      230 CALL                             R31 2 1
      231 SETTABLEKS                       R31 R30 K42 ["range"]
      233 GETTABLEKS                       R31 R18 K56 ["Medium"]
      235 SETTABLEKS                       R31 R30 K43 ["size"]
      237 GETIMPORT                        R31 K58 [UDim.new]
      239 LOADN                            R32 1
      240 LOADN                            R33 0
      241 CALL                             R31 2 1
      242 SETTABLEKS                       R31 R30 K44 ["width"]
      244 GETTABLEKS                       R31 R20 K59 ["Standard"]
      246 SETTABLEKS                       R31 R30 K45 ["variant"]
      248 GETTABLEKS                       R31 R19 K60 ["Auto"]
      250 SETTABLEKS                       R31 R30 K49 ["knobVisibility"]
      252 DUPTABLE                         R31 K62 [{"colorMode"}]
      253 GETTABLEKS                       R32 R21 K63 ["Inverse"]
      255 SETTABLEKS                       R32 R31 K61 ["colorMode"]
      257 DUPCLOSURE                       R32 K64 [PROTO_13]
      258 CAPTURE                          VAL R11
      259 CAPTURE                          VAL R30
      260 CAPTURE                          VAL R29
      261 CAPTURE                          VAL R2
      262 CAPTURE                          VAL R22
      263 CAPTURE                          VAL R24
      264 CAPTURE                          VAL R7
      265 CAPTURE                          VAL R8
      266 CAPTURE                          VAL R9
      267 CAPTURE                          VAL R28
      268 CAPTURE                          VAL R27
      269 CAPTURE                          VAL R19
      270 CAPTURE                          VAL R17
      271 CAPTURE                          VAL R15
      272 CAPTURE                          VAL R4
      273 CAPTURE                          VAL R13
      274 CAPTURE                          VAL R12
      275 CAPTURE                          VAL R14
      276 CAPTURE                          VAL R16
      277 CAPTURE                          VAL R6
      278 CAPTURE                          VAL R10
      279 CAPTURE                          VAL R3
      280 CAPTURE                          VAL R23
      281 CAPTURE                          VAL R26
      282 CAPTURE                          VAL R31
      283 CAPTURE                          VAL R25
      284 GETTABLEKS                       R33 R2 K65 ["forwardRef"]
      286 MOVE                             R34 R32
      287 CALL                             R33 1 -1
      288 RETURN                           R33 -1
