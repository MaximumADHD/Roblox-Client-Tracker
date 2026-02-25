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
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["Dragging"]
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R1 R2 K1 ["Pressed"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+5]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R0 R1 K1 ["Pressed"]
       15 RETURN                           R0 1
       16 GETUPVAL                         R0 2
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R1 R2 K2 ["Hover"]
       20 JUMPIFNOTEQ                      R0 R1 ; [+5]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R0 R1 K2 ["Hover"]
       25 RETURN                           R0 1
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R0 R1 K3 ["Default"]
       29 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["knobVisibility"]
        3 JUMPIFNOTEQKS                    R0 K1 ["None"] ; [+5]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R0 R1 K0 ["knobVisibility"]
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
       23 GETUPVAL                         R4 4
       24 GETTABLEKS                       R3 R4 K3 ["Hover"]
       26 JUMPIFEQ                         R2 R3 ; [+16]
       28 LOADB                            R1 1
       29 GETUPVAL                         R2 3
       30 GETUPVAL                         R4 4
       31 GETTABLEKS                       R3 R4 K4 ["Selected"]
       33 JUMPIFEQ                         R2 R3 ; [+9]
       35 GETUPVAL                         R2 3
       36 GETUPVAL                         R4 4
       37 GETTABLEKS                       R3 R4 K5 ["Pressed"]
       39 JUMPIFEQ                         R2 R3 ; [+2]
       41 LOADB                            R1 0 +1
       42 LOADB                            R1 1
       43 CALL                             R0 1 0
       44 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+124]
        4 GETIMPORT                        R1 K3 [NumberRange.new]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K0 ["current"]
        9 GETTABLEKS                       R3 R4 K4 ["AbsolutePosition"]
       11 GETTABLEKS                       R2 R3 K5 ["X"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K0 ["current"]
       16 GETTABLEKS                       R5 R6 K4 ["AbsolutePosition"]
       18 GETTABLEKS                       R4 R5 K5 ["X"]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R7 R8 K0 ["current"]
       23 GETTABLEKS                       R6 R7 K6 ["AbsoluteSize"]
       25 GETTABLEKS                       R5 R6 K5 ["X"]
       27 ADD                              R3 R4 R5
       28 CALL                             R1 2 1
       29 GETIMPORT                        R2 K3 [NumberRange.new]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R5 R6 K0 ["current"]
       34 GETTABLEKS                       R4 R5 K4 ["AbsolutePosition"]
       36 GETTABLEKS                       R3 R4 K7 ["Y"]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R7 R8 K0 ["current"]
       41 GETTABLEKS                       R6 R7 K4 ["AbsolutePosition"]
       43 GETTABLEKS                       R5 R6 K7 ["Y"]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R8 R9 K0 ["current"]
       48 GETTABLEKS                       R7 R8 K6 ["AbsoluteSize"]
       50 GETTABLEKS                       R6 R7 K7 ["Y"]
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
       76 GETUPVAL                         R9 1
       77 GETTABLEKS                       R8 R9 K10 ["maxX"]
       79 GETUPVAL                         R10 1
       80 GETTABLEKS                       R9 R10 K11 ["minX"]
       82 SUB                              R7 R8 R9
       83 MUL                              R6 R3 R7
       84 GETUPVAL                         R8 1
       85 GETTABLEKS                       R7 R8 K11 ["minX"]
       87 ADD                              R5 R6 R7
       88 GETUPVAL                         R10 1
       89 GETTABLEKS                       R9 R10 K12 ["maxY"]
       91 GETUPVAL                         R11 1
       92 GETTABLEKS                       R10 R11 K13 ["minY"]
       94 SUB                              R8 R9 R10
       95 MUL                              R7 R4 R8
       96 GETUPVAL                         R9 1
       97 GETTABLEKS                       R8 R9 K13 ["minY"]
       99 ADD                              R6 R7 R8
      100 GETIMPORT                        R7 K15 [Vector2.new]
      102 GETUPVAL                         R11 1
      103 GETTABLEKS                       R10 R11 K11 ["minX"]
      105 GETUPVAL                         R12 1
      106 GETTABLEKS                       R11 R12 K10 ["maxX"]
      108 FASTCALL3                        MATH_CLAMP R5 R10 R11
      110 MOVE                             R9 R5
      111 GETIMPORT                        R8 K18 [math.clamp]
      113 CALL                             R8 3 1
      114 GETUPVAL                         R12 1
      115 GETTABLEKS                       R11 R12 K13 ["minY"]
      117 GETUPVAL                         R13 1
      118 GETTABLEKS                       R12 R13 K12 ["maxY"]
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
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R2 R3 K3 ["onValueChanged"]
       19 JUMPIFNOT                        R2 ; [+5]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K3 ["onValueChanged"]
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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["onDragStarted"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K0 ["onDragStarted"]
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
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K5 ["IgnoreGuiInset"]
       13 JUMPIF                           R3 ; [+10]
       14 GETIMPORT                        R3 K7 [Vector2.new]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K8 ["Width"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K9 ["Height"]
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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["onDragEnded"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K0 ["onDragEnded"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K4 ["onDragEnded"]
       14 JUMPIFNOT                        R2 ; [+4]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K4 ["onDragEnded"]
       18 CALL                             R2 0 0
       19 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["Pressed"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+3]
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["minX"]
        5 SUB                              R2 R3 R4
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["maxX"]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K1 ["minX"]
       12 SUB                              R3 R4 R5
       13 DIV                              R1 R2 R3
       14 GETTABLEKS                       R4 R0 K3 ["Y"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K4 ["minY"]
       19 SUB                              R3 R4 R5
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K5 ["maxY"]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K4 ["minY"]
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
       62 CALL                             R13 0 1
       63 GETUPVAL                         R14 8
       64 GETTABLEKS                       R15 R11 K7 ["current"]
       66 CALL                             R14 1 1
       67 GETUPVAL                         R15 9
       68 MOVE                             R16 R3
       69 GETTABLEKS                       R17 R2 K8 ["variant"]
       71 CALL                             R15 2 1
       72 GETUPVAL                         R16 10
       73 GETTABLEKS                       R18 R15 K9 ["container"]
       75 GETTABLEKS                       R17 R18 K10 ["backgroundStyle"]
       77 GETTABLEKS                       R20 R15 K9 ["container"]
       79 GETTABLEKS                       R19 R20 K11 ["stroke"]
       81 GETTABLEKS                       R18 R19 K12 ["style"]
       83 GETTABLEKS                       R20 R15 K13 ["knob"]
       85 GETTABLEKS                       R19 R20 K12 ["style"]
       87 GETTABLEKS                       R21 R15 K13 ["knob"]
       89 GETTABLEKS                       R20 R21 K14 ["dragStyle"]
       91 CALL                             R16 4 1
       92 GETUPVAL                         R18 3
       93 GETTABLEKS                       R17 R18 K15 ["useMemo"]
       95 NEWCLOSURE                       R18 P1
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R16
       98 CAPTURE                          VAL R4
       99 CAPTURE                          UPVAL U4
      100 NEWTABLE                         R19 0 3
      102 MOVE                             R20 R4
      103 MOVE                             R21 R6
      104 MOVE                             R22 R16
      105 SETLIST                          R19 R20 3 [1]
      107 CALL                             R17 2 1
      108 GETUPVAL                         R18 11
      109 MOVE                             R19 R17
      110 CALL                             R18 1 2
      111 GETUPVAL                         R21 3
      112 GETTABLEKS                       R20 R21 K16 ["useEffect"]
      114 NEWCLOSURE                       R21 P2
      115 CAPTURE                          VAL R19
      116 CAPTURE                          VAL R17
      117 NEWTABLE                         R22 0 2
      119 MOVE                             R23 R17
      120 MOVE                             R24 R19
      121 SETLIST                          R22 R23 2 [1]
      123 CALL                             R20 2 0
      124 GETUPVAL                         R21 3
      125 GETTABLEKS                       R20 R21 K16 ["useEffect"]
      127 NEWCLOSURE                       R21 P3
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R4
      132 CAPTURE                          UPVAL U4
      133 NEWTABLE                         R22 0 3
      135 GETTABLEKS                       R23 R2 K17 ["knobVisibility"]
      137 MOVE                             R24 R4
      138 MOVE                             R25 R6
      139 SETLIST                          R22 R23 3 [1]
      141 CALL                             R20 2 0
      142 GETUPVAL                         R21 3
      143 GETTABLEKS                       R20 R21 K18 ["useCallback"]
      145 NEWCLOSURE                       R21 P4
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R2
      148 NEWTABLE                         R22 0 5
      150 MOVE                             R23 R11
      151 GETTABLEKS                       R24 R2 K19 ["minX"]
      153 GETTABLEKS                       R25 R2 K20 ["maxX"]
      155 GETTABLEKS                       R26 R2 K21 ["minY"]
      157 GETTABLEKS                       R27 R2 K22 ["maxY"]
      159 SETLIST                          R22 R23 5 [1]
      161 CALL                             R20 2 1
      162 GETUPVAL                         R22 3
      163 GETTABLEKS                       R21 R22 K18 ["useCallback"]
      165 NEWCLOSURE                       R22 P5
      166 CAPTURE                          VAL R10
      167 CAPTURE                          VAL R2
      168 NEWTABLE                         R23 0 2
      170 MOVE                             R24 R10
      171 GETTABLEKS                       R25 R2 K23 ["onValueChanged"]
      173 SETLIST                          R23 R24 2 [1]
      175 CALL                             R21 2 1
      176 GETUPVAL                         R23 3
      177 GETTABLEKS                       R22 R23 K18 ["useCallback"]
      179 NEWCLOSURE                       R23 P6
      180 CAPTURE                          VAL R20
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R21
      183 NEWTABLE                         R24 0 3
      185 MOVE                             R25 R20
      186 MOVE                             R26 R12
      187 MOVE                             R27 R21
      188 SETLIST                          R24 R25 3 [1]
      190 CALL                             R22 2 1
      191 GETUPVAL                         R24 3
      192 GETTABLEKS                       R23 R24 K18 ["useCallback"]
      194 NEWCLOSURE                       R24 P7
      195 CAPTURE                          VAL R7
      196 CAPTURE                          VAL R2
      197 NEWTABLE                         R25 0 1
      199 GETTABLEKS                       R26 R2 K24 ["onDragStarted"]
      201 SETLIST                          R25 R26 1 [1]
      203 CALL                             R23 2 1
      204 GETUPVAL                         R25 3
      205 GETTABLEKS                       R24 R25 K18 ["useCallback"]
      207 NEWCLOSURE                       R25 P8
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R20
      211 CAPTURE                          VAL R21
      212 NEWTABLE                         R26 0 4
      214 MOVE                             R27 R21
      215 MOVE                             R28 R20
      216 MOVE                             R29 R13
      217 MOVE                             R30 R14
      218 SETLIST                          R26 R27 4 [1]
      220 CALL                             R24 2 1
      221 GETUPVAL                         R26 3
      222 GETTABLEKS                       R25 R26 K18 ["useCallback"]
      224 NEWCLOSURE                       R26 P9
      225 CAPTURE                          VAL R7
      226 CAPTURE                          VAL R2
      227 NEWTABLE                         R27 0 1
      229 GETTABLEKS                       R28 R2 K25 ["onDragEnded"]
      231 SETLIST                          R27 R28 1 [1]
      233 CALL                             R25 2 1
      234 LOADNIL                          R26
      235 LOADNIL                          R27
      236 LOADNIL                          R28
      237 LOADNIL                          R29
      238 GETUPVAL                         R31 12
      239 GETTABLEKS                       R30 R31 K26 ["GetFFlagWorkingInAssetDM"]
      241 CALL                             R30 0 1
      242 JUMPIFNOT                        R30 ; [+65]
      243 GETUPVAL                         R31 3
      244 GETTABLEKS                       R30 R31 K18 ["useCallback"]
      246 NEWCLOSURE                       R31 P10
      247 CAPTURE                          VAL R20
      248 CAPTURE                          VAL R2
      249 CAPTURE                          VAL R10
      250 NEWTABLE                         R32 0 3
      252 MOVE                             R33 R20
      253 GETTABLEKS                       R34 R2 K23 ["onValueChanged"]
      255 MOVE                             R35 R10
      256 SETLIST                          R32 R33 3 [1]
      258 CALL                             R30 2 1
      259 MOVE                             R26 R30
      260 GETUPVAL                         R31 3
      261 GETTABLEKS                       R30 R31 K18 ["useCallback"]
      263 NEWCLOSURE                       R31 P11
      264 CAPTURE                          VAL R7
      265 CAPTURE                          VAL R2
      266 CAPTURE                          REF R26
      267 NEWTABLE                         R32 0 3
      269 GETTABLEKS                       R33 R2 K24 ["onDragStarted"]
      271 MOVE                             R34 R26
      272 MOVE                             R35 R7
      273 SETLIST                          R32 R33 3 [1]
      275 CALL                             R30 2 1
      276 MOVE                             R27 R30
      277 GETUPVAL                         R31 3
      278 GETTABLEKS                       R30 R31 K18 ["useCallback"]
      280 NEWCLOSURE                       R31 P12
      281 CAPTURE                          VAL R6
      282 CAPTURE                          REF R26
      283 NEWTABLE                         R32 0 2
      285 MOVE                             R33 R6
      286 MOVE                             R34 R26
      287 SETLIST                          R32 R33 2 [1]
      289 CALL                             R30 2 1
      290 MOVE                             R28 R30
      291 GETUPVAL                         R31 3
      292 GETTABLEKS                       R30 R31 K18 ["useCallback"]
      294 NEWCLOSURE                       R31 P13
      295 CAPTURE                          VAL R6
      296 CAPTURE                          VAL R7
      297 CAPTURE                          VAL R2
      298 NEWTABLE                         R32 0 3
      300 MOVE                             R33 R6
      301 GETTABLEKS                       R34 R2 K25 ["onDragEnded"]
      303 MOVE                             R35 R7
      304 SETLIST                          R32 R33 3 [1]
      306 CALL                             R30 2 1
      307 MOVE                             R29 R30
      308 GETUPVAL                         R31 3
      309 GETTABLEKS                       R30 R31 K18 ["useCallback"]
      311 NEWCLOSURE                       R31 P14
      312 CAPTURE                          VAL R5
      313 CAPTURE                          UPVAL U4
      314 CAPTURE                          VAL R22
      315 NEWTABLE                         R32 0 1
      317 MOVE                             R33 R22
      318 SETLIST                          R32 R33 1 [1]
      320 CALL                             R30 2 1
      321 NEWCLOSURE                       R33 P15
      322 CAPTURE                          VAL R2
      323 NAMECALL                         R31 R10 K27 ["map"]
      325 CALL                             R31 2 1
      326 GETIMPORT                        R32 K30 [Vector2.new]
      328 LOADK                            R33 K31 [0.5]
      329 LOADK                            R34 K31 [0.5]
      330 CALL                             R32 2 1
      331 GETTABLEKS                       R35 R15 K9 ["container"]
      333 GETTABLEKS                       R34 R35 K11 ["stroke"]
      335 GETTABLEKS                       R33 R34 K32 ["thickness"]
      337 GETUPVAL                         R35 3
      338 GETTABLEKS                       R34 R35 K33 ["createElement"]
      340 GETUPVAL                         R36 13
      341 GETTABLEKS                       R35 R36 K34 ["View"]
      343 DUPTABLE                         R37 K42 [{"tag", "Size", "GroupTransparency", "backgroundStyle", "stroke", "stateLayer", "onStateChanged", "isDisabled", "ref"}]
      344 GETTABLEKS                       R39 R15 K9 ["container"]
      346 GETTABLEKS                       R38 R39 K35 ["tag"]
      348 SETTABLEKS                       R38 R37 K35 ["tag"]
      350 GETIMPORT                        R38 K44 [UDim2.new]
      352 GETTABLEKS                       R39 R2 K45 ["length"]
      354 GETTABLEKS                       R40 R2 K45 ["length"]
      356 CALL                             R38 2 1
      357 SETTABLEKS                       R38 R37 K36 ["Size"]
      359 GETTABLEKS                       R39 R2 K40 ["isDisabled"]
      361 JUMPIFNOT                        R39 ; [+2]
      362 LOADK                            R38 K31 [0.5]
      363 JUMP                             ; [+1]
      364 LOADNIL                          R38
      365 SETTABLEKS                       R38 R37 K37 ["GroupTransparency"]
      367 DUPTABLE                         R38 K48 [{"Color3", "Transparency"}]
      368 GETTABLEKS                       R39 R18 K49 ["backgroundColor3"]
      370 SETTABLEKS                       R39 R38 K46 ["Color3"]
      372 GETTABLEKS                       R39 R18 K50 ["backgroundTransparency"]
      374 SETTABLEKS                       R39 R38 K47 ["Transparency"]
      376 SETTABLEKS                       R38 R37 K10 ["backgroundStyle"]
      378 DUPTABLE                         R38 K53 [{"Color", "Transparency", "Thickness"}]
      379 GETTABLEKS                       R39 R18 K54 ["strokeColor3"]
      381 SETTABLEKS                       R39 R38 K51 ["Color"]
      383 GETTABLEKS                       R40 R2 K40 ["isDisabled"]
      385 JUMPIFNOT                        R40 ; [+2]
      386 LOADK                            R39 K31 [0.5]
      387 JUMP                             ; [+2]
      388 GETTABLEKS                       R39 R18 K55 ["strokeTransparency"]
      390 SETTABLEKS                       R39 R38 K47 ["Transparency"]
      392 SETTABLEKS                       R33 R38 K52 ["Thickness"]
      394 SETTABLEKS                       R38 R37 K11 ["stroke"]
      396 DUPTABLE                         R38 K57 [{"affordance"}]
      397 GETUPVAL                         R40 14
      398 GETTABLEKS                       R39 R40 K58 ["None"]
      400 SETTABLEKS                       R39 R38 K56 ["affordance"]
      402 SETTABLEKS                       R38 R37 K38 ["stateLayer"]
      404 SETTABLEKS                       R30 R37 K39 ["onStateChanged"]
      406 GETTABLEKS                       R38 R2 K40 ["isDisabled"]
      408 SETTABLEKS                       R38 R37 K40 ["isDisabled"]
      410 SETTABLEKS                       R11 R37 K41 ["ref"]
      412 FASTCALL1                        TYPE R37 ; [+3]
      413 MOVE                             R39 R37
      414 GETIMPORT                        R38 K60 [type]
      416 CALL                             R38 1 1
      417 JUMPIFNOTEQKS                    R38 K61 ["table"] ; [+33]
      419 GETTABLEKS                       R38 R2 K62 ["AnchorPoint"]
      421 SETTABLEKS                       R38 R37 K62 ["AnchorPoint"]
      423 GETTABLEKS                       R38 R2 K63 ["LayoutOrder"]
      425 SETTABLEKS                       R38 R37 K63 ["LayoutOrder"]
      427 GETTABLEKS                       R38 R2 K64 ["Position"]
      429 SETTABLEKS                       R38 R37 K64 ["Position"]
      431 GETTABLEKS                       R38 R2 K65 ["Visible"]
      433 SETTABLEKS                       R38 R37 K65 ["Visible"]
      435 GETTABLEKS                       R38 R2 K66 ["ZIndex"]
      437 SETTABLEKS                       R38 R37 K66 ["ZIndex"]
      439 GETTABLEKS                       R38 R2 K67 ["onAbsoluteSizeChanged"]
      441 SETTABLEKS                       R38 R37 K67 ["onAbsoluteSizeChanged"]
      443 GETTABLEKS                       R38 R2 K68 ["onAbsolutePositionChanged"]
      445 SETTABLEKS                       R38 R37 K68 ["onAbsolutePositionChanged"]
      447 GETTABLEKS                       R38 R2 K69 ["testId"]
      449 SETTABLEKS                       R38 R37 K69 ["testId"]
      451 MOVE                             R36 R37
      452 DUPTABLE                         R37 K73 [{"UICorner", "DragDetector", "Knob"}]
      453 GETUPVAL                         R39 3
      454 GETTABLEKS                       R38 R39 K33 ["createElement"]
      456 LOADK                            R39 K70 ["UICorner"]
      457 DUPTABLE                         R40 K75 [{"CornerRadius"}]
      458 GETIMPORT                        R41 K77 [UDim.new]
      460 LOADN                            R42 0
      461 LOADN                            R43 8
      462 CALL                             R41 2 1
      463 SETTABLEKS                       R41 R40 K74 ["CornerRadius"]
      465 CALL                             R38 2 1
      466 SETTABLEKS                       R38 R37 K70 ["UICorner"]
      468 GETUPVAL                         R40 12
      469 GETTABLEKS                       R39 R40 K26 ["GetFFlagWorkingInAssetDM"]
      471 CALL                             R39 0 1
      472 JUMPIFNOT                        R39 ; [+61]
      473 GETUPVAL                         R39 3
      474 GETTABLEKS                       R38 R39 K33 ["createElement"]
      476 LOADK                            R39 K78 ["ImageButton"]
      477 NEWTABLE                         R40 8 0
      479 LOADN                            R41 4
      480 SETTABLEKS                       R41 R40 K66 ["ZIndex"]
      482 GETIMPORT                        R41 K44 [UDim2.new]
      484 LOADN                            R42 1
      485 JUMPIFNOT                        R6 ; [+2]
      486 LOADN                            R43 44
      487 JUMP                             ; [+1]
      488 LOADN                            R43 0
      489 LOADN                            R44 1
      490 JUMPIFNOT                        R6 ; [+2]
      491 LOADN                            R45 44
      492 JUMP                             ; [+1]
      493 LOADN                            R45 0
      494 CALL                             R41 4 1
      495 SETTABLEKS                       R41 R40 K36 ["Size"]
      497 GETIMPORT                        R41 K80 [UDim2.fromScale]
      499 LOADK                            R42 K31 [0.5]
      500 LOADK                            R43 K31 [0.5]
      501 CALL                             R41 2 1
      502 SETTABLEKS                       R41 R40 K64 ["Position"]
      504 GETIMPORT                        R41 K30 [Vector2.new]
      506 LOADK                            R42 K31 [0.5]
      507 LOADK                            R43 K31 [0.5]
      508 CALL                             R41 2 1
      509 SETTABLEKS                       R41 R40 K62 ["AnchorPoint"]
      511 LOADN                            R41 1
      512 SETTABLEKS                       R41 R40 K81 ["BackgroundTransparency"]
      514 GETUPVAL                         R43 3
      515 GETTABLEKS                       R42 R43 K82 ["Event"]
      517 GETTABLEKS                       R41 R42 K83 ["InputBegan"]
      519 SETTABLE                         R27 R40 R41
      520 GETUPVAL                         R43 3
      521 GETTABLEKS                       R42 R43 K82 ["Event"]
      523 GETTABLEKS                       R41 R42 K84 ["InputChanged"]
      525 SETTABLE                         R28 R40 R41
      526 GETUPVAL                         R43 3
      527 GETTABLEKS                       R42 R43 K82 ["Event"]
      529 GETTABLEKS                       R41 R42 K85 ["InputEnded"]
      531 SETTABLE                         R29 R40 R41
      532 CALL                             R38 2 1
      533 JUMP                             ; [+34]
      534 GETUPVAL                         R39 3
      535 GETTABLEKS                       R38 R39 K33 ["createElement"]
      537 LOADK                            R39 K86 ["UIDragDetector"]
      538 NEWTABLE                         R40 8 0
      540 GETIMPORT                        R41 K90 [Enum.UIDragDetectorDragStyle.Scriptable]
      542 SETTABLEKS                       R41 R40 K91 ["DragStyle"]
      544 GETUPVAL                         R43 3
      545 GETTABLEKS                       R42 R43 K82 ["Event"]
      547 GETTABLEKS                       R41 R42 K92 ["DragStart"]
      549 SETTABLE                         R23 R40 R41
      550 GETUPVAL                         R43 3
      551 GETTABLEKS                       R42 R43 K82 ["Event"]
      553 GETTABLEKS                       R41 R42 K93 ["DragContinue"]
      555 SETTABLE                         R24 R40 R41
      556 GETUPVAL                         R43 3
      557 GETTABLEKS                       R42 R43 K82 ["Event"]
      559 GETTABLEKS                       R41 R42 K94 ["DragEnd"]
      561 SETTABLE                         R25 R40 R41
      562 GETTABLEKS                       R42 R2 K40 ["isDisabled"]
      564 NOT                              R41 R42
      565 SETTABLEKS                       R41 R40 K95 ["Enabled"]
      567 CALL                             R38 2 1
      568 SETTABLEKS                       R38 R37 K71 ["DragDetector"]
      570 GETTABLEKS                       R39 R2 K13 ["knob"]
      572 JUMPIFNOT                        R39 ; [+27]
      573 GETUPVAL                         R39 3
      574 GETTABLEKS                       R38 R39 K33 ["createElement"]
      576 GETUPVAL                         R40 13
      577 GETTABLEKS                       R39 R40 K34 ["View"]
      579 DUPTABLE                         R40 K96 [{"AnchorPoint", "Position", "Size", "Visible", "testId"}]
      580 SETTABLEKS                       R32 R40 K62 ["AnchorPoint"]
      582 SETTABLEKS                       R31 R40 K64 ["Position"]
      584 GETIMPORT                        R41 K98 [UDim2.fromOffset]
      586 LOADN                            R42 0
      587 LOADN                            R43 0
      588 CALL                             R41 2 1
      589 SETTABLEKS                       R41 R40 K36 ["Size"]
      591 SETTABLEKS                       R8 R40 K65 ["Visible"]
      593 LOADK                            R41 K99 ["--dragbox-knob"]
      594 SETTABLEKS                       R41 R40 K69 ["testId"]
      596 GETTABLEKS                       R41 R2 K13 ["knob"]
      598 CALL                             R38 3 1
      599 JUMP                             ; [+44]
      600 GETUPVAL                         R39 3
      601 GETTABLEKS                       R38 R39 K33 ["createElement"]
      603 GETUPVAL                         R40 13
      604 GETTABLEKS                       R39 R40 K72 ["Knob"]
      606 DUPTABLE                         R40 K102 [{"AnchorPoint", "Position", "size", "style", "stroke", "hasShadow", "Visible", "testId"}]
      607 SETTABLEKS                       R32 R40 K62 ["AnchorPoint"]
      609 SETTABLEKS                       R31 R40 K64 ["Position"]
      611 GETTABLEKS                       R41 R2 K103 ["knobSize"]
      613 SETTABLEKS                       R41 R40 K100 ["size"]
      615 DUPTABLE                         R41 K48 [{"Color3", "Transparency"}]
      616 GETTABLEKS                       R42 R18 K104 ["knobColor3"]
      618 SETTABLEKS                       R42 R41 K46 ["Color3"]
      620 GETTABLEKS                       R42 R18 K105 ["knobTransparency"]
      622 SETTABLEKS                       R42 R41 K47 ["Transparency"]
      624 SETTABLEKS                       R41 R40 K12 ["style"]
      626 GETTABLEKS                       R42 R15 K13 ["knob"]
      628 GETTABLEKS                       R41 R42 K11 ["stroke"]
      630 SETTABLEKS                       R41 R40 K11 ["stroke"]
      632 GETTABLEKS                       R42 R15 K13 ["knob"]
      634 GETTABLEKS                       R41 R42 K101 ["hasShadow"]
      636 SETTABLEKS                       R41 R40 K101 ["hasShadow"]
      638 SETTABLEKS                       R8 R40 K65 ["Visible"]
      640 LOADK                            R41 K99 ["--dragbox-knob"]
      641 SETTABLEKS                       R41 R40 K69 ["testId"]
      643 CALL                             R38 2 1
      644 SETTABLEKS                       R38 R37 K72 ["Knob"]
      646 CALL                             R34 3 -1
      647 CLOSEUPVALS                      R26
      648 RETURN                           R34 -1

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
       53 GETTABLEKS                       R14 R0 K16 ["Components"]
       55 GETTABLEKS                       R13 R14 K17 ["DragboxComponent"]
       57 GETTABLEKS                       R12 R13 K18 ["useDragboxVariants"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K7 [require]
       62 GETTABLEKS                       R15 R0 K16 ["Components"]
       64 GETTABLEKS                       R14 R15 K17 ["DragboxComponent"]
       66 GETTABLEKS                       R13 R14 K19 ["DragboxTypes"]
       68 CALL                             R12 1 1
       69 GETTABLEKS                       R14 R5 K20 ["Hooks"]
       71 GETTABLEKS                       R13 R14 K21 ["useTokens"]
       73 GETIMPORT                        R14 K7 [require]
       75 GETTABLEKS                       R17 R0 K16 ["Components"]
       77 GETTABLEKS                       R16 R17 K17 ["DragboxComponent"]
       79 GETTABLEKS                       R15 R16 K22 ["useDragboxMotionStates"]
       81 CALL                             R14 1 1
       82 GETIMPORT                        R15 K7 [require]
       84 GETTABLEKS                       R16 R1 K23 ["Motion"]
       86 CALL                             R15 1 1
       87 GETTABLEKS                       R16 R15 K24 ["useMotion"]
       89 GETTABLEKS                       R17 R12 K25 ["ControlStateEnum"]
       91 GETTABLEKS                       R18 R12 K26 ["StateLayerAffordanceEnum"]
       93 DUPTABLE                         R19 K36 [{"minX", "maxX", "minY", "maxY", "length", "knobSize", "isDisabled", "knobVisibility", "variant"}]
       94 LOADN                            R20 255
       95 SETTABLEKS                       R20 R19 K27 ["minX"]
       97 LOADN                            R20 1
       98 SETTABLEKS                       R20 R19 K28 ["maxX"]
      100 LOADN                            R20 255
      101 SETTABLEKS                       R20 R19 K29 ["minY"]
      103 LOADN                            R20 1
      104 SETTABLEKS                       R20 R19 K30 ["maxY"]
      106 GETIMPORT                        R20 K39 [UDim.new]
      108 LOADN                            R21 1
      109 LOADN                            R22 1
      110 CALL                             R20 2 1
      111 SETTABLEKS                       R20 R19 K31 ["length"]
      113 LOADK                            R20 K40 ["Medium"]
      114 SETTABLEKS                       R20 R19 K32 ["knobSize"]
      116 LOADB                            R20 0
      117 SETTABLEKS                       R20 R19 K33 ["isDisabled"]
      119 LOADK                            R20 K41 ["Auto"]
      120 SETTABLEKS                       R20 R19 K34 ["knobVisibility"]
      122 LOADK                            R20 K42 ["Standard"]
      123 SETTABLEKS                       R20 R19 K35 ["variant"]
      125 DUPCLOSURE                       R20 K43 [PROTO_0]
      126 DUPCLOSURE                       R21 K44 [PROTO_1]
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R4
      129 DUPCLOSURE                       R22 K45 [PROTO_18]
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R18
      145 GETTABLEKS                       R23 R3 K46 ["forwardRef"]
      147 MOVE                             R24 R22
      148 CALL                             R23 1 -1
      149 RETURN                           R23 -1
