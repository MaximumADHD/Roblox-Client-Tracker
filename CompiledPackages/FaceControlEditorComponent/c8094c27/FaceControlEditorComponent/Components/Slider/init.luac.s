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
       37 JUMP                             ; [+5]
       38 MOVE                             R14 R13
       39 MOVE                             R15 R11
       40 CALL                             R14 1 0
       41 MOVE                             R10 R12
       42 JUMP                             ; [0]
       43 GETUPVAL                         R12 3
       44 GETTABLEKS                       R11 R12 K5 ["useRef"]
       46 LOADNIL                          R12
       47 CALL                             R11 1 1
       48 GETUPVAL                         R13 3
       49 GETTABLEKS                       R12 R13 K6 ["useImperativeHandle"]
       51 MOVE                             R13 R1
       52 NEWCLOSURE                       R14 P0
       53 CAPTURE                          VAL R11
       54 NEWTABLE                         R15 0 0
       56 CALL                             R12 3 0
       57 GETUPVAL                         R12 6
       58 GETTABLEKS                       R13 R11 K7 ["current"]
       60 CALL                             R12 1 1
       61 GETUPVAL                         R13 7
       62 MOVE                             R14 R3
       63 GETTABLEKS                       R15 R2 K8 ["size"]
       65 GETTABLEKS                       R16 R2 K9 ["variant"]
       67 CALL                             R13 3 1
       68 GETUPVAL                         R14 8
       69 GETTABLEKS                       R16 R13 K10 ["knob"]
       71 GETTABLEKS                       R15 R16 K11 ["style"]
       73 GETTABLEKS                       R17 R13 K10 ["knob"]
       75 GETTABLEKS                       R16 R17 K12 ["dragStyle"]
       77 CALL                             R14 2 1
       78 GETUPVAL                         R16 3
       79 GETTABLEKS                       R15 R16 K13 ["useMemo"]
       81 NEWCLOSURE                       R16 P1
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R6
       85 NEWTABLE                         R17 0 4
       87 MOVE                             R18 R3
       88 MOVE                             R19 R8
       89 MOVE                             R20 R6
       90 MOVE                             R21 R14
       91 SETLIST                          R17 R18 4 [1]
       93 CALL                             R15 2 1
       94 GETUPVAL                         R17 3
       95 GETTABLEKS                       R16 R17 K14 ["useEffect"]
       97 NEWCLOSURE                       R17 P2
       98 CAPTURE                          VAL R2
       99 CAPTURE                          UPVAL U9
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R4
      103 NEWTABLE                         R18 0 3
      105 GETTABLEKS                       R19 R2 K15 ["knobVisibility"]
      107 MOVE                             R20 R4
      108 MOVE                             R21 R6
      109 SETLIST                          R18 R19 3 [1]
      111 CALL                             R16 2 0
      112 GETUPVAL                         R17 3
      113 GETTABLEKS                       R16 R17 K16 ["useCallback"]
      115 NEWCLOSURE                       R17 P3
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R2
      118 NEWTABLE                         R18 0 2
      120 MOVE                             R19 R11
      121 GETTABLEKS                       R20 R2 K17 ["range"]
      123 SETLIST                          R18 R19 2 [1]
      125 CALL                             R16 2 1
      126 GETUPVAL                         R18 3
      127 GETTABLEKS                       R17 R18 K16 ["useCallback"]
      129 NEWCLOSURE                       R18 P4
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R2
      132 NEWTABLE                         R19 0 2
      134 MOVE                             R20 R10
      135 GETTABLEKS                       R21 R2 K18 ["onValueChanged"]
      137 SETLIST                          R19 R20 2 [1]
      139 CALL                             R17 2 1
      140 GETUPVAL                         R19 3
      141 GETTABLEKS                       R18 R19 K16 ["useCallback"]
      143 NEWCLOSURE                       R19 P5
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R17
      147 NEWTABLE                         R20 0 3
      149 MOVE                             R21 R16
      150 MOVE                             R22 R12
      151 MOVE                             R23 R17
      152 SETLIST                          R20 R21 3 [1]
      154 CALL                             R18 2 1
      155 GETUPVAL                         R20 3
      156 GETTABLEKS                       R19 R20 K16 ["useCallback"]
      158 NEWCLOSURE                       R20 P6
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R10
      162 NEWTABLE                         R21 0 1
      164 MOVE                             R22 R16
      165 SETLIST                          R21 R22 1 [1]
      167 CALL                             R19 2 1
      168 GETUPVAL                         R21 3
      169 GETTABLEKS                       R20 R21 K16 ["useCallback"]
      171 NEWCLOSURE                       R21 P7
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R19
      175 NEWTABLE                         R22 0 2
      177 GETTABLEKS                       R23 R2 K19 ["onDragStarted"]
      179 MOVE                             R24 R19
      180 SETLIST                          R22 R23 2 [1]
      182 CALL                             R20 2 1
      183 GETUPVAL                         R22 3
      184 GETTABLEKS                       R21 R22 K16 ["useCallback"]
      186 NEWCLOSURE                       R22 P8
      187 CAPTURE                          VAL R6
      188 CAPTURE                          VAL R19
      189 NEWTABLE                         R23 0 2
      191 MOVE                             R24 R6
      192 MOVE                             R25 R19
      193 SETLIST                          R23 R24 2 [1]
      195 CALL                             R21 2 1
      196 GETUPVAL                         R23 3
      197 GETTABLEKS                       R22 R23 K16 ["useCallback"]
      199 NEWCLOSURE                       R23 P9
      200 CAPTURE                          VAL R6
      201 CAPTURE                          VAL R7
      202 CAPTURE                          VAL R2
      203 NEWTABLE                         R24 0 2
      205 MOVE                             R25 R6
      206 GETTABLEKS                       R26 R2 K20 ["onDragEnded"]
      208 SETLIST                          R24 R25 2 [1]
      210 CALL                             R22 2 1
      211 GETUPVAL                         R24 3
      212 GETTABLEKS                       R23 R24 K16 ["useCallback"]
      214 NEWCLOSURE                       R24 P10
      215 CAPTURE                          VAL R5
      216 CAPTURE                          UPVAL U4
      217 CAPTURE                          VAL R18
      218 NEWTABLE                         R25 0 1
      220 MOVE                             R26 R18
      221 SETLIST                          R25 R26 1 [1]
      223 CALL                             R23 2 1
      224 GETTABLEKS                       R25 R2 K21 ["isContained"]
      226 JUMPIFNOT                        R25 ; [+6]
      227 NEWCLOSURE                       R26 P11
      228 CAPTURE                          VAL R2
      229 NAMECALL                         R24 R10 K22 ["map"]
      231 CALL                             R24 2 1
      232 JUMP                             ; [+5]
      233 GETIMPORT                        R24 K25 [Vector2.new]
      235 LOADK                            R25 K26 [0.5]
      236 LOADK                            R26 K26 [0.5]
      237 CALL                             R24 2 1
      238 GETUPVAL                         R26 3
      239 GETTABLEKS                       R25 R26 K27 ["createElement"]
      241 GETUPVAL                         R27 10
      242 GETTABLEKS                       R26 R27 K28 ["View"]
      244 DUPTABLE                         R28 K35 [{"Size", "GroupTransparency", "stateLayer", "onStateChanged", "isDisabled", "ref"}]
      245 GETIMPORT                        R29 K37 [UDim2.new]
      247 GETTABLEKS                       R30 R2 K38 ["width"]
      249 GETIMPORT                        R31 K40 [UDim.new]
      251 LOADN                            R32 0
      252 GETTABLEKS                       R34 R13 K41 ["hitbox"]
      254 GETTABLEKS                       R33 R34 K42 ["height"]
      256 CALL                             R31 2 -1
      257 CALL                             R29 -1 1
      258 SETTABLEKS                       R29 R28 K29 ["Size"]
      260 GETTABLEKS                       R30 R2 K33 ["isDisabled"]
      262 JUMPIFNOT                        R30 ; [+2]
      263 LOADK                            R29 K26 [0.5]
      264 JUMP                             ; [+1]
      265 LOADNIL                          R29
      266 SETTABLEKS                       R29 R28 K30 ["GroupTransparency"]
      268 DUPTABLE                         R29 K44 [{"affordance"}]
      269 GETUPVAL                         R31 11
      270 GETTABLEKS                       R30 R31 K45 ["None"]
      272 SETTABLEKS                       R30 R29 K43 ["affordance"]
      274 SETTABLEKS                       R29 R28 K31 ["stateLayer"]
      276 SETTABLEKS                       R23 R28 K32 ["onStateChanged"]
      278 GETTABLEKS                       R29 R2 K33 ["isDisabled"]
      280 SETTABLEKS                       R29 R28 K33 ["isDisabled"]
      282 SETTABLEKS                       R11 R28 K34 ["ref"]
      284 FASTCALL1                        TYPE R28 ; [+3]
      285 MOVE                             R30 R28
      286 GETIMPORT                        R29 K47 [type]
      288 CALL                             R29 1 1
      289 JUMPIFNOTEQKS                    R29 K48 ["table"] ; [+33]
      291 GETTABLEKS                       R29 R2 K49 ["AnchorPoint"]
      293 SETTABLEKS                       R29 R28 K49 ["AnchorPoint"]
      295 GETTABLEKS                       R29 R2 K50 ["LayoutOrder"]
      297 SETTABLEKS                       R29 R28 K50 ["LayoutOrder"]
      299 GETTABLEKS                       R29 R2 K51 ["Position"]
      301 SETTABLEKS                       R29 R28 K51 ["Position"]
      303 GETTABLEKS                       R29 R2 K52 ["Visible"]
      305 SETTABLEKS                       R29 R28 K52 ["Visible"]
      307 GETTABLEKS                       R29 R2 K53 ["ZIndex"]
      309 SETTABLEKS                       R29 R28 K53 ["ZIndex"]
      311 GETTABLEKS                       R29 R2 K54 ["onAbsoluteSizeChanged"]
      313 SETTABLEKS                       R29 R28 K54 ["onAbsoluteSizeChanged"]
      315 GETTABLEKS                       R29 R2 K55 ["onAbsolutePositionChanged"]
      317 SETTABLEKS                       R29 R28 K55 ["onAbsolutePositionChanged"]
      319 GETTABLEKS                       R29 R2 K56 ["testId"]
      321 SETTABLEKS                       R29 R28 K56 ["testId"]
      323 MOVE                             R27 R28
      324 DUPTABLE                         R28 K59 [{"ClickHandler", "Bar"}]
      325 GETTABLEKS                       R30 R2 K33 ["isDisabled"]
      327 NOT                              R29 R30
      328 JUMPIFNOT                        R29 ; [+57]
      329 GETUPVAL                         R30 3
      330 GETTABLEKS                       R29 R30 K27 ["createElement"]
      332 LOADK                            R30 K60 ["ImageButton"]
      333 NEWTABLE                         R31 8 0
      335 LOADN                            R32 4
      336 SETTABLEKS                       R32 R31 K53 ["ZIndex"]
      338 GETIMPORT                        R32 K37 [UDim2.new]
      340 LOADN                            R33 1
      341 LOADN                            R34 0
      342 LOADN                            R35 1
      343 JUMPIFNOT                        R6 ; [+2]
      344 LOADN                            R36 44
      345 JUMP                             ; [+1]
      346 LOADN                            R36 0
      347 CALL                             R32 4 1
      348 SETTABLEKS                       R32 R31 K29 ["Size"]
      350 GETIMPORT                        R32 K62 [UDim2.fromScale]
      352 LOADK                            R33 K26 [0.5]
      353 LOADK                            R34 K26 [0.5]
      354 CALL                             R32 2 1
      355 SETTABLEKS                       R32 R31 K51 ["Position"]
      357 GETIMPORT                        R32 K25 [Vector2.new]
      359 LOADK                            R33 K26 [0.5]
      360 LOADK                            R34 K26 [0.5]
      361 CALL                             R32 2 1
      362 SETTABLEKS                       R32 R31 K49 ["AnchorPoint"]
      364 LOADN                            R32 1
      365 SETTABLEKS                       R32 R31 K63 ["BackgroundTransparency"]
      367 GETUPVAL                         R34 3
      368 GETTABLEKS                       R33 R34 K64 ["Event"]
      370 GETTABLEKS                       R32 R33 K65 ["InputBegan"]
      372 SETTABLE                         R20 R31 R32
      373 GETUPVAL                         R34 3
      374 GETTABLEKS                       R33 R34 K64 ["Event"]
      376 GETTABLEKS                       R32 R33 K66 ["InputChanged"]
      378 SETTABLE                         R21 R31 R32
      379 GETUPVAL                         R34 3
      380 GETTABLEKS                       R33 R34 K64 ["Event"]
      382 GETTABLEKS                       R32 R33 K67 ["InputEnded"]
      384 SETTABLE                         R22 R31 R32
      385 CALL                             R29 2 1
      386 SETTABLEKS                       R29 R28 K57 ["ClickHandler"]
      388 GETUPVAL                         R30 3
      389 GETTABLEKS                       R29 R30 K27 ["createElement"]
      391 GETUPVAL                         R31 10
      392 GETTABLEKS                       R30 R31 K28 ["View"]
      394 DUPTABLE                         R31 K69 [{"tag", "testId"}]
      395 GETTABLEKS                       R33 R13 K70 ["bar"]
      397 GETTABLEKS                       R32 R33 K68 ["tag"]
      399 SETTABLEKS                       R32 R31 K68 ["tag"]
      401 LOADK                            R32 K71 ["--foundation-slider-bar"]
      402 SETTABLEKS                       R32 R31 K56 ["testId"]
      404 DUPTABLE                         R32 K73 [{"Fill"}]
      405 GETUPVAL                         R34 3
      406 GETTABLEKS                       R33 R34 K27 ["createElement"]
      408 GETUPVAL                         R35 10
      409 GETTABLEKS                       R34 R35 K28 ["View"]
      411 DUPTABLE                         R35 K74 [{"tag", "Size", "testId"}]
      412 GETTABLEKS                       R37 R13 K75 ["fill"]
      414 GETTABLEKS                       R36 R37 K68 ["tag"]
      416 SETTABLEKS                       R36 R35 K68 ["tag"]
      418 NEWCLOSURE                       R38 P12
      419 CAPTURE                          VAL R2
      420 NAMECALL                         R36 R10 K22 ["map"]
      422 CALL                             R36 2 1
      423 SETTABLEKS                       R36 R35 K29 ["Size"]
      425 LOADK                            R36 K76 ["--foundation-slider-fill"]
      426 SETTABLEKS                       R36 R35 K56 ["testId"]
      428 DUPTABLE                         R36 K78 [{"Knob"}]
      429 GETTABLEKS                       R38 R2 K10 ["knob"]
      431 JUMPIFNOT                        R38 ; [+21]
      432 GETUPVAL                         R38 3
      433 GETTABLEKS                       R37 R38 K27 ["createElement"]
      435 GETUPVAL                         R39 10
      436 GETTABLEKS                       R38 R39 K28 ["View"]
      438 DUPTABLE                         R39 K79 [{"tag", "AnchorPoint", "Visible", "testId"}]
      439 LOADK                            R40 K80 ["position-center-right auto-xy size-0-0"]
      440 SETTABLEKS                       R40 R39 K68 ["tag"]
      442 SETTABLEKS                       R24 R39 K49 ["AnchorPoint"]
      444 SETTABLEKS                       R8 R39 K52 ["Visible"]
      446 LOADK                            R40 K81 ["--foundation-knob"]
      447 SETTABLEKS                       R40 R39 K56 ["testId"]
      449 GETTABLEKS                       R40 R2 K10 ["knob"]
      451 CALL                             R37 3 1
      452 JUMP                             ; [+40]
      453 GETUPVAL                         R38 3
      454 GETTABLEKS                       R37 R38 K27 ["createElement"]
      456 GETUPVAL                         R39 10
      457 GETTABLEKS                       R38 R39 K77 ["Knob"]
      459 DUPTABLE                         R39 K84 [{"AnchorPoint", "Position", "size", "style", "stroke", "hasShadow", "testId"}]
      460 SETTABLEKS                       R24 R39 K49 ["AnchorPoint"]
      462 GETIMPORT                        R40 K62 [UDim2.fromScale]
      464 LOADN                            R41 1
      465 LOADK                            R42 K26 [0.5]
      466 CALL                             R40 2 1
      467 SETTABLEKS                       R40 R39 K51 ["Position"]
      469 GETTABLEKS                       R40 R2 K8 ["size"]
      471 SETTABLEKS                       R40 R39 K8 ["size"]
      473 GETTABLEKS                       R40 R15 K85 ["knobStyle"]
      475 SETTABLEKS                       R40 R39 K11 ["style"]
      477 GETTABLEKS                       R41 R13 K10 ["knob"]
      479 GETTABLEKS                       R40 R41 K82 ["stroke"]
      481 SETTABLEKS                       R40 R39 K82 ["stroke"]
      483 GETTABLEKS                       R41 R13 K10 ["knob"]
      485 GETTABLEKS                       R40 R41 K83 ["hasShadow"]
      487 SETTABLEKS                       R40 R39 K83 ["hasShadow"]
      489 LOADK                            R40 K81 ["--foundation-knob"]
      490 SETTABLEKS                       R40 R39 K56 ["testId"]
      492 CALL                             R37 2 1
      493 SETTABLEKS                       R37 R36 K77 ["Knob"]
      495 CALL                             R33 3 1
      496 SETTABLEKS                       R33 R32 K72 ["Fill"]
      498 CALL                             R29 3 1
      499 SETTABLEKS                       R29 R28 K58 ["Bar"]
      501 CALL                             R25 3 -1
      502 RETURN                           R25 -1

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
