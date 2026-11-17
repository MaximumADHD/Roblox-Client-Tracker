PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dragOrientation"]
        3 GETUPVAL                         R3 1
        4 JUMPIFNOTEQ                      R2 R3 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K1 ["draggerHandlingMovement"]
       11 GETUPVAL                         R2 0
       12 SETTABLEKS                       R1 R2 K0 ["dragOrientation"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["updateDraggedPosition"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mouseMoveInputObjectConnection"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["mouseMoveInputObjectConnection"]
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["mouseMoveInputObjectConnection"]
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["dragging"]
        3 GETUPVAL                         R1 0
        4 DUPTABLE                         R3 K1 [{"dragging"}]
        5 SETTABLEKS                       R0 R3 K0 ["dragging"]
        7 NAMECALL                         R1 R1 K2 ["setState"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dragging"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["onDragging"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["Position"]
       10 GETUPVAL                         R2 2
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 SETTABLEKS                       R0 R4 K0 ["obj"]
        3 GETUPVAL                         R4 0
        4 LOADB                            R5 1
        5 SETTABLEKS                       R5 R4 K1 ["draggerHandlingMovement"]
        7 GETUPVAL                         R4 0
        8 SETTABLEKS                       R1 R4 K2 ["dragOrientation"]
       10 GETUPVAL                         R4 0
       11 SETTABLEKS                       R2 R4 K3 ["mousePosition"]
       13 GETUPVAL                         R4 0
       14 SETTABLEKS                       R3 R4 K4 ["draggerPosition"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K5 ["setDraggingState"]
       19 LOADB                            R5 1
       20 CALL                             R4 1 0
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K6 ["setLocked"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K7 ["props"]
       27 GETTABLEKS                       R5 R5 K8 ["Mouse"]
       29 LOADB                            R6 1
       30 CALL                             R4 2 0
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K9 ["lastMouseMoveInputObject"]
       34 JUMPIFEQKNIL                     R4 ; [+19]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K10 ["disconnectMouseMoveInputObject"]
       39 CALL                             R5 0 0
       40 GETUPVAL                         R5 0
       41 LOADK                            R8 K11 ["Position"]
       42 NAMECALL                         R6 R4 K12 ["GetPropertyChangedSignal"]
       44 CALL                             R6 2 1
       45 NEWCLOSURE                       R8 P0
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R1
       49 NAMECALL                         R6 R6 K13 ["Connect"]
       51 CALL                             R6 2 1
       52 SETTABLEKS                       R6 R5 K14 ["mouseMoveInputObjectConnection"]
       54 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["sliceRect"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["props"]
        8 GETTABLEKS                       R3 R3 K2 ["pixelDimensions"]
       10 GETTABLEKS                       R4 R0 K3 ["UserInputType"]
       12 GETIMPORT                        R5 K6 [Enum.UserInputType.MouseButton1]
       14 JUMPIFNOTEQ                      R4 R5 ; [+153]
       16 LOADNIL                          R4
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K7 ["dragOrientation"]
       20 GETUPVAL                         R6 1
       21 JUMPIFNOTEQ                      R5 R6 ; [+24]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K8 ["leftPos"]
       26 GETTABLEKS                       R8 R3 K9 ["X"]
       28 MUL                              R6 R7 R8
       29 FASTCALL1                        MATH_ROUND R6 ; [+2]
       30 GETIMPORT                        R5 K12 [math.round]
       32 CALL                             R5 1 1
       33 NEWTABLE                         R6 0 4
       35 MOVE                             R7 R5
       36 GETUPVAL                         R9 2
       37 GETTABLE                         R8 R2 R9
       38 GETUPVAL                         R10 3
       39 GETTABLE                         R9 R2 R10
       40 GETUPVAL                         R11 4
       41 GETTABLE                         R10 R2 R11
       42 SETLIST                          R6 R7 4 [1]
       44 MOVE                             R4 R6
       45 JUMP                             ; [+86]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K7 ["dragOrientation"]
       49 GETUPVAL                         R6 2
       50 JUMPIFNOTEQ                      R5 R6 ; [+24]
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K13 ["rightPos"]
       55 GETTABLEKS                       R8 R3 K9 ["X"]
       57 MUL                              R6 R7 R8
       58 FASTCALL1                        MATH_ROUND R6 ; [+2]
       59 GETIMPORT                        R5 K12 [math.round]
       61 CALL                             R5 1 1
       62 NEWTABLE                         R6 0 4
       64 GETUPVAL                         R8 1
       65 GETTABLE                         R7 R2 R8
       66 MOVE                             R8 R5
       67 GETUPVAL                         R10 3
       68 GETTABLE                         R9 R2 R10
       69 GETUPVAL                         R11 4
       70 GETTABLE                         R10 R2 R11
       71 SETLIST                          R6 R7 4 [1]
       73 MOVE                             R4 R6
       74 JUMP                             ; [+57]
       75 GETUPVAL                         R5 0
       76 GETTABLEKS                       R5 R5 K7 ["dragOrientation"]
       78 GETUPVAL                         R6 3
       79 JUMPIFNOTEQ                      R5 R6 ; [+24]
       81 GETUPVAL                         R7 0
       82 GETTABLEKS                       R7 R7 K14 ["topPos"]
       84 GETTABLEKS                       R8 R3 K15 ["Y"]
       86 MUL                              R6 R7 R8
       87 FASTCALL1                        MATH_ROUND R6 ; [+2]
       88 GETIMPORT                        R5 K12 [math.round]
       90 CALL                             R5 1 1
       91 NEWTABLE                         R6 0 4
       93 GETUPVAL                         R8 1
       94 GETTABLE                         R7 R2 R8
       95 GETUPVAL                         R9 2
       96 GETTABLE                         R8 R2 R9
       97 MOVE                             R9 R5
       98 GETUPVAL                         R11 4
       99 GETTABLE                         R10 R2 R11
      100 SETLIST                          R6 R7 4 [1]
      102 MOVE                             R4 R6
      103 JUMP                             ; [+28]
      104 GETUPVAL                         R5 0
      105 GETTABLEKS                       R5 R5 K7 ["dragOrientation"]
      107 GETUPVAL                         R6 4
      108 JUMPIFNOTEQ                      R5 R6 ; [+23]
      110 GETUPVAL                         R7 0
      111 GETTABLEKS                       R7 R7 K16 ["bottomPos"]
      113 GETTABLEKS                       R8 R3 K15 ["Y"]
      115 MUL                              R6 R7 R8
      116 FASTCALL1                        MATH_ROUND R6 ; [+2]
      117 GETIMPORT                        R5 K12 [math.round]
      119 CALL                             R5 1 1
      120 NEWTABLE                         R6 0 4
      122 GETUPVAL                         R8 1
      123 GETTABLE                         R7 R2 R8
      124 GETUPVAL                         R9 2
      125 GETTABLE                         R8 R2 R9
      126 GETUPVAL                         R10 3
      127 GETTABLE                         R9 R2 R10
      128 MOVE                             R10 R5
      129 SETLIST                          R6 R7 4 [1]
      131 MOVE                             R4 R6
      132 JUMPIFNOT                        R4 ; [+8]
      133 GETUPVAL                         R5 0
      134 GETTABLEKS                       R5 R5 K0 ["props"]
      136 GETTABLEKS                       R5 R5 K17 ["setSliceRect"]
      138 MOVE                             R6 R4
      139 LOADB                            R7 1
      140 CALL                             R5 2 0
      141 GETUPVAL                         R5 0
      142 GETTABLEKS                       R5 R5 K18 ["disconnectMouseMoveInputObject"]
      144 CALL                             R5 0 0
      145 GETUPVAL                         R5 0
      146 GETTABLEKS                       R5 R5 K19 ["setDraggingState"]
      148 LOADB                            R6 0
      149 CALL                             R5 1 0
      150 GETUPVAL                         R5 0
      151 LOADB                            R6 0
      152 SETTABLEKS                       R6 R5 K20 ["uncertainDragStarted"]
      154 GETUPVAL                         R5 0
      155 GETTABLEKS                       R5 R5 K21 ["updateHoverDragger"]
      157 CALL                             R5 0 0
      158 GETUPVAL                         R5 5
      159 GETTABLEKS                       R5 R5 K22 ["setLocked"]
      161 GETUPVAL                         R6 0
      162 GETTABLEKS                       R6 R6 K0 ["props"]
      164 GETTABLEKS                       R6 R6 K23 ["Mouse"]
      166 LOADB                            R7 0
      167 CALL                             R5 2 0
      168 GETUPVAL                         R4 0
      169 LOADB                            R5 0
      170 SETTABLEKS                       R5 R4 K24 ["draggerHandlingMovement"]
      172 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["priorityDragCandidates"]
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 JUMPIFEQKNIL                     R0 ; [+5]
       11 GETTABLEKS                       R7 R6 K3 ["priority"]
       13 JUMPIFNOTLT                      R0 R7 ; [+4]
       15 GETTABLEKS                       R0 R6 K3 ["priority"]
       17 MOVE                             R1 R6
       18 FORGLOOP                         R2 2 ; [-10]
       20 RETURN                           R1 1

PROTO_7:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [pairs]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["uncertainDragCandidates"]
        6 CALL                             R1 1 3
        7 FORGPREP_NEXT                    R1
        8 JUMPIFEQKNIL                     R0 ; [+5]
       10 GETTABLEKS                       R6 R5 K3 ["priority"]
       12 JUMPIFNOTLT                      R0 R6 ; [+3]
       14 GETTABLEKS                       R0 R5 K3 ["priority"]
       16 FORGLOOP                         R1 2 ; [-9]
       18 LOADNIL                          R1
       19 LOADNIL                          R2
       20 GETIMPORT                        R3 K1 [pairs]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K2 ["uncertainDragCandidates"]
       25 CALL                             R3 1 3
       26 FORGPREP_NEXT                    R3
       27 GETTABLEKS                       R8 R7 K3 ["priority"]
       29 JUMPIFNOTEQ                      R8 R0 ; [+10]
       31 JUMPIFEQKNIL                     R1 ; [+5]
       33 GETTABLEKS                       R8 R7 K4 ["distance"]
       35 JUMPIFNOTLT                      R8 R1 ; [+4]
       37 GETTABLEKS                       R1 R7 K4 ["distance"]
       39 MOVE                             R2 R7
       40 FORGLOOP                         R3 2 ; [-14]
       42 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["uncertainDragStarted"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K0 ["uncertainDragStarted"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["getBestUncertainDragCandidate"]
       12 CALL                             R1 0 1
       13 JUMPIFNOT                        R1 ; [+30]
       14 GETTABLEKS                       R2 R1 K2 ["instance"]
       16 GETIMPORT                        R3 K5 [Vector2.new]
       18 GETTABLEKS                       R4 R2 K6 ["Position"]
       20 GETTABLEKS                       R4 R4 K7 ["X"]
       22 GETTABLEKS                       R4 R4 K8 ["Scale"]
       24 GETTABLEKS                       R5 R2 K6 ["Position"]
       26 GETTABLEKS                       R5 R5 K9 ["Y"]
       28 GETTABLEKS                       R5 R5 K8 ["Scale"]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K10 ["onDragBegin"]
       34 MOVE                             R5 R2
       35 GETTABLEKS                       R6 R1 K11 ["orientation"]
       37 MOVE                             R7 R0
       38 MOVE                             R8 R3
       39 CALL                             R4 4 0
       40 GETUPVAL                         R4 0
       41 LOADB                            R5 0
       42 SETTABLEKS                       R5 R4 K12 ["draggerHandlingMovement"]
       44 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dragging"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 LOADN                            R2 -1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["getBestPriorityDragCandidate"]
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+3]
       11 GETTABLEKS                       R2 R3 K2 ["orientation"]
       13 JUMP                             ; [+7]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K3 ["getBestUncertainDragCandidate"]
       17 CALL                             R4 0 1
       18 JUMPIFNOT                        R4 ; [+2]
       19 GETTABLEKS                       R2 R4 K2 ["orientation"]
       21 GETUPVAL                         R4 0
       22 DUPTABLE                         R6 K5 [{"hoveringDraggerOrientation"}]
       23 SETTABLEKS                       R2 R6 K4 ["hoveringDraggerOrientation"]
       25 NAMECALL                         R4 R4 K6 ["setState"]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R4 1
       29 JUMPIFEQ                         R2 R4 ; [+4]
       31 GETUPVAL                         R4 2
       32 JUMPIFNOTEQ                      R2 R4 ; [+16]
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R4 R4 K7 ["setCursor"]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K8 ["props"]
       40 GETTABLEKS                       R5 R5 K9 ["Mouse"]
       42 GETUPVAL                         R6 4
       43 GETTABLEKS                       R6 R6 K10 ["MOUSE_CURSORS"]
       45 GETTABLEKS                       R6 R6 K11 ["EW"]
       47 CALL                             R4 2 0
       48 JUMP                             ; [+20]
       49 GETUPVAL                         R4 5
       50 JUMPIFEQ                         R2 R4 ; [+4]
       52 GETUPVAL                         R4 6
       53 JUMPIFNOTEQ                      R2 R4 ; [+15]
       55 GETUPVAL                         R4 3
       56 GETTABLEKS                       R4 R4 K7 ["setCursor"]
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R5 R5 K8 ["props"]
       61 GETTABLEKS                       R5 R5 K9 ["Mouse"]
       63 GETUPVAL                         R6 4
       64 GETTABLEKS                       R6 R6 K10 ["MOUSE_CURSORS"]
       66 GETTABLEKS                       R6 R6 K12 ["NS"]
       68 CALL                             R4 2 0
       69 JUMPIFNOTEQKN                    R2 K13 [-1] ; [+10]
       71 GETUPVAL                         R4 3
       72 GETTABLEKS                       R4 R4 K14 ["resetCursor"]
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R5 R5 K8 ["props"]
       77 GETTABLEKS                       R5 R5 K9 ["Mouse"]
       79 CALL                             R4 1 0
       80 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["uncertainDragCandidates"]
        3 DUPTABLE                         R6 K5 [{"distance", "instance", "orientation", "priority"}]
        4 SETTABLEKS                       R2 R6 K1 ["distance"]
        6 SETTABLEKS                       R3 R6 K2 ["instance"]
        8 SETTABLEKS                       R1 R6 K3 ["orientation"]
       10 ORK                              R7 R4 K6 [0]
       11 SETTABLEKS                       R7 R6 K4 ["priority"]
       13 SETTABLE                         R6 R5 R0
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K7 ["updateHoverDragger"]
       17 CALL                             R5 0 0
       18 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["uncertainDragCandidates"]
        3 LOADNIL                          R2
        4 SETTABLE                         R2 R1 R0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["updateHoverDragger"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["dragging"]
        3 JUMPIFNOT                        R2 ; [+17]
        4 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
        6 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseMovement]
        8 JUMPIFNOTEQ                      R2 R3 ; [+12]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K5 ["draggerHandlingMovement"]
       13 JUMPIFNOT                        R2 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K6 ["updateDraggedPosition"]
       18 GETTABLEKS                       R3 R1 K7 ["Position"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+13]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["uncertainDragStarted"]
        9 JUMPIFNOT                        R2 ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K5 ["onDragEnd"]
       13 MOVE                             R3 R1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K6 ["dragOrientation"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["sliceRect"]
        5 GETIMPORT                        R3 K4 [Vector2.new]
        7 GETTABLEKS                       R4 R0 K5 ["X"]
        9 GETTABLEKS                       R5 R0 K6 ["Y"]
       11 CALL                             R3 2 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K7 ["mousePosition"]
       15 SUB                              R2 R3 R4
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K8 ["state"]
       19 GETTABLEKS                       R3 R3 K9 ["fitImageSize"]
       21 JUMPIF                           R3 ; [+1]
       22 RETURN                           R0 0
       23 GETUPVAL                         R4 0
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K10 ["draggerPosition"]
       27 DIV                              R7 R2 R3
       28 ADD                              R5 R6 R7
       29 SETTABLEKS                       R5 R4 K11 ["newPosition"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K0 ["props"]
       34 GETTABLEKS                       R4 R4 K12 ["pixelDimensions"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K13 ["dragOrientation"]
       39 GETUPVAL                         R6 1
       40 JUMPIFNOTEQ                      R5 R6 ; [+42]
       42 GETUPVAL                         R7 2
       43 GETTABLE                         R6 R1 R7
       44 GETTABLEKS                       R7 R4 K5 ["X"]
       46 DIV                              R5 R6 R7
       47 GETUPVAL                         R6 0
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R8 R8 K11 ["newPosition"]
       51 GETTABLEKS                       R8 R8 K5 ["X"]
       53 LOADN                            R9 0
       54 FASTCALL3                        MATH_CLAMP R8 R9 R5
       56 MOVE                             R10 R5
       57 GETIMPORT                        R7 K16 [math.clamp]
       59 CALL                             R7 3 1
       60 SETTABLEKS                       R7 R6 K17 ["leftPos"]
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K18 ["obj"]
       65 GETIMPORT                        R7 K21 [UDim2.fromScale]
       67 GETUPVAL                         R8 0
       68 GETTABLEKS                       R8 R8 K17 ["leftPos"]
       70 GETUPVAL                         R9 0
       71 GETTABLEKS                       R9 R9 K18 ["obj"]
       73 GETTABLEKS                       R9 R9 K22 ["Position"]
       75 GETTABLEKS                       R9 R9 K6 ["Y"]
       77 GETTABLEKS                       R9 R9 K23 ["Scale"]
       79 CALL                             R7 2 1
       80 SETTABLEKS                       R7 R6 K22 ["Position"]
       82 RETURN                           R0 0
       83 GETUPVAL                         R5 0
       84 GETTABLEKS                       R5 R5 K13 ["dragOrientation"]
       86 GETUPVAL                         R6 2
       87 JUMPIFNOTEQ                      R5 R6 ; [+42]
       89 GETUPVAL                         R7 1
       90 GETTABLE                         R6 R1 R7
       91 GETTABLEKS                       R7 R4 K5 ["X"]
       93 DIV                              R5 R6 R7
       94 GETUPVAL                         R6 0
       95 GETUPVAL                         R8 0
       96 GETTABLEKS                       R8 R8 K11 ["newPosition"]
       98 GETTABLEKS                       R8 R8 K5 ["X"]
      100 LOADN                            R10 1
      101 FASTCALL3                        MATH_CLAMP R8 R5 R10
      103 MOVE                             R9 R5
      104 GETIMPORT                        R7 K16 [math.clamp]
      106 CALL                             R7 3 1
      107 SETTABLEKS                       R7 R6 K24 ["rightPos"]
      109 GETUPVAL                         R6 0
      110 GETTABLEKS                       R6 R6 K18 ["obj"]
      112 GETIMPORT                        R7 K21 [UDim2.fromScale]
      114 GETUPVAL                         R8 0
      115 GETTABLEKS                       R8 R8 K24 ["rightPos"]
      117 GETUPVAL                         R9 0
      118 GETTABLEKS                       R9 R9 K18 ["obj"]
      120 GETTABLEKS                       R9 R9 K22 ["Position"]
      122 GETTABLEKS                       R9 R9 K6 ["Y"]
      124 GETTABLEKS                       R9 R9 K23 ["Scale"]
      126 CALL                             R7 2 1
      127 SETTABLEKS                       R7 R6 K22 ["Position"]
      129 RETURN                           R0 0
      130 GETUPVAL                         R5 0
      131 GETTABLEKS                       R5 R5 K13 ["dragOrientation"]
      133 GETUPVAL                         R6 3
      134 JUMPIFNOTEQ                      R5 R6 ; [+42]
      136 GETUPVAL                         R7 4
      137 GETTABLE                         R6 R1 R7
      138 GETTABLEKS                       R7 R4 K6 ["Y"]
      140 DIV                              R5 R6 R7
      141 GETUPVAL                         R6 0
      142 GETUPVAL                         R8 0
      143 GETTABLEKS                       R8 R8 K11 ["newPosition"]
      145 GETTABLEKS                       R8 R8 K6 ["Y"]
      147 LOADN                            R9 0
      148 FASTCALL3                        MATH_CLAMP R8 R9 R5
      150 MOVE                             R10 R5
      151 GETIMPORT                        R7 K16 [math.clamp]
      153 CALL                             R7 3 1
      154 SETTABLEKS                       R7 R6 K25 ["topPos"]
      156 GETUPVAL                         R6 0
      157 GETTABLEKS                       R6 R6 K18 ["obj"]
      159 GETIMPORT                        R7 K21 [UDim2.fromScale]
      161 GETUPVAL                         R8 0
      162 GETTABLEKS                       R8 R8 K18 ["obj"]
      164 GETTABLEKS                       R8 R8 K22 ["Position"]
      166 GETTABLEKS                       R8 R8 K5 ["X"]
      168 GETTABLEKS                       R8 R8 K23 ["Scale"]
      170 GETUPVAL                         R9 0
      171 GETTABLEKS                       R9 R9 K25 ["topPos"]
      173 CALL                             R7 2 1
      174 SETTABLEKS                       R7 R6 K22 ["Position"]
      176 RETURN                           R0 0
      177 GETUPVAL                         R5 0
      178 GETTABLEKS                       R5 R5 K13 ["dragOrientation"]
      180 GETUPVAL                         R6 4
      181 JUMPIFNOTEQ                      R5 R6 ; [+41]
      183 GETUPVAL                         R7 3
      184 GETTABLE                         R6 R1 R7
      185 GETTABLEKS                       R7 R4 K6 ["Y"]
      187 DIV                              R5 R6 R7
      188 GETUPVAL                         R6 0
      189 GETUPVAL                         R8 0
      190 GETTABLEKS                       R8 R8 K11 ["newPosition"]
      192 GETTABLEKS                       R8 R8 K6 ["Y"]
      194 LOADN                            R10 1
      195 FASTCALL3                        MATH_CLAMP R8 R5 R10
      197 MOVE                             R9 R5
      198 GETIMPORT                        R7 K16 [math.clamp]
      200 CALL                             R7 3 1
      201 SETTABLEKS                       R7 R6 K26 ["bottomPos"]
      203 GETUPVAL                         R6 0
      204 GETTABLEKS                       R6 R6 K18 ["obj"]
      206 GETIMPORT                        R7 K21 [UDim2.fromScale]
      208 GETUPVAL                         R8 0
      209 GETTABLEKS                       R8 R8 K18 ["obj"]
      211 GETTABLEKS                       R8 R8 K22 ["Position"]
      213 GETTABLEKS                       R8 R8 K5 ["X"]
      215 GETTABLEKS                       R8 R8 K23 ["Scale"]
      217 GETUPVAL                         R9 0
      218 GETTABLEKS                       R9 R9 K26 ["bottomPos"]
      220 CALL                             R7 2 1
      221 SETTABLEKS                       R7 R6 K22 ["Position"]
      223 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["priorityDragCandidates"]
        3 DUPTABLE                         R4 K4 [{"priority", "instance", "orientation"}]
        4 SETTABLEKS                       R1 R4 K1 ["priority"]
        6 SETTABLEKS                       R2 R4 K2 ["instance"]
        8 SETTABLEKS                       R0 R4 K3 ["orientation"]
       10 SETTABLE                         R4 R3 R0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K5 ["updateHoverDragger"]
       14 CALL                             R3 0 0
       15 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["priorityDragCandidates"]
        3 LOADNIL                          R2
        4 SETTABLE                         R2 R1 R0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["updateHoverDragger"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["lastMouseMoveInputObject"]
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["pixelDimensions"]
        5 LOADB                            R2 0
        6 JUMPIFNOT                        R1 ; [+10]
        7 GETTABLEKS                       R3 R0 K2 ["AbsoluteSize"]
        9 GETTABLEKS                       R3 R3 K3 ["X"]
       11 GETTABLEKS                       R4 R1 K3 ["X"]
       13 JUMPIFLT                         R4 R3 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 GETUPVAL                         R3 0
       18 DUPTABLE                         R5 K6 [{"fitImageSize", "isEnlarged"}]
       19 GETTABLEKS                       R6 R0 K2 ["AbsoluteSize"]
       21 SETTABLEKS                       R6 R5 K4 ["fitImageSize"]
       23 SETTABLEKS                       R2 R5 K5 ["isEnlarged"]
       25 NAMECALL                         R3 R3 K7 ["setState"]
       27 CALL                             R3 2 0
       28 RETURN                           R0 0

PROTO_19:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R0 K0 ["draggerHandlingMovement"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R0 K1 ["dragOrientation"]
        6 DUPTABLE                         R4 K4 [{["hoveringDraggerOrientation"] = -1}]
        7 NAMECALL                         R2 R0 K5 ["setState"]
        9 CALL                             R2 2 0
       10 GETTABLEKS                       R3 R1 K6 ["pixelDimensions"]
       12 GETTABLEKS                       R3 R3 K7 ["X"]
       14 GETTABLEKS                       R4 R1 K6 ["pixelDimensions"]
       16 GETTABLEKS                       R4 R4 K8 ["Y"]
       18 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       20 GETIMPORT                        R2 K11 [math.max]
       22 CALL                             R2 2 1
       23 LOADN                            R3 0
       24 JUMPIFNOTLE                      R2 R3 ; [+14]
       26 LOADN                            R2 0
       27 SETTABLEKS                       R2 R0 K12 ["leftPos"]
       29 LOADN                            R2 1
       30 SETTABLEKS                       R2 R0 K13 ["rightPos"]
       32 LOADN                            R2 0
       33 SETTABLEKS                       R2 R0 K14 ["topPos"]
       35 LOADN                            R2 1
       36 SETTABLEKS                       R2 R0 K15 ["bottomPos"]
       38 JUMP                             ; [+78]
       39 GETTABLEKS                       R2 R1 K6 ["pixelDimensions"]
       41 GETTABLEKS                       R5 R2 K7 ["X"]
       43 LOADN                            R6 0
       44 JUMPIFLT                         R6 R5 ; [+2]
       46 LOADB                            R4 0 +1
       47 LOADB                            R4 1
       48 FASTCALL1                        ASSERT R4 ; [+2]
       49 GETIMPORT                        R3 K17 [assert]
       51 CALL                             R3 1 0
       52 GETTABLEKS                       R5 R2 K8 ["Y"]
       54 LOADN                            R6 0
       55 JUMPIFLT                         R6 R5 ; [+2]
       57 LOADB                            R4 0 +1
       58 LOADB                            R4 1
       59 FASTCALL1                        ASSERT R4 ; [+2]
       60 GETIMPORT                        R3 K17 [assert]
       62 CALL                             R3 1 0
       63 GETTABLEKS                       R3 R1 K18 ["sliceRect"]
       65 GETUPVAL                         R7 1
       66 GETTABLE                         R6 R3 R7
       67 GETTABLEKS                       R7 R2 K7 ["X"]
       69 DIV                              R5 R6 R7
       70 LOADN                            R6 0
       71 LOADN                            R7 1
       72 FASTCALL                         MATH_CLAMP ; [+2]
       73 GETIMPORT                        R4 K20 [math.clamp]
       75 CALL                             R4 3 1
       76 SETTABLEKS                       R4 R0 K12 ["leftPos"]
       78 GETUPVAL                         R7 2
       79 GETTABLE                         R6 R3 R7
       80 GETTABLEKS                       R7 R2 K7 ["X"]
       82 DIV                              R5 R6 R7
       83 LOADN                            R6 0
       84 LOADN                            R7 1
       85 FASTCALL                         MATH_CLAMP ; [+2]
       86 GETIMPORT                        R4 K20 [math.clamp]
       88 CALL                             R4 3 1
       89 SETTABLEKS                       R4 R0 K13 ["rightPos"]
       91 GETUPVAL                         R7 3
       92 GETTABLE                         R6 R3 R7
       93 GETTABLEKS                       R7 R2 K8 ["Y"]
       95 DIV                              R5 R6 R7
       96 LOADN                            R6 0
       97 LOADN                            R7 1
       98 FASTCALL                         MATH_CLAMP ; [+2]
       99 GETIMPORT                        R4 K20 [math.clamp]
      101 CALL                             R4 3 1
      102 SETTABLEKS                       R4 R0 K14 ["topPos"]
      104 GETUPVAL                         R7 4
      105 GETTABLE                         R6 R3 R7
      106 GETTABLEKS                       R7 R2 K8 ["Y"]
      108 DIV                              R5 R6 R7
      109 LOADN                            R6 0
      110 LOADN                            R7 1
      111 FASTCALL                         MATH_CLAMP ; [+2]
      112 GETIMPORT                        R4 K20 [math.clamp]
      114 CALL                             R4 3 1
      115 SETTABLEKS                       R4 R0 K15 ["bottomPos"]
      117 GETUPVAL                         R2 5
      118 GETTABLEKS                       R2 R2 K21 ["createRef"]
      120 CALL                             R2 0 1
      121 SETTABLEKS                       R2 R0 K22 ["backgroundImageRef"]
      123 NEWCLOSURE                       R2 P0
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U0
      126 SETTABLEKS                       R2 R0 K23 ["onDragging"]
      128 NEWCLOSURE                       R2 P1
      129 CAPTURE                          VAL R0
      130 SETTABLEKS                       R2 R0 K24 ["disconnectMouseMoveInputObject"]
      132 NEWCLOSURE                       R2 P2
      133 CAPTURE                          VAL R0
      134 SETTABLEKS                       R2 R0 K25 ["setDraggingState"]
      136 GETTABLEKS                       R2 R0 K25 ["setDraggingState"]
      138 LOADB                            R3 0
      139 CALL                             R2 1 0
      140 NEWCLOSURE                       R2 P3
      141 CAPTURE                          VAL R0
      142 CAPTURE                          UPVAL U6
      143 SETTABLEKS                       R2 R0 K26 ["onDragBegin"]
      145 NEWCLOSURE                       R2 P4
      146 CAPTURE                          VAL R0
      147 CAPTURE                          UPVAL U1
      148 CAPTURE                          UPVAL U2
      149 CAPTURE                          UPVAL U3
      150 CAPTURE                          UPVAL U4
      151 CAPTURE                          UPVAL U6
      152 SETTABLEKS                       R2 R0 K27 ["onDragEnd"]
      154 NEWTABLE                         R2 0 0
      156 SETTABLEKS                       R2 R0 K28 ["priorityDragCandidates"]
      158 NEWCLOSURE                       R2 P5
      159 CAPTURE                          VAL R0
      160 SETTABLEKS                       R2 R0 K29 ["getBestPriorityDragCandidate"]
      162 NEWTABLE                         R2 0 0
      164 SETTABLEKS                       R2 R0 K30 ["uncertainDragCandidates"]
      166 NEWCLOSURE                       R2 P6
      167 CAPTURE                          VAL R0
      168 SETTABLEKS                       R2 R0 K31 ["getBestUncertainDragCandidate"]
      170 LOADB                            R2 0
      171 SETTABLEKS                       R2 R0 K32 ["uncertainDragStarted"]
      173 NEWCLOSURE                       R2 P7
      174 CAPTURE                          VAL R0
      175 SETTABLEKS                       R2 R0 K33 ["startUncertainDrag"]
      177 LOADNIL                          R2
      178 SETTABLEKS                       R2 R0 K34 ["priorityHoverOrientation"]
      180 NEWCLOSURE                       R2 P8
      181 CAPTURE                          VAL R0
      182 CAPTURE                          UPVAL U1
      183 CAPTURE                          UPVAL U2
      184 CAPTURE                          UPVAL U6
      185 CAPTURE                          UPVAL U7
      186 CAPTURE                          UPVAL U3
      187 CAPTURE                          UPVAL U4
      188 SETTABLEKS                       R2 R0 K35 ["updateHoverDragger"]
      190 NEWCLOSURE                       R2 P9
      191 CAPTURE                          VAL R0
      192 SETTABLEKS                       R2 R0 K36 ["addDragCandidateWithId"]
      194 NEWCLOSURE                       R2 P10
      195 CAPTURE                          VAL R0
      196 SETTABLEKS                       R2 R0 K37 ["removeDragCandidateWithId"]
      198 NEWCLOSURE                       R2 P11
      199 CAPTURE                          VAL R0
      200 SETTABLEKS                       R2 R0 K38 ["onBackgroundInputChanged"]
      202 NEWCLOSURE                       R2 P12
      203 CAPTURE                          VAL R0
      204 SETTABLEKS                       R2 R0 K39 ["onBackgroundInputEnded"]
      206 NEWCLOSURE                       R2 P13
      207 CAPTURE                          VAL R0
      208 CAPTURE                          UPVAL U1
      209 CAPTURE                          UPVAL U2
      210 CAPTURE                          UPVAL U3
      211 CAPTURE                          UPVAL U4
      212 SETTABLEKS                       R2 R0 K40 ["updateDraggedPosition"]
      214 NEWCLOSURE                       R2 P14
      215 CAPTURE                          VAL R0
      216 SETTABLEKS                       R2 R0 K41 ["addPriorityDragCandidate"]
      218 NEWCLOSURE                       R2 P15
      219 CAPTURE                          VAL R0
      220 SETTABLEKS                       R2 R0 K42 ["removePriorityDragCandidate"]
      222 NEWCLOSURE                       R2 P16
      223 CAPTURE                          VAL R0
      224 SETTABLEKS                       R2 R0 K43 ["setMostRecentMouseMoveInputObject"]
      226 NEWCLOSURE                       R2 P17
      227 CAPTURE                          VAL R0
      228 SETTABLEKS                       R2 R0 K44 ["onFitImageSizeChanged"]
      230 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K15 [{"orientation", "pixelDimensions", "sliceRect", "onDragBegin", "onDragging", "onDragEnd", "addDragCandidateWithId", "removeDragCandidateWithId", "isHovering", "isDragging", "addPriorityDragCandidate", "removePriorityDragCandidate", "startUncertainDrag", "setMostRecentMouseMoveInputObject"}]
        5 SETTABLEKS                       R1 R4 K1 ["orientation"]
        7 GETTABLEKS                       R5 R0 K16 ["props"]
        9 GETTABLEKS                       R5 R5 K2 ["pixelDimensions"]
       11 SETTABLEKS                       R5 R4 K2 ["pixelDimensions"]
       13 GETTABLEKS                       R5 R0 K16 ["props"]
       15 GETTABLEKS                       R5 R5 K3 ["sliceRect"]
       17 SETTABLEKS                       R5 R4 K3 ["sliceRect"]
       19 GETTABLEKS                       R5 R0 K4 ["onDragBegin"]
       21 SETTABLEKS                       R5 R4 K4 ["onDragBegin"]
       23 GETTABLEKS                       R5 R0 K5 ["onDragging"]
       25 SETTABLEKS                       R5 R4 K5 ["onDragging"]
       27 GETTABLEKS                       R5 R0 K6 ["onDragEnd"]
       29 SETTABLEKS                       R5 R4 K6 ["onDragEnd"]
       31 GETTABLEKS                       R5 R0 K7 ["addDragCandidateWithId"]
       33 SETTABLEKS                       R5 R4 K7 ["addDragCandidateWithId"]
       35 GETTABLEKS                       R5 R0 K8 ["removeDragCandidateWithId"]
       37 SETTABLEKS                       R5 R4 K8 ["removeDragCandidateWithId"]
       39 GETTABLEKS                       R6 R0 K17 ["state"]
       41 GETTABLEKS                       R6 R6 K18 ["hoveringDraggerOrientation"]
       43 JUMPIFEQ                         R6 R1 ; [+2]
       45 LOADB                            R5 0 +1
       46 LOADB                            R5 1
       47 SETTABLEKS                       R5 R4 K9 ["isHovering"]
       49 GETTABLEKS                       R5 R0 K17 ["state"]
       51 GETTABLEKS                       R5 R5 K19 ["dragging"]
       53 SETTABLEKS                       R5 R4 K10 ["isDragging"]
       55 GETTABLEKS                       R5 R0 K11 ["addPriorityDragCandidate"]
       57 SETTABLEKS                       R5 R4 K11 ["addPriorityDragCandidate"]
       59 GETTABLEKS                       R5 R0 K12 ["removePriorityDragCandidate"]
       61 SETTABLEKS                       R5 R4 K12 ["removePriorityDragCandidate"]
       63 GETTABLEKS                       R5 R0 K13 ["startUncertainDrag"]
       65 SETTABLEKS                       R5 R4 K13 ["startUncertainDrag"]
       67 GETTABLEKS                       R5 R0 K14 ["setMostRecentMouseMoveInputObject"]
       69 SETTABLEKS                       R5 R4 K14 ["setMostRecentMouseMoveInputObject"]
       71 CALL                             R2 2 -1
       72 RETURN                           R2 -1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["onFitImageSizeChanged"]
        2 GETTABLEKS                       R2 R0 K1 ["backgroundImageRef"]
        4 NAMECALL                         R2 R2 K2 ["getValue"]
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["selectedObject"]
        6 GETTABLEKS                       R4 R1 K3 ["pixelDimensions"]
        8 FASTCALL1                        ASSERT R3 ; [+3]
        9 MOVE                             R6 R3
       10 GETIMPORT                        R5 K5 [assert]
       12 CALL                             R5 1 0
       13 FASTCALL1                        ASSERT R4 ; [+3]
       14 MOVE                             R6 R4
       15 GETIMPORT                        R5 K5 [assert]
       17 CALL                             R5 1 0
       18 LOADB                            R6 0
       19 GETTABLEKS                       R7 R4 K6 ["X"]
       21 LOADN                            R8 0
       22 JUMPIFNOTLT                      R8 R7 ; [+8]
       24 GETTABLEKS                       R7 R4 K7 ["Y"]
       26 LOADN                            R8 0
       27 JUMPIFLT                         R8 R7 ; [+2]
       29 LOADB                            R6 0 +1
       30 LOADB                            R6 1
       31 FASTCALL1                        ASSERT R6 ; [+2]
       32 GETIMPORT                        R5 K5 [assert]
       34 CALL                             R5 1 0
       35 GETTABLEKS                       R6 R0 K8 ["state"]
       37 GETTABLEKS                       R6 R6 K9 ["isEnlarged"]
       39 JUMPIFNOT                        R6 ; [+3]
       40 GETIMPORT                        R5 K13 [Enum.ResamplerMode.Pixelated]
       42 JUMPIF                           R5 ; [+2]
       43 GETIMPORT                        R5 K15 [Enum.ResamplerMode.Default]
       45 GETTABLEKS                       R7 R4 K6 ["X"]
       47 GETTABLEKS                       R8 R4 K7 ["Y"]
       49 DIV                              R6 R7 R8
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K16 ["createElement"]
       53 GETUPVAL                         R8 1
       54 DUPTABLE                         R9 K23 [{["Position"], ["Size"], ["Style"] = "RoundBox", ["BackgroundColor"], ["Padding"]}]
       55 GETTABLEKS                       R10 R1 K24 ["position"]
       57 SETTABLEKS                       R10 R9 K17 ["Position"]
       59 GETTABLEKS                       R10 R1 K25 ["size"]
       61 SETTABLEKS                       R10 R9 K18 ["Size"]
       63 GETTABLEKS                       R10 R2 K26 ["PaneBackgroundColor"]
       65 SETTABLEKS                       R10 R9 K21 ["BackgroundColor"]
       67 GETUPVAL                         R10 2
       68 GETTABLEKS                       R10 R10 K27 ["IMAGE_PREVIEW_WINDOW_PADDING"]
       70 SETTABLEKS                       R10 R9 K22 ["Padding"]
       72 DUPTABLE                         R10 K29 [{"BackgroundCheckboardImage"}]
       73 GETUPVAL                         R11 0
       74 GETTABLEKS                       R11 R11 K16 ["createElement"]
       76 LOADK                            R12 K30 ["ImageButton"]
       77 NEWTABLE                         R13 16 0
       79 LOADN                            R14 1
       80 SETTABLEKS                       R14 R13 K31 ["BackgroundTransparency"]
       82 GETUPVAL                         R14 2
       83 GETTABLEKS                       R14 R14 K32 ["IMAGES"]
       85 GETTABLEKS                       R14 R14 K33 ["BACKGROUND_GRID"]
       87 SETTABLEKS                       R14 R13 K34 ["Image"]
       89 GETIMPORT                        R14 K37 [Enum.ScaleType.Tile]
       91 SETTABLEKS                       R14 R13 K35 ["ScaleType"]
       93 GETIMPORT                        R14 K40 [UDim2.fromScale]
       95 LOADN                            R15 1
       96 LOADN                            R16 1
       97 CALL                             R14 2 1
       98 SETTABLEKS                       R14 R13 K18 ["Size"]
      100 GETIMPORT                        R14 K42 [UDim2.fromOffset]
      102 GETUPVAL                         R15 2
      103 GETTABLEKS                       R15 R15 K43 ["BACKGROUND_TILE_SIZE"]
      105 GETUPVAL                         R16 2
      106 GETTABLEKS                       R16 R16 K43 ["BACKGROUND_TILE_SIZE"]
      108 CALL                             R14 2 1
      109 SETTABLEKS                       R14 R13 K44 ["TileSize"]
      111 GETUPVAL                         R14 0
      112 GETTABLEKS                       R14 R14 K45 ["Event"]
      114 GETTABLEKS                       R14 R14 K46 ["InputChanged"]
      116 GETTABLEKS                       R15 R0 K47 ["onBackgroundInputChanged"]
      118 SETTABLE                         R15 R13 R14
      119 GETUPVAL                         R14 0
      120 GETTABLEKS                       R14 R14 K45 ["Event"]
      122 GETTABLEKS                       R14 R14 K48 ["InputEnded"]
      124 GETTABLEKS                       R15 R0 K49 ["onBackgroundInputEnded"]
      126 SETTABLE                         R15 R13 R14
      127 GETTABLEKS                       R14 R1 K50 ["layoutOrder"]
      129 SETTABLEKS                       R14 R13 K51 ["LayoutOrder"]
      131 GETIMPORT                        R14 K54 [Vector2.new]
      133 LOADK                            R15 K55 [0.5]
      134 LOADK                            R16 K55 [0.5]
      135 CALL                             R14 2 1
      136 SETTABLEKS                       R14 R13 K56 ["AnchorPoint"]
      138 GETIMPORT                        R14 K40 [UDim2.fromScale]
      140 LOADK                            R15 K55 [0.5]
      141 LOADK                            R16 K55 [0.5]
      142 CALL                             R14 2 1
      143 SETTABLEKS                       R14 R13 K17 ["Position"]
      145 GETUPVAL                         R14 0
      146 GETTABLEKS                       R14 R14 K57 ["Change"]
      148 GETTABLEKS                       R14 R14 K58 ["AbsoluteSize"]
      150 GETTABLEKS                       R15 R0 K59 ["onFitImageSizeChanged"]
      152 SETTABLE                         R15 R13 R14
      153 GETUPVAL                         R14 0
      154 GETTABLEKS                       R14 R14 K60 ["Ref"]
      156 GETTABLEKS                       R15 R0 K61 ["backgroundImageRef"]
      158 SETTABLE                         R15 R13 R14
      159 DUPTABLE                         R14 K65 [{"AspectRatioConstraint", "ImagePreview", "border"}]
      160 GETUPVAL                         R15 0
      161 GETTABLEKS                       R15 R15 K16 ["createElement"]
      163 LOADK                            R16 K66 ["UIAspectRatioConstraint"]
      164 DUPTABLE                         R17 K70 [{"AspectRatio", "AspectType", "DominantAxis"}]
      165 SETTABLEKS                       R6 R17 K67 ["AspectRatio"]
      167 GETIMPORT                        R18 K72 [Enum.AspectType.FitWithinMaxSize]
      169 SETTABLEKS                       R18 R17 K68 ["AspectType"]
      171 GETIMPORT                        R18 K74 [Enum.DominantAxis.Width]
      173 SETTABLEKS                       R18 R17 K69 ["DominantAxis"]
      175 CALL                             R15 2 1
      176 SETTABLEKS                       R15 R14 K62 ["AspectRatioConstraint"]
      178 GETUPVAL                         R15 0
      179 GETTABLEKS                       R15 R15 K16 ["createElement"]
      181 LOADK                            R16 K75 ["ImageLabel"]
      182 DUPTABLE                         R17 K81 [{["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["Position"], ["ScaleType"], ["ResampleMode"], ["ImageRectOffset"], ["ImageRectSize"], ["Size"]}]
      183 GETTABLEKS                       R18 R3 K34 ["Image"]
      185 SETTABLEKS                       R18 R17 K34 ["Image"]
      187 GETTABLEKS                       R18 R1 K82 ["imageColor3"]
      189 SETTABLEKS                       R18 R17 K77 ["ImageColor3"]
      191 GETIMPORT                        R18 K40 [UDim2.fromScale]
      193 LOADN                            R19 0
      194 LOADN                            R20 0
      195 CALL                             R18 2 1
      196 SETTABLEKS                       R18 R17 K17 ["Position"]
      198 GETIMPORT                        R18 K84 [Enum.ScaleType.Fit]
      200 SETTABLEKS                       R18 R17 K35 ["ScaleType"]
      202 SETTABLEKS                       R5 R17 K78 ["ResampleMode"]
      204 GETTABLEKS                       R18 R1 K85 ["imageRectOffset"]
      206 SETTABLEKS                       R18 R17 K79 ["ImageRectOffset"]
      208 GETTABLEKS                       R18 R1 K86 ["imageRectSize"]
      210 SETTABLEKS                       R18 R17 K80 ["ImageRectSize"]
      212 GETIMPORT                        R18 K40 [UDim2.fromScale]
      214 LOADN                            R19 1
      215 LOADN                            R20 1
      216 CALL                             R18 2 1
      217 SETTABLEKS                       R18 R17 K18 ["Size"]
      219 DUPTABLE                         R18 K91 [{"LeftDragSlider", "RightDragSlider", "TopDragSlider", "BottomDragSlider"}]
      220 GETUPVAL                         R21 3
      221 NAMECALL                         R19 R0 K92 ["createDragger"]
      223 CALL                             R19 2 1
      224 SETTABLEKS                       R19 R18 K87 ["LeftDragSlider"]
      226 GETUPVAL                         R21 4
      227 NAMECALL                         R19 R0 K92 ["createDragger"]
      229 CALL                             R19 2 1
      230 SETTABLEKS                       R19 R18 K88 ["RightDragSlider"]
      232 GETUPVAL                         R21 5
      233 NAMECALL                         R19 R0 K92 ["createDragger"]
      235 CALL                             R19 2 1
      236 SETTABLEKS                       R19 R18 K89 ["TopDragSlider"]
      238 GETUPVAL                         R21 6
      239 NAMECALL                         R19 R0 K92 ["createDragger"]
      241 CALL                             R19 2 1
      242 SETTABLEKS                       R19 R18 K90 ["BottomDragSlider"]
      244 CALL                             R15 3 1
      245 SETTABLEKS                       R15 R14 K63 ["ImagePreview"]
      247 GETUPVAL                         R15 0
      248 GETTABLEKS                       R15 R15 K16 ["createElement"]
      250 LOADK                            R16 K93 ["UIStroke"]
      251 DUPTABLE                         R17 K98 [{["Thickness"] = 1, ["Color"], ["Transparency"] = 0}]
      252 GETTABLEKS                       R18 R2 K99 ["PaneBorderColor"]
      254 SETTABLEKS                       R18 R17 K95 ["Color"]
      256 CALL                             R15 2 1
      257 SETTABLEKS                       R15 R14 K64 ["border"]
      259 CALL                             R11 3 1
      260 SETTABLEKS                       R11 R10 K28 ["BackgroundCheckboardImage"]
      262 CALL                             R7 3 -1
      263 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K11 ["Orientation"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K9 ["Util"]
       47 GETTABLEKS                       R6 R6 K12 ["MouseCursorManager"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K4 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K13 ["Components"]
       56 GETTABLEKS                       R7 R7 K14 ["ImageDragger"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R2 K15 ["ContextServices"]
       61 GETTABLEKS                       R8 R7 K16 ["withContext"]
       63 GETTABLEKS                       R9 R7 K17 ["Analytics"]
       65 GETTABLEKS                       R10 R7 K18 ["Localization"]
       67 GETTABLEKS                       R11 R2 K19 ["UI"]
       69 GETTABLEKS                       R12 R11 K20 ["Pane"]
       71 GETTABLEKS                       R13 R1 K21 ["PureComponent"]
       73 LOADK                            R15 K22 ["ImageEditor"]
       74 NAMECALL                         R13 R13 K23 ["extend"]
       76 CALL                             R13 2 1
       77 GETTABLEKS                       R14 R4 K24 ["Left"]
       79 GETTABLEKS                       R14 R14 K25 ["rawValue"]
       81 CALL                             R14 0 1
       82 GETTABLEKS                       R15 R4 K26 ["Right"]
       84 GETTABLEKS                       R15 R15 K25 ["rawValue"]
       86 CALL                             R15 0 1
       87 GETTABLEKS                       R16 R4 K27 ["Top"]
       89 GETTABLEKS                       R16 R16 K25 ["rawValue"]
       91 CALL                             R16 0 1
       92 GETTABLEKS                       R17 R4 K28 ["Bottom"]
       94 GETTABLEKS                       R17 R17 K25 ["rawValue"]
       96 CALL                             R17 0 1
       97 GETTABLEKS                       R18 R4 K29 ["Undefined"]
       99 GETTABLEKS                       R18 R18 K25 ["rawValue"]
      101 CALL                             R18 0 1
      102 DUPCLOSURE                       R19 K30 [PROTO_19]
      103 CAPTURE                          VAL R18
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R16
      107 CAPTURE                          VAL R17
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R3
      111 SETTABLEKS                       R19 R13 K31 ["init"]
      113 DUPCLOSURE                       R19 K32 [PROTO_20]
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R6
      116 SETTABLEKS                       R19 R13 K33 ["createDragger"]
      118 DUPCLOSURE                       R19 K34 [PROTO_21]
      119 SETTABLEKS                       R19 R13 K35 ["didMount"]
      121 DUPCLOSURE                       R19 K36 [PROTO_22]
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R17
      129 SETTABLEKS                       R19 R13 K37 ["render"]
      131 MOVE                             R19 R8
      132 DUPTABLE                         R20 K40 [{"Analytics", "Localization", "Stylizer", "Mouse"}]
      133 SETTABLEKS                       R9 R20 K17 ["Analytics"]
      135 SETTABLEKS                       R10 R20 K18 ["Localization"]
      137 GETTABLEKS                       R21 R7 K38 ["Stylizer"]
      139 SETTABLEKS                       R21 R20 K38 ["Stylizer"]
      141 GETTABLEKS                       R21 R7 K39 ["Mouse"]
      143 SETTABLEKS                       R21 R20 K39 ["Mouse"]
      145 CALL                             R19 1 1
      146 MOVE                             R20 R13
      147 CALL                             R19 1 1
      148 MOVE                             R13 R19
      149 RETURN                           R13 1
