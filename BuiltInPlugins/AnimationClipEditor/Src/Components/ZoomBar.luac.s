PROTO_0:
        0 GETTABLEKS                       R4 R0 K1 ["MaxValue"]
        2 GETTABLEKS                       R5 R0 K2 ["MinValue"]
        4 SUB                              R3 R4 R5
        5 SUBRK                            R2 K0 [1] R3
        6 LOADN                            R3 0
        7 LOADN                            R4 1
        8 FASTCALL                         MATH_CLAMP ; [+2]
        9 GETIMPORT                        R1 K5 [math.clamp]
       11 CALL                             R1 3 1
       12 LOADN                            R2 0
       13 LOADN                            R3 0
       14 JUMPIFNOTLT                      R3 R1 ; [+4]
       16 GETTABLEKS                       R3 R0 K2 ["MinValue"]
       18 DIV                              R2 R3 R1
       19 GETTABLEKS                       R3 R0 K6 ["props"]
       21 GETTABLEKS                       R3 R3 K7 ["AdjustScrollZoom"]
       23 JUMPIFNOT                        R3 ; [+7]
       24 GETTABLEKS                       R3 R0 K6 ["props"]
       26 GETTABLEKS                       R3 R3 K7 ["AdjustScrollZoom"]
       28 MOVE                             R4 R2
       29 MOVE                             R5 R1
       30 CALL                             R3 2 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Direction"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["HORIZONTAL"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+17]
        9 GETTABLEKS                       R3 R0 K0 ["props"]
       11 GETTABLEKS                       R3 R3 K3 ["ContainerSize"]
       13 GETTABLEKS                       R3 R3 K4 ["X"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K5 ["SCROLL_BAR_PADDING"]
       18 SUB                              R2 R3 R4
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K7 ["SCROLL_BAR_SIZE"]
       22 MULK                             R3 R4 K6 [4]
       23 SUB                              R1 R2 R3
       24 RETURN                           R1 1
       25 GETTABLEKS                       R3 R0 K0 ["props"]
       27 GETTABLEKS                       R3 R3 K3 ["ContainerSize"]
       29 GETTABLEKS                       R3 R3 K8 ["Y"]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K5 ["SCROLL_BAR_PADDING"]
       34 SUB                              R2 R3 R4
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K7 ["SCROLL_BAR_SIZE"]
       38 MULK                             R3 R4 K6 [4]
       39 SUB                              R1 R2 R3
       40 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["Zooming"]
        4 JUMPIF                           R1 ; [+4]
        5 GETTABLEKS                       R1 R0 K0 ["state"]
        7 GETTABLEKS                       R1 R1 K2 ["Scrolling"]
        9 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K2 ["Scroll"]
        4 ORK                              R2 R3 K1 [0]
        5 GETTABLEKS                       R4 R1 K3 ["Zoom"]
        7 ORK                              R3 R4 K1 [0]
        8 MUL                              R4 R2 R3
        9 SETTABLEKS                       R4 R0 K4 ["MinValue"]
       11 SUBRK                            R5 K5 [1] R3
       12 MUL                              R6 R2 R3
       13 ADD                              R4 R5 R6
       14 SETTABLEKS                       R4 R0 K6 ["MaxValue"]
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["props"]
        3 GETTABLEKS                       R5 R5 K1 ["Min"]
        5 SUB                              R4 R0 R5
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["ClickOffset"]
        9 SUB                              R3 R4 R5
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K3 ["SCROLL_BAR_SIZE"]
       13 ADD                              R2 R3 R4
       14 GETUPVAL                         R3 0
       15 NAMECALL                         R3 R3 K4 ["getDraggableSize"]
       17 CALL                             R3 1 1
       18 DIV                              R1 R2 R3
       19 GETUPVAL                         R2 0
       20 LOADN                            R5 0
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K5 ["MaxValue"]
       24 FASTCALL3                        MATH_CLAMP R1 R5 R6
       26 MOVE                             R4 R1
       27 GETIMPORT                        R3 K8 [math.clamp]
       29 CALL                             R3 3 1
       30 SETTABLEKS                       R3 R2 K9 ["MinValue"]
       32 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETTABLEKS                       R4 R4 K1 ["Min"]
        5 SUB                              R3 R0 R4
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["ClickOffset"]
        9 SUB                              R2 R3 R4
       10 GETUPVAL                         R3 0
       11 NAMECALL                         R3 R3 K3 ["getDraggableSize"]
       13 CALL                             R3 1 1
       14 DIV                              R1 R2 R3
       15 GETUPVAL                         R2 0
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K4 ["MinValue"]
       19 LOADN                            R6 1
       20 FASTCALL3                        MATH_CLAMP R1 R5 R6
       22 MOVE                             R4 R1
       23 GETIMPORT                        R3 K7 [math.clamp]
       25 CALL                             R3 3 1
       26 SETTABLEKS                       R3 R2 K8 ["MaxValue"]
       28 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MinValue"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K2 ["MaxValue"]
        6 SUBRK                            R2 K1 [1] R3
        7 GETUPVAL                         R3 0
        8 LOADN                            R6 0
        9 ADD                              R7 R1 R2
       10 FASTCALL3                        MATH_CLAMP R0 R6 R7
       12 MOVE                             R5 R0
       13 GETIMPORT                        R4 K5 [math.clamp]
       15 CALL                             R4 3 1
       16 SETTABLEKS                       R4 R3 K0 ["MinValue"]
       18 GETUPVAL                         R3 0
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K2 ["MaxValue"]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K0 ["MinValue"]
       25 SUB                              R6 R7 R1
       26 ADD                              R4 R5 R6
       27 SETTABLEKS                       R4 R3 K2 ["MaxValue"]
       29 GETUPVAL                         R3 0
       30 NAMECALL                         R3 R3 K6 ["calculateScrollAndZoom"]
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETTABLEKS                       R4 R4 K1 ["Min"]
        5 SUB                              R3 R0 R4
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["ClickOffset"]
        9 SUB                              R2 R3 R4
       10 GETUPVAL                         R3 0
       11 NAMECALL                         R3 R3 K3 ["getDraggableSize"]
       13 CALL                             R3 1 1
       14 DIV                              R1 R2 R3
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K4 ["updateMiddle"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        2 GETTABLEKS                       R4 R1 K1 ["UserInputType"]
        4 JUMPIFNOTEQ                      R3 R4 ; [+54]
        6 GETUPVAL                         R3 0
        7 DUPTABLE                         R5 K6 [{["Zooming"] = True}]
        8 NAMECALL                         R3 R3 K7 ["setState"]
       10 CALL                             R3 2 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K8 ["props"]
       14 GETTABLEKS                       R3 R3 K9 ["Direction"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K10 ["HORIZONTAL"]
       19 JUMPIFNOTEQ                      R3 R4 ; [+19]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R6 R1 K11 ["Position"]
       24 GETTABLEKS                       R6 R6 K12 ["X"]
       26 GETTABLEKS                       R7 R0 K13 ["AbsolutePosition"]
       28 GETTABLEKS                       R7 R7 K12 ["X"]
       30 SUB                              R5 R6 R7
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R7 R7 K15 ["SCROLL_BAR_SIZE"]
       34 MULK                             R6 R7 K14 [2]
       35 ADD                              R4 R5 R6
       36 SETTABLEKS                       R4 R3 K16 ["ClickOffset"]
       38 JUMP                             ; [+17]
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R6 R1 K11 ["Position"]
       42 GETTABLEKS                       R6 R6 K17 ["Y"]
       44 GETTABLEKS                       R7 R0 K13 ["AbsolutePosition"]
       46 GETTABLEKS                       R7 R7 K17 ["Y"]
       48 SUB                              R5 R6 R7
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R7 R7 K15 ["SCROLL_BAR_SIZE"]
       52 MULK                             R6 R7 K14 [2]
       53 ADD                              R4 R5 R6
       54 SETTABLEKS                       R4 R3 K16 ["ClickOffset"]
       56 GETUPVAL                         R3 0
       57 SETTABLEKS                       R2 R3 K18 ["ZoomFunc"]
       59 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        2 GETTABLEKS                       R3 R1 K1 ["UserInputType"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+51]
        6 GETUPVAL                         R2 0
        7 DUPTABLE                         R4 K6 [{["Scrolling"] = True}]
        8 NAMECALL                         R2 R2 K7 ["setState"]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K8 ["props"]
       14 GETTABLEKS                       R2 R2 K9 ["Direction"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K10 ["HORIZONTAL"]
       19 JUMPIFNOTEQ                      R2 R3 ; [+19]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R5 R1 K11 ["Position"]
       24 GETTABLEKS                       R5 R5 K12 ["X"]
       26 GETTABLEKS                       R6 R0 K13 ["AbsolutePosition"]
       28 GETTABLEKS                       R6 R6 K12 ["X"]
       30 SUB                              R4 R5 R6
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K15 ["SCROLL_BAR_SIZE"]
       34 MULK                             R5 R6 K14 [2]
       35 ADD                              R3 R4 R5
       36 SETTABLEKS                       R3 R2 K16 ["ClickOffset"]
       38 RETURN                           R0 0
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R5 R1 K11 ["Position"]
       42 GETTABLEKS                       R5 R5 K17 ["Y"]
       44 GETTABLEKS                       R6 R0 K13 ["AbsolutePosition"]
       46 GETTABLEKS                       R6 R6 K17 ["Y"]
       48 SUB                              R4 R5 R6
       49 GETUPVAL                         R6 2
       50 GETTABLEKS                       R6 R6 K15 ["SCROLL_BAR_SIZE"]
       52 MULK                             R5 R6 K14 [2]
       53 ADD                              R3 R4 R5
       54 SETTABLEKS                       R3 R2 K16 ["ClickOffset"]
       56 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["isDragging"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+46]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["props"]
        8 GETTABLEKS                       R2 R2 K2 ["Direction"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["HORIZONTAL"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+6]
       15 GETTABLEKS                       R1 R0 K4 ["Position"]
       17 GETTABLEKS                       R1 R1 K5 ["X"]
       19 JUMPIF                           R1 ; [+4]
       20 GETTABLEKS                       R1 R0 K4 ["Position"]
       22 GETTABLEKS                       R1 R1 K6 ["Y"]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K7 ["state"]
       27 GETTABLEKS                       R2 R2 K8 ["Zooming"]
       29 JUMPIFNOT                        R2 ; [+10]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K9 ["ZoomFunc"]
       33 MOVE                             R3 R1
       34 CALL                             R2 1 0
       35 GETUPVAL                         R2 0
       36 NAMECALL                         R2 R2 K10 ["calculateScrollAndZoom"]
       38 CALL                             R2 1 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K7 ["state"]
       43 GETTABLEKS                       R2 R2 K11 ["Scrolling"]
       45 JUMPIFNOT                        R2 ; [+5]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K12 ["dragMiddle"]
       49 MOVE                             R3 R1
       50 CALL                             R2 1 0
       51 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1] = False, ["Scrolling"] = False}]
        2 NAMECALL                         R0 R0 K4 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R1 K4 [{[1] = False, ["Zooming"] = False, ["Hovering"] = False}]
        1 SETTABLEKS                       R1 R0 K5 ["state"]
        3 LOADN                            R1 0
        4 SETTABLEKS                       R1 R0 K6 ["MinValue"]
        6 LOADN                            R1 1
        7 SETTABLEKS                       R1 R0 K7 ["MaxValue"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 SETTABLEKS                       R1 R0 K8 ["updateMin"]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K9 ["updateMax"]
       18 NEWCLOSURE                       R1 P2
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K10 ["updateMiddle"]
       22 NEWCLOSURE                       R1 P3
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K11 ["dragMiddle"]
       26 NEWCLOSURE                       R1 P4
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U0
       30 SETTABLEKS                       R1 R0 K12 ["onZoomBegan"]
       32 NEWCLOSURE                       R1 P5
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          UPVAL U0
       36 SETTABLEKS                       R1 R0 K13 ["onScrollBegan"]
       38 NEWCLOSURE                       R1 P6
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U1
       41 SETTABLEKS                       R1 R0 K14 ["onInputChanged"]
       43 NEWCLOSURE                       R1 P7
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R1 R0 K15 ["onInputEnded"]
       47 NEWCLOSURE                       R1 P8
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R1 R0 K16 ["mouseEnter"]
       51 NEWCLOSURE                       R1 P9
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R1 R0 K17 ["mouseLeave"]
       55 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["isDragging"]
        3 CALL                             R2 1 1
        4 JUMPIF                           R2 ; [+31]
        5 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
        7 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseButton1]
        9 JUMPIFNOTEQ                      R2 R3 ; [+26]
       11 GETUPVAL                         R2 0
       12 GETUPVAL                         R5 1
       13 DIVK                             R4 R5 K5 [2]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K6 ["SCROLL_BAR_SIZE"]
       17 MULK                             R5 R6 K5 [2]
       18 ADD                              R3 R4 R5
       19 SETTABLEKS                       R3 R2 K7 ["ClickOffset"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K8 ["dragMiddle"]
       24 GETUPVAL                         R4 3
       25 JUMPIFNOT                        R4 ; [+5]
       26 GETTABLEKS                       R3 R1 K9 ["Position"]
       28 GETTABLEKS                       R3 R3 K10 ["X"]
       30 JUMPIF                           R3 ; [+4]
       31 GETTABLEKS                       R3 R1 K9 ["Position"]
       33 GETTABLEKS                       R3 R3 K11 ["Y"]
       35 CALL                             R2 1 0
       36 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onZoomBegan"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K1 ["updateMin"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onZoomBegan"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K1 ["updateMax"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateMiddle"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["MinValue"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["ZOOM_INCREMENT"]
        9 SUB                              R1 R2 R3
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateMiddle"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["MinValue"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["ZOOM_INCREMENT"]
        9 ADD                              R1 R2 R3
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R3 K3 ["zoomBarTheme"]
        8 GETTABLEKS                       R5 R1 K4 ["Position"]
       10 GETTABLEKS                       R6 R1 K5 ["Size"]
       12 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       14 GETTABLEKS                       R8 R1 K7 ["ZIndex"]
       16 GETTABLEKS                       R9 R2 K8 ["Hovering"]
       18 NAMECALL                         R10 R0 K9 ["isDragging"]
       20 CALL                             R10 1 1
       21 JUMPIF                           R10 ; [+3]
       22 NAMECALL                         R11 R0 K10 ["calculateMinAndMax"]
       24 CALL                             R11 1 0
       25 GETTABLEKS                       R14 R0 K12 ["MinValue"]
       27 NAMECALL                         R15 R0 K13 ["getDraggableSize"]
       29 CALL                             R15 1 1
       30 MUL                              R13 R14 R15
       31 GETUPVAL                         R14 0
       32 GETTABLEKS                       R14 R14 K14 ["SCROLL_BAR_SIZE"]
       34 ADD                              R12 R13 R14
       35 ADDK                             R11 R12 K11 [1]
       36 GETUPVAL                         R14 0
       37 GETTABLEKS                       R14 R14 K14 ["SCROLL_BAR_SIZE"]
       39 MULK                             R13 R14 K15 [2]
       40 GETTABLEKS                       R15 R0 K16 ["MaxValue"]
       42 NAMECALL                         R16 R0 K13 ["getDraggableSize"]
       44 CALL                             R16 1 1
       45 MUL                              R14 R15 R16
       46 ADD                              R12 R13 R14
       47 GETUPVAL                         R14 0
       48 GETTABLEKS                       R14 R14 K14 ["SCROLL_BAR_SIZE"]
       50 ADD                              R13 R11 R14
       51 SUB                              R15 R12 R11
       52 GETUPVAL                         R16 0
       53 GETTABLEKS                       R16 R16 K14 ["SCROLL_BAR_SIZE"]
       55 SUB                              R14 R15 R16
       56 GETTABLEKS                       R16 R0 K0 ["props"]
       58 GETTABLEKS                       R16 R16 K17 ["Direction"]
       60 GETUPVAL                         R17 1
       61 GETTABLEKS                       R17 R17 K18 ["HORIZONTAL"]
       63 JUMPIFEQ                         R16 R17 ; [+2]
       65 LOADB                            R15 0 +1
       66 LOADB                            R15 1
       67 LOADNIL                          R16
       68 JUMPIFNOT                        R10 ; [+3]
       69 GETTABLEKS                       R16 R4 K19 ["pressedColor"]
       71 JUMP                             ; [+6]
       72 JUMPIFNOT                        R9 ; [+3]
       73 GETTABLEKS                       R16 R4 K20 ["hoverColor"]
       75 JUMP                             ; [+2]
       76 GETTABLEKS                       R16 R4 K21 ["controlColor"]
       78 GETUPVAL                         R17 2
       79 GETTABLEKS                       R17 R17 K22 ["createElement"]
       81 LOADK                            R18 K23 ["ImageButton"]
       82 NEWTABLE                         R19 16 0
       84 SETTABLEKS                       R5 R19 K4 ["Position"]
       86 SETTABLEKS                       R6 R19 K5 ["Size"]
       88 GETTABLEKS                       R20 R4 K24 ["backgroundColor"]
       90 SETTABLEKS                       R20 R19 K25 ["BackgroundColor3"]
       92 GETTABLEKS                       R20 R4 K26 ["borderColor"]
       94 SETTABLEKS                       R20 R19 K27 ["BorderColor3"]
       96 SETTABLEKS                       R7 R19 K6 ["LayoutOrder"]
       98 SETTABLEKS                       R8 R19 K7 ["ZIndex"]
      100 LOADB                            R20 0
      101 SETTABLEKS                       R20 R19 K28 ["AutoButtonColor"]
      103 LOADN                            R20 1
      104 SETTABLEKS                       R20 R19 K29 ["ImageTransparency"]
      106 GETUPVAL                         R20 2
      107 GETTABLEKS                       R20 R20 K30 ["Event"]
      109 GETTABLEKS                       R20 R20 K31 ["InputBegan"]
      111 NEWCLOSURE                       R21 P0
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R14
      114 CAPTURE                          UPVAL U0
      115 CAPTURE                          VAL R15
      116 SETTABLE                         R21 R19 R20
      117 DUPTABLE                         R20 K38 [{"DragTarget", "MinZoomControl", "ScrollControl", "MaxZoomControl", "MinButton", "MaxButton"}]
      118 NAMECALL                         R21 R0 K9 ["isDragging"]
      120 CALL                             R21 1 1
      121 JUMPIFNOT                        R21 ; [+14]
      122 GETUPVAL                         R21 2
      123 GETTABLEKS                       R21 R21 K22 ["createElement"]
      125 GETUPVAL                         R22 3
      126 DUPTABLE                         R23 K41 [{"OnDragMoved", "OnDragEnded"}]
      127 GETTABLEKS                       R24 R0 K42 ["onInputChanged"]
      129 SETTABLEKS                       R24 R23 K39 ["OnDragMoved"]
      131 GETTABLEKS                       R24 R0 K43 ["onInputEnded"]
      133 SETTABLEKS                       R24 R23 K40 ["OnDragEnded"]
      135 CALL                             R21 2 1
      136 SETTABLEKS                       R21 R20 K32 ["DragTarget"]
      138 GETUPVAL                         R21 2
      139 GETTABLEKS                       R21 R21 K22 ["createElement"]
      141 LOADK                            R22 K44 ["ImageLabel"]
      142 NEWTABLE                         R23 16 0
      144 JUMPIFNOT                        R15 ; [+8]
      145 GETIMPORT                        R24 K47 [UDim2.new]
      147 LOADN                            R25 0
      148 MOVE                             R26 R11
      149 LOADN                            R27 0
      150 LOADN                            R28 0
      151 CALL                             R24 4 1
      152 JUMPIF                           R24 ; [+7]
      153 GETIMPORT                        R24 K47 [UDim2.new]
      155 LOADN                            R25 0
      156 LOADN                            R26 0
      157 LOADN                            R27 0
      158 MOVE                             R28 R11
      159 CALL                             R24 4 1
      160 SETTABLEKS                       R24 R23 K4 ["Position"]
      162 GETIMPORT                        R24 K47 [UDim2.new]
      164 LOADN                            R25 0
      165 GETUPVAL                         R26 0
      166 GETTABLEKS                       R26 R26 K14 ["SCROLL_BAR_SIZE"]
      168 LOADN                            R27 0
      169 GETUPVAL                         R28 0
      170 GETTABLEKS                       R28 R28 K14 ["SCROLL_BAR_SIZE"]
      172 CALL                             R24 4 1
      173 SETTABLEKS                       R24 R23 K5 ["Size"]
      175 GETTABLEKS                       R24 R4 K21 ["controlColor"]
      177 SETTABLEKS                       R24 R23 K25 ["BackgroundColor3"]
      179 GETTABLEKS                       R24 R4 K48 ["borderSize"]
      181 SETTABLEKS                       R24 R23 K49 ["BorderSizePixel"]
      183 GETTABLEKS                       R24 R4 K26 ["borderColor"]
      185 SETTABLEKS                       R24 R23 K27 ["BorderColor3"]
      187 GETTABLEKS                       R24 R4 K50 ["controlImage"]
      189 SETTABLEKS                       R24 R23 K51 ["Image"]
      191 JUMPIFNOT                        R15 ; [+2]
      192 LOADN                            R24 0
      193 JUMP                             ; [+1]
      194 LOADN                            R24 90
      195 SETTABLEKS                       R24 R23 K52 ["Rotation"]
      197 GETIMPORT                        R24 K56 [Enum.ScaleType.Fit]
      199 SETTABLEKS                       R24 R23 K54 ["ScaleType"]
      201 GETTABLEKS                       R24 R4 K57 ["imageColor"]
      203 SETTABLEKS                       R24 R23 K58 ["ImageColor3"]
      205 SETTABLEKS                       R8 R23 K7 ["ZIndex"]
      207 GETUPVAL                         R24 2
      208 GETTABLEKS                       R24 R24 K30 ["Event"]
      210 GETTABLEKS                       R24 R24 K31 ["InputBegan"]
      212 NEWCLOSURE                       R25 P1
      213 CAPTURE                          VAL R0
      214 SETTABLE                         R25 R23 R24
      215 CALL                             R21 2 1
      216 SETTABLEKS                       R21 R20 K33 ["MinZoomControl"]
      218 GETUPVAL                         R21 2
      219 GETTABLEKS                       R21 R21 K22 ["createElement"]
      221 LOADK                            R22 K59 ["Frame"]
      222 NEWTABLE                         R23 16 0
      224 JUMPIFNOT                        R15 ; [+8]
      225 GETIMPORT                        R24 K47 [UDim2.new]
      227 LOADN                            R25 0
      228 MOVE                             R26 R13
      229 LOADN                            R27 0
      230 LOADN                            R28 0
      231 CALL                             R24 4 1
      232 JUMPIF                           R24 ; [+7]
      233 GETIMPORT                        R24 K47 [UDim2.new]
      235 LOADN                            R25 0
      236 LOADN                            R26 0
      237 LOADN                            R27 0
      238 MOVE                             R28 R13
      239 CALL                             R24 4 1
      240 SETTABLEKS                       R24 R23 K4 ["Position"]
      242 JUMPIFNOT                        R15 ; [+8]
      243 GETIMPORT                        R24 K47 [UDim2.new]
      245 LOADN                            R25 0
      246 MOVE                             R26 R14
      247 LOADN                            R27 1
      248 LOADN                            R28 0
      249 CALL                             R24 4 1
      250 JUMPIF                           R24 ; [+7]
      251 GETIMPORT                        R24 K47 [UDim2.new]
      253 LOADN                            R25 1
      254 LOADN                            R26 0
      255 LOADN                            R27 0
      256 MOVE                             R28 R14
      257 CALL                             R24 4 1
      258 SETTABLEKS                       R24 R23 K5 ["Size"]
      260 SETTABLEKS                       R16 R23 K25 ["BackgroundColor3"]
      262 GETTABLEKS                       R24 R4 K26 ["borderColor"]
      264 SETTABLEKS                       R24 R23 K27 ["BorderColor3"]
      266 GETTABLEKS                       R24 R4 K48 ["borderSize"]
      268 SETTABLEKS                       R24 R23 K49 ["BorderSizePixel"]
      270 SETTABLEKS                       R8 R23 K7 ["ZIndex"]
      272 GETUPVAL                         R24 2
      273 GETTABLEKS                       R24 R24 K30 ["Event"]
      275 GETTABLEKS                       R24 R24 K31 ["InputBegan"]
      277 GETTABLEKS                       R25 R0 K60 ["onScrollBegan"]
      279 SETTABLE                         R25 R23 R24
      280 GETUPVAL                         R24 2
      281 GETTABLEKS                       R24 R24 K30 ["Event"]
      283 GETTABLEKS                       R24 R24 K61 ["MouseEnter"]
      285 GETTABLEKS                       R25 R0 K62 ["mouseEnter"]
      287 SETTABLE                         R25 R23 R24
      288 GETUPVAL                         R24 2
      289 GETTABLEKS                       R24 R24 K30 ["Event"]
      291 GETTABLEKS                       R24 R24 K63 ["MouseLeave"]
      293 GETTABLEKS                       R25 R0 K64 ["mouseLeave"]
      295 SETTABLE                         R25 R23 R24
      296 CALL                             R21 2 1
      297 SETTABLEKS                       R21 R20 K34 ["ScrollControl"]
      299 GETUPVAL                         R21 2
      300 GETTABLEKS                       R21 R21 K22 ["createElement"]
      302 LOADK                            R22 K44 ["ImageLabel"]
      303 NEWTABLE                         R23 16 0
      305 JUMPIFNOT                        R15 ; [+8]
      306 GETIMPORT                        R24 K47 [UDim2.new]
      308 LOADN                            R25 0
      309 MOVE                             R26 R12
      310 LOADN                            R27 0
      311 LOADN                            R28 0
      312 CALL                             R24 4 1
      313 JUMPIF                           R24 ; [+7]
      314 GETIMPORT                        R24 K47 [UDim2.new]
      316 LOADN                            R25 0
      317 LOADN                            R26 0
      318 LOADN                            R27 0
      319 MOVE                             R28 R12
      320 CALL                             R24 4 1
      321 SETTABLEKS                       R24 R23 K4 ["Position"]
      323 GETIMPORT                        R24 K47 [UDim2.new]
      325 LOADN                            R25 0
      326 GETUPVAL                         R26 0
      327 GETTABLEKS                       R26 R26 K14 ["SCROLL_BAR_SIZE"]
      329 LOADN                            R27 0
      330 GETUPVAL                         R28 0
      331 GETTABLEKS                       R28 R28 K14 ["SCROLL_BAR_SIZE"]
      333 CALL                             R24 4 1
      334 SETTABLEKS                       R24 R23 K5 ["Size"]
      336 GETTABLEKS                       R24 R4 K21 ["controlColor"]
      338 SETTABLEKS                       R24 R23 K25 ["BackgroundColor3"]
      340 GETTABLEKS                       R24 R4 K48 ["borderSize"]
      342 SETTABLEKS                       R24 R23 K49 ["BorderSizePixel"]
      344 GETTABLEKS                       R24 R4 K26 ["borderColor"]
      346 SETTABLEKS                       R24 R23 K27 ["BorderColor3"]
      348 GETTABLEKS                       R24 R4 K50 ["controlImage"]
      350 SETTABLEKS                       R24 R23 K51 ["Image"]
      352 JUMPIFNOT                        R15 ; [+2]
      353 LOADN                            R24 0
      354 JUMP                             ; [+1]
      355 LOADN                            R24 90
      356 SETTABLEKS                       R24 R23 K52 ["Rotation"]
      358 GETIMPORT                        R24 K56 [Enum.ScaleType.Fit]
      360 SETTABLEKS                       R24 R23 K54 ["ScaleType"]
      362 GETTABLEKS                       R24 R4 K57 ["imageColor"]
      364 SETTABLEKS                       R24 R23 K58 ["ImageColor3"]
      366 SETTABLEKS                       R8 R23 K7 ["ZIndex"]
      368 GETUPVAL                         R24 2
      369 GETTABLEKS                       R24 R24 K30 ["Event"]
      371 GETTABLEKS                       R24 R24 K31 ["InputBegan"]
      373 NEWCLOSURE                       R25 P2
      374 CAPTURE                          VAL R0
      375 SETTABLE                         R25 R23 R24
      376 CALL                             R21 2 1
      377 SETTABLEKS                       R21 R20 K35 ["MaxZoomControl"]
      379 GETUPVAL                         R21 2
      380 GETTABLEKS                       R21 R21 K22 ["createElement"]
      382 GETUPVAL                         R22 4
      383 DUPTABLE                         R23 K66 [{"Rotation", "OnActivated"}]
      384 JUMPIFNOT                        R15 ; [+2]
      385 LOADN                            R24 270
      386 JUMP                             ; [+1]
      387 LOADN                            R24 0
      388 SETTABLEKS                       R24 R23 K52 ["Rotation"]
      390 NEWCLOSURE                       R24 P3
      391 CAPTURE                          VAL R0
      392 CAPTURE                          UPVAL U0
      393 SETTABLEKS                       R24 R23 K65 ["OnActivated"]
      395 CALL                             R21 2 1
      396 SETTABLEKS                       R21 R20 K36 ["MinButton"]
      398 GETUPVAL                         R21 2
      399 GETTABLEKS                       R21 R21 K22 ["createElement"]
      401 GETUPVAL                         R22 4
      402 DUPTABLE                         R23 K68 [{"Rotation", "Position", "AnchorPoint", "OnActivated"}]
      403 JUMPIFNOT                        R15 ; [+2]
      404 LOADN                            R24 90
      405 JUMP                             ; [+1]
      406 LOADN                            R24 180
      407 SETTABLEKS                       R24 R23 K52 ["Rotation"]
      409 JUMPIFNOT                        R15 ; [+8]
      410 GETIMPORT                        R24 K47 [UDim2.new]
      412 LOADN                            R25 1
      413 LOADN                            R26 0
      414 LOADN                            R27 0
      415 LOADN                            R28 0
      416 CALL                             R24 4 1
      417 JUMPIF                           R24 ; [+7]
      418 GETIMPORT                        R24 K47 [UDim2.new]
      420 LOADN                            R25 0
      421 LOADN                            R26 0
      422 LOADN                            R27 1
      423 LOADN                            R28 0
      424 CALL                             R24 4 1
      425 SETTABLEKS                       R24 R23 K4 ["Position"]
      427 JUMPIFNOT                        R15 ; [+6]
      428 GETIMPORT                        R24 K70 [Vector2.new]
      430 LOADN                            R25 1
      431 LOADN                            R26 0
      432 CALL                             R24 2 1
      433 JUMPIF                           R24 ; [+5]
      434 GETIMPORT                        R24 K70 [Vector2.new]
      436 LOADN                            R25 0
      437 LOADN                            R26 1
      438 CALL                             R24 2 1
      439 SETTABLEKS                       R24 R23 K67 ["AnchorPoint"]
      441 NEWCLOSURE                       R24 P4
      442 CAPTURE                          VAL R0
      443 CAPTURE                          UPVAL U0
      444 SETTABLEKS                       R24 R23 K65 ["OnActivated"]
      446 CALL                             R21 2 1
      447 SETTABLEKS                       R21 R20 K37 ["MaxButton"]
      449 CALL                             R17 3 -1
      450 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["withContext"]
       34 GETTABLEKS                       R6 R2 K14 ["UI"]
       36 GETTABLEKS                       R6 R6 K15 ["DragListener"]
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R0 K9 ["Src"]
       42 GETTABLEKS                       R8 R8 K16 ["Components"]
       44 GETTABLEKS                       R8 R8 K17 ["ArrowButton"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R1 K18 ["PureComponent"]
       49 LOADK                            R10 K19 ["ZoomBar"]
       50 NAMECALL                         R8 R8 K20 ["extend"]
       52 CALL                             R8 2 1
       53 LOADK                            R9 K21 ["Horizontal"]
       54 SETTABLEKS                       R9 R8 K22 ["HORIZONTAL"]
       56 LOADK                            R9 K23 ["Vertical"]
       57 SETTABLEKS                       R9 R8 K24 ["VERTICAL"]
       59 DUPCLOSURE                       R9 K25 [PROTO_0]
       60 SETTABLEKS                       R9 R8 K26 ["calculateScrollAndZoom"]
       62 NEWCLOSURE                       R9 P1
       63 CAPTURE                          REF R8
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R9 R8 K27 ["getDraggableSize"]
       67 DUPCLOSURE                       R9 K28 [PROTO_2]
       68 SETTABLEKS                       R9 R8 K29 ["isDragging"]
       70 DUPCLOSURE                       R9 K30 [PROTO_3]
       71 SETTABLEKS                       R9 R8 K31 ["calculateMinAndMax"]
       73 NEWCLOSURE                       R9 P4
       74 CAPTURE                          VAL R3
       75 CAPTURE                          REF R8
       76 SETTABLEKS                       R9 R8 K32 ["init"]
       78 NEWCLOSURE                       R9 P5
       79 CAPTURE                          VAL R3
       80 CAPTURE                          REF R8
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R7
       84 SETTABLEKS                       R9 R8 K33 ["render"]
       86 MOVE                             R9 R5
       87 DUPTABLE                         R10 K35 [{"Stylizer"}]
       88 GETTABLEKS                       R11 R4 K34 ["Stylizer"]
       90 SETTABLEKS                       R11 R10 K34 ["Stylizer"]
       92 CALL                             R9 1 1
       93 MOVE                             R10 R8
       94 CALL                             R9 1 1
       95 MOVE                             R8 R9
       96 CLOSEUPVALS                      R8
       97 RETURN                           R8 1
