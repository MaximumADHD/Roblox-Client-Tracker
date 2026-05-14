PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["AXIS_X"]
        3 JUMPIFNOTEQ                      R1 R3 ; [+4]
        5 GETTABLEKS                       R2 R0 K1 ["X"]
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K2 ["Y"]
       10 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["AXIS_X"]
        3 JUMPIFNOTEQ                      R2 R4 ; [+7]
        5 GETIMPORT                        R3 K3 [UDim2.new]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 CALL                             R3 2 1
       10 RETURN                           R3 1
       11 GETIMPORT                        R3 K3 [UDim2.new]
       13 MOVE                             R4 R1
       14 MOVE                             R5 R0
       15 CALL                             R3 2 1
       16 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Axis"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["AXIS_X"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+4]
        8 GETTABLEKS                       R1 R0 K2 ["plotToGraphX"]
       10 JUMP                             ; [+2]
       11 GETTABLEKS                       R1 R0 K3 ["plotToGraphY"]
       13 GETTABLEKS                       R2 R0 K4 ["getViewportRect"]
       15 CALL                             R2 0 1
       16 MOVE                             R3 R1
       17 GETTABLEKS                       R5 R2 K5 ["Min"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K0 ["Axis"]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K1 ["AXIS_X"]
       25 JUMPIFNOTEQ                      R6 R7 ; [+4]
       27 GETTABLEKS                       R4 R5 K6 ["X"]
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R4 R5 K7 ["Y"]
       32 CALL                             R3 1 1
       33 MOVE                             R4 R1
       34 GETTABLEKS                       R6 R2 K8 ["Max"]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K0 ["Axis"]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K1 ["AXIS_X"]
       42 JUMPIFNOTEQ                      R7 R8 ; [+4]
       44 GETTABLEKS                       R5 R6 K6 ["X"]
       46 JUMP                             ; [+2]
       47 GETTABLEKS                       R5 R6 K7 ["Y"]
       49 CALL                             R4 1 1
       50 DUPTABLE                         R5 K11 [{"position", "size"}]
       51 GETIMPORT                        R7 K14 [UDim.new]
       53 MOVE                             R8 R3
       54 LOADN                            R9 0
       55 CALL                             R7 2 1
       56 GETIMPORT                        R8 K14 [UDim.new]
       58 LOADN                            R9 0
       59 LOADN                            R10 0
       60 CALL                             R8 2 1
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K0 ["Axis"]
       64 GETUPVAL                         R10 1
       65 GETTABLEKS                       R10 R10 K1 ["AXIS_X"]
       67 JUMPIFNOTEQ                      R9 R10 ; [+8]
       69 GETIMPORT                        R10 K16 [UDim2.new]
       71 MOVE                             R11 R7
       72 MOVE                             R12 R8
       73 CALL                             R10 2 1
       74 MOVE                             R6 R10
       75 JUMP                             ; [+6]
       76 GETIMPORT                        R10 K16 [UDim2.new]
       78 MOVE                             R11 R8
       79 MOVE                             R12 R7
       80 CALL                             R10 2 1
       81 MOVE                             R6 R10
       82 SETTABLEKS                       R6 R5 K9 ["position"]
       84 GETIMPORT                        R7 K14 [UDim.new]
       86 SUB                              R8 R4 R3
       87 CALL                             R7 1 1
       88 GETIMPORT                        R8 K14 [UDim.new]
       90 LOADN                            R9 1
       91 LOADN                            R10 0
       92 CALL                             R8 2 1
       93 GETUPVAL                         R9 0
       94 GETTABLEKS                       R9 R9 K0 ["Axis"]
       96 GETUPVAL                         R10 1
       97 GETTABLEKS                       R10 R10 K1 ["AXIS_X"]
       99 JUMPIFNOTEQ                      R9 R10 ; [+8]
      101 GETIMPORT                        R10 K16 [UDim2.new]
      103 MOVE                             R11 R7
      104 MOVE                             R12 R8
      105 CALL                             R10 2 1
      106 MOVE                             R6 R10
      107 JUMP                             ; [+6]
      108 GETIMPORT                        R10 K16 [UDim2.new]
      110 MOVE                             R11 R8
      111 MOVE                             R12 R7
      112 CALL                             R10 2 1
      113 MOVE                             R6 R10
      114 SETTABLEKS                       R6 R5 K10 ["size"]
      116 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnViewChanged"]
        3 JUMPIFNOT                        R1 ; [+134]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["Axis"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["AXIS_X"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+5]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K3 ["plotToGraphX"]
       15 JUMP                             ; [+3]
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K4 ["plotToGraphY"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K1 ["Axis"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K2 ["AXIS_X"]
       25 JUMPIFNOTEQ                      R3 R4 ; [+5]
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R2 R2 K5 ["graphToPlotX"]
       30 JUMP                             ; [+3]
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K6 ["graphToPlotY"]
       34 GETUPVAL                         R3 2
       35 GETTABLEKS                       R3 R3 K7 ["getViewportRect"]
       37 CALL                             R3 0 1
       38 MOVE                             R4 R1
       39 GETTABLEKS                       R6 R3 K8 ["Min"]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K1 ["Axis"]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K2 ["AXIS_X"]
       47 JUMPIFNOTEQ                      R7 R8 ; [+4]
       49 GETTABLEKS                       R5 R6 K9 ["X"]
       51 JUMP                             ; [+2]
       52 GETTABLEKS                       R5 R6 K10 ["Y"]
       54 CALL                             R4 1 1
       55 MOVE                             R5 R1
       56 GETTABLEKS                       R7 R3 K11 ["Max"]
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R8 R8 K1 ["Axis"]
       61 GETUPVAL                         R9 1
       62 GETTABLEKS                       R9 R9 K2 ["AXIS_X"]
       64 JUMPIFNOTEQ                      R8 R9 ; [+4]
       66 GETTABLEKS                       R6 R7 K9 ["X"]
       68 JUMP                             ; [+2]
       69 GETTABLEKS                       R6 R7 K10 ["Y"]
       71 CALL                             R5 1 1
       72 GETUPVAL                         R7 0
       73 GETTABLEKS                       R7 R7 K12 ["ExpandedBounds"]
       75 JUMPIFNOT                        R7 ; [+8]
       76 MOVE                             R6 R1
       77 GETUPVAL                         R7 0
       78 GETTABLEKS                       R7 R7 K12 ["ExpandedBounds"]
       80 GETTABLEKS                       R7 R7 K8 ["Min"]
       82 CALL                             R6 1 1
       83 JUMP                             ; [+1]
       84 LOADN                            R6 0
       85 GETUPVAL                         R8 0
       86 GETTABLEKS                       R8 R8 K12 ["ExpandedBounds"]
       88 JUMPIFNOT                        R8 ; [+8]
       89 MOVE                             R7 R1
       90 GETUPVAL                         R8 0
       91 GETTABLEKS                       R8 R8 K12 ["ExpandedBounds"]
       93 GETTABLEKS                       R8 R8 K11 ["Max"]
       95 CALL                             R7 1 1
       96 JUMP                             ; [+1]
       97 LOADN                            R7 1
       98 ADD                              R8 R4 R0
       99 ADD                              R9 R5 R0
      100 LOADN                            R10 0
      101 FASTCALL2                        MATH_MIN R8 R9 ; [+5]
      103 MOVE                             R12 R8
      104 MOVE                             R13 R9
      105 GETIMPORT                        R11 K15 [math.min]
      107 CALL                             R11 2 1
      108 FASTCALL2                        MATH_MAX R8 R9 ; [+5]
      110 MOVE                             R13 R8
      111 MOVE                             R14 R9
      112 GETIMPORT                        R12 K17 [math.max]
      114 CALL                             R12 2 1
      115 JUMPIFNOTLT                      R11 R6 ; [+3]
      117 SUB                              R10 R6 R11
      118 JUMP                             ; [+3]
      119 JUMPIFNOTLT                      R7 R12 ; [+2]
      121 SUB                              R10 R7 R12
      122 ADD                              R8 R8 R10
      123 ADD                              R9 R9 R10
      124 MOVE                             R13 R2
      125 MOVE                             R14 R8
      126 CALL                             R13 1 1
      127 MOVE                             R8 R13
      128 MOVE                             R13 R2
      129 MOVE                             R14 R9
      130 CALL                             R13 1 1
      131 MOVE                             R9 R13
      132 GETUPVAL                         R13 0
      133 GETTABLEKS                       R13 R13 K0 ["OnViewChanged"]
      135 MOVE                             R14 R8
      136 MOVE                             R15 R9
      137 CALL                             R13 2 0
      138 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Axis"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["AXIS_X"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+5]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K2 ["plotToGraphX"]
       11 JUMP                             ; [+3]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K3 ["plotToGraphY"]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K4 ["getViewportRect"]
       18 CALL                             R2 0 1
       19 MOVE                             R3 R1
       20 GETTABLEKS                       R5 R2 K5 ["Min"]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K0 ["Axis"]
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K1 ["AXIS_X"]
       28 JUMPIFNOTEQ                      R6 R7 ; [+4]
       30 GETTABLEKS                       R4 R5 K6 ["X"]
       32 JUMP                             ; [+2]
       33 GETTABLEKS                       R4 R5 K7 ["Y"]
       35 CALL                             R3 1 1
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R4 R4 K8 ["plotToView"]
       39 MOVE                             R5 R0
       40 CALL                             R4 1 1
       41 GETUPVAL                         R5 3
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R8 R8 K0 ["Axis"]
       45 GETUPVAL                         R9 1
       46 GETTABLEKS                       R9 R9 K1 ["AXIS_X"]
       48 JUMPIFNOTEQ                      R8 R9 ; [+4]
       50 GETTABLEKS                       R7 R4 K6 ["X"]
       52 JUMP                             ; [+2]
       53 GETTABLEKS                       R7 R4 K7 ["Y"]
       55 SUB                              R6 R7 R3
       56 CALL                             R5 1 0
       57 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnViewChanged"]
        3 JUMPIFNOT                        R1 ; [+84]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["plotToView"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["graphToPlot"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["getGraphRect"]
       17 CALL                             R3 0 1
       18 GETTABLEKS                       R5 R3 K4 ["Min"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K5 ["Axis"]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K6 ["AXIS_X"]
       26 JUMPIFNOTEQ                      R6 R7 ; [+4]
       28 GETTABLEKS                       R4 R5 K7 ["X"]
       30 JUMP                             ; [+2]
       31 GETTABLEKS                       R4 R5 K8 ["Y"]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K9 ["getViewportRect"]
       36 CALL                             R5 0 1
       37 GETTABLEKS                       R7 R5 K10 ["Max"]
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R8 R8 K5 ["Axis"]
       42 GETUPVAL                         R9 2
       43 GETTABLEKS                       R9 R9 K6 ["AXIS_X"]
       45 JUMPIFNOTEQ                      R8 R9 ; [+4]
       47 GETTABLEKS                       R6 R7 K7 ["X"]
       49 JUMP                             ; [+2]
       50 GETTABLEKS                       R6 R7 K8 ["Y"]
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R9 R9 K5 ["Axis"]
       55 GETUPVAL                         R10 2
       56 GETTABLEKS                       R10 R10 K6 ["AXIS_X"]
       58 JUMPIFNOTEQ                      R9 R10 ; [+4]
       60 GETTABLEKS                       R8 R2 K7 ["X"]
       62 JUMP                             ; [+2]
       63 GETTABLEKS                       R8 R2 K8 ["Y"]
       65 GETUPVAL                         R10 0
       66 GETTABLEKS                       R10 R10 K11 ["MinZoom"]
       68 SUB                              R9 R6 R10
       69 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       71 GETIMPORT                        R7 K14 [math.min]
       73 CALL                             R7 2 1
       74 FASTCALL2                        MATH_MAX R7 R4 ; [+5]
       76 MOVE                             R9 R7
       77 MOVE                             R10 R4
       78 GETIMPORT                        R8 K16 [math.max]
       80 CALL                             R8 2 1
       81 MOVE                             R7 R8
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R8 R8 K0 ["OnViewChanged"]
       85 MOVE                             R9 R7
       86 MOVE                             R10 R6
       87 CALL                             R8 2 0
       88 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnViewChanged"]
        3 JUMPIFNOT                        R1 ; [+84]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["plotToView"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["graphToPlot"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["getGraphRect"]
       17 CALL                             R3 0 1
       18 GETTABLEKS                       R5 R3 K4 ["Max"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K5 ["Axis"]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K6 ["AXIS_X"]
       26 JUMPIFNOTEQ                      R6 R7 ; [+4]
       28 GETTABLEKS                       R4 R5 K7 ["X"]
       30 JUMP                             ; [+2]
       31 GETTABLEKS                       R4 R5 K8 ["Y"]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K9 ["getViewportRect"]
       36 CALL                             R5 0 1
       37 GETTABLEKS                       R7 R5 K10 ["Min"]
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R8 R8 K5 ["Axis"]
       42 GETUPVAL                         R9 2
       43 GETTABLEKS                       R9 R9 K6 ["AXIS_X"]
       45 JUMPIFNOTEQ                      R8 R9 ; [+4]
       47 GETTABLEKS                       R6 R7 K7 ["X"]
       49 JUMP                             ; [+2]
       50 GETTABLEKS                       R6 R7 K8 ["Y"]
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R9 R9 K5 ["Axis"]
       55 GETUPVAL                         R10 2
       56 GETTABLEKS                       R10 R10 K6 ["AXIS_X"]
       58 JUMPIFNOTEQ                      R9 R10 ; [+4]
       60 GETTABLEKS                       R8 R2 K7 ["X"]
       62 JUMP                             ; [+2]
       63 GETTABLEKS                       R8 R2 K8 ["Y"]
       65 GETUPVAL                         R10 0
       66 GETTABLEKS                       R10 R10 K11 ["MinZoom"]
       68 ADD                              R9 R6 R10
       69 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       71 GETIMPORT                        R7 K14 [math.max]
       73 CALL                             R7 2 1
       74 FASTCALL2                        MATH_MIN R7 R4 ; [+5]
       76 MOVE                             R9 R7
       77 MOVE                             R10 R4
       78 GETIMPORT                        R8 K16 [math.min]
       80 CALL                             R8 2 1
       81 MOVE                             R7 R8
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R8 R8 K0 ["OnViewChanged"]
       85 MOVE                             R9 R6
       86 MOVE                             R10 R7
       87 CALL                             R8 2 0
       88 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [-0.04]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [0.04]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["position"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["size"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["Distance"]
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["SCROLLBAR_DISTANCE"]
        6 GETTABLEKS                       R2 R0 K2 ["Size"]
        8 JUMPIF                           R2 ; [+3]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["SCROLLBAR_SIZE"]
       12 GETTABLEKS                       R3 R0 K4 ["ScrollButtonSize"]
       14 JUMPIF                           R3 ; [+3]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["SCROLLBAR_SCROLL_BUTTON_SIZE"]
       18 GETTABLEKS                       R4 R0 K6 ["ZoomButtonSize"]
       20 JUMPIF                           R4 ; [+3]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K7 ["SCROLLBAR_ZOOM_BUTTON_SIZE"]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K8 ["useContext"]
       27 GETUPVAL                         R6 2
       28 CALL                             R5 1 1
       29 GETUPVAL                         R6 3
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U4
       33 NEWTABLE                         R8 0 1
       35 GETTABLEKS                       R9 R0 K9 ["Axis"]
       37 SETLIST                          R8 R9 1 [1]
       39 CALL                             R6 2 1
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R7 R7 K10 ["useCallback"]
       43 NEWCLOSURE                       R8 P1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R5
       47 NEWTABLE                         R9 0 3
       49 GETTABLEKS                       R10 R0 K11 ["OnViewChanged"]
       51 GETTABLEKS                       R11 R0 K9 ["Axis"]
       53 GETTABLEKS                       R12 R0 K12 ["ExpandedBounds"]
       55 SETLIST                          R9 R10 3 [1]
       57 CALL                             R7 2 1
       58 GETUPVAL                         R8 1
       59 GETTABLEKS                       R8 R8 K10 ["useCallback"]
       61 NEWCLOSURE                       R9 P2
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R7
       66 NEWTABLE                         R10 0 2
       68 MOVE                             R11 R7
       69 GETTABLEKS                       R12 R0 K9 ["Axis"]
       71 SETLIST                          R10 R11 2 [1]
       73 CALL                             R8 2 1
       74 GETUPVAL                         R9 1
       75 GETTABLEKS                       R9 R9 K10 ["useCallback"]
       77 NEWCLOSURE                       R10 P3
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R5
       80 CAPTURE                          UPVAL U4
       81 NEWTABLE                         R11 0 3
       83 GETTABLEKS                       R12 R0 K11 ["OnViewChanged"]
       85 GETTABLEKS                       R13 R0 K9 ["Axis"]
       87 GETTABLEKS                       R14 R0 K13 ["MinZoom"]
       89 SETLIST                          R11 R12 3 [1]
       91 CALL                             R9 2 1
       92 GETUPVAL                         R10 1
       93 GETTABLEKS                       R10 R10 K10 ["useCallback"]
       95 NEWCLOSURE                       R11 P4
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R5
       98 CAPTURE                          UPVAL U4
       99 NEWTABLE                         R12 0 3
      101 GETTABLEKS                       R13 R0 K11 ["OnViewChanged"]
      103 GETTABLEKS                       R14 R0 K9 ["Axis"]
      105 GETTABLEKS                       R15 R0 K13 ["MinZoom"]
      107 SETLIST                          R12 R13 3 [1]
      109 CALL                             R10 2 1
      110 GETUPVAL                         R11 1
      111 GETTABLEKS                       R11 R11 K10 ["useCallback"]
      113 NEWCLOSURE                       R12 P5
      114 CAPTURE                          VAL R7
      115 NEWTABLE                         R13 0 1
      117 MOVE                             R14 R7
      118 SETLIST                          R13 R14 1 [1]
      120 CALL                             R11 2 1
      121 GETUPVAL                         R12 1
      122 GETTABLEKS                       R12 R12 K10 ["useCallback"]
      124 NEWCLOSURE                       R13 P6
      125 CAPTURE                          VAL R7
      126 NEWTABLE                         R14 0 1
      128 MOVE                             R15 R7
      129 SETLIST                          R14 R15 1 [1]
      131 CALL                             R12 2 1
      132 GETIMPORT                        R14 K16 [UDim.new]
      134 LOADN                            R15 0
      135 MINUS                            R17 R3
      136 SUB                              R16 R17 R4
      137 CALL                             R14 2 1
      138 GETIMPORT                        R16 K16 [UDim.new]
      140 LOADN                            R17 1
      141 LOADN                            R18 0
      142 CALL                             R16 2 1
      143 ADD                              R15 R16 R1
      144 GETTABLEKS                       R16 R0 K9 ["Axis"]
      146 GETUPVAL                         R17 4
      147 GETTABLEKS                       R17 R17 K17 ["AXIS_X"]
      149 JUMPIFNOTEQ                      R16 R17 ; [+8]
      151 GETIMPORT                        R17 K19 [UDim2.new]
      153 MOVE                             R18 R14
      154 MOVE                             R19 R15
      155 CALL                             R17 2 1
      156 MOVE                             R13 R17
      157 JUMP                             ; [+6]
      158 GETIMPORT                        R17 K19 [UDim2.new]
      160 MOVE                             R18 R15
      161 MOVE                             R19 R14
      162 CALL                             R17 2 1
      163 MOVE                             R13 R17
      164 GETIMPORT                        R15 K16 [UDim.new]
      166 LOADN                            R16 1
      167 LOADN                            R17 0
      168 CALL                             R15 2 1
      169 GETTABLEKS                       R16 R0 K9 ["Axis"]
      171 GETUPVAL                         R17 4
      172 GETTABLEKS                       R17 R17 K17 ["AXIS_X"]
      174 JUMPIFNOTEQ                      R16 R17 ; [+8]
      176 GETIMPORT                        R17 K19 [UDim2.new]
      178 MOVE                             R18 R15
      179 MOVE                             R19 R2
      180 CALL                             R17 2 1
      181 MOVE                             R14 R17
      182 JUMP                             ; [+6]
      183 GETIMPORT                        R17 K19 [UDim2.new]
      185 MOVE                             R18 R2
      186 MOVE                             R19 R15
      187 CALL                             R17 2 1
      188 MOVE                             R14 R17
      189 GETIMPORT                        R16 K16 [UDim.new]
      191 LOADN                            R17 0
      192 ADD                              R19 R3 R4
      193 MULK                             R18 R19 K20 [2]
      194 CALL                             R16 2 1
      195 GETIMPORT                        R17 K16 [UDim.new]
      197 LOADN                            R18 0
      198 LOADN                            R19 0
      199 CALL                             R17 2 1
      200 GETTABLEKS                       R18 R0 K9 ["Axis"]
      202 GETUPVAL                         R19 4
      203 GETTABLEKS                       R19 R19 K17 ["AXIS_X"]
      205 JUMPIFNOTEQ                      R18 R19 ; [+8]
      207 GETIMPORT                        R19 K19 [UDim2.new]
      209 MOVE                             R20 R16
      210 MOVE                             R21 R17
      211 CALL                             R19 2 1
      212 MOVE                             R15 R19
      213 JUMP                             ; [+6]
      214 GETIMPORT                        R19 K19 [UDim2.new]
      216 MOVE                             R20 R17
      217 MOVE                             R21 R16
      218 CALL                             R19 2 1
      219 MOVE                             R15 R19
      220 GETIMPORT                        R17 K16 [UDim.new]
      222 LOADN                            R18 0
      223 MOVE                             R19 R3
      224 CALL                             R17 2 1
      225 GETIMPORT                        R18 K16 [UDim.new]
      227 LOADN                            R19 1
      228 LOADN                            R20 0
      229 CALL                             R18 2 1
      230 GETTABLEKS                       R19 R0 K9 ["Axis"]
      232 GETUPVAL                         R20 4
      233 GETTABLEKS                       R20 R20 K17 ["AXIS_X"]
      235 JUMPIFNOTEQ                      R19 R20 ; [+8]
      237 GETIMPORT                        R20 K19 [UDim2.new]
      239 MOVE                             R21 R17
      240 MOVE                             R22 R18
      241 CALL                             R20 2 1
      242 MOVE                             R16 R20
      243 JUMP                             ; [+6]
      244 GETIMPORT                        R20 K19 [UDim2.new]
      246 MOVE                             R21 R18
      247 MOVE                             R22 R17
      248 CALL                             R20 2 1
      249 MOVE                             R16 R20
      250 GETIMPORT                        R18 K16 [UDim.new]
      252 LOADN                            R19 0
      253 MOVE                             R20 R4
      254 CALL                             R18 2 1
      255 GETIMPORT                        R19 K16 [UDim.new]
      257 LOADN                            R20 1
      258 LOADN                            R21 0
      259 CALL                             R19 2 1
      260 GETTABLEKS                       R20 R0 K9 ["Axis"]
      262 GETUPVAL                         R21 4
      263 GETTABLEKS                       R21 R21 K17 ["AXIS_X"]
      265 JUMPIFNOTEQ                      R20 R21 ; [+8]
      267 GETIMPORT                        R21 K19 [UDim2.new]
      269 MOVE                             R22 R18
      270 MOVE                             R23 R19
      271 CALL                             R21 2 1
      272 MOVE                             R17 R21
      273 JUMP                             ; [+6]
      274 GETIMPORT                        R21 K19 [UDim2.new]
      276 MOVE                             R22 R19
      277 MOVE                             R23 R18
      278 CALL                             R21 2 1
      279 MOVE                             R17 R21
      280 GETTABLEKS                       R19 R0 K9 ["Axis"]
      282 GETUPVAL                         R20 4
      283 GETTABLEKS                       R20 R20 K17 ["AXIS_X"]
      285 JUMPIFNOTEQ                      R19 R20 ; [+3]
      287 LOADN                            R18 0
      288 JUMP                             ; [+1]
      289 LOADN                            R18 90
      290 GETUPVAL                         R19 1
      291 GETTABLEKS                       R19 R19 K21 ["createElement"]
      293 LOADK                            R20 K22 ["Frame"]
      294 NEWTABLE                         R21 8 0
      296 SETTABLEKS                       R13 R21 K23 ["Position"]
      298 ADD                              R22 R14 R15
      299 SETTABLEKS                       R22 R21 K2 ["Size"]
      301 GETTABLEKS                       R22 R0 K24 ["OutlineThickness"]
      303 JUMPIF                           R22 ; [+3]
      304 GETUPVAL                         R22 0
      305 GETTABLEKS                       R22 R22 K25 ["SCROLLBAR_OUTLINE_THICKNESS"]
      307 SETTABLEKS                       R22 R21 K26 ["BorderSizePixel"]
      309 GETTABLEKS                       R22 R0 K27 ["OutlineColor3"]
      311 JUMPIF                           R22 ; [+3]
      312 GETUPVAL                         R22 0
      313 GETTABLEKS                       R22 R22 K28 ["SCROLLBAR_OUTLINE_COLOR3"]
      315 SETTABLEKS                       R22 R21 K29 ["BorderColor3"]
      317 GETTABLEKS                       R22 R0 K30 ["Color3"]
      319 JUMPIF                           R22 ; [+3]
      320 GETUPVAL                         R22 0
      321 GETTABLEKS                       R22 R22 K31 ["SCROLLBAR_COLOR3"]
      323 SETTABLEKS                       R22 R21 K32 ["BackgroundColor3"]
      325 GETTABLEKS                       R22 R0 K33 ["ZIndex"]
      327 SETTABLEKS                       R22 R21 K33 ["ZIndex"]
      329 GETUPVAL                         R22 1
      330 GETTABLEKS                       R22 R22 K34 ["Tag"]
      332 LOADK                            R23 K35 ["ScrollbarFrame"]
      333 SETTABLE                         R23 R21 R22
      334 DUPTABLE                         R22 K39 [{"MinScrollButton", "MaxScrollButton", "Inner"}]
      335 GETUPVAL                         R23 1
      336 GETTABLEKS                       R23 R23 K21 ["createElement"]
      338 GETUPVAL                         R24 5
      339 DUPTABLE                         R25 K43 [{"Position", "Rotation", "Size", "Image", "OnClick"}]
      340 GETIMPORT                        R26 K45 [UDim2.fromScale]
      342 LOADN                            R27 0
      343 LOADN                            R28 0
      344 CALL                             R26 2 1
      345 SETTABLEKS                       R26 R25 K23 ["Position"]
      347 SETTABLEKS                       R18 R25 K40 ["Rotation"]
      349 SETTABLEKS                       R16 R25 K2 ["Size"]
      351 GETUPVAL                         R26 0
      352 GETTABLEKS                       R26 R26 K46 ["SCROLLBAR_LEFT_SCROLL_BUTTON_IMAGE"]
      354 SETTABLEKS                       R26 R25 K41 ["Image"]
      356 SETTABLEKS                       R11 R25 K42 ["OnClick"]
      358 CALL                             R23 2 1
      359 SETTABLEKS                       R23 R22 K36 ["MinScrollButton"]
      361 GETUPVAL                         R23 1
      362 GETTABLEKS                       R23 R23 K21 ["createElement"]
      364 GETUPVAL                         R24 5
      365 DUPTABLE                         R25 K48 [{"AnchorPoint", "Position", "Rotation", "Size", "Image", "OnClick"}]
      366 GETTABLEKS                       R27 R0 K9 ["Axis"]
      368 GETUPVAL                         R28 4
      369 GETTABLEKS                       R28 R28 K17 ["AXIS_X"]
      371 JUMPIFNOTEQ                      R27 R28 ; [+7]
      373 GETIMPORT                        R26 K50 [Vector2.new]
      375 LOADN                            R27 1
      376 LOADN                            R28 0
      377 CALL                             R26 2 1
      378 JUMP                             ; [+5]
      379 GETIMPORT                        R26 K50 [Vector2.new]
      381 LOADN                            R27 0
      382 LOADN                            R28 1
      383 CALL                             R26 2 1
      384 SETTABLEKS                       R26 R25 K47 ["AnchorPoint"]
      386 GETIMPORT                        R27 K16 [UDim.new]
      388 LOADN                            R28 1
      389 LOADN                            R29 0
      390 CALL                             R27 2 1
      391 GETIMPORT                        R28 K16 [UDim.new]
      393 LOADN                            R29 0
      394 LOADN                            R30 0
      395 CALL                             R28 2 1
      396 GETTABLEKS                       R29 R0 K9 ["Axis"]
      398 GETUPVAL                         R30 4
      399 GETTABLEKS                       R30 R30 K17 ["AXIS_X"]
      401 JUMPIFNOTEQ                      R29 R30 ; [+8]
      403 GETIMPORT                        R30 K19 [UDim2.new]
      405 MOVE                             R31 R27
      406 MOVE                             R32 R28
      407 CALL                             R30 2 1
      408 MOVE                             R26 R30
      409 JUMP                             ; [+6]
      410 GETIMPORT                        R30 K19 [UDim2.new]
      412 MOVE                             R31 R28
      413 MOVE                             R32 R27
      414 CALL                             R30 2 1
      415 MOVE                             R26 R30
      416 SETTABLEKS                       R26 R25 K23 ["Position"]
      418 SETTABLEKS                       R18 R25 K40 ["Rotation"]
      420 SETTABLEKS                       R16 R25 K2 ["Size"]
      422 GETUPVAL                         R26 0
      423 GETTABLEKS                       R26 R26 K51 ["SCROLLBAR_RIGHT_SCROLL_BUTTON_IMAGE"]
      425 SETTABLEKS                       R26 R25 K41 ["Image"]
      427 SETTABLEKS                       R12 R25 K42 ["OnClick"]
      429 CALL                             R23 2 1
      430 SETTABLEKS                       R23 R22 K37 ["MaxScrollButton"]
      432 GETUPVAL                         R23 1
      433 GETTABLEKS                       R23 R23 K21 ["createElement"]
      435 LOADK                            R24 K22 ["Frame"]
      436 DUPTABLE                         R25 K53 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "BorderSizePixel"}]
      437 GETIMPORT                        R26 K50 [Vector2.new]
      439 LOADK                            R27 K54 [0.5]
      440 LOADK                            R28 K54 [0.5]
      441 CALL                             R26 2 1
      442 SETTABLEKS                       R26 R25 K47 ["AnchorPoint"]
      444 GETIMPORT                        R26 K45 [UDim2.fromScale]
      446 LOADK                            R27 K54 [0.5]
      447 LOADK                            R28 K54 [0.5]
      448 CALL                             R26 2 1
      449 SETTABLEKS                       R26 R25 K23 ["Position"]
      451 GETIMPORT                        R27 K45 [UDim2.fromScale]
      453 LOADN                            R28 1
      454 LOADN                            R29 1
      455 CALL                             R27 2 1
      456 SUB                              R26 R27 R15
      457 SETTABLEKS                       R26 R25 K2 ["Size"]
      459 LOADN                            R26 1
      460 SETTABLEKS                       R26 R25 K52 ["BackgroundTransparency"]
      462 LOADN                            R26 0
      463 SETTABLEKS                       R26 R25 K26 ["BorderSizePixel"]
      465 DUPTABLE                         R26 K56 [{"Body"}]
      466 GETUPVAL                         R27 1
      467 GETTABLEKS                       R27 R27 K21 ["createElement"]
      469 LOADK                            R28 K22 ["Frame"]
      470 DUPTABLE                         R29 K57 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel"}]
      471 DUPCLOSURE                       R32 K58 [PROTO_9]
      472 NAMECALL                         R30 R6 K59 ["map"]
      474 CALL                             R30 2 1
      475 SETTABLEKS                       R30 R29 K23 ["Position"]
      477 DUPCLOSURE                       R32 K60 [PROTO_10]
      478 NAMECALL                         R30 R6 K59 ["map"]
      480 CALL                             R30 2 1
      481 SETTABLEKS                       R30 R29 K2 ["Size"]
      483 LOADN                            R30 1
      484 SETTABLEKS                       R30 R29 K52 ["BackgroundTransparency"]
      486 LOADN                            R30 0
      487 SETTABLEKS                       R30 R29 K26 ["BorderSizePixel"]
      489 DUPTABLE                         R30 K64 [{"MainButton", "LeftButton", "RightButton"}]
      490 GETUPVAL                         R31 1
      491 GETTABLEKS                       R31 R31 K21 ["createElement"]
      493 GETUPVAL                         R32 5
      494 DUPTABLE                         R33 K66 [{"AnchorPoint", "Position", "Size", "OnMoved"}]
      495 GETTABLEKS                       R35 R0 K9 ["Axis"]
      497 GETUPVAL                         R36 4
      498 GETTABLEKS                       R36 R36 K17 ["AXIS_X"]
      500 JUMPIFNOTEQ                      R35 R36 ; [+7]
      502 GETIMPORT                        R34 K50 [Vector2.new]
      504 LOADN                            R35 0
      505 LOADN                            R36 0
      506 CALL                             R34 2 1
      507 JUMP                             ; [+5]
      508 GETIMPORT                        R34 K50 [Vector2.new]
      510 LOADN                            R35 0
      511 LOADN                            R36 1
      512 CALL                             R34 2 1
      513 SETTABLEKS                       R34 R33 K47 ["AnchorPoint"]
      515 GETTABLEKS                       R35 R0 K9 ["Axis"]
      517 GETUPVAL                         R36 4
      518 GETTABLEKS                       R36 R36 K17 ["AXIS_X"]
      520 JUMPIFNOTEQ                      R35 R36 ; [+7]
      522 GETIMPORT                        R34 K45 [UDim2.fromScale]
      524 LOADN                            R35 0
      525 LOADN                            R36 0
      526 CALL                             R34 2 1
      527 JUMP                             ; [+5]
      528 GETIMPORT                        R34 K45 [UDim2.fromScale]
      530 LOADN                            R35 0
      531 LOADN                            R36 1
      532 CALL                             R34 2 1
      533 SETTABLEKS                       R34 R33 K23 ["Position"]
      535 GETIMPORT                        R34 K45 [UDim2.fromScale]
      537 LOADN                            R35 1
      538 LOADN                            R36 1
      539 CALL                             R34 2 1
      540 SETTABLEKS                       R34 R33 K2 ["Size"]
      542 SETTABLEKS                       R8 R33 K65 ["OnMoved"]
      544 CALL                             R31 2 1
      545 SETTABLEKS                       R31 R30 K61 ["MainButton"]
      547 GETUPVAL                         R31 1
      548 GETTABLEKS                       R31 R31 K21 ["createElement"]
      550 GETUPVAL                         R32 5
      551 DUPTABLE                         R33 K67 [{"AnchorPoint", "Position", "Rotation", "Size", "Image", "OnMoved"}]
      552 GETTABLEKS                       R35 R0 K9 ["Axis"]
      554 GETUPVAL                         R36 4
      555 GETTABLEKS                       R36 R36 K17 ["AXIS_X"]
      557 JUMPIFNOTEQ                      R35 R36 ; [+7]
      559 GETIMPORT                        R34 K50 [Vector2.new]
      561 LOADN                            R35 1
      562 LOADN                            R36 0
      563 CALL                             R34 2 1
      564 JUMP                             ; [+5]
      565 GETIMPORT                        R34 K50 [Vector2.new]
      567 LOADN                            R35 0
      568 LOADN                            R36 0
      569 CALL                             R34 2 1
      570 SETTABLEKS                       R34 R33 K47 ["AnchorPoint"]
      572 GETTABLEKS                       R35 R0 K9 ["Axis"]
      574 GETUPVAL                         R36 4
      575 GETTABLEKS                       R36 R36 K17 ["AXIS_X"]
      577 JUMPIFNOTEQ                      R35 R36 ; [+7]
      579 GETIMPORT                        R34 K45 [UDim2.fromScale]
      581 LOADN                            R35 0
      582 LOADN                            R36 0
      583 CALL                             R34 2 1
      584 JUMP                             ; [+5]
      585 GETIMPORT                        R34 K45 [UDim2.fromScale]
      587 LOADN                            R35 0
      588 LOADN                            R36 1
      589 CALL                             R34 2 1
      590 SETTABLEKS                       R34 R33 K23 ["Position"]
      592 SETTABLEKS                       R18 R33 K40 ["Rotation"]
      594 SETTABLEKS                       R17 R33 K2 ["Size"]
      596 GETUPVAL                         R34 0
      597 GETTABLEKS                       R34 R34 K68 ["SCROLLBAR_LEFT_ZOOM_BUTTON_IMAGE"]
      599 SETTABLEKS                       R34 R33 K41 ["Image"]
      601 SETTABLEKS                       R9 R33 K65 ["OnMoved"]
      603 CALL                             R31 2 1
      604 SETTABLEKS                       R31 R30 K62 ["LeftButton"]
      606 GETUPVAL                         R31 1
      607 GETTABLEKS                       R31 R31 K21 ["createElement"]
      609 GETUPVAL                         R32 5
      610 DUPTABLE                         R33 K67 [{"AnchorPoint", "Position", "Rotation", "Size", "Image", "OnMoved"}]
      611 GETTABLEKS                       R35 R0 K9 ["Axis"]
      613 GETUPVAL                         R36 4
      614 GETTABLEKS                       R36 R36 K17 ["AXIS_X"]
      616 JUMPIFNOTEQ                      R35 R36 ; [+7]
      618 GETIMPORT                        R34 K50 [Vector2.new]
      620 LOADN                            R35 0
      621 LOADN                            R36 0
      622 CALL                             R34 2 1
      623 JUMP                             ; [+5]
      624 GETIMPORT                        R34 K50 [Vector2.new]
      626 LOADN                            R35 0
      627 LOADN                            R36 1
      628 CALL                             R34 2 1
      629 SETTABLEKS                       R34 R33 K47 ["AnchorPoint"]
      631 GETTABLEKS                       R35 R0 K9 ["Axis"]
      633 GETUPVAL                         R36 4
      634 GETTABLEKS                       R36 R36 K17 ["AXIS_X"]
      636 JUMPIFNOTEQ                      R35 R36 ; [+7]
      638 GETIMPORT                        R34 K45 [UDim2.fromScale]
      640 LOADN                            R35 1
      641 LOADN                            R36 0
      642 CALL                             R34 2 1
      643 JUMP                             ; [+5]
      644 GETIMPORT                        R34 K45 [UDim2.fromScale]
      646 LOADN                            R35 0
      647 LOADN                            R36 0
      648 CALL                             R34 2 1
      649 SETTABLEKS                       R34 R33 K23 ["Position"]
      651 SETTABLEKS                       R18 R33 K40 ["Rotation"]
      653 SETTABLEKS                       R17 R33 K2 ["Size"]
      655 GETUPVAL                         R34 0
      656 GETTABLEKS                       R34 R34 K69 ["SCROLLBAR_RIGHT_ZOOM_BUTTON_IMAGE"]
      658 SETTABLEKS                       R34 R33 K41 ["Image"]
      660 SETTABLEKS                       R10 R33 K65 ["OnMoved"]
      662 CALL                             R31 2 1
      663 SETTABLEKS                       R31 R30 K63 ["RightButton"]
      665 CALL                             R27 3 1
      666 SETTABLEKS                       R27 R26 K55 ["Body"]
      668 CALL                             R23 3 1
      669 SETTABLEKS                       R23 R22 K38 ["Inner"]
      671 CALL                             R19 3 -1
      672 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["CanvasContext"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["ScrollbarButton"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Util"]
       30 GETTABLEKS                       R6 R6 K12 ["StyleUtil"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Types"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K11 ["Util"]
       42 GETTABLEKS                       R8 R8 K14 ["useViewportBinding"]
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R7 R7 K14 ["useViewportBinding"]
       47 DUPCLOSURE                       R8 K15 [PROTO_0]
       48 CAPTURE                          VAL R6
       49 DUPCLOSURE                       R9 K16 [PROTO_1]
       50 CAPTURE                          VAL R6
       51 DUPCLOSURE                       R10 K17 [PROTO_11]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R4
       58 SETGLOBAL                        R10 K18 ["Scrollbar"]
       60 GETGLOBAL                        R10 K18 ["Scrollbar"]
       62 RETURN                           R10 1
