PROTO_0:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+33]
        7 GETTABLEKS                       R2 R0 K3 ["AnchorPoint"]
        9 SETTABLEKS                       R2 R1 K3 ["AnchorPoint"]
       11 GETTABLEKS                       R2 R0 K4 ["LayoutOrder"]
       13 SETTABLEKS                       R2 R1 K4 ["LayoutOrder"]
       15 GETTABLEKS                       R2 R0 K5 ["Position"]
       17 SETTABLEKS                       R2 R1 K5 ["Position"]
       19 GETTABLEKS                       R2 R0 K6 ["Visible"]
       21 SETTABLEKS                       R2 R1 K6 ["Visible"]
       23 GETTABLEKS                       R2 R0 K7 ["ZIndex"]
       25 SETTABLEKS                       R2 R1 K7 ["ZIndex"]
       27 GETTABLEKS                       R2 R0 K8 ["onAbsoluteSizeChanged"]
       29 SETTABLEKS                       R2 R1 K8 ["onAbsoluteSizeChanged"]
       31 GETTABLEKS                       R2 R0 K9 ["onAbsolutePositionChanged"]
       33 SETTABLEKS                       R2 R1 K9 ["onAbsolutePositionChanged"]
       35 GETTABLEKS                       R2 R0 K10 ["testId"]
       37 SETTABLEKS                       R2 R1 K10 ["testId"]
       39 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useBinding"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["isBinding"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 JUMPIFNOT                        R3 ; [+1]
       11 RETURN                           R0 1
       12 MOVE                             R3 R2
       13 MOVE                             R4 R0
       14 CALL                             R3 1 0
       15 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 1

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["knobVisibility"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["VisibilityEnum"]
        6 GETTABLEKS                       R1 R2 K2 ["None"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+5]
       10 GETUPVAL                         R0 2
       11 LOADB                            R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K0 ["knobVisibility"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K1 ["VisibilityEnum"]
       20 GETTABLEKS                       R1 R2 K3 ["Always"]
       22 JUMPIFNOTEQ                      R0 R1 ; [+5]
       24 GETUPVAL                         R0 2
       25 LOADB                            R1 1
       26 CALL                             R0 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R0 2
       29 GETUPVAL                         R1 3
       30 JUMPIF                           R1 ; [+28]
       31 LOADB                            R1 1
       32 GETUPVAL                         R2 4
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R4 R5 K4 ["ControlStateEnum"]
       36 GETTABLEKS                       R3 R4 K5 ["Hover"]
       38 JUMPIFEQ                         R2 R3 ; [+20]
       40 LOADB                            R1 1
       41 GETUPVAL                         R2 4
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R4 R5 K4 ["ControlStateEnum"]
       45 GETTABLEKS                       R3 R4 K6 ["Selected"]
       47 JUMPIFEQ                         R2 R3 ; [+11]
       49 GETUPVAL                         R2 4
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R4 R5 K4 ["ControlStateEnum"]
       53 GETTABLEKS                       R3 R4 K7 ["Pressed"]
       55 JUMPIFEQ                         R2 R3 ; [+2]
       57 LOADB                            R1 0 +1
       58 LOADB                            R1 1
       59 CALL                             R0 1 0
       60 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+70]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["current"]
        7 GETTABLEKS                       R1 R2 K1 ["AbsoluteRotation"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["current"]
       12 GETTABLEKS                       R4 R2 K2 ["AbsoluteSize"]
       14 GETTABLEKS                       R3 R4 K3 ["Magnitude"]
       16 GETTABLEKS                       R5 R2 K4 ["AbsolutePosition"]
       18 GETTABLEKS                       R7 R2 K2 ["AbsoluteSize"]
       20 MULK                             R6 R7 K5 [0.5]
       21 ADD                              R4 R5 R6
       22 FASTCALL1                        MATH_RAD R1 ; [+3]
       23 MOVE                             R6 R1
       24 GETIMPORT                        R5 K8 [math.rad]
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K11 [Vector2.new]
       29 FASTCALL1                        MATH_COS R5 ; [+3]
       30 MOVE                             R8 R5
       31 GETIMPORT                        R7 K13 [math.cos]
       33 CALL                             R7 1 1
       34 FASTCALL1                        MATH_SIN R5 ; [+3]
       35 MOVE                             R9 R5
       36 GETIMPORT                        R8 K15 [math.sin]
       38 CALL                             R8 1 1
       39 CALL                             R6 2 1
       40 SUB                              R7 R0 R4
       41 MOVE                             R9 R6
       42 NAMECALL                         R7 R7 K16 ["Dot"]
       44 CALL                             R7 2 1
       45 DIV                              R9 R7 R3
       46 ADDK                             R8 R9 K5 [0.5]
       47 LOADN                            R11 0
       48 LOADN                            R12 1
       49 FASTCALL3                        MATH_CLAMP R8 R11 R12
       51 MOVE                             R10 R8
       52 GETIMPORT                        R9 K18 [math.clamp]
       54 CALL                             R9 3 1
       55 GETUPVAL                         R13 1
       56 GETTABLEKS                       R12 R13 K19 ["range"]
       58 GETTABLEKS                       R11 R12 K20 ["Max"]
       60 GETUPVAL                         R14 1
       61 GETTABLEKS                       R13 R14 K19 ["range"]
       63 GETTABLEKS                       R12 R13 K21 ["Min"]
       65 SUB                              R10 R11 R12
       66 MUL                              R12 R9 R10
       67 GETUPVAL                         R15 1
       68 GETTABLEKS                       R14 R15 K19 ["range"]
       70 GETTABLEKS                       R13 R14 K21 ["Min"]
       72 ADD                              R11 R12 R13
       73 RETURN                           R11 1
       74 LOADN                            R1 0
       75 RETURN                           R1 1

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getValue"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 1
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [Vector2.new]
        3 GETTABLEKS                       R4 R0 K3 ["Position"]
        5 GETTABLEKS                       R3 R4 K4 ["X"]
        7 GETTABLEKS                       R5 R0 K3 ["Position"]
        9 GETTABLEKS                       R4 R5 K5 ["Y"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K6 ["onValueChanged"]
       16 JUMPIFNOT                        R2 ; [+11]
       17 GETUPVAL                         R2 2
       18 NAMECALL                         R2 R2 K7 ["getValue"]
       20 CALL                             R2 1 1
       21 JUMPIFEQ                         R1 R2 ; [+6]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K6 ["onValueChanged"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+15]
        6 GETUPVAL                         R2 0
        7 LOADB                            R3 1
        8 CALL                             R2 1 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K4 ["onDragStarted"]
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K4 ["onDragStarted"]
       16 CALL                             R2 0 0
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+9]
        2 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        4 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        6 JUMPIFNOTEQ                      R2 R3 ; [+4]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+17]
        2 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        4 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        6 JUMPIFNOTEQ                      R2 R3 ; [+12]
        8 GETUPVAL                         R2 1
        9 LOADB                            R3 0
       10 CALL                             R2 1 0
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K4 ["onDragEnded"]
       14 JUMPIFNOT                        R2 ; [+4]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K4 ["onDragEnded"]
       18 CALL                             R2 0 0
       19 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["Pressed"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+3]
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETIMPORT                        R1 K2 [UDim2.fromScale]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K3 ["range"]
        5 GETTABLEKS                       R3 R4 K4 ["Max"]
        7 DIV                              R2 R0 R3
        8 LOADN                            R3 1
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_15:
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
       23 GETTABLEKS                       R11 R2 K2 ["value"]
       25 GETUPVAL                         R13 3
       26 GETTABLEKS                       R12 R13 K3 ["useBinding"]
       28 LOADNIL                          R13
       29 CALL                             R12 1 2
       30 GETUPVAL                         R15 5
       31 GETTABLEKS                       R14 R15 K4 ["isBinding"]
       33 MOVE                             R15 R11
       34 CALL                             R14 1 1
       35 JUMPIFNOT                        R14 ; [+2]
       36 MOVE                             R10 R11
       37 JUMP                             ; [+4]
       38 MOVE                             R14 R13
       39 MOVE                             R15 R11
       40 CALL                             R14 1 0
       41 MOVE                             R10 R12
       42 GETUPVAL                         R12 3
       43 GETTABLEKS                       R11 R12 K5 ["useRef"]
       45 LOADNIL                          R12
       46 CALL                             R11 1 1
       47 GETUPVAL                         R13 3
       48 GETTABLEKS                       R12 R13 K6 ["useImperativeHandle"]
       50 MOVE                             R13 R1
       51 NEWCLOSURE                       R14 P0
       52 CAPTURE                          VAL R11
       53 NEWTABLE                         R15 0 0
       55 CALL                             R12 3 0
       56 GETUPVAL                         R12 6
       57 GETTABLEKS                       R13 R11 K7 ["current"]
       59 CALL                             R12 1 1
       60 GETUPVAL                         R13 7
       61 MOVE                             R14 R3
       62 GETTABLEKS                       R15 R2 K8 ["size"]
       64 GETTABLEKS                       R16 R2 K9 ["variant"]
       66 CALL                             R13 3 1
       67 GETUPVAL                         R14 8
       68 GETTABLEKS                       R16 R13 K10 ["knob"]
       70 GETTABLEKS                       R15 R16 K11 ["style"]
       72 GETTABLEKS                       R17 R13 K10 ["knob"]
       74 GETTABLEKS                       R16 R17 K12 ["dragStyle"]
       76 CALL                             R14 2 1
       77 GETUPVAL                         R16 3
       78 GETTABLEKS                       R15 R16 K13 ["useMemo"]
       80 NEWCLOSURE                       R16 P1
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R6
       84 NEWTABLE                         R17 0 4
       86 MOVE                             R18 R3
       87 MOVE                             R19 R8
       88 MOVE                             R20 R6
       89 MOVE                             R21 R14
       90 SETLIST                          R17 R18 4 [1]
       92 CALL                             R15 2 1
       93 GETUPVAL                         R17 3
       94 GETTABLEKS                       R16 R17 K14 ["useEffect"]
       96 NEWCLOSURE                       R17 P2
       97 CAPTURE                          VAL R2
       98 CAPTURE                          UPVAL U9
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R4
      102 NEWTABLE                         R18 0 3
      104 GETTABLEKS                       R19 R2 K15 ["knobVisibility"]
      106 MOVE                             R20 R4
      107 MOVE                             R21 R6
      108 SETLIST                          R18 R19 3 [1]
      110 CALL                             R16 2 0
      111 GETUPVAL                         R17 3
      112 GETTABLEKS                       R16 R17 K16 ["useCallback"]
      114 NEWCLOSURE                       R17 P3
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R2
      117 NEWTABLE                         R18 0 2
      119 MOVE                             R19 R11
      120 GETTABLEKS                       R20 R2 K17 ["range"]
      122 SETLIST                          R18 R19 2 [1]
      124 CALL                             R16 2 1
      125 GETUPVAL                         R18 3
      126 GETTABLEKS                       R17 R18 K16 ["useCallback"]
      128 NEWCLOSURE                       R18 P4
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R2
      131 NEWTABLE                         R19 0 2
      133 MOVE                             R20 R10
      134 GETTABLEKS                       R21 R2 K18 ["onValueChanged"]
      136 SETLIST                          R19 R20 2 [1]
      138 CALL                             R17 2 1
      139 GETUPVAL                         R19 3
      140 GETTABLEKS                       R18 R19 K16 ["useCallback"]
      142 NEWCLOSURE                       R19 P5
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R17
      146 NEWTABLE                         R20 0 3
      148 MOVE                             R21 R16
      149 MOVE                             R22 R12
      150 MOVE                             R23 R17
      151 SETLIST                          R20 R21 3 [1]
      153 CALL                             R18 2 1
      154 GETUPVAL                         R20 3
      155 GETTABLEKS                       R19 R20 K16 ["useCallback"]
      157 NEWCLOSURE                       R20 P6
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R10
      161 NEWTABLE                         R21 0 1
      163 MOVE                             R22 R16
      164 SETLIST                          R21 R22 1 [1]
      166 CALL                             R19 2 1
      167 GETUPVAL                         R21 3
      168 GETTABLEKS                       R20 R21 K16 ["useCallback"]
      170 NEWCLOSURE                       R21 P7
      171 CAPTURE                          VAL R7
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R19
      174 NEWTABLE                         R22 0 2
      176 GETTABLEKS                       R23 R2 K19 ["onDragStarted"]
      178 MOVE                             R24 R19
      179 SETLIST                          R22 R23 2 [1]
      181 CALL                             R20 2 1
      182 GETUPVAL                         R22 3
      183 GETTABLEKS                       R21 R22 K16 ["useCallback"]
      185 NEWCLOSURE                       R22 P8
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R19
      188 NEWTABLE                         R23 0 2
      190 MOVE                             R24 R6
      191 MOVE                             R25 R19
      192 SETLIST                          R23 R24 2 [1]
      194 CALL                             R21 2 1
      195 GETUPVAL                         R23 3
      196 GETTABLEKS                       R22 R23 K16 ["useCallback"]
      198 NEWCLOSURE                       R23 P9
      199 CAPTURE                          VAL R6
      200 CAPTURE                          VAL R7
      201 CAPTURE                          VAL R2
      202 NEWTABLE                         R24 0 2
      204 MOVE                             R25 R6
      205 GETTABLEKS                       R26 R2 K20 ["onDragEnded"]
      207 SETLIST                          R24 R25 2 [1]
      209 CALL                             R22 2 1
      210 GETUPVAL                         R24 3
      211 GETTABLEKS                       R23 R24 K16 ["useCallback"]
      213 NEWCLOSURE                       R24 P10
      214 CAPTURE                          VAL R5
      215 CAPTURE                          UPVAL U4
      216 CAPTURE                          VAL R18
      217 NEWTABLE                         R25 0 1
      219 MOVE                             R26 R18
      220 SETLIST                          R25 R26 1 [1]
      222 CALL                             R23 2 1
      223 GETTABLEKS                       R25 R2 K21 ["isContained"]
      225 JUMPIFNOT                        R25 ; [+6]
      226 NEWCLOSURE                       R26 P11
      227 CAPTURE                          VAL R2
      228 NAMECALL                         R24 R10 K22 ["map"]
      230 CALL                             R24 2 1
      231 JUMP                             ; [+5]
      232 GETIMPORT                        R24 K25 [Vector2.new]
      234 LOADK                            R25 K26 [0.5]
      235 LOADK                            R26 K26 [0.5]
      236 CALL                             R24 2 1
      237 GETUPVAL                         R26 3
      238 GETTABLEKS                       R25 R26 K27 ["createElement"]
      240 GETUPVAL                         R27 10
      241 GETTABLEKS                       R26 R27 K28 ["View"]
      243 DUPTABLE                         R28 K35 [{"Size", "GroupTransparency", "stateLayer", "onStateChanged", "isDisabled", "ref"}]
      244 GETIMPORT                        R29 K37 [UDim2.new]
      246 GETTABLEKS                       R30 R2 K38 ["width"]
      248 GETIMPORT                        R31 K40 [UDim.new]
      250 LOADN                            R32 0
      251 GETTABLEKS                       R34 R13 K41 ["hitbox"]
      253 GETTABLEKS                       R33 R34 K42 ["height"]
      255 CALL                             R31 2 -1
      256 CALL                             R29 -1 1
      257 SETTABLEKS                       R29 R28 K29 ["Size"]
      259 GETTABLEKS                       R30 R2 K33 ["isDisabled"]
      261 JUMPIFNOT                        R30 ; [+2]
      262 LOADK                            R29 K26 [0.5]
      263 JUMP                             ; [+1]
      264 LOADNIL                          R29
      265 SETTABLEKS                       R29 R28 K30 ["GroupTransparency"]
      267 DUPTABLE                         R29 K44 [{"affordance"}]
      268 GETUPVAL                         R31 11
      269 GETTABLEKS                       R30 R31 K45 ["None"]
      271 SETTABLEKS                       R30 R29 K43 ["affordance"]
      273 SETTABLEKS                       R29 R28 K31 ["stateLayer"]
      275 SETTABLEKS                       R23 R28 K32 ["onStateChanged"]
      277 GETTABLEKS                       R29 R2 K33 ["isDisabled"]
      279 SETTABLEKS                       R29 R28 K33 ["isDisabled"]
      281 SETTABLEKS                       R11 R28 K34 ["ref"]
      283 FASTCALL1                        TYPE R28 ; [+3]
      284 MOVE                             R30 R28
      285 GETIMPORT                        R29 K47 [type]
      287 CALL                             R29 1 1
      288 JUMPIFNOTEQKS                    R29 K48 ["table"] ; [+33]
      290 GETTABLEKS                       R29 R2 K49 ["AnchorPoint"]
      292 SETTABLEKS                       R29 R28 K49 ["AnchorPoint"]
      294 GETTABLEKS                       R29 R2 K50 ["LayoutOrder"]
      296 SETTABLEKS                       R29 R28 K50 ["LayoutOrder"]
      298 GETTABLEKS                       R29 R2 K51 ["Position"]
      300 SETTABLEKS                       R29 R28 K51 ["Position"]
      302 GETTABLEKS                       R29 R2 K52 ["Visible"]
      304 SETTABLEKS                       R29 R28 K52 ["Visible"]
      306 GETTABLEKS                       R29 R2 K53 ["ZIndex"]
      308 SETTABLEKS                       R29 R28 K53 ["ZIndex"]
      310 GETTABLEKS                       R29 R2 K54 ["onAbsoluteSizeChanged"]
      312 SETTABLEKS                       R29 R28 K54 ["onAbsoluteSizeChanged"]
      314 GETTABLEKS                       R29 R2 K55 ["onAbsolutePositionChanged"]
      316 SETTABLEKS                       R29 R28 K55 ["onAbsolutePositionChanged"]
      318 GETTABLEKS                       R29 R2 K56 ["testId"]
      320 SETTABLEKS                       R29 R28 K56 ["testId"]
      322 MOVE                             R27 R28
      323 DUPTABLE                         R28 K59 [{"ClickHandler", "Bar"}]
      324 GETTABLEKS                       R30 R2 K33 ["isDisabled"]
      326 NOT                              R29 R30
      327 JUMPIFNOT                        R29 ; [+57]
      328 GETUPVAL                         R30 3
      329 GETTABLEKS                       R29 R30 K27 ["createElement"]
      331 LOADK                            R30 K60 ["ImageButton"]
      332 NEWTABLE                         R31 8 0
      334 LOADN                            R32 4
      335 SETTABLEKS                       R32 R31 K53 ["ZIndex"]
      337 GETIMPORT                        R32 K37 [UDim2.new]
      339 LOADN                            R33 1
      340 LOADN                            R34 0
      341 LOADN                            R35 1
      342 JUMPIFNOT                        R6 ; [+2]
      343 LOADN                            R36 44
      344 JUMP                             ; [+1]
      345 LOADN                            R36 0
      346 CALL                             R32 4 1
      347 SETTABLEKS                       R32 R31 K29 ["Size"]
      349 GETIMPORT                        R32 K62 [UDim2.fromScale]
      351 LOADK                            R33 K26 [0.5]
      352 LOADK                            R34 K26 [0.5]
      353 CALL                             R32 2 1
      354 SETTABLEKS                       R32 R31 K51 ["Position"]
      356 GETIMPORT                        R32 K25 [Vector2.new]
      358 LOADK                            R33 K26 [0.5]
      359 LOADK                            R34 K26 [0.5]
      360 CALL                             R32 2 1
      361 SETTABLEKS                       R32 R31 K49 ["AnchorPoint"]
      363 LOADN                            R32 1
      364 SETTABLEKS                       R32 R31 K63 ["BackgroundTransparency"]
      366 GETUPVAL                         R34 3
      367 GETTABLEKS                       R33 R34 K64 ["Event"]
      369 GETTABLEKS                       R32 R33 K65 ["InputBegan"]
      371 SETTABLE                         R20 R31 R32
      372 GETUPVAL                         R34 3
      373 GETTABLEKS                       R33 R34 K64 ["Event"]
      375 GETTABLEKS                       R32 R33 K66 ["InputChanged"]
      377 SETTABLE                         R21 R31 R32
      378 GETUPVAL                         R34 3
      379 GETTABLEKS                       R33 R34 K64 ["Event"]
      381 GETTABLEKS                       R32 R33 K67 ["InputEnded"]
      383 SETTABLE                         R22 R31 R32
      384 CALL                             R29 2 1
      385 SETTABLEKS                       R29 R28 K57 ["ClickHandler"]
      387 GETUPVAL                         R30 3
      388 GETTABLEKS                       R29 R30 K27 ["createElement"]
      390 GETUPVAL                         R31 10
      391 GETTABLEKS                       R30 R31 K28 ["View"]
      393 DUPTABLE                         R31 K69 [{"tag", "testId"}]
      394 GETTABLEKS                       R33 R13 K70 ["bar"]
      396 GETTABLEKS                       R32 R33 K68 ["tag"]
      398 SETTABLEKS                       R32 R31 K68 ["tag"]
      400 LOADK                            R32 K71 ["--foundation-slider-bar"]
      401 SETTABLEKS                       R32 R31 K56 ["testId"]
      403 DUPTABLE                         R32 K73 [{"Fill"}]
      404 GETUPVAL                         R34 3
      405 GETTABLEKS                       R33 R34 K27 ["createElement"]
      407 GETUPVAL                         R35 10
      408 GETTABLEKS                       R34 R35 K28 ["View"]
      410 DUPTABLE                         R35 K74 [{"tag", "Size", "testId"}]
      411 GETTABLEKS                       R37 R13 K75 ["fill"]
      413 GETTABLEKS                       R36 R37 K68 ["tag"]
      415 SETTABLEKS                       R36 R35 K68 ["tag"]
      417 NEWCLOSURE                       R38 P12
      418 CAPTURE                          VAL R2
      419 NAMECALL                         R36 R10 K22 ["map"]
      421 CALL                             R36 2 1
      422 SETTABLEKS                       R36 R35 K29 ["Size"]
      424 LOADK                            R36 K76 ["--foundation-slider-fill"]
      425 SETTABLEKS                       R36 R35 K56 ["testId"]
      427 DUPTABLE                         R36 K78 [{"Knob"}]
      428 GETTABLEKS                       R38 R2 K10 ["knob"]
      430 JUMPIFNOT                        R38 ; [+21]
      431 GETUPVAL                         R38 3
      432 GETTABLEKS                       R37 R38 K27 ["createElement"]
      434 GETUPVAL                         R39 10
      435 GETTABLEKS                       R38 R39 K28 ["View"]
      437 DUPTABLE                         R39 K79 [{"tag", "AnchorPoint", "Visible", "testId"}]
      438 LOADK                            R40 K80 ["position-center-right auto-xy size-0-0"]
      439 SETTABLEKS                       R40 R39 K68 ["tag"]
      441 SETTABLEKS                       R24 R39 K49 ["AnchorPoint"]
      443 SETTABLEKS                       R8 R39 K52 ["Visible"]
      445 LOADK                            R40 K81 ["--foundation-knob"]
      446 SETTABLEKS                       R40 R39 K56 ["testId"]
      448 GETTABLEKS                       R40 R2 K10 ["knob"]
      450 CALL                             R37 3 1
      451 JUMP                             ; [+40]
      452 GETUPVAL                         R38 3
      453 GETTABLEKS                       R37 R38 K27 ["createElement"]
      455 GETUPVAL                         R39 10
      456 GETTABLEKS                       R38 R39 K77 ["Knob"]
      458 DUPTABLE                         R39 K84 [{"AnchorPoint", "Position", "size", "style", "stroke", "hasShadow", "testId"}]
      459 SETTABLEKS                       R24 R39 K49 ["AnchorPoint"]
      461 GETIMPORT                        R40 K62 [UDim2.fromScale]
      463 LOADN                            R41 1
      464 LOADK                            R42 K26 [0.5]
      465 CALL                             R40 2 1
      466 SETTABLEKS                       R40 R39 K51 ["Position"]
      468 GETTABLEKS                       R40 R2 K8 ["size"]
      470 SETTABLEKS                       R40 R39 K8 ["size"]
      472 GETTABLEKS                       R40 R15 K85 ["knobStyle"]
      474 SETTABLEKS                       R40 R39 K11 ["style"]
      476 GETTABLEKS                       R41 R13 K10 ["knob"]
      478 GETTABLEKS                       R40 R41 K82 ["stroke"]
      480 SETTABLEKS                       R40 R39 K82 ["stroke"]
      482 GETTABLEKS                       R41 R13 K10 ["knob"]
      484 GETTABLEKS                       R40 R41 K83 ["hasShadow"]
      486 SETTABLEKS                       R40 R39 K83 ["hasShadow"]
      488 LOADK                            R40 K81 ["--foundation-knob"]
      489 SETTABLEKS                       R40 R39 K56 ["testId"]
      491 CALL                             R37 2 1
      492 SETTABLEKS                       R37 R36 K77 ["Knob"]
      494 CALL                             R33 3 1
      495 SETTABLEKS                       R33 R32 K72 ["Fill"]
      497 CALL                             R29 3 1
      498 SETTABLEKS                       R29 R28 K58 ["Bar"]
      500 CALL                             R25 3 -1
      501 RETURN                           R25 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETTABLEKS                       R3 R0 K5 ["Utils"]
       11 GETTABLEKS                       R2 R3 K6 ["Slider"]
       13 GETIMPORT                        R3 K8 [require]
       15 GETTABLEKS                       R4 R1 K9 ["React"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K8 [require]
       20 GETTABLEKS                       R5 R1 K10 ["ReactIs"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K8 [require]
       25 GETTABLEKS                       R6 R1 K11 ["Foundation"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K8 [require]
       30 GETTABLEKS                       R7 R2 K12 ["withDefaults"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K8 [require]
       35 GETTABLEKS                       R8 R2 K13 ["usePointerPosition"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K8 [require]
       40 GETTABLEKS                       R11 R0 K14 ["Components"]
       42 GETTABLEKS                       R10 R11 K6 ["Slider"]
       44 GETTABLEKS                       R9 R10 K15 ["useSliderVariants"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K8 [require]
       49 GETTABLEKS                       R12 R0 K14 ["Components"]
       51 GETTABLEKS                       R11 R12 K6 ["Slider"]
       53 GETTABLEKS                       R10 R11 K16 ["SliderTypes"]
       55 CALL                             R9 1 1
       56 GETTABLEKS                       R11 R5 K17 ["Hooks"]
       58 GETTABLEKS                       R10 R11 K18 ["useTokens"]
       60 GETIMPORT                        R11 K8 [require]
       62 GETTABLEKS                       R14 R0 K14 ["Components"]
       64 GETTABLEKS                       R13 R14 K6 ["Slider"]
       66 GETTABLEKS                       R12 R13 K19 ["useSliderMotionStates"]
       68 CALL                             R11 1 1
       69 GETTABLEKS                       R12 R9 K20 ["ControlStateEnum"]
       71 GETTABLEKS                       R13 R9 K21 ["StateLayerAffordanceEnum"]
       73 DUPTABLE                         R14 K29 [{"range", "size", "width", "variant", "isDisabled", "isContained", "knobVisibility"}]
       74 GETIMPORT                        R15 K32 [NumberRange.new]
       76 LOADN                            R16 0
       77 LOADN                            R17 1
       78 CALL                             R15 2 1
       79 SETTABLEKS                       R15 R14 K22 ["range"]
       81 GETTABLEKS                       R16 R9 K33 ["InputSizeEnum"]
       83 GETTABLEKS                       R15 R16 K34 ["Medium"]
       85 SETTABLEKS                       R15 R14 K23 ["size"]
       87 GETIMPORT                        R15 K36 [UDim.new]
       89 LOADN                            R16 1
       90 LOADN                            R17 0
       91 CALL                             R15 2 1
       92 SETTABLEKS                       R15 R14 K24 ["width"]
       94 GETTABLEKS                       R16 R9 K37 ["VariantEnum"]
       96 GETTABLEKS                       R15 R16 K38 ["Standard"]
       98 SETTABLEKS                       R15 R14 K25 ["variant"]
      100 LOADB                            R15 0
      101 SETTABLEKS                       R15 R14 K26 ["isDisabled"]
      103 LOADB                            R15 0
      104 SETTABLEKS                       R15 R14 K27 ["isContained"]
      106 GETTABLEKS                       R16 R9 K39 ["VisibilityEnum"]
      108 GETTABLEKS                       R15 R16 K40 ["Auto"]
      110 SETTABLEKS                       R15 R14 K28 ["knobVisibility"]
      112 DUPCLOSURE                       R15 K41 [PROTO_0]
      113 DUPCLOSURE                       R16 K42 [PROTO_1]
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R4
      116 DUPCLOSURE                       R17 K43 [PROTO_15]
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R13
      129 GETTABLEKS                       R18 R3 K44 ["forwardRef"]
      131 MOVE                             R19 R17
      132 CALL                             R18 1 -1
      133 RETURN                           R18 -1
