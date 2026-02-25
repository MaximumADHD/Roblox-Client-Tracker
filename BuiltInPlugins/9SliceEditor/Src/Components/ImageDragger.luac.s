PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["orientation"]
        5 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
        7 GETIMPORT                        R4 K5 [Enum.UserInputType.MouseButton1]
        9 JUMPIFNOTEQ                      R3 R4 ; [+44]
       11 GETUPVAL                         R3 0
       12 DUPTABLE                         R5 K7 [{"dragging"}]
       13 LOADB                            R6 1
       14 SETTABLEKS                       R6 R5 K6 ["dragging"]
       16 NAMECALL                         R3 R3 K8 ["setState"]
       18 CALL                             R3 2 0
       19 GETIMPORT                        R3 K11 [Vector2.new]
       21 GETTABLEKS                       R5 R1 K12 ["Position"]
       23 GETTABLEKS                       R4 R5 K13 ["X"]
       25 GETTABLEKS                       R6 R1 K12 ["Position"]
       27 GETTABLEKS                       R5 R6 K14 ["Y"]
       29 CALL                             R3 2 1
       30 GETIMPORT                        R4 K11 [Vector2.new]
       32 GETTABLEKS                       R7 R0 K12 ["Position"]
       34 GETTABLEKS                       R6 R7 K13 ["X"]
       36 GETTABLEKS                       R5 R6 K15 ["Scale"]
       38 GETTABLEKS                       R8 R0 K12 ["Position"]
       40 GETTABLEKS                       R7 R8 K14 ["Y"]
       42 GETTABLEKS                       R6 R7 K15 ["Scale"]
       44 CALL                             R4 2 1
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R5 R6 K16 ["onDragBegin"]
       48 MOVE                             R6 R0
       49 MOVE                             R7 R2
       50 MOVE                             R8 R3
       51 MOVE                             R9 R4
       52 CALL                             R5 4 0
       53 RETURN                           R0 0
       54 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       56 GETIMPORT                        R4 K18 [Enum.UserInputType.MouseMovement]
       58 JUMPIFNOTEQ                      R3 R4 ; [+18]
       60 GETUPVAL                         R5 0
       61 GETTABLEKS                       R4 R5 K0 ["props"]
       63 GETTABLEKS                       R3 R4 K19 ["addPriorityDragCandidate"]
       65 MOVE                             R4 R2
       66 GETTABLEKS                       R5 R0 K20 ["ZIndex"]
       68 MOVE                             R6 R0
       69 CALL                             R3 3 0
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R4 R5 K0 ["props"]
       73 GETTABLEKS                       R3 R4 K21 ["setMostRecentMouseMoveInputObject"]
       75 MOVE                             R4 R1
       76 CALL                             R3 1 0
       77 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R2
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K0 ["props"]
        4 GETTABLEKS                       R3 R4 K1 ["orientation"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["draggerInstanceRef"]
        9 NAMECALL                         R4 R4 K3 ["getValue"]
       11 CALL                             R4 1 1
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K4 ["DRAGGER_WIDTH"]
       15 LOADN                            R6 0
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R5 R7 K5 ["DRAGGER_CLICK_WINDOW_WIDTH"]
       19 GETUPVAL                         R8 2
       20 JUMPIFEQ                         R3 R8 ; [+4]
       22 GETUPVAL                         R8 3
       23 JUMPIFNOTEQ                      R3 R8 ; [+3]
       25 LOADK                            R7 K6 [0.01]
       26 JUMP                             ; [+1]
       27 LOADN                            R7 0
       28 MOVE                             R6 R7
       29 GETUPVAL                         R7 4
       30 JUMPIFEQ                         R3 R7 ; [+4]
       32 GETUPVAL                         R7 2
       33 JUMPIFNOTEQ                      R3 R7 ; [+19]
       35 GETTABLEKS                       R12 R4 K7 ["AbsolutePosition"]
       37 GETTABLEKS                       R11 R12 K8 ["X"]
       39 ADD                              R10 R11 R6
       40 DIVK                             R11 R5 K9 [2]
       41 ADD                              R9 R10 R11
       42 GETTABLEKS                       R11 R1 K10 ["Position"]
       44 GETTABLEKS                       R10 R11 K8 ["X"]
       46 SUB                              R8 R9 R10
       47 FASTCALL1                        MATH_ABS R8 ; [+2]
       48 GETIMPORT                        R7 K13 [math.abs]
       50 CALL                             R7 1 1
       51 MOVE                             R2 R7
       52 JUMP                             ; [+23]
       53 GETUPVAL                         R7 5
       54 JUMPIFEQ                         R3 R7 ; [+4]
       56 GETUPVAL                         R7 3
       57 JUMPIFNOTEQ                      R3 R7 ; [+18]
       59 GETTABLEKS                       R12 R4 K7 ["AbsolutePosition"]
       61 GETTABLEKS                       R11 R12 K14 ["Y"]
       63 ADD                              R10 R11 R6
       64 DIVK                             R11 R5 K9 [2]
       65 ADD                              R9 R10 R11
       66 GETTABLEKS                       R11 R1 K10 ["Position"]
       68 GETTABLEKS                       R10 R11 K14 ["Y"]
       70 SUB                              R8 R9 R10
       71 FASTCALL1                        MATH_ABS R8 ; [+2]
       72 GETIMPORT                        R7 K13 [math.abs]
       74 CALL                             R7 1 1
       75 MOVE                             R2 R7
       76 GETUPVAL                         R9 0
       77 GETTABLEKS                       R8 R9 K0 ["props"]
       79 GETTABLEKS                       R7 R8 K15 ["addDragCandidateWithId"]
       81 MOVE                             R8 R0
       82 GETUPVAL                         R11 0
       83 GETTABLEKS                       R10 R11 K0 ["props"]
       85 GETTABLEKS                       R9 R10 K1 ["orientation"]
       87 MOVE                             R10 R2
       88 MOVE                             R11 R4
       89 GETUPVAL                         R13 0
       90 GETTABLEKS                       R12 R13 K16 ["selectionPriority"]
       92 CALL                             R7 5 0
       93 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+20]
        6 GETIMPORT                        R2 K6 [Vector2.new]
        8 GETTABLEKS                       R4 R1 K7 ["Position"]
       10 GETTABLEKS                       R3 R4 K8 ["X"]
       12 GETTABLEKS                       R5 R1 K7 ["Position"]
       14 GETTABLEKS                       R4 R5 K9 ["Y"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K10 ["props"]
       20 GETTABLEKS                       R3 R4 K11 ["startUncertainDrag"]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 0
       24 RETURN                           R0 0
       25 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       27 GETIMPORT                        R3 K13 [Enum.UserInputType.MouseMovement]
       29 JUMPIFNOTEQ                      R2 R3 ; [+14]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R2 R3 K14 ["onHandleInputChanged"]
       34 MOVE                             R3 R0
       35 MOVE                             R4 R1
       36 CALL                             R2 2 0
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R3 R4 K10 ["props"]
       40 GETTABLEKS                       R2 R3 K15 ["setMostRecentMouseMoveInputObject"]
       42 MOVE                             R3 R1
       43 CALL                             R2 1 0
       44 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["orientation"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K2 ["state"]
        8 GETTABLEKS                       R3 R4 K3 ["dragging"]
       10 JUMPIFNOT                        R3 ; [+23]
       11 GETTABLEKS                       R3 R1 K4 ["UserInputType"]
       13 GETIMPORT                        R4 K7 [Enum.UserInputType.MouseMovement]
       15 JUMPIFNOTEQ                      R3 R4 ; [+18]
       17 GETIMPORT                        R3 K10 [Vector2.new]
       19 GETTABLEKS                       R5 R1 K11 ["Position"]
       21 GETTABLEKS                       R4 R5 K12 ["X"]
       23 GETTABLEKS                       R6 R1 K11 ["Position"]
       25 GETTABLEKS                       R5 R6 K13 ["Y"]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K14 ["onDragging"]
       31 MOVE                             R5 R3
       32 MOVE                             R6 R2
       33 CALL                             R4 2 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["orientation"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["onDragEnd"]
        8 MOVE                             R4 R1
        9 MOVE                             R5 R2
       10 CALL                             R3 2 0
       11 GETTABLEKS                       R3 R1 K3 ["UserInputType"]
       13 GETIMPORT                        R4 K6 [Enum.UserInputType.MouseButton1]
       15 JUMPIFNOTEQ                      R3 R4 ; [+10]
       17 GETUPVAL                         R3 0
       18 DUPTABLE                         R5 K8 [{"dragging"}]
       19 LOADB                            R6 0
       20 SETTABLEKS                       R6 R5 K7 ["dragging"]
       22 NAMECALL                         R3 R3 K9 ["setState"]
       24 CALL                             R3 2 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R3 R1 K3 ["UserInputType"]
       28 GETIMPORT                        R4 K11 [Enum.UserInputType.MouseMovement]
       30 JUMPIFNOTEQ                      R3 R4 ; [+8]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R4 R5 K0 ["props"]
       35 GETTABLEKS                       R3 R4 K12 ["removePriorityDragCandidate"]
       37 MOVE                             R4 R2
       38 CALL                             R3 1 0
       39 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["orientation"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["onDragEnd"]
        8 MOVE                             R4 R1
        9 MOVE                             R5 R2
       10 CALL                             R3 2 0
       11 GETTABLEKS                       R3 R1 K3 ["UserInputType"]
       13 GETIMPORT                        R4 K6 [Enum.UserInputType.MouseButton1]
       15 JUMPIFNOTEQ                      R3 R4 ; [+10]
       17 GETUPVAL                         R3 0
       18 DUPTABLE                         R5 K8 [{"dragging"}]
       19 LOADB                            R6 0
       20 SETTABLEKS                       R6 R5 K7 ["dragging"]
       22 NAMECALL                         R3 R3 K9 ["setState"]
       24 CALL                             R3 2 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R3 R1 K3 ["UserInputType"]
       28 GETIMPORT                        R4 K11 [Enum.UserInputType.MouseMovement]
       30 JUMPIFNOTEQ                      R3 R4 ; [+8]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R4 R5 K0 ["props"]
       35 GETTABLEKS                       R3 R4 K12 ["removeDragCandidateWithId"]
       37 MOVE                             R4 R0
       38 CALL                             R3 1 0
       39 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K0 ["props"]
        5 GETTABLEKS                       R5 R6 K1 ["orientation"]
        7 GETTABLE                         R3 R4 R5
        8 SETTABLEKS                       R3 R2 K2 ["selectionPriority"]
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADN                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["selectionPriority"]
        4 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R4 K1 [{"dragging"}]
        1 LOADB                            R5 0
        2 SETTABLEKS                       R5 R4 K0 ["dragging"]
        4 NAMECALL                         R2 R0 K2 ["setState"]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["createRef"]
       10 CALL                             R2 0 1
       11 SETTABLEKS                       R2 R0 K4 ["draggerInstanceRef"]
       13 LOADN                            R2 0
       14 SETTABLEKS                       R2 R0 K5 ["selectionPriority"]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R2 R0 K6 ["onInputBegan"]
       21 NEWCLOSURE                       R2 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U5
       28 SETTABLEKS                       R2 R0 K7 ["onHandleInputChanged"]
       30 NEWCLOSURE                       R2 P2
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R2 R0 K8 ["onInputBeganOnLowPriorityHandles"]
       34 NEWCLOSURE                       R2 P3
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R2 R0 K9 ["onInputChanged"]
       39 NEWCLOSURE                       R2 P4
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R2 R0 K10 ["onInputEnded"]
       44 NEWCLOSURE                       R2 P5
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R2 R0 K11 ["onHandleInputEnded"]
       49 NEWCLOSURE                       R2 P6
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U6
       52 SETTABLEKS                       R2 R0 K12 ["onInputBeganOnPriorityHandles"]
       54 NEWCLOSURE                       R2 P7
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R2 R0 K13 ["onInputEndedOnPriorityHandles"]
       58 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["sliceRect"]
        4 GETTABLEKS                       R3 R1 K2 ["pixelDimensions"]
        6 GETTABLEKS                       R4 R1 K3 ["orientation"]
        8 GETTABLEKS                       R5 R1 K4 ["Stylizer"]
       10 GETTABLEKS                       R6 R1 K5 ["isHovering"]
       12 MOVE                             R7 R6
       13 JUMPIFNOT                        R7 ; [+3]
       14 GETTABLEKS                       R8 R1 K6 ["isDragging"]
       16 NOT                              R7 R8
       17 GETTABLE                         R9 R2 R4
       18 FASTCALL1                        MATH_ROUND R9 ; [+2]
       19 GETIMPORT                        R8 K9 [math.round]
       21 CALL                             R8 1 1
       22 LOADNIL                          R9
       23 LOADNIL                          R10
       24 LOADNIL                          R11
       25 LOADNIL                          R12
       26 LOADNIL                          R13
       27 LOADNIL                          R14
       28 LOADNIL                          R15
       29 LOADNIL                          R16
       30 LOADNIL                          R17
       31 GETUPVAL                         R18 0
       32 JUMPIFEQ                         R4 R18 ; [+4]
       34 GETUPVAL                         R18 1
       35 JUMPIFNOTEQ                      R4 R18 ; [+131]
       37 GETTABLEKS                       R19 R3 K10 ["X"]
       39 DIV                              R18 R8 R19
       40 LOADN                            R21 0
       41 LOADN                            R22 1
       42 FASTCALL3                        MATH_CLAMP R18 R21 R22
       44 MOVE                             R20 R18
       45 GETIMPORT                        R19 K12 [math.clamp]
       47 CALL                             R19 3 1
       48 MOVE                             R18 R19
       49 GETIMPORT                        R19 K15 [UDim2.fromScale]
       51 MOVE                             R20 R18
       52 LOADK                            R21 K16 [0.5]
       53 CALL                             R19 2 1
       54 MOVE                             R10 R19
       55 GETTABLEKS                       R14 R5 K17 ["EdgeHandleSize"]
       57 LOADNIL                          R19
       58 GETUPVAL                         R20 0
       59 JUMPIFNOTEQ                      R4 R20 ; [+26]
       61 GETUPVAL                         R22 2
       62 GETTABLEKS                       R21 R22 K18 ["IMAGES"]
       64 GETTABLEKS                       R20 R21 K19 ["DRAGGER_V2"]
       66 GETTABLEKS                       R19 R20 K20 ["LEFT"]
       68 GETIMPORT                        R20 K22 [UDim2.fromOffset]
       70 GETUPVAL                         R25 2
       71 GETTABLEKS                       R24 R25 K24 ["DRAGGER_CLICK_WINDOW_WIDTH"]
       73 DIVK                             R23 R24 K23 [2]
       74 GETUPVAL                         R25 2
       75 GETTABLEKS                       R24 R25 K25 ["DRAGGER_WIDTH_V2"]
       77 SUB                              R22 R23 R24
       78 GETUPVAL                         R24 2
       79 GETTABLEKS                       R23 R24 K26 ["DRAGGER_CENTER_INSETPX"]
       81 ADD                              R21 R22 R23
       82 LOADN                            R22 0
       83 CALL                             R20 2 1
       84 MOVE                             R17 R20
       85 JUMP                             ; [+23]
       86 GETUPVAL                         R20 1
       87 JUMPIFNOTEQ                      R4 R20 ; [+21]
       89 GETUPVAL                         R22 2
       90 GETTABLEKS                       R21 R22 K18 ["IMAGES"]
       92 GETTABLEKS                       R20 R21 K19 ["DRAGGER_V2"]
       94 GETTABLEKS                       R19 R20 K27 ["RIGHT"]
       96 GETIMPORT                        R20 K22 [UDim2.fromOffset]
       98 GETUPVAL                         R24 2
       99 GETTABLEKS                       R23 R24 K24 ["DRAGGER_CLICK_WINDOW_WIDTH"]
      101 DIVK                             R22 R23 K23 [2]
      102 GETUPVAL                         R24 2
      103 GETTABLEKS                       R23 R24 K26 ["DRAGGER_CENTER_INSETPX"]
      105 SUB                              R21 R22 R23
      106 LOADN                            R22 0
      107 CALL                             R20 2 1
      108 MOVE                             R17 R20
      109 GETIMPORT                        R20 K29 [UDim2.new]
      111 LOADK                            R21 K16 [0.5]
      112 LOADN                            R22 0
      113 LOADN                            R23 0
      114 GETTABLEKS                       R24 R5 K30 ["EdgeHandleInsetPx"]
      116 CALL                             R20 4 1
      117 MOVE                             R12 R20
      118 GETIMPORT                        R20 K29 [UDim2.new]
      120 LOADK                            R21 K16 [0.5]
      121 LOADN                            R22 0
      122 LOADN                            R23 1
      123 GETTABLEKS                       R25 R5 K30 ["EdgeHandleInsetPx"]
      125 MINUS                            R24 R25
      126 CALL                             R20 4 1
      127 MOVE                             R13 R20
      128 JUMPIFNOT                        R7 ; [+3]
      129 GETTABLEKS                       R20 R19 K31 ["OUTLINED"]
      131 JUMPIF                           R20 ; [+2]
      132 GETTABLEKS                       R20 R19 K32 ["NORMAL"]
      134 MOVE                             R9 R20
      135 GETIMPORT                        R20 K34 [Rect.new]
      137 LOADN                            R21 0
      138 LOADN                            R22 8
      139 LOADN                            R23 8
      140 LOADN                            R24 8
      141 CALL                             R20 4 1
      142 MOVE                             R16 R20
      143 GETIMPORT                        R20 K29 [UDim2.new]
      145 LOADN                            R21 0
      146 GETUPVAL                         R23 2
      147 GETTABLEKS                       R22 R23 K25 ["DRAGGER_WIDTH_V2"]
      149 LOADN                            R23 1
      150 LOADN                            R24 0
      151 CALL                             R20 4 1
      152 MOVE                             R11 R20
      153 GETIMPORT                        R20 K29 [UDim2.new]
      155 LOADN                            R21 0
      156 GETUPVAL                         R23 2
      157 GETTABLEKS                       R22 R23 K24 ["DRAGGER_CLICK_WINDOW_WIDTH"]
      159 LOADN                            R23 1
      160 GETUPVAL                         R26 2
      161 GETTABLEKS                       R25 R26 K35 ["DRAGGER_HANDLE_SIZE"]
      163 MULK                             R24 R25 K23 [2]
      164 CALL                             R20 4 1
      165 MOVE                             R15 R20
      166 JUMP                             ; [+150]
      167 GETUPVAL                         R18 3
      168 JUMPIFEQ                         R4 R18 ; [+4]
      170 GETUPVAL                         R18 4
      171 JUMPIFNOTEQ                      R4 R18 ; [+145]
      173 GETTABLEKS                       R19 R3 K36 ["Y"]
      175 DIV                              R18 R8 R19
      176 LOADN                            R21 0
      177 LOADN                            R22 1
      178 FASTCALL3                        MATH_CLAMP R18 R21 R22
      180 MOVE                             R20 R18
      181 GETIMPORT                        R19 K12 [math.clamp]
      183 CALL                             R19 3 1
      184 MOVE                             R18 R19
      185 GETUPVAL                         R20 2
      186 GETTABLEKS                       R19 R20 K18 ["IMAGES"]
      188 GETTABLEKS                       R9 R19 K37 ["HORIZONTAL_DRAGGER"]
      190 GETIMPORT                        R19 K15 [UDim2.fromScale]
      192 LOADK                            R20 K16 [0.5]
      193 MOVE                             R21 R18
      194 CALL                             R19 2 1
      195 MOVE                             R10 R19
      196 GETIMPORT                        R19 K29 [UDim2.new]
      198 GETTABLEKS                       R21 R5 K17 ["EdgeHandleSize"]
      200 GETTABLEKS                       R20 R21 K36 ["Y"]
      202 GETTABLEKS                       R22 R5 K17 ["EdgeHandleSize"]
      204 GETTABLEKS                       R21 R22 K10 ["X"]
      206 CALL                             R19 2 1
      207 MOVE                             R14 R19
      208 LOADNIL                          R19
      209 GETUPVAL                         R20 3
      210 JUMPIFNOTEQ                      R4 R20 ; [+26]
      212 GETUPVAL                         R22 2
      213 GETTABLEKS                       R21 R22 K18 ["IMAGES"]
      215 GETTABLEKS                       R20 R21 K19 ["DRAGGER_V2"]
      217 GETTABLEKS                       R19 R20 K38 ["TOP"]
      219 GETIMPORT                        R20 K22 [UDim2.fromOffset]
      221 LOADN                            R21 0
      222 GETUPVAL                         R26 2
      223 GETTABLEKS                       R25 R26 K24 ["DRAGGER_CLICK_WINDOW_WIDTH"]
      225 DIVK                             R24 R25 K23 [2]
      226 GETUPVAL                         R26 2
      227 GETTABLEKS                       R25 R26 K25 ["DRAGGER_WIDTH_V2"]
      229 SUB                              R23 R24 R25
      230 GETUPVAL                         R25 2
      231 GETTABLEKS                       R24 R25 K26 ["DRAGGER_CENTER_INSETPX"]
      233 ADD                              R22 R23 R24
      234 CALL                             R20 2 1
      235 MOVE                             R17 R20
      236 JUMP                             ; [+23]
      237 GETUPVAL                         R20 4
      238 JUMPIFNOTEQ                      R4 R20 ; [+21]
      240 GETUPVAL                         R22 2
      241 GETTABLEKS                       R21 R22 K18 ["IMAGES"]
      243 GETTABLEKS                       R20 R21 K19 ["DRAGGER_V2"]
      245 GETTABLEKS                       R19 R20 K39 ["BOTTOM"]
      247 GETIMPORT                        R20 K22 [UDim2.fromOffset]
      249 LOADN                            R21 0
      250 GETUPVAL                         R25 2
      251 GETTABLEKS                       R24 R25 K24 ["DRAGGER_CLICK_WINDOW_WIDTH"]
      253 DIVK                             R23 R24 K23 [2]
      254 GETUPVAL                         R25 2
      255 GETTABLEKS                       R24 R25 K26 ["DRAGGER_CENTER_INSETPX"]
      257 SUB                              R22 R23 R24
      258 CALL                             R20 2 1
      259 MOVE                             R17 R20
      260 GETIMPORT                        R20 K29 [UDim2.new]
      262 LOADN                            R21 0
      263 GETTABLEKS                       R22 R5 K30 ["EdgeHandleInsetPx"]
      265 LOADK                            R23 K16 [0.5]
      266 LOADN                            R24 0
      267 CALL                             R20 4 1
      268 MOVE                             R12 R20
      269 GETIMPORT                        R20 K29 [UDim2.new]
      271 LOADN                            R21 1
      272 GETTABLEKS                       R23 R5 K30 ["EdgeHandleInsetPx"]
      274 MINUS                            R22 R23
      275 LOADK                            R23 K16 [0.5]
      276 LOADN                            R24 0
      277 CALL                             R20 4 1
      278 MOVE                             R13 R20
      279 JUMPIFNOT                        R7 ; [+3]
      280 GETTABLEKS                       R20 R19 K31 ["OUTLINED"]
      282 JUMPIF                           R20 ; [+2]
      283 GETTABLEKS                       R20 R19 K32 ["NORMAL"]
      285 MOVE                             R9 R20
      286 GETIMPORT                        R20 K34 [Rect.new]
      288 LOADN                            R21 8
      289 LOADN                            R22 0
      290 LOADN                            R23 8
      291 LOADN                            R24 8
      292 CALL                             R20 4 1
      293 MOVE                             R16 R20
      294 GETIMPORT                        R20 K29 [UDim2.new]
      296 LOADN                            R21 1
      297 LOADN                            R22 0
      298 LOADN                            R23 0
      299 GETUPVAL                         R25 2
      300 GETTABLEKS                       R24 R25 K25 ["DRAGGER_WIDTH_V2"]
      302 CALL                             R20 4 1
      303 MOVE                             R11 R20
      304 GETIMPORT                        R20 K29 [UDim2.new]
      306 LOADN                            R21 1
      307 GETUPVAL                         R24 2
      308 GETTABLEKS                       R23 R24 K35 ["DRAGGER_HANDLE_SIZE"]
      310 MULK                             R22 R23 K23 [2]
      311 LOADN                            R23 0
      312 GETUPVAL                         R25 2
      313 GETTABLEKS                       R24 R25 K24 ["DRAGGER_CLICK_WINDOW_WIDTH"]
      315 CALL                             R20 4 1
      316 MOVE                             R15 R20
      317 GETIMPORT                        R18 K42 [Color3.fromRGB]
      319 LOADN                            R19 255
      320 LOADN                            R20 131
      321 LOADN                            R21 131
      322 CALL                             R18 3 1
      323 GETIMPORT                        R19 K42 [Color3.fromRGB]
      325 LOADN                            R20 255
      326 LOADN                            R21 0
      327 LOADN                            R22 0
      328 CALL                             R19 3 1
      329 GETIMPORT                        R20 K42 [Color3.fromRGB]
      331 LOADN                            R21 210
      332 LOADN                            R22 0
      333 LOADN                            R23 0
      334 CALL                             R20 3 1
      335 MOVE                             R21 R6
      336 JUMPIFNOT                        R21 ; [+2]
      337 GETTABLEKS                       R21 R1 K6 ["isDragging"]
      339 JUMPIFNOT                        R7 ; [+2]
      340 MOVE                             R22 R18
      341 JUMPIF                           R22 ; [+4]
      342 JUMPIFNOT                        R21 ; [+2]
      343 MOVE                             R22 R20
      344 JUMPIF                           R22 ; [+1]
      345 MOVE                             R22 R19
      346 GETUPVAL                         R24 5
      347 GETTABLEKS                       R23 R24 K43 ["createElement"]
      349 LOADK                            R24 K44 ["Frame"]
      350 NEWTABLE                         R25 16 0
      352 GETIMPORT                        R26 K46 [Vector2.new]
      354 LOADK                            R27 K16 [0.5]
      355 LOADK                            R28 K16 [0.5]
      356 CALL                             R26 2 1
      357 SETTABLEKS                       R26 R25 K47 ["AnchorPoint"]
      359 SETTABLEKS                       R10 R25 K48 ["Position"]
      361 SETTABLEKS                       R15 R25 K49 ["Size"]
      363 LOADN                            R26 0
      364 SETTABLEKS                       R26 R25 K50 ["BorderSizePixel"]
      366 LOADN                            R26 1
      367 SETTABLEKS                       R26 R25 K51 ["BackgroundTransparency"]
      369 GETIMPORT                        R26 K52 [Color3.new]
      371 LOADN                            R27 0
      372 LOADN                            R28 0
      373 LOADN                            R29 1
      374 CALL                             R26 3 1
      375 SETTABLEKS                       R26 R25 K53 ["BackgroundColor3"]
      377 GETUPVAL                         R28 5
      378 GETTABLEKS                       R27 R28 K54 ["Event"]
      380 GETTABLEKS                       R26 R27 K55 ["InputBegan"]
      382 GETTABLEKS                       R27 R0 K56 ["onInputBeganOnLowPriorityHandles"]
      384 SETTABLE                         R27 R25 R26
      385 GETUPVAL                         R28 5
      386 GETTABLEKS                       R27 R28 K54 ["Event"]
      388 GETTABLEKS                       R26 R27 K57 ["InputChanged"]
      390 GETTABLEKS                       R27 R0 K58 ["onHandleInputChanged"]
      392 SETTABLE                         R27 R25 R26
      393 GETUPVAL                         R28 5
      394 GETTABLEKS                       R27 R28 K54 ["Event"]
      396 GETTABLEKS                       R26 R27 K59 ["InputEnded"]
      398 GETTABLEKS                       R27 R0 K60 ["onHandleInputEnded"]
      400 SETTABLE                         R27 R25 R26
      401 GETUPVAL                         R27 5
      402 GETTABLEKS                       R26 R27 K61 ["Ref"]
      404 GETTABLEKS                       R27 R0 K62 ["draggerInstanceRef"]
      406 SETTABLE                         R27 R25 R26
      407 DUPTABLE                         R26 K64 [{"Image"}]
      408 GETUPVAL                         R28 5
      409 GETTABLEKS                       R27 R28 K43 ["createElement"]
      411 LOADK                            R28 K65 ["ImageLabel"]
      412 NEWTABLE                         R29 16 0
      414 SETTABLEKS                       R17 R29 K48 ["Position"]
      416 LOADN                            R30 1
      417 SETTABLEKS                       R30 R29 K51 ["BackgroundTransparency"]
      419 SETTABLEKS                       R9 R29 K63 ["Image"]
      421 SETTABLEKS                       R11 R29 K49 ["Size"]
      423 GETIMPORT                        R30 K69 [Enum.ScaleType.Slice]
      425 SETTABLEKS                       R30 R29 K67 ["ScaleType"]
      427 SETTABLEKS                       R16 R29 K70 ["SliceCenter"]
      429 LOADN                            R30 0
      430 SETTABLEKS                       R30 R29 K50 ["BorderSizePixel"]
      432 SETTABLEKS                       R22 R29 K71 ["ImageColor3"]
      434 LOADN                            R32 5
      435 GETUPVAL                         R34 6
      436 GETTABLE                         R33 R34 R4
      437 ADD                              R31 R32 R33
      438 JUMPIFNOT                        R6 ; [+2]
      439 LOADN                            R32 100
      440 JUMP                             ; [+1]
      441 LOADN                            R32 0
      442 ADD                              R30 R31 R32
      443 SETTABLEKS                       R30 R29 K72 ["ZIndex"]
      445 GETUPVAL                         R32 5
      446 GETTABLEKS                       R31 R32 K54 ["Event"]
      448 GETTABLEKS                       R30 R31 K55 ["InputBegan"]
      450 GETTABLEKS                       R31 R0 K73 ["onInputBeganOnPriorityHandles"]
      452 SETTABLE                         R31 R29 R30
      453 GETUPVAL                         R32 5
      454 GETTABLEKS                       R31 R32 K54 ["Event"]
      456 GETTABLEKS                       R30 R31 K59 ["InputEnded"]
      458 GETTABLEKS                       R31 R0 K74 ["onInputEndedOnPriorityHandles"]
      460 SETTABLE                         R31 R29 R30
      461 DUPTABLE                         R30 K77 [{"Handle1", "Handle2"}]
      462 GETUPVAL                         R32 5
      463 GETTABLEKS                       R31 R32 K43 ["createElement"]
      465 LOADK                            R32 K44 ["Frame"]
      466 NEWTABLE                         R33 16 0
      468 GETIMPORT                        R34 K46 [Vector2.new]
      470 LOADK                            R35 K16 [0.5]
      471 LOADK                            R36 K16 [0.5]
      472 CALL                             R34 2 1
      473 SETTABLEKS                       R34 R33 K47 ["AnchorPoint"]
      475 SETTABLEKS                       R12 R33 K48 ["Position"]
      477 SETTABLEKS                       R14 R33 K49 ["Size"]
      479 LOADN                            R34 0
      480 SETTABLEKS                       R34 R33 K50 ["BorderSizePixel"]
      482 LOADN                            R35 1
      483 GETUPVAL                         R37 6
      484 GETTABLE                         R36 R37 R4
      485 ADD                              R34 R35 R36
      486 SETTABLEKS                       R34 R33 K72 ["ZIndex"]
      488 GETIMPORT                        R34 K52 [Color3.new]
      490 LOADN                            R35 0
      491 LOADN                            R36 1
      492 LOADN                            R37 0
      493 CALL                             R34 3 1
      494 SETTABLEKS                       R34 R33 K53 ["BackgroundColor3"]
      496 LOADN                            R34 1
      497 SETTABLEKS                       R34 R33 K51 ["BackgroundTransparency"]
      499 GETUPVAL                         R36 5
      500 GETTABLEKS                       R35 R36 K54 ["Event"]
      502 GETTABLEKS                       R34 R35 K55 ["InputBegan"]
      504 GETTABLEKS                       R35 R0 K56 ["onInputBeganOnLowPriorityHandles"]
      506 SETTABLE                         R35 R33 R34
      507 GETUPVAL                         R36 5
      508 GETTABLEKS                       R35 R36 K54 ["Event"]
      510 GETTABLEKS                       R34 R35 K57 ["InputChanged"]
      512 GETTABLEKS                       R35 R0 K58 ["onHandleInputChanged"]
      514 SETTABLE                         R35 R33 R34
      515 GETUPVAL                         R36 5
      516 GETTABLEKS                       R35 R36 K54 ["Event"]
      518 GETTABLEKS                       R34 R35 K59 ["InputEnded"]
      520 GETTABLEKS                       R35 R0 K60 ["onHandleInputEnded"]
      522 SETTABLE                         R35 R33 R34
      523 CALL                             R31 2 1
      524 SETTABLEKS                       R31 R30 K75 ["Handle1"]
      526 GETUPVAL                         R32 5
      527 GETTABLEKS                       R31 R32 K43 ["createElement"]
      529 LOADK                            R32 K44 ["Frame"]
      530 NEWTABLE                         R33 16 0
      532 GETIMPORT                        R34 K46 [Vector2.new]
      534 LOADK                            R35 K16 [0.5]
      535 LOADK                            R36 K16 [0.5]
      536 CALL                             R34 2 1
      537 SETTABLEKS                       R34 R33 K47 ["AnchorPoint"]
      539 SETTABLEKS                       R13 R33 K48 ["Position"]
      541 SETTABLEKS                       R14 R33 K49 ["Size"]
      543 LOADN                            R34 0
      544 SETTABLEKS                       R34 R33 K50 ["BorderSizePixel"]
      546 LOADN                            R35 1
      547 GETUPVAL                         R37 6
      548 GETTABLE                         R36 R37 R4
      549 ADD                              R34 R35 R36
      550 SETTABLEKS                       R34 R33 K72 ["ZIndex"]
      552 GETIMPORT                        R34 K52 [Color3.new]
      554 LOADN                            R35 0
      555 LOADN                            R36 1
      556 LOADN                            R37 0
      557 CALL                             R34 3 1
      558 SETTABLEKS                       R34 R33 K53 ["BackgroundColor3"]
      560 LOADN                            R34 1
      561 SETTABLEKS                       R34 R33 K51 ["BackgroundTransparency"]
      563 GETUPVAL                         R36 5
      564 GETTABLEKS                       R35 R36 K54 ["Event"]
      566 GETTABLEKS                       R34 R35 K55 ["InputBegan"]
      568 GETTABLEKS                       R35 R0 K56 ["onInputBeganOnLowPriorityHandles"]
      570 SETTABLE                         R35 R33 R34
      571 GETUPVAL                         R36 5
      572 GETTABLEKS                       R35 R36 K54 ["Event"]
      574 GETTABLEKS                       R34 R35 K57 ["InputChanged"]
      576 GETTABLEKS                       R35 R0 K58 ["onHandleInputChanged"]
      578 SETTABLE                         R35 R33 R34
      579 GETUPVAL                         R36 5
      580 GETTABLEKS                       R35 R36 K54 ["Event"]
      582 GETTABLEKS                       R34 R35 K59 ["InputEnded"]
      584 GETTABLEKS                       R35 R0 K60 ["onHandleInputEnded"]
      586 SETTABLE                         R35 R33 R34
      587 CALL                             R31 2 1
      588 SETTABLEKS                       R31 R30 K76 ["Handle2"]
      590 CALL                             R27 3 1
      591 SETTABLEKS                       R27 R26 K63 ["Image"]
      593 CALL                             R23 3 -1
      594 RETURN                           R23 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Util"]
       29 GETTABLEKS                       R4 R5 K10 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K9 ["Util"]
       38 GETTABLEKS                       R5 R6 K11 ["Orientation"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R2 K12 ["ContextServices"]
       43 GETTABLEKS                       R6 R5 K13 ["withContext"]
       45 GETTABLEKS                       R7 R5 K14 ["Analytics"]
       47 GETTABLEKS                       R8 R5 K15 ["Localization"]
       49 GETTABLEKS                       R9 R1 K16 ["PureComponent"]
       51 LOADK                            R11 K17 ["ImageDragger"]
       52 NAMECALL                         R9 R9 K18 ["extend"]
       54 CALL                             R9 2 1
       55 GETTABLEKS                       R11 R4 K19 ["Left"]
       57 GETTABLEKS                       R10 R11 K20 ["rawValue"]
       59 CALL                             R10 0 1
       60 GETTABLEKS                       R12 R4 K21 ["Right"]
       62 GETTABLEKS                       R11 R12 K20 ["rawValue"]
       64 CALL                             R11 0 1
       65 GETTABLEKS                       R13 R4 K22 ["Top"]
       67 GETTABLEKS                       R12 R13 K20 ["rawValue"]
       69 CALL                             R12 0 1
       70 GETTABLEKS                       R14 R4 K23 ["Bottom"]
       72 GETTABLEKS                       R13 R14 K20 ["rawValue"]
       74 CALL                             R13 0 1
       75 NEWTABLE                         R14 4 0
       77 LOADN                            R15 1
       78 SETTABLE                         R15 R14 R10
       79 LOADN                            R15 2
       80 SETTABLE                         R15 R14 R11
       81 LOADN                            R15 3
       82 SETTABLE                         R15 R14 R12
       83 LOADN                            R15 4
       84 SETTABLE                         R15 R14 R13
       85 DUPCLOSURE                       R15 K24 [PROTO_8]
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R14
       93 SETTABLEKS                       R15 R9 K25 ["init"]
       95 DUPCLOSURE                       R15 K26 [PROTO_9]
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R14
      103 SETTABLEKS                       R15 R9 K27 ["render"]
      105 MOVE                             R15 R6
      106 DUPTABLE                         R16 K30 [{"Analytics", "Localization", "Stylizer", "Mouse"}]
      107 SETTABLEKS                       R7 R16 K14 ["Analytics"]
      109 SETTABLEKS                       R8 R16 K15 ["Localization"]
      111 GETTABLEKS                       R17 R5 K28 ["Stylizer"]
      113 SETTABLEKS                       R17 R16 K28 ["Stylizer"]
      115 GETTABLEKS                       R17 R5 K29 ["Mouse"]
      117 SETTABLEKS                       R17 R16 K29 ["Mouse"]
      119 CALL                             R15 1 1
      120 MOVE                             R16 R9
      121 CALL                             R15 1 1
      122 MOVE                             R9 R15
      123 RETURN                           R9 1
