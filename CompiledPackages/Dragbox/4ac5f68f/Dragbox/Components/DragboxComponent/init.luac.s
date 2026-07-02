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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["isBinding"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 JUMPIFNOT                        R3 ; [+1]
       11 RETURN                           R0 1
       12 MOVE                             R3 R2
       13 MOVE                             R4 R0
       14 CALL                             R3 1 0
       15 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["Dragging"]
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K1 ["Pressed"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+5]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K1 ["Pressed"]
       15 RETURN                           R0 1
       16 GETUPVAL                         R0 2
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R1 R1 K2 ["Hover"]
       20 JUMPIFNOTEQ                      R0 R1 ; [+5]
       22 GETUPVAL                         R0 1
       23 GETTABLEKS                       R0 R0 K2 ["Hover"]
       25 RETURN                           R0 1
       26 GETUPVAL                         R0 1
       27 GETTABLEKS                       R0 R0 K3 ["Default"]
       29 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["knobVisibility"]
        3 JUMPIFNOTEQKS                    R0 K1 ["None"] ; [+5]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["knobVisibility"]
       12 JUMPIFNOTEQKS                    R0 K2 ["Always"] ; [+5]
       14 GETUPVAL                         R0 1
       15 LOADB                            R1 1
       16 CALL                             R0 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 1
       19 GETUPVAL                         R1 2
       20 JUMPIF                           R1 ; [+22]
       21 LOADB                            R1 1
       22 GETUPVAL                         R2 3
       23 GETUPVAL                         R3 4
       24 GETTABLEKS                       R3 R3 K3 ["Hover"]
       26 JUMPIFEQ                         R2 R3 ; [+16]
       28 LOADB                            R1 1
       29 GETUPVAL                         R2 3
       30 GETUPVAL                         R3 4
       31 GETTABLEKS                       R3 R3 K4 ["Selected"]
       33 JUMPIFEQ                         R2 R3 ; [+9]
       35 GETUPVAL                         R2 3
       36 GETUPVAL                         R3 4
       37 GETTABLEKS                       R3 R3 K5 ["Pressed"]
       39 JUMPIFEQ                         R2 R3 ; [+2]
       41 LOADB                            R1 0 +1
       42 LOADB                            R1 1
       43 CALL                             R0 1 0
       44 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+124]
        4 GETIMPORT                        R1 K3 [NumberRange.new]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["current"]
        9 GETTABLEKS                       R2 R2 K4 ["AbsolutePosition"]
       11 GETTABLEKS                       R2 R2 K5 ["X"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K0 ["current"]
       16 GETTABLEKS                       R4 R4 K4 ["AbsolutePosition"]
       18 GETTABLEKS                       R4 R4 K5 ["X"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["current"]
       23 GETTABLEKS                       R5 R5 K6 ["AbsoluteSize"]
       25 GETTABLEKS                       R5 R5 K5 ["X"]
       27 ADD                              R3 R4 R5
       28 CALL                             R1 2 1
       29 GETIMPORT                        R2 K3 [NumberRange.new]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K0 ["current"]
       34 GETTABLEKS                       R3 R3 K4 ["AbsolutePosition"]
       36 GETTABLEKS                       R3 R3 K7 ["Y"]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K0 ["current"]
       41 GETTABLEKS                       R5 R5 K4 ["AbsolutePosition"]
       43 GETTABLEKS                       R5 R5 K7 ["Y"]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K0 ["current"]
       48 GETTABLEKS                       R6 R6 K6 ["AbsoluteSize"]
       50 GETTABLEKS                       R6 R6 K7 ["Y"]
       52 ADD                              R4 R5 R6
       53 CALL                             R2 2 1
       54 GETTABLEKS                       R5 R0 K5 ["X"]
       56 GETTABLEKS                       R6 R1 K8 ["Min"]
       58 SUB                              R4 R5 R6
       59 GETTABLEKS                       R6 R1 K9 ["Max"]
       61 GETTABLEKS                       R7 R1 K8 ["Min"]
       63 SUB                              R5 R6 R7
       64 DIV                              R3 R4 R5
       65 GETTABLEKS                       R6 R0 K7 ["Y"]
       67 GETTABLEKS                       R7 R2 K8 ["Min"]
       69 SUB                              R5 R6 R7
       70 GETTABLEKS                       R7 R2 K9 ["Max"]
       72 GETTABLEKS                       R8 R2 K8 ["Min"]
       74 SUB                              R6 R7 R8
       75 DIV                              R4 R5 R6
       76 GETUPVAL                         R8 1
       77 GETTABLEKS                       R8 R8 K10 ["maxX"]
       79 GETUPVAL                         R9 1
       80 GETTABLEKS                       R9 R9 K11 ["minX"]
       82 SUB                              R7 R8 R9
       83 MUL                              R6 R3 R7
       84 GETUPVAL                         R7 1
       85 GETTABLEKS                       R7 R7 K11 ["minX"]
       87 ADD                              R5 R6 R7
       88 GETUPVAL                         R9 1
       89 GETTABLEKS                       R9 R9 K12 ["maxY"]
       91 GETUPVAL                         R10 1
       92 GETTABLEKS                       R10 R10 K13 ["minY"]
       94 SUB                              R8 R9 R10
       95 MUL                              R7 R4 R8
       96 GETUPVAL                         R8 1
       97 GETTABLEKS                       R8 R8 K13 ["minY"]
       99 ADD                              R6 R7 R8
      100 GETIMPORT                        R7 K15 [Vector2.new]
      102 GETUPVAL                         R10 1
      103 GETTABLEKS                       R10 R10 K11 ["minX"]
      105 GETUPVAL                         R11 1
      106 GETTABLEKS                       R11 R11 K10 ["maxX"]
      108 FASTCALL3                        MATH_CLAMP R5 R10 R11
      110 MOVE                             R9 R5
      111 GETIMPORT                        R8 K18 [math.clamp]
      113 CALL                             R8 3 1
      114 GETUPVAL                         R11 1
      115 GETTABLEKS                       R11 R11 K13 ["minY"]
      117 GETUPVAL                         R12 1
      118 GETTABLEKS                       R12 R12 K12 ["maxY"]
      120 FASTCALL3                        MATH_CLAMP R6 R11 R12
      122 MOVE                             R10 R6
      123 GETIMPORT                        R9 K18 [math.clamp]
      125 CALL                             R9 3 1
      126 CALL                             R7 2 -1
      127 RETURN                           R7 -1
      128 GETIMPORT                        R1 K15 [Vector2.new]
      130 LOADN                            R2 0
      131 LOADN                            R3 0
      132 CALL                             R1 2 -1
      133 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getValue"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["X"]
        6 GETTABLEKS                       R3 R1 K1 ["X"]
        8 JUMPIFNOTEQ                      R2 R3 ; [+7]
       10 GETTABLEKS                       R2 R0 K2 ["Y"]
       12 GETTABLEKS                       R3 R1 K2 ["Y"]
       14 JUMPIFEQ                         R2 R3 ; [+10]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K3 ["onValueChanged"]
       19 JUMPIFNOT                        R2 ; [+5]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K3 ["onValueChanged"]
       23 MOVE                             R3 R0
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getValue"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 1
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onDragStarted"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["onDragStarted"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R2 K2 [Vector2.zero]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+20]
        4 GETUPVAL                         R3 0
        5 LOADK                            R5 K3 ["ScreenGui"]
        6 NAMECALL                         R3 R3 K4 ["IsA"]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+14]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K5 ["IgnoreGuiInset"]
       13 JUMPIF                           R3 ; [+10]
       14 GETIMPORT                        R3 K7 [Vector2.new]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K8 ["Width"]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K9 ["Height"]
       22 CALL                             R3 2 1
       23 MOVE                             R2 R3
       24 GETUPVAL                         R3 2
       25 SUB                              R4 R1 R2
       26 CALL                             R3 1 1
       27 GETUPVAL                         R4 3
       28 MOVE                             R5 R3
       29 CALL                             R4 1 0
       30 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onDragEnded"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["onDragEnded"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [Vector2.new]
        3 GETTABLEKS                       R3 R0 K3 ["Position"]
        5 GETTABLEKS                       R3 R3 K4 ["X"]
        7 GETTABLEKS                       R4 R0 K3 ["Position"]
        9 GETTABLEKS                       R4 R4 K5 ["Y"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K6 ["onValueChanged"]
       16 JUMPIFNOT                        R2 ; [+11]
       17 GETUPVAL                         R2 2
       18 NAMECALL                         R2 R2 K7 ["getValue"]
       20 CALL                             R2 1 1
       21 JUMPIFEQ                         R1 R2 ; [+6]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K6 ["onValueChanged"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+15]
        6 GETUPVAL                         R2 0
        7 LOADB                            R3 1
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K4 ["onDragStarted"]
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["onDragStarted"]
       16 CALL                             R2 0 0
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+9]
        2 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        4 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        6 JUMPIFNOTEQ                      R2 R3 ; [+4]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+17]
        2 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        4 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        6 JUMPIFNOTEQ                      R2 R3 ; [+12]
        8 GETUPVAL                         R2 1
        9 LOADB                            R3 0
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K4 ["onDragEnded"]
       14 JUMPIFNOT                        R2 ; [+4]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K4 ["onDragEnded"]
       18 CALL                             R2 0 0
       19 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["Pressed"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+3]
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["minX"]
        5 SUB                              R2 R3 R4
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["maxX"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K1 ["minX"]
       12 SUB                              R3 R4 R5
       13 DIV                              R1 R2 R3
       14 GETTABLEKS                       R4 R0 K3 ["Y"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K4 ["minY"]
       19 SUB                              R3 R4 R5
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K5 ["maxY"]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K4 ["minY"]
       26 SUB                              R4 R5 R6
       27 DIV                              R2 R3 R4
       28 GETIMPORT                        R3 K8 [UDim2.fromScale]
       30 MOVE                             R4 R1
       31 MOVE                             R5 R2
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1

PROTO_18:
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
       23 GETTABLEKS                       R11 R2 K2 ["value"]
       25 GETUPVAL                         R12 3
       26 GETTABLEKS                       R12 R12 K3 ["useBinding"]
       28 LOADNIL                          R13
       29 CALL                             R12 1 2
       30 GETUPVAL                         R14 5
       31 GETTABLEKS                       R14 R14 K4 ["isBinding"]
       33 MOVE                             R15 R11
       34 CALL                             R14 1 1
       35 JUMPIFNOT                        R14 ; [+2]
       36 MOVE                             R10 R11
       37 JUMP                             ; [+4]
       38 MOVE                             R14 R13
       39 MOVE                             R15 R11
       40 CALL                             R14 1 0
       41 MOVE                             R10 R12
       42 GETUPVAL                         R11 3
       43 GETTABLEKS                       R11 R11 K5 ["useRef"]
       45 LOADNIL                          R12
       46 CALL                             R11 1 1
       47 GETUPVAL                         R12 3
       48 GETTABLEKS                       R12 R12 K6 ["useImperativeHandle"]
       50 MOVE                             R13 R1
       51 NEWCLOSURE                       R14 P0
       52 CAPTURE                          VAL R11
       53 NEWTABLE                         R15 0 0
       55 CALL                             R12 3 0
       56 GETUPVAL                         R12 6
       57 GETTABLEKS                       R13 R11 K7 ["current"]
       59 CALL                             R12 1 1
       60 GETUPVAL                         R13 7
       61 CALL                             R13 0 1
       62 GETUPVAL                         R14 8
       63 GETTABLEKS                       R15 R11 K7 ["current"]
       65 CALL                             R14 1 1
       66 GETUPVAL                         R15 9
       67 MOVE                             R16 R3
       68 GETTABLEKS                       R17 R2 K8 ["variant"]
       70 CALL                             R15 2 1
       71 GETUPVAL                         R16 10
       72 GETTABLEKS                       R17 R15 K9 ["container"]
       74 GETTABLEKS                       R17 R17 K10 ["backgroundStyle"]
       76 GETTABLEKS                       R18 R15 K9 ["container"]
       78 GETTABLEKS                       R18 R18 K11 ["stroke"]
       80 GETTABLEKS                       R18 R18 K12 ["style"]
       82 GETTABLEKS                       R19 R15 K13 ["knob"]
       84 GETTABLEKS                       R19 R19 K12 ["style"]
       86 GETTABLEKS                       R20 R15 K13 ["knob"]
       88 GETTABLEKS                       R20 R20 K14 ["dragStyle"]
       90 CALL                             R16 4 1
       91 GETUPVAL                         R17 3
       92 GETTABLEKS                       R17 R17 K15 ["useMemo"]
       94 NEWCLOSURE                       R18 P1
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R16
       97 CAPTURE                          VAL R4
       98 CAPTURE                          UPVAL U4
       99 NEWTABLE                         R19 0 3
      101 MOVE                             R20 R4
      102 MOVE                             R21 R6
      103 MOVE                             R22 R16
      104 SETLIST                          R19 R20 3 [1]
      106 CALL                             R17 2 1
      107 GETUPVAL                         R18 11
      108 MOVE                             R19 R17
      109 CALL                             R18 1 2
      110 GETUPVAL                         R20 3
      111 GETTABLEKS                       R20 R20 K16 ["useEffect"]
      113 NEWCLOSURE                       R21 P2
      114 CAPTURE                          VAL R19
      115 CAPTURE                          VAL R17
      116 NEWTABLE                         R22 0 2
      118 MOVE                             R23 R17
      119 MOVE                             R24 R19
      120 SETLIST                          R22 R23 2 [1]
      122 CALL                             R20 2 0
      123 GETUPVAL                         R20 3
      124 GETTABLEKS                       R20 R20 K16 ["useEffect"]
      126 NEWCLOSURE                       R21 P3
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R4
      131 CAPTURE                          UPVAL U4
      132 NEWTABLE                         R22 0 3
      134 GETTABLEKS                       R23 R2 K17 ["knobVisibility"]
      136 MOVE                             R24 R4
      137 MOVE                             R25 R6
      138 SETLIST                          R22 R23 3 [1]
      140 CALL                             R20 2 0
      141 GETUPVAL                         R20 3
      142 GETTABLEKS                       R20 R20 K18 ["useCallback"]
      144 NEWCLOSURE                       R21 P4
      145 CAPTURE                          VAL R11
      146 CAPTURE                          VAL R2
      147 NEWTABLE                         R22 0 5
      149 MOVE                             R23 R11
      150 GETTABLEKS                       R24 R2 K19 ["minX"]
      152 GETTABLEKS                       R25 R2 K20 ["maxX"]
      154 GETTABLEKS                       R26 R2 K21 ["minY"]
      156 GETTABLEKS                       R27 R2 K22 ["maxY"]
      158 SETLIST                          R22 R23 5 [1]
      160 CALL                             R20 2 1
      161 GETUPVAL                         R21 3
      162 GETTABLEKS                       R21 R21 K18 ["useCallback"]
      164 NEWCLOSURE                       R22 P5
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R2
      167 NEWTABLE                         R23 0 2
      169 MOVE                             R24 R10
      170 GETTABLEKS                       R25 R2 K23 ["onValueChanged"]
      172 SETLIST                          R23 R24 2 [1]
      174 CALL                             R21 2 1
      175 GETUPVAL                         R22 3
      176 GETTABLEKS                       R22 R22 K18 ["useCallback"]
      178 NEWCLOSURE                       R23 P6
      179 CAPTURE                          VAL R20
      180 CAPTURE                          VAL R12
      181 CAPTURE                          VAL R21
      182 NEWTABLE                         R24 0 3
      184 MOVE                             R25 R20
      185 MOVE                             R26 R12
      186 MOVE                             R27 R21
      187 SETLIST                          R24 R25 3 [1]
      189 CALL                             R22 2 1
      190 GETUPVAL                         R23 3
      191 GETTABLEKS                       R23 R23 K18 ["useCallback"]
      193 NEWCLOSURE                       R24 P7
      194 CAPTURE                          VAL R7
      195 CAPTURE                          VAL R2
      196 NEWTABLE                         R25 0 1
      198 GETTABLEKS                       R26 R2 K24 ["onDragStarted"]
      200 SETLIST                          R25 R26 1 [1]
      202 CALL                             R23 2 1
      203 GETUPVAL                         R24 3
      204 GETTABLEKS                       R24 R24 K18 ["useCallback"]
      206 NEWCLOSURE                       R25 P8
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R20
      210 CAPTURE                          VAL R21
      211 NEWTABLE                         R26 0 4
      213 MOVE                             R27 R21
      214 MOVE                             R28 R20
      215 MOVE                             R29 R13
      216 MOVE                             R30 R14
      217 SETLIST                          R26 R27 4 [1]
      219 CALL                             R24 2 1
      220 GETUPVAL                         R25 3
      221 GETTABLEKS                       R25 R25 K18 ["useCallback"]
      223 NEWCLOSURE                       R26 P9
      224 CAPTURE                          VAL R7
      225 CAPTURE                          VAL R2
      226 NEWTABLE                         R27 0 1
      228 GETTABLEKS                       R28 R2 K25 ["onDragEnded"]
      230 SETLIST                          R27 R28 1 [1]
      232 CALL                             R25 2 1
      233 LOADNIL                          R26
      234 LOADNIL                          R27
      235 LOADNIL                          R28
      236 LOADNIL                          R29
      237 GETUPVAL                         R30 12
      238 GETTABLEKS                       R30 R30 K26 ["GetFFlagWorkingInAssetDM"]
      240 CALL                             R30 0 1
      241 JUMPIFNOT                        R30 ; [+65]
      242 GETUPVAL                         R30 3
      243 GETTABLEKS                       R30 R30 K18 ["useCallback"]
      245 NEWCLOSURE                       R31 P10
      246 CAPTURE                          VAL R20
      247 CAPTURE                          VAL R2
      248 CAPTURE                          VAL R10
      249 NEWTABLE                         R32 0 3
      251 MOVE                             R33 R20
      252 GETTABLEKS                       R34 R2 K23 ["onValueChanged"]
      254 MOVE                             R35 R10
      255 SETLIST                          R32 R33 3 [1]
      257 CALL                             R30 2 1
      258 MOVE                             R26 R30
      259 GETUPVAL                         R30 3
      260 GETTABLEKS                       R30 R30 K18 ["useCallback"]
      262 NEWCLOSURE                       R31 P11
      263 CAPTURE                          VAL R7
      264 CAPTURE                          VAL R2
      265 CAPTURE                          REF R26
      266 NEWTABLE                         R32 0 3
      268 GETTABLEKS                       R33 R2 K24 ["onDragStarted"]
      270 MOVE                             R34 R26
      271 MOVE                             R35 R7
      272 SETLIST                          R32 R33 3 [1]
      274 CALL                             R30 2 1
      275 MOVE                             R27 R30
      276 GETUPVAL                         R30 3
      277 GETTABLEKS                       R30 R30 K18 ["useCallback"]
      279 NEWCLOSURE                       R31 P12
      280 CAPTURE                          VAL R6
      281 CAPTURE                          REF R26
      282 NEWTABLE                         R32 0 2
      284 MOVE                             R33 R6
      285 MOVE                             R34 R26
      286 SETLIST                          R32 R33 2 [1]
      288 CALL                             R30 2 1
      289 MOVE                             R28 R30
      290 GETUPVAL                         R30 3
      291 GETTABLEKS                       R30 R30 K18 ["useCallback"]
      293 NEWCLOSURE                       R31 P13
      294 CAPTURE                          VAL R6
      295 CAPTURE                          VAL R7
      296 CAPTURE                          VAL R2
      297 NEWTABLE                         R32 0 3
      299 MOVE                             R33 R6
      300 GETTABLEKS                       R34 R2 K25 ["onDragEnded"]
      302 MOVE                             R35 R7
      303 SETLIST                          R32 R33 3 [1]
      305 CALL                             R30 2 1
      306 MOVE                             R29 R30
      307 GETUPVAL                         R30 3
      308 GETTABLEKS                       R30 R30 K18 ["useCallback"]
      310 NEWCLOSURE                       R31 P14
      311 CAPTURE                          VAL R5
      312 CAPTURE                          UPVAL U4
      313 CAPTURE                          VAL R22
      314 NEWTABLE                         R32 0 1
      316 MOVE                             R33 R22
      317 SETLIST                          R32 R33 1 [1]
      319 CALL                             R30 2 1
      320 NEWCLOSURE                       R33 P15
      321 CAPTURE                          VAL R2
      322 NAMECALL                         R31 R10 K27 ["map"]
      324 CALL                             R31 2 1
      325 GETIMPORT                        R32 K30 [Vector2.new]
      327 LOADK                            R33 K31 [0.5]
      328 LOADK                            R34 K31 [0.5]
      329 CALL                             R32 2 1
      330 GETTABLEKS                       R33 R15 K9 ["container"]
      332 GETTABLEKS                       R33 R33 K11 ["stroke"]
      334 GETTABLEKS                       R33 R33 K32 ["thickness"]
      336 GETUPVAL                         R34 3
      337 GETTABLEKS                       R34 R34 K33 ["createElement"]
      339 GETUPVAL                         R35 13
      340 GETTABLEKS                       R35 R35 K34 ["View"]
      342 DUPTABLE                         R37 K42 [{"tag", "Size", "GroupTransparency", "backgroundStyle", "stroke", "stateLayer", "onStateChanged", "isDisabled", "ref"}]
      343 GETTABLEKS                       R38 R15 K9 ["container"]
      345 GETTABLEKS                       R38 R38 K35 ["tag"]
      347 SETTABLEKS                       R38 R37 K35 ["tag"]
      349 GETIMPORT                        R38 K44 [UDim2.new]
      351 GETTABLEKS                       R39 R2 K45 ["length"]
      353 GETTABLEKS                       R40 R2 K45 ["length"]
      355 CALL                             R38 2 1
      356 SETTABLEKS                       R38 R37 K36 ["Size"]
      358 GETTABLEKS                       R39 R2 K40 ["isDisabled"]
      360 JUMPIFNOT                        R39 ; [+2]
      361 LOADK                            R38 K31 [0.5]
      362 JUMP                             ; [+1]
      363 LOADNIL                          R38
      364 SETTABLEKS                       R38 R37 K37 ["GroupTransparency"]
      366 DUPTABLE                         R38 K48 [{"Color3", "Transparency"}]
      367 GETTABLEKS                       R39 R18 K49 ["backgroundColor3"]
      369 SETTABLEKS                       R39 R38 K46 ["Color3"]
      371 GETTABLEKS                       R39 R18 K50 ["backgroundTransparency"]
      373 SETTABLEKS                       R39 R38 K47 ["Transparency"]
      375 SETTABLEKS                       R38 R37 K10 ["backgroundStyle"]
      377 DUPTABLE                         R38 K53 [{"Color", "Transparency", "Thickness"}]
      378 GETTABLEKS                       R39 R18 K54 ["strokeColor3"]
      380 SETTABLEKS                       R39 R38 K51 ["Color"]
      382 GETTABLEKS                       R40 R2 K40 ["isDisabled"]
      384 JUMPIFNOT                        R40 ; [+2]
      385 LOADK                            R39 K31 [0.5]
      386 JUMP                             ; [+2]
      387 GETTABLEKS                       R39 R18 K55 ["strokeTransparency"]
      389 SETTABLEKS                       R39 R38 K47 ["Transparency"]
      391 SETTABLEKS                       R33 R38 K52 ["Thickness"]
      393 SETTABLEKS                       R38 R37 K11 ["stroke"]
      395 DUPTABLE                         R38 K57 [{"affordance"}]
      396 GETUPVAL                         R39 14
      397 GETTABLEKS                       R39 R39 K58 ["None"]
      399 SETTABLEKS                       R39 R38 K56 ["affordance"]
      401 SETTABLEKS                       R38 R37 K38 ["stateLayer"]
      403 SETTABLEKS                       R30 R37 K39 ["onStateChanged"]
      405 GETTABLEKS                       R38 R2 K40 ["isDisabled"]
      407 SETTABLEKS                       R38 R37 K40 ["isDisabled"]
      409 SETTABLEKS                       R11 R37 K41 ["ref"]
      411 FASTCALL1                        TYPE R37 ; [+3]
      412 MOVE                             R39 R37
      413 GETIMPORT                        R38 K60 [type]
      415 CALL                             R38 1 1
      416 JUMPIFNOTEQKS                    R38 K61 ["table"] ; [+33]
      418 GETTABLEKS                       R38 R2 K62 ["AnchorPoint"]
      420 SETTABLEKS                       R38 R37 K62 ["AnchorPoint"]
      422 GETTABLEKS                       R38 R2 K63 ["LayoutOrder"]
      424 SETTABLEKS                       R38 R37 K63 ["LayoutOrder"]
      426 GETTABLEKS                       R38 R2 K64 ["Position"]
      428 SETTABLEKS                       R38 R37 K64 ["Position"]
      430 GETTABLEKS                       R38 R2 K65 ["Visible"]
      432 SETTABLEKS                       R38 R37 K65 ["Visible"]
      434 GETTABLEKS                       R38 R2 K66 ["ZIndex"]
      436 SETTABLEKS                       R38 R37 K66 ["ZIndex"]
      438 GETTABLEKS                       R38 R2 K67 ["onAbsoluteSizeChanged"]
      440 SETTABLEKS                       R38 R37 K67 ["onAbsoluteSizeChanged"]
      442 GETTABLEKS                       R38 R2 K68 ["onAbsolutePositionChanged"]
      444 SETTABLEKS                       R38 R37 K68 ["onAbsolutePositionChanged"]
      446 GETTABLEKS                       R38 R2 K69 ["testId"]
      448 SETTABLEKS                       R38 R37 K69 ["testId"]
      450 MOVE                             R36 R37
      451 DUPTABLE                         R37 K73 [{"UICorner", "DragDetector", "Knob"}]
      452 GETUPVAL                         R38 3
      453 GETTABLEKS                       R38 R38 K33 ["createElement"]
      455 LOADK                            R39 K70 ["UICorner"]
      456 DUPTABLE                         R40 K75 [{"CornerRadius"}]
      457 GETIMPORT                        R41 K77 [UDim.new]
      459 LOADN                            R42 0
      460 LOADN                            R43 8
      461 CALL                             R41 2 1
      462 SETTABLEKS                       R41 R40 K74 ["CornerRadius"]
      464 CALL                             R38 2 1
      465 SETTABLEKS                       R38 R37 K70 ["UICorner"]
      467 GETUPVAL                         R39 12
      468 GETTABLEKS                       R39 R39 K26 ["GetFFlagWorkingInAssetDM"]
      470 CALL                             R39 0 1
      471 JUMPIFNOT                        R39 ; [+61]
      472 GETUPVAL                         R38 3
      473 GETTABLEKS                       R38 R38 K33 ["createElement"]
      475 LOADK                            R39 K78 ["ImageButton"]
      476 NEWTABLE                         R40 8 0
      478 LOADN                            R41 4
      479 SETTABLEKS                       R41 R40 K66 ["ZIndex"]
      481 GETIMPORT                        R41 K44 [UDim2.new]
      483 LOADN                            R42 1
      484 JUMPIFNOT                        R6 ; [+2]
      485 LOADN                            R43 300
      486 JUMP                             ; [+1]
      487 LOADN                            R43 0
      488 LOADN                            R44 1
      489 JUMPIFNOT                        R6 ; [+2]
      490 LOADN                            R45 300
      491 JUMP                             ; [+1]
      492 LOADN                            R45 0
      493 CALL                             R41 4 1
      494 SETTABLEKS                       R41 R40 K36 ["Size"]
      496 GETIMPORT                        R41 K80 [UDim2.fromScale]
      498 LOADK                            R42 K31 [0.5]
      499 LOADK                            R43 K31 [0.5]
      500 CALL                             R41 2 1
      501 SETTABLEKS                       R41 R40 K64 ["Position"]
      503 GETIMPORT                        R41 K30 [Vector2.new]
      505 LOADK                            R42 K31 [0.5]
      506 LOADK                            R43 K31 [0.5]
      507 CALL                             R41 2 1
      508 SETTABLEKS                       R41 R40 K62 ["AnchorPoint"]
      510 LOADN                            R41 1
      511 SETTABLEKS                       R41 R40 K81 ["BackgroundTransparency"]
      513 GETUPVAL                         R41 3
      514 GETTABLEKS                       R41 R41 K82 ["Event"]
      516 GETTABLEKS                       R41 R41 K83 ["InputBegan"]
      518 SETTABLE                         R27 R40 R41
      519 GETUPVAL                         R41 3
      520 GETTABLEKS                       R41 R41 K82 ["Event"]
      522 GETTABLEKS                       R41 R41 K84 ["InputChanged"]
      524 SETTABLE                         R28 R40 R41
      525 GETUPVAL                         R41 3
      526 GETTABLEKS                       R41 R41 K82 ["Event"]
      528 GETTABLEKS                       R41 R41 K85 ["InputEnded"]
      530 SETTABLE                         R29 R40 R41
      531 CALL                             R38 2 1
      532 JUMP                             ; [+34]
      533 GETUPVAL                         R38 3
      534 GETTABLEKS                       R38 R38 K33 ["createElement"]
      536 LOADK                            R39 K86 ["UIDragDetector"]
      537 NEWTABLE                         R40 8 0
      539 GETIMPORT                        R41 K90 [Enum.UIDragDetectorDragStyle.Scriptable]
      541 SETTABLEKS                       R41 R40 K91 ["DragStyle"]
      543 GETUPVAL                         R41 3
      544 GETTABLEKS                       R41 R41 K82 ["Event"]
      546 GETTABLEKS                       R41 R41 K92 ["DragStart"]
      548 SETTABLE                         R23 R40 R41
      549 GETUPVAL                         R41 3
      550 GETTABLEKS                       R41 R41 K82 ["Event"]
      552 GETTABLEKS                       R41 R41 K93 ["DragContinue"]
      554 SETTABLE                         R24 R40 R41
      555 GETUPVAL                         R41 3
      556 GETTABLEKS                       R41 R41 K82 ["Event"]
      558 GETTABLEKS                       R41 R41 K94 ["DragEnd"]
      560 SETTABLE                         R25 R40 R41
      561 GETTABLEKS                       R42 R2 K40 ["isDisabled"]
      563 NOT                              R41 R42
      564 SETTABLEKS                       R41 R40 K95 ["Enabled"]
      566 CALL                             R38 2 1
      567 SETTABLEKS                       R38 R37 K71 ["DragDetector"]
      569 GETTABLEKS                       R39 R2 K13 ["knob"]
      571 JUMPIFNOT                        R39 ; [+24]
      572 GETUPVAL                         R38 3
      573 GETTABLEKS                       R38 R38 K33 ["createElement"]
      575 GETUPVAL                         R39 13
      576 GETTABLEKS                       R39 R39 K34 ["View"]
      578 DUPTABLE                         R40 K97 [{["AnchorPoint"], ["Position"], ["Size"], ["Visible"], ["testId"] = "--dragbox-knob"}]
      579 SETTABLEKS                       R32 R40 K62 ["AnchorPoint"]
      581 SETTABLEKS                       R31 R40 K64 ["Position"]
      583 GETIMPORT                        R41 K99 [UDim2.fromOffset]
      585 LOADN                            R42 0
      586 LOADN                            R43 0
      587 CALL                             R41 2 1
      588 SETTABLEKS                       R41 R40 K36 ["Size"]
      590 SETTABLEKS                       R8 R40 K65 ["Visible"]
      592 GETTABLEKS                       R41 R2 K13 ["knob"]
      594 CALL                             R38 3 1
      595 JUMP                             ; [+41]
      596 GETUPVAL                         R38 3
      597 GETTABLEKS                       R38 R38 K33 ["createElement"]
      599 GETUPVAL                         R39 13
      600 GETTABLEKS                       R39 R39 K72 ["Knob"]
      602 DUPTABLE                         R40 K102 [{["AnchorPoint"], ["Position"], ["size"], ["style"], ["stroke"], ["hasShadow"], ["Visible"], ["testId"] = "--dragbox-knob"}]
      603 SETTABLEKS                       R32 R40 K62 ["AnchorPoint"]
      605 SETTABLEKS                       R31 R40 K64 ["Position"]
      607 GETTABLEKS                       R41 R2 K103 ["knobSize"]
      609 SETTABLEKS                       R41 R40 K100 ["size"]
      611 DUPTABLE                         R41 K48 [{"Color3", "Transparency"}]
      612 GETTABLEKS                       R42 R18 K104 ["knobColor3"]
      614 SETTABLEKS                       R42 R41 K46 ["Color3"]
      616 GETTABLEKS                       R42 R18 K105 ["knobTransparency"]
      618 SETTABLEKS                       R42 R41 K47 ["Transparency"]
      620 SETTABLEKS                       R41 R40 K12 ["style"]
      622 GETTABLEKS                       R41 R15 K13 ["knob"]
      624 GETTABLEKS                       R41 R41 K11 ["stroke"]
      626 SETTABLEKS                       R41 R40 K11 ["stroke"]
      628 GETTABLEKS                       R41 R15 K13 ["knob"]
      630 GETTABLEKS                       R41 R41 K101 ["hasShadow"]
      632 SETTABLEKS                       R41 R40 K101 ["hasShadow"]
      634 SETTABLEKS                       R8 R40 K65 ["Visible"]
      636 CALL                             R38 2 1
      637 SETTABLEKS                       R38 R37 K72 ["Knob"]
      639 CALL                             R34 3 -1
      640 CLOSEUPVALS                      R26
      641 RETURN                           R34 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dragbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETTABLEKS                       R2 R0 K5 ["Utils"]
       11 GETIMPORT                        R3 K7 [require]
       13 GETTABLEKS                       R4 R1 K8 ["React"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K7 [require]
       18 GETTABLEKS                       R5 R1 K9 ["ReactIs"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K7 [require]
       23 GETTABLEKS                       R6 R1 K10 ["Foundation"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K7 [require]
       28 GETTABLEKS                       R7 R2 K11 ["withDefaults"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K7 [require]
       33 GETTABLEKS                       R8 R2 K12 ["usePointerPosition"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K7 [require]
       38 GETTABLEKS                       R9 R2 K13 ["useLayerCollector"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K7 [require]
       43 GETTABLEKS                       R10 R2 K14 ["useGuiInset"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K7 [require]
       48 GETTABLEKS                       R11 R0 K15 ["Flags"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K7 [require]
       53 GETTABLEKS                       R12 R0 K16 ["Components"]
       55 GETTABLEKS                       R12 R12 K17 ["DragboxComponent"]
       57 GETTABLEKS                       R12 R12 K18 ["useDragboxVariants"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K7 [require]
       62 GETTABLEKS                       R13 R0 K16 ["Components"]
       64 GETTABLEKS                       R13 R13 K17 ["DragboxComponent"]
       66 GETTABLEKS                       R13 R13 K19 ["DragboxTypes"]
       68 CALL                             R12 1 1
       69 GETTABLEKS                       R13 R5 K20 ["Hooks"]
       71 GETTABLEKS                       R13 R13 K21 ["useTokens"]
       73 GETIMPORT                        R14 K7 [require]
       75 GETTABLEKS                       R15 R0 K16 ["Components"]
       77 GETTABLEKS                       R15 R15 K17 ["DragboxComponent"]
       79 GETTABLEKS                       R15 R15 K22 ["useDragboxMotionStates"]
       81 CALL                             R14 1 1
       82 GETIMPORT                        R15 K7 [require]
       84 GETTABLEKS                       R16 R1 K23 ["Motion"]
       86 CALL                             R15 1 1
       87 GETTABLEKS                       R16 R15 K24 ["useMotion"]
       89 GETTABLEKS                       R17 R12 K25 ["ControlStateEnum"]
       91 GETTABLEKS                       R18 R12 K26 ["StateLayerAffordanceEnum"]
       93 DUPTABLE                         R19 K42 [{["minX"] = -1, ["maxX"] = 1, ["minY"] = -1, ["maxY"] = 1, ["length"], ["knobSize"] = "Medium", ["isDisabled"] = False, ["knobVisibility"] = "Auto", ["variant"] = "Standard"}]
       94 GETIMPORT                        R20 K45 [UDim.new]
       96 LOADN                            R21 1
       97 LOADN                            R22 1
       98 CALL                             R20 2 1
       99 SETTABLEKS                       R20 R19 K33 ["length"]
      101 DUPCLOSURE                       R20 K46 [PROTO_0]
      102 DUPCLOSURE                       R21 K47 [PROTO_1]
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R4
      105 DUPCLOSURE                       R22 K48 [PROTO_18]
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R19
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R17
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R18
      121 GETTABLEKS                       R23 R3 K49 ["forwardRef"]
      123 MOVE                             R24 R22
      124 CALL                             R23 1 -1
      125 RETURN                           R23 -1
