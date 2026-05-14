PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K3 [{"AbsoluteSize", "CanvasSize", "AbsolutePosition"}]
        2 GETTABLEKS                       R4 R0 K0 ["AbsoluteSize"]
        4 SETTABLEKS                       R4 R3 K0 ["AbsoluteSize"]
        6 GETTABLEKS                       R5 R0 K0 ["AbsoluteSize"]
        8 GETIMPORT                        R6 K6 [Vector2.new]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K7 ["props"]
       13 GETTABLEKS                       R7 R7 K8 ["TrackPadding"]
       15 LOADN                            R8 0
       16 CALL                             R6 2 1
       17 SUB                              R4 R5 R6
       18 SETTABLEKS                       R4 R3 K1 ["CanvasSize"]
       20 GETTABLEKS                       R4 R0 K2 ["AbsolutePosition"]
       22 SETTABLEKS                       R4 R3 K2 ["AbsolutePosition"]
       24 NAMECALL                         R1 R1 K9 ["setState"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"LeftSlope", "RightSlope"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["None"]
        4 SETTABLEKS                       R1 R0 K0 ["LeftSlope"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["None"]
        9 SETTABLEKS                       R1 R0 K1 ["RightSlope"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K4 ["props"]
       14 GETTABLEKS                       R1 R1 K5 ["SetSelectedKeyframeData"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"ChangingDuration"}]
        2 ORK                              R4 R0 K2 [False]
        3 SETTABLEKS                       R4 R3 K0 ["ChangingDuration"]
        5 NAMECALL                         R1 R1 K3 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setChangingDuration"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["SetPlayState"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["PLAY_STATE"]
        8 GETTABLEKS                       R1 R1 K3 ["Pause"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 DUPTABLE                         R2 K6 [{"ShowKeyframeMenu", "ShowTangentMenu"}]
       13 LOADB                            R3 1
       14 SETTABLEKS                       R3 R2 K4 ["ShowKeyframeMenu"]
       16 LOADB                            R3 0
       17 SETTABLEKS                       R3 R2 K5 ["ShowTangentMenu"]
       19 NAMECALL                         R0 R0 K7 ["setState"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"ShowKeyframeMenu"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["ShowKeyframeMenu"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["SetPlayState"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["PLAY_STATE"]
        8 GETTABLEKS                       R1 R1 K3 ["Pause"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 DUPTABLE                         R2 K6 [{"ShowKeyframeMenu", "ShowTangentMenu"}]
       13 LOADB                            R3 0
       14 SETTABLEKS                       R3 R2 K4 ["ShowKeyframeMenu"]
       16 LOADB                            R3 1
       17 SETTABLEKS                       R3 R2 K5 ["ShowTangentMenu"]
       19 NAMECALL                         R0 R0 K7 ["setState"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"ShowTangentMenu"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["ShowTangentMenu"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K1 [{"InterpolationMode"}]
        1 SETTABLEKS                       R0 R1 K0 ["InterpolationMode"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["props"]
        6 GETTABLEKS                       R2 R2 K3 ["SetSelectedKeyframeData"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["state"]
        6 GETTABLEKS                       R3 R2 K2 ["MinValue"]
        8 GETTABLEKS                       R4 R2 K3 ["MaxValue"]
       10 GETTABLEKS                       R5 R1 K4 ["VerticalScroll"]
       12 GETTABLEKS                       R6 R1 K5 ["VerticalZoom"]
       14 FASTCALL2K                       MATH_MIN R6 K6 ; [+5]
       16 MOVE                             R8 R6
       17 LOADK                            R9 K6 [0.99]
       18 GETIMPORT                        R7 K9 [math.min]
       20 CALL                             R7 2 1
       21 MOVE                             R6 R7
       22 SUBRK                            R8 R10 K6 [0.99]
       23 DIVRK                            R7 R10 K8 ["min"]
       24 GETTABLEKS                       R8 R0 K11 ["X"]
       26 GETTABLEKS                       R9 R0 K12 ["Y"]
       28 GETUPVAL                         R11 0
       29 GETTABLEKS                       R11 R11 K1 ["state"]
       31 GETTABLEKS                       R11 R11 K13 ["AbsolutePosition"]
       33 GETTABLEKS                       R11 R11 K11 ["X"]
       35 SUB                              R10 R8 R11
       36 GETUPVAL                         R12 0
       37 GETTABLEKS                       R12 R12 K0 ["props"]
       39 GETTABLEKS                       R12 R12 K15 ["TrackPadding"]
       41 DIVK                             R11 R12 K14 [2]
       42 SUB                              R8 R10 R11
       43 GETUPVAL                         R10 0
       44 GETTABLEKS                       R10 R10 K1 ["state"]
       46 GETTABLEKS                       R10 R10 K13 ["AbsolutePosition"]
       48 GETTABLEKS                       R10 R10 K12 ["Y"]
       50 SUB                              R9 R9 R10
       51 GETTABLEKS                       R10 R1 K16 ["StartTick"]
       53 GETTABLEKS                       R14 R1 K17 ["EndTick"]
       55 GETTABLEKS                       R15 R1 K16 ["StartTick"]
       57 SUB                              R13 R14 R15
       58 MUL                              R12 R8 R13
       59 GETUPVAL                         R13 0
       60 GETTABLEKS                       R13 R13 K1 ["state"]
       62 GETTABLEKS                       R13 R13 K18 ["CanvasSize"]
       64 GETTABLEKS                       R13 R13 K11 ["X"]
       66 DIV                              R11 R12 R13
       67 ADD                              R8 R10 R11
       68 SUB                              R11 R4 R3
       69 MUL                              R13 R5 R6
       70 GETUPVAL                         R17 0
       71 GETTABLEKS                       R17 R17 K1 ["state"]
       73 GETTABLEKS                       R17 R17 K18 ["CanvasSize"]
       75 GETTABLEKS                       R17 R17 K12 ["Y"]
       77 GETUPVAL                         R18 1
       78 GETTABLEKS                       R18 R18 K19 ["CURVE_CANVAS_PADDING"]
       80 MUL                              R16 R17 R18
       81 SUB                              R15 R9 R16
       82 GETUPVAL                         R18 0
       83 GETTABLEKS                       R18 R18 K1 ["state"]
       85 GETTABLEKS                       R18 R18 K18 ["CanvasSize"]
       87 GETTABLEKS                       R18 R18 K12 ["Y"]
       89 LOADN                            R21 2
       90 GETUPVAL                         R22 1
       91 GETTABLEKS                       R22 R22 K19 ["CURVE_CANVAS_PADDING"]
       93 MUL                              R20 R21 R22
       94 SUBRK                            R19 R10 K20 ["Vector2"]
       95 MUL                              R17 R18 R19
       96 MUL                              R16 R17 R7
       97 DIV                              R14 R15 R16
       98 ADD                              R12 R13 R14
       99 MUL                              R10 R11 R12
      100 SUB                              R9 R4 R10
      101 GETIMPORT                        R10 K22 [Vector2.new]
      103 MOVE                             R11 R8
      104 MOVE                             R12 R9
      105 CALL                             R10 2 -1
      106 RETURN                           R10 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setChangingDuration"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["parseTime"]
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["props"]
       11 GETTABLEKS                       R3 R3 K3 ["FrameRate"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K2 ["props"]
       16 GETTABLEKS                       R4 R4 K4 ["TimelineUnit"]
       18 CALL                             R1 3 1
       19 JUMPIFEQKNIL                     R1 ; [+25]
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K5 ["getSelectionBounds"]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K2 ["props"]
       27 GETTABLEKS                       R3 R3 K6 ["AnimationData"]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K2 ["props"]
       32 GETTABLEKS                       R4 R4 K7 ["SelectedKeyframes"]
       34 CALL                             R2 2 2
       35 SUB                              R4 R3 R2
       36 DIV                              R5 R1 R4
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K2 ["props"]
       40 GETTABLEKS                       R6 R6 K8 ["ScaleSelectedKeyframes"]
       42 MOVE                             R7 R2
       43 MOVE                             R8 R5
       44 CALL                             R6 2 0
       45 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["HasDragWaypoint"]
        5 JUMPIF                           R0 ; [+14]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["props"]
        9 GETTABLEKS                       R0 R0 K3 ["AddWaypoint"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 0
       13 DUPTABLE                         R2 K4 [{"HasDragWaypoint"}]
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K1 ["HasDragWaypoint"]
       17 NAMECALL                         R0 R0 K5 ["setState"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["SelectedKeyframes"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K2 ["AnimationData"]
       10 GETUPVAL                         R3 0
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["new"]
       14 MOVE                             R5 R2
       15 MOVE                             R6 R1
       16 MOVE                             R7 R0
       17 LOADNIL                          R8
       18 CALL                             R4 4 1
       19 SETTABLEKS                       R4 R3 K4 ["dragContext"]
       21 GETUPVAL                         R3 0
       22 DUPTABLE                         R5 K8 [{"DraggingScale", "DragTick", "HasDragWaypoint"}]
       23 LOADB                            R6 1
       24 SETTABLEKS                       R6 R5 K5 ["DraggingScale"]
       26 SETTABLEKS                       R0 R5 K6 ["DragTick"]
       28 LOADB                            R6 0
       29 SETTABLEKS                       R6 R5 K7 ["HasDragWaypoint"]
       31 NAMECALL                         R3 R3 K9 ["setState"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toCurveSpace"]
        3 GETTABLEKS                       R2 R0 K1 ["Position"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["getNearestTick"]
        9 GETTABLEKS                       R3 R1 K3 ["X"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K4 ["props"]
       15 GETTABLEKS                       R3 R3 K5 ["SnapMode"]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K6 ["SNAP_MODES"]
       20 GETTABLEKS                       R4 R4 K7 ["None"]
       22 JUMPIFEQ                         R3 R4 ; [+12]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K8 ["getNearestFrame"]
       27 MOVE                             R4 R2
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K4 ["props"]
       31 GETTABLEKS                       R5 R5 K9 ["FrameRate"]
       33 CALL                             R3 2 1
       34 MOVE                             R2 R3
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K10 ["state"]
       38 GETTABLEKS                       R3 R3 K11 ["DragTick"]
       40 JUMPIFEQ                         R3 R2 ; [+47]
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K12 ["dragContext"]
       45 JUMPIFNOT                        R3 ; [+42]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R3 R3 K13 ["addDragWaypoint"]
       49 CALL                             R3 0 0
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K12 ["dragContext"]
       53 MOVE                             R5 R2
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K4 ["props"]
       57 GETTABLEKS                       R6 R6 K14 ["StartTick"]
       59 NAMECALL                         R3 R3 K15 ["scaleKeyframes"]
       61 CALL                             R3 3 0
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R3 R3 K4 ["props"]
       65 GETTABLEKS                       R3 R3 K16 ["ScaleSelectedKeyframes"]
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R4 R4 K12 ["dragContext"]
       70 GETTABLEKS                       R4 R4 K17 ["pivotTick"]
       72 GETUPVAL                         R5 0
       73 GETTABLEKS                       R5 R5 K12 ["dragContext"]
       75 GETTABLEKS                       R5 R5 K18 ["scale"]
       77 GETUPVAL                         R6 0
       78 GETTABLEKS                       R6 R6 K12 ["dragContext"]
       80 CALL                             R3 3 0
       81 GETUPVAL                         R3 0
       82 DUPTABLE                         R5 K19 [{"DragTick"}]
       83 SETTABLEKS                       R2 R5 K11 ["DragTick"]
       85 NAMECALL                         R3 R3 K20 ["setState"]
       87 CALL                             R3 2 0
       88 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["dragContext"]
        4 GETUPVAL                         R0 0
        5 DUPTABLE                         R2 K4 [{"DraggingScale", "DragTick", "HasDragWaypoint"}]
        6 LOADB                            R3 0
        7 SETTABLEKS                       R3 R2 K1 ["DraggingScale"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K5 ["None"]
       12 SETTABLEKS                       R3 R2 K2 ["DragTick"]
       14 LOADB                            R3 0
       15 SETTABLEKS                       R3 R2 K3 ["HasDragWaypoint"]
       17 NAMECALL                         R0 R0 K6 ["setState"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["ShowKeyframeMenu"]
        5 JUMPIF                           R1 ; [+32]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["state"]
        9 GETTABLEKS                       R1 R1 K2 ["ShowTangentMenu"]
       11 JUMPIF                           R1 ; [+26]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K3 ["props"]
       15 GETTABLEKS                       R1 R1 K4 ["ReadOnly"]
       17 JUMPIF                           R1 ; [+20]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K5 ["updateSelectDragStart"]
       21 GETTABLEKS                       R2 R0 K6 ["Position"]
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K7 ["updateSelectDragEnd"]
       27 GETTABLEKS                       R2 R0 K6 ["Position"]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 0
       31 DUPTABLE                         R3 K9 [{"DraggingSelection"}]
       32 LOADB                            R4 1
       33 SETTABLEKS                       R4 R3 K8 ["DraggingSelection"]
       35 NAMECALL                         R1 R1 K10 ["setState"]
       37 CALL                             R1 2 0
       38 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["props"]
        3 GETTABLEKS                       R5 R5 K1 ["AddWaypoint"]
        5 CALL                             R5 0 0
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K0 ["props"]
        9 GETTABLEKS                       R5 R5 K2 ["SetKeyframeTangent"]
       11 MOVE                             R6 R0
       12 MOVE                             R7 R1
       13 MOVE                             R8 R2
       14 MOVE                             R9 R3
       15 MOVE                             R10 R4
       16 JUMPIF                           R10 ; [+3]
       17 GETUPVAL                         R10 1
       18 GETTABLEKS                       R10 R10 K3 ["None"]
       20 CALL                             R5 5 0
       21 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["props"]
        6 GETTABLEKS                       R3 R0 K2 ["Position"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["updateSelectDragEnd"]
       11 MOVE                             R5 R3
       12 CALL                             R4 1 0
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K4 ["selectDragStart"]
       16 NAMECALL                         R4 R4 K5 ["getValue"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R1 K6 ["Tracks"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K7 ["toCurveSpace"]
       24 GETIMPORT                        R7 K10 [Vector2.new]
       26 GETTABLEKS                       R9 R3 K11 ["X"]
       28 GETTABLEKS                       R10 R4 K11 ["X"]
       30 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       32 GETIMPORT                        R8 K14 [math.min]
       34 CALL                             R8 2 1
       35 GETTABLEKS                       R10 R3 K15 ["Y"]
       37 GETTABLEKS                       R11 R4 K15 ["Y"]
       39 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       41 GETIMPORT                        R9 K17 [math.max]
       43 CALL                             R9 2 1
       44 CALL                             R7 2 -1
       45 CALL                             R6 -1 1
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K7 ["toCurveSpace"]
       49 GETIMPORT                        R8 K10 [Vector2.new]
       51 GETTABLEKS                       R10 R3 K11 ["X"]
       53 GETTABLEKS                       R11 R4 K11 ["X"]
       55 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       57 GETIMPORT                        R9 K17 [math.max]
       59 CALL                             R9 2 1
       60 GETTABLEKS                       R11 R3 K15 ["Y"]
       62 GETTABLEKS                       R12 R4 K15 ["Y"]
       64 FASTCALL2                        MATH_MIN R11 R12 ; [+3]
       66 GETIMPORT                        R10 K14 [math.min]
       68 CALL                             R10 2 1
       69 CALL                             R8 2 -1
       70 CALL                             R7 -1 1
       71 NEWTABLE                         R8 0 0
       73 GETIMPORT                        R9 K19 [ipairs]
       75 MOVE                             R10 R5
       76 CALL                             R9 1 3
       77 FORGPREP_INEXT                   R9
       78 GETTABLEKS                       R14 R13 K20 ["Instance"]
       80 GETIMPORT                        R15 K22 [pairs]
       82 GETTABLEKS                       R16 R13 K23 ["Data"]
       84 CALL                             R15 1 3
       85 FORGPREP_NEXT                    R15
       86 LOADB                            R20 0
       87 GETTABLEKS                       R21 R13 K24 ["Type"]
       89 GETUPVAL                         R22 1
       90 GETTABLEKS                       R22 R22 K25 ["TRACK_TYPES"]
       92 GETTABLEKS                       R22 R22 K26 ["Quaternion"]
       94 JUMPIFNOTEQ                      R21 R22 ; [+27]
       96 GETTABLEKS                       R22 R6 K15 ["Y"]
       98 LOADN                            R23 1
       99 JUMPIFNOTLE                      R22 R23 ; [+7]
      101 LOADB                            R21 1
      102 LOADN                            R22 1
      103 GETTABLEKS                       R23 R7 K15 ["Y"]
      105 JUMPIFLE                         R22 R23 ; [+14]
      107 LOADB                            R21 0
      108 GETTABLEKS                       R22 R6 K15 ["Y"]
      110 LOADN                            R23 0
      111 JUMPIFNOTLE                      R22 R23 ; [+8]
      113 LOADN                            R22 0
      114 GETTABLEKS                       R23 R7 K15 ["Y"]
      116 JUMPIFLE                         R22 R23 ; [+2]
      118 LOADB                            R21 0 +1
      119 LOADB                            R21 1
      120 MOVE                             R20 R21
      121 JUMP                             ; [+16]
      122 LOADB                            R21 0
      123 GETTABLEKS                       R22 R19 K27 ["Value"]
      125 GETTABLEKS                       R23 R6 K15 ["Y"]
      127 JUMPIFNOTLE                      R23 R22 ; [+9]
      129 GETTABLEKS                       R22 R19 K27 ["Value"]
      131 GETTABLEKS                       R23 R7 K15 ["Y"]
      133 JUMPIFLE                         R22 R23 ; [+2]
      135 LOADB                            R21 0 +1
      136 LOADB                            R21 1
      137 MOVE                             R20 R21
      138 GETTABLEKS                       R21 R6 K11 ["X"]
      140 JUMPIFNOTLE                      R21 R18 ; [+53]
      142 GETTABLEKS                       R21 R7 K11 ["X"]
      144 JUMPIFNOTLE                      R18 R21 ; [+49]
      146 JUMPIFNOT                        R20 ; [+47]
      147 GETTABLE                         R21 R8 R14
      148 JUMPIF                           R21 ; [+3]
      149 NEWTABLE                         R21 0 0
      151 SETTABLE                         R21 R8 R14
      152 GETTABLE                         R21 R8 R14
      153 LOADNIL                          R22
      154 GETIMPORT                        R23 K19 [ipairs]
      156 GETTABLEKS                       R24 R13 K28 ["Path"]
      158 CALL                             R23 1 3
      159 FORGPREP_INEXT                   R23
      160 JUMPIFNOT                        R22 ; [+9]
      161 GETTABLEKS                       R28 R22 K29 ["Components"]
      163 JUMPIF                           R28 ; [+2]
      164 NEWTABLE                         R28 0 0
      166 SETTABLEKS                       R28 R22 K29 ["Components"]
      168 GETTABLEKS                       R21 R22 K29 ["Components"]
      170 JUMPIFNOT                        R21 ; [+6]
      171 GETTABLE                         R28 R21 R27
      172 JUMPIF                           R28 ; [+2]
      173 NEWTABLE                         R28 0 0
      175 SETTABLE                         R28 R21 R27
      176 GETTABLE                         R22 R21 R27
      177 FORGLOOP                         R23 2 [inext] ; [-18]
      179 JUMPIFNOT                        R22 ; [+14]
      180 GETTABLEKS                       R23 R22 K30 ["Selection"]
      182 JUMPIFNOT                        R23 ; [+5]
      183 GETTABLEKS                       R23 R22 K30 ["Selection"]
      185 LOADB                            R24 1
      186 SETTABLE                         R24 R23 R18
      187 JUMP                             ; [+6]
      188 NEWTABLE                         R23 1 0
      190 LOADB                            R24 1
      191 SETTABLE                         R24 R23 R18
      192 SETTABLEKS                       R23 R22 K30 ["Selection"]
      194 FORGLOOP                         R15 2 ; [-109]
      196 FORGLOOP                         R9 2 [inext] ; [-119]
      198 GETTABLEKS                       R9 R2 K31 ["SetSelectedKeyframes"]
      200 MOVE                             R10 R8
      201 CALL                             R9 1 0
      202 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"DraggingSelection"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["DraggingSelection"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K4 ["updateSelectDragStart"]
       13 LOADNIL                          R1
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K5 ["updateSelectDragEnd"]
       18 LOADNIL                          R1
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["SelectedKeyframes"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["props"]
        8 GETTABLEKS                       R3 R3 K2 ["AnimationData"]
       10 GETUPVAL                         R4 0
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K3 ["new"]
       14 MOVE                             R6 R3
       15 MOVE                             R7 R2
       16 MOVE                             R8 R0
       17 MOVE                             R9 R1
       18 CALL                             R5 4 1
       19 SETTABLEKS                       R5 R4 K4 ["dragContext"]
       21 GETUPVAL                         R4 0
       22 DUPTABLE                         R6 K8 [{"Dragging", "DragTick", "HasDragWaypoint"}]
       23 LOADB                            R7 1
       24 SETTABLEKS                       R7 R6 K5 ["Dragging"]
       26 SETTABLEKS                       R0 R6 K6 ["DragTick"]
       28 LOADB                            R7 0
       29 SETTABLEKS                       R7 R6 K7 ["HasDragWaypoint"]
       31 NAMECALL                         R4 R4 K9 ["setState"]
       33 CALL                             R4 2 0
       34 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETTABLEKS                       R4 R4 K1 ["AnimationData"]
        5 GETUPVAL                         R5 0
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K2 ["newTangentContext"]
        9 MOVE                             R7 R4
       10 MOVE                             R8 R0
       11 MOVE                             R9 R1
       12 MOVE                             R10 R2
       13 MOVE                             R11 R3
       14 CALL                             R6 5 1
       15 SETTABLEKS                       R6 R5 K3 ["dragContext"]
       17 GETUPVAL                         R5 0
       18 DUPTABLE                         R7 K7 [{"Dragging", "DragTick", "HasDragWaypoint"}]
       19 LOADB                            R8 1
       20 SETTABLEKS                       R8 R7 K4 ["Dragging"]
       22 SETTABLEKS                       R2 R7 K5 ["DragTick"]
       24 LOADB                            R8 0
       25 SETTABLEKS                       R8 R7 K6 ["HasDragWaypoint"]
       27 NAMECALL                         R5 R5 K8 ["setState"]
       29 CALL                             R5 2 0
       30 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["dragContext"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["toCurveSpace"]
        8 GETTABLEKS                       R3 R0 K2 ["Position"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R2 K3 ["X"]
       13 GETTABLEKS                       R4 R2 K4 ["y"]
       15 GETTABLEKS                       R5 R1 K5 ["dragMode"]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K6 ["DRAG_MODE"]
       20 GETTABLEKS                       R6 R6 K7 ["Keyframe"]
       22 JUMPIFNOTEQ                      R5 R6 ; [+84]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K8 ["getNearestTick"]
       27 MOVE                             R6 R3
       28 CALL                             R5 1 1
       29 MOVE                             R3 R5
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K9 ["props"]
       33 GETTABLEKS                       R5 R5 K10 ["SnapMode"]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K11 ["SNAP_MODES"]
       38 GETTABLEKS                       R6 R6 K12 ["None"]
       40 JUMPIFEQ                         R5 R6 ; [+12]
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R5 R5 K13 ["getNearestFrame"]
       45 MOVE                             R6 R3
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K9 ["props"]
       49 GETTABLEKS                       R7 R7 K14 ["FrameRate"]
       51 CALL                             R5 2 1
       52 MOVE                             R3 R5
       53 GETTABLEKS                       R5 R1 K15 ["newTick"]
       55 JUMPIFNOTEQ                      R3 R5 ; [+5]
       57 GETTABLEKS                       R5 R1 K16 ["newValue"]
       59 JUMPIFEQ                         R4 R5 ; [+131]
       61 GETUPVAL                         R5 0
       62 GETTABLEKS                       R5 R5 K17 ["addDragWaypoint"]
       64 CALL                             R5 0 0
       65 MOVE                             R7 R3
       66 MOVE                             R8 R4
       67 NAMECALL                         R5 R1 K18 ["moveKeyframes"]
       69 CALL                             R5 3 0
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R5 R5 K9 ["props"]
       73 GETTABLEKS                       R5 R5 K19 ["MoveSelectedKeyframes"]
       75 GETUPVAL                         R6 0
       76 GETTABLEKS                       R6 R6 K0 ["dragContext"]
       78 GETTABLEKS                       R6 R6 K20 ["pivotTick"]
       80 GETUPVAL                         R7 0
       81 GETTABLEKS                       R7 R7 K0 ["dragContext"]
       83 GETTABLEKS                       R7 R7 K15 ["newTick"]
       85 GETUPVAL                         R8 0
       86 GETTABLEKS                       R8 R8 K0 ["dragContext"]
       88 GETTABLEKS                       R8 R8 K21 ["pivotValue"]
       90 GETUPVAL                         R9 0
       91 GETTABLEKS                       R9 R9 K0 ["dragContext"]
       93 GETTABLEKS                       R9 R9 K16 ["newValue"]
       95 GETUPVAL                         R10 0
       96 GETTABLEKS                       R10 R10 K0 ["dragContext"]
       98 CALL                             R5 5 0
       99 GETUPVAL                         R5 0
      100 DUPTABLE                         R7 K23 [{"DragTick"}]
      101 SETTABLEKS                       R3 R7 K22 ["DragTick"]
      103 NAMECALL                         R5 R5 K24 ["setState"]
      105 CALL                             R5 2 0
      106 RETURN                           R0 0
      107 GETTABLEKS                       R5 R1 K5 ["dragMode"]
      109 GETUPVAL                         R6 1
      110 GETTABLEKS                       R6 R6 K6 ["DRAG_MODE"]
      112 GETTABLEKS                       R6 R6 K25 ["Tangent"]
      114 JUMPIFNOTEQ                      R5 R6 ; [+76]
      116 GETTABLEKS                       R5 R1 K26 ["value"]
      118 GETTABLEKS                       R6 R1 K27 ["side"]
      120 GETUPVAL                         R7 1
      121 GETTABLEKS                       R7 R7 K28 ["SLOPES"]
      123 GETTABLEKS                       R7 R7 K29 ["Left"]
      125 JUMPIFNOTEQ                      R6 R7 ; [+17]
      127 GETTABLEKS                       R6 R1 K30 ["tck"]
      129 JUMPIFNOTLE                      R6 R3 ; [+2]
      131 RETURN                           R0 0
      132 GETTABLEKS                       R6 R1 K31 ["trackType"]
      134 GETUPVAL                         R7 1
      135 GETTABLEKS                       R7 R7 K32 ["TRACK_TYPES"]
      137 GETTABLEKS                       R7 R7 K33 ["Quaternion"]
      139 JUMPIFNOTEQ                      R6 R7 ; [+27]
      141 LOADN                            R5 1
      142 JUMP                             ; [+24]
      143 GETTABLEKS                       R6 R1 K27 ["side"]
      145 GETUPVAL                         R7 1
      146 GETTABLEKS                       R7 R7 K28 ["SLOPES"]
      148 GETTABLEKS                       R7 R7 K34 ["Right"]
      150 JUMPIFNOTEQ                      R6 R7 ; [+16]
      152 GETTABLEKS                       R6 R1 K30 ["tck"]
      154 JUMPIFNOTLE                      R3 R6 ; [+2]
      156 RETURN                           R0 0
      157 GETTABLEKS                       R6 R1 K31 ["trackType"]
      159 GETUPVAL                         R7 1
      160 GETTABLEKS                       R7 R7 K32 ["TRACK_TYPES"]
      162 GETTABLEKS                       R7 R7 K33 ["Quaternion"]
      164 JUMPIFNOTEQ                      R6 R7 ; [+2]
      166 LOADN                            R5 0
      167 SUB                              R7 R4 R5
      168 GETTABLEKS                       R9 R1 K30 ["tck"]
      170 SUB                              R8 R3 R9
      171 DIV                              R6 R7 R8
      172 GETUPVAL                         R7 0
      173 GETTABLEKS                       R7 R7 K17 ["addDragWaypoint"]
      175 CALL                             R7 0 0
      176 GETUPVAL                         R7 0
      177 GETTABLEKS                       R7 R7 K9 ["props"]
      179 GETTABLEKS                       R7 R7 K35 ["SetKeyframeTangent"]
      181 GETTABLEKS                       R8 R1 K36 ["instance"]
      183 GETTABLEKS                       R9 R1 K37 ["path"]
      185 GETTABLEKS                       R10 R1 K30 ["tck"]
      187 GETTABLEKS                       R11 R1 K27 ["side"]
      189 MOVE                             R12 R6
      190 CALL                             R7 5 0
      191 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["mouseDown"]
        4 GETUPVAL                         R0 0
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K1 ["dragContext"]
        8 GETUPVAL                         R0 0
        9 DUPTABLE                         R2 K5 [{"Dragging", "DragTick", "HasDragWaypoint"}]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K2 ["Dragging"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K6 ["None"]
       16 SETTABLEKS                       R3 R2 K3 ["DragTick"]
       18 LOADB                            R3 0
       19 SETTABLEKS                       R3 R2 K4 ["HasDragWaypoint"]
       21 NAMECALL                         R0 R0 K7 ["setState"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["props"]
        4 GETTABLEKS                       R4 R4 K1 ["SelectedKeyframes"]
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R3 ; [+11]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K0 ["props"]
       11 GETTABLEKS                       R3 R3 K2 ["SelectKeyframeRange"]
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 MOVE                             R6 R2
       16 MOVE                             R7 R2
       17 LOADB                            R8 0
       18 CALL                             R3 5 0
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K3 ["showKeyframeMenu"]
       22 CALL                             R3 0 0
       23 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["props"]
        3 GETTABLEKS                       R5 R5 K1 ["ReadOnly"]
        5 JUMPIF                           R5 ; [+38]
        6 GETTABLEKS                       R5 R4 K2 ["UserInputType"]
        8 GETIMPORT                        R6 K5 [Enum.UserInputType.MouseButton1]
       10 JUMPIFNOTEQ                      R5 R6 ; [+33]
       12 GETUPVAL                         R5 0
       13 LOADB                            R6 1
       14 SETTABLEKS                       R6 R5 K6 ["mouseDown"]
       16 JUMPIFNOT                        R3 ; [+14]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K7 ["isMultiSelecting"]
       20 JUMPIFNOT                        R5 ; [+23]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K0 ["props"]
       24 GETTABLEKS                       R5 R5 K8 ["DeselectKeyframe"]
       26 MOVE                             R6 R0
       27 MOVE                             R7 R1
       28 MOVE                             R8 R2
       29 CALL                             R5 3 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K0 ["props"]
       34 GETTABLEKS                       R5 R5 K9 ["SelectKeyframeRange"]
       36 MOVE                             R6 R0
       37 MOVE                             R7 R1
       38 MOVE                             R8 R2
       39 MOVE                             R9 R2
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R10 R10 K7 ["isMultiSelecting"]
       43 CALL                             R5 5 0
       44 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R4 R3 K0 ["UserInputType"]
        2 GETIMPORT                        R5 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R4 R5 ; [+21]
        6 JUMPIFNOT                        R2 ; [+19]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K4 ["mouseDown"]
       10 JUMPIFNOT                        R4 ; [+15]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K5 ["onKeyframeDragStarted"]
       14 MOVE                             R5 R0
       15 MOVE                             R6 R1
       16 CALL                             R4 2 0
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K6 ["onDragMoved"]
       20 MOVE                             R5 R3
       21 CALL                             R4 1 0
       22 GETUPVAL                         R4 0
       23 LOADB                            R5 0
       24 SETTABLEKS                       R5 R4 K4 ["mouseDown"]
       26 GETTABLEKS                       R4 R3 K0 ["UserInputType"]
       28 GETIMPORT                        R5 K8 [Enum.UserInputType.MouseButton1]
       30 JUMPIFNOTEQ                      R4 R5 ; [+5]
       32 GETUPVAL                         R4 0
       33 LOADB                            R5 0
       34 SETTABLEKS                       R5 R4 K4 ["mouseDown"]
       36 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETTABLEKS                       R4 R4 K1 ["SetRightClickContextInfo"]
        5 DUPTABLE                         R5 K6 [{"InstanceName", "Path", "Tick", "Side"}]
        6 SETTABLEKS                       R0 R5 K2 ["InstanceName"]
        8 SETTABLEKS                       R1 R5 K3 ["Path"]
       10 SETTABLEKS                       R2 R5 K4 ["Tick"]
       12 SETTABLEKS                       R3 R5 K5 ["Side"]
       14 CALL                             R4 1 0
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K7 ["showTangentMenu"]
       18 CALL                             R4 0 0
       19 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["ReadOnly"]
        5 JUMPIF                           R1 ; [+10]
        6 GETTABLEKS                       R1 R0 K2 ["UserInputType"]
        8 GETIMPORT                        R2 K5 [Enum.UserInputType.MouseButton1]
       10 JUMPIFNOTEQ                      R1 R2 ; [+5]
       12 GETUPVAL                         R1 0
       13 LOADB                            R2 1
       14 SETTABLEKS                       R2 R1 K6 ["mouseDown"]
       16 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R5 R4 K0 ["UserInputType"]
        2 GETIMPORT                        R6 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R5 R6 ; [+22]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K4 ["mouseDown"]
        9 JUMPIFNOT                        R5 ; [+17]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K5 ["onTangentDragStarted"]
       13 MOVE                             R6 R0
       14 MOVE                             R7 R1
       15 MOVE                             R8 R2
       16 MOVE                             R9 R3
       17 CALL                             R5 4 0
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K6 ["onDragMoved"]
       21 MOVE                             R6 R4
       22 CALL                             R5 1 0
       23 GETUPVAL                         R5 0
       24 LOADB                            R6 0
       25 SETTABLEKS                       R6 R5 K4 ["mouseDown"]
       27 GETTABLEKS                       R5 R4 K0 ["UserInputType"]
       29 GETIMPORT                        R6 K8 [Enum.UserInputType.MouseButton1]
       31 JUMPIFNOTEQ                      R5 R6 ; [+5]
       33 GETUPVAL                         R5 0
       34 LOADB                            R6 0
       35 SETTABLEKS                       R6 R5 K4 ["mouseDown"]
       37 RETURN                           R0 0

PROTO_30:
        0 DUPTABLE                         R1 K14 [{"AbsolutePosition", "AbsoluteSize", "CanvasSize", "ChangingDuration", "Dragging", "DraggingScale", "DraggingSelection", "DragTick", "HasDragWaypoint", "MinValue", "MaxValue", "ShowKeyframeMenu", "ShotTangentMenu", "Tracks"}]
        1 GETIMPORT                        R2 K17 [Vector2.new]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R1 K0 ["AbsolutePosition"]
        6 GETIMPORT                        R2 K17 [Vector2.new]
        8 CALL                             R2 0 1
        9 SETTABLEKS                       R2 R1 K1 ["AbsoluteSize"]
       11 GETIMPORT                        R2 K17 [Vector2.new]
       13 CALL                             R2 0 1
       14 SETTABLEKS                       R2 R1 K2 ["CanvasSize"]
       16 LOADB                            R2 0
       17 SETTABLEKS                       R2 R1 K3 ["ChangingDuration"]
       19 LOADB                            R2 0
       20 SETTABLEKS                       R2 R1 K4 ["Dragging"]
       22 LOADB                            R2 0
       23 SETTABLEKS                       R2 R1 K5 ["DraggingScale"]
       25 LOADB                            R2 0
       26 SETTABLEKS                       R2 R1 K6 ["DraggingSelection"]
       28 LOADB                            R2 0
       29 SETTABLEKS                       R2 R1 K7 ["DragTick"]
       31 LOADB                            R2 0
       32 SETTABLEKS                       R2 R1 K8 ["HasDragWaypoint"]
       34 LOADN                            R2 0
       35 SETTABLEKS                       R2 R1 K9 ["MinValue"]
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K18 ["CURVE_CANVAS_MIN_RANGE"]
       40 SETTABLEKS                       R2 R1 K10 ["MaxValue"]
       42 LOADB                            R2 0
       43 SETTABLEKS                       R2 R1 K11 ["ShowKeyframeMenu"]
       45 LOADB                            R2 0
       46 SETTABLEKS                       R2 R1 K12 ["ShotTangentMenu"]
       48 NEWTABLE                         R2 0 0
       50 SETTABLEKS                       R2 R1 K13 ["Tracks"]
       52 SETTABLEKS                       R1 R0 K19 ["state"]
       54 LOADB                            R1 0
       55 SETTABLEKS                       R1 R0 K20 ["isMounted"]
       57 LOADNIL                          R1
       58 SETTABLEKS                       R1 R0 K21 ["dragContext"]
       60 LOADB                            R1 0
       61 SETTABLEKS                       R1 R0 K22 ["isMultiSelecting"]
       63 LOADNIL                          R1
       64 SETTABLEKS                       R1 R0 K23 ["dragMode"]
       66 LOADB                            R1 0
       67 SETTABLEKS                       R1 R0 K24 ["mouseDown"]
       69 LOADB                            R1 0
       70 SETTABLEKS                       R1 R0 K25 ["mouseDownInCanvas"]
       72 LOADB                            R1 0
       73 SETTABLEKS                       R1 R0 K26 ["ctrlHeld"]
       75 GETUPVAL                         R1 1
       76 GETTABLEKS                       R1 R1 K27 ["createBinding"]
       78 LOADNIL                          R2
       79 CALL                             R1 1 2
       80 SETTABLEKS                       R1 R0 K28 ["selectDragStart"]
       82 SETTABLEKS                       R2 R0 K29 ["updateSelectDragStart"]
       84 GETUPVAL                         R1 1
       85 GETTABLEKS                       R1 R1 K27 ["createBinding"]
       87 LOADNIL                          R2
       88 CALL                             R1 1 2
       89 SETTABLEKS                       R1 R0 K30 ["selectDragEnd"]
       91 SETTABLEKS                       R2 R0 K31 ["updateSelectDragEnd"]
       93 NEWCLOSURE                       R1 P0
       94 CAPTURE                          VAL R0
       95 SETTABLEKS                       R1 R0 K32 ["recalculateExtents"]
       97 NEWCLOSURE                       R1 P1
       98 CAPTURE                          UPVAL U2
       99 CAPTURE                          VAL R0
      100 SETTABLEKS                       R1 R0 K33 ["onClearTangentsSelected"]
      102 NEWCLOSURE                       R1 P2
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R1 R0 K34 ["setChangingDuration"]
      106 NEWCLOSURE                       R1 P3
      107 CAPTURE                          VAL R0
      108 SETTABLEKS                       R1 R0 K35 ["onChangeDuration"]
      110 NEWCLOSURE                       R1 P4
      111 CAPTURE                          VAL R0
      112 CAPTURE                          UPVAL U0
      113 SETTABLEKS                       R1 R0 K36 ["showKeyframeMenu"]
      115 NEWCLOSURE                       R1 P5
      116 CAPTURE                          VAL R0
      117 SETTABLEKS                       R1 R0 K37 ["hideKeyframeMenu"]
      119 NEWCLOSURE                       R1 P6
      120 CAPTURE                          VAL R0
      121 CAPTURE                          UPVAL U0
      122 SETTABLEKS                       R1 R0 K38 ["showTangentMenu"]
      124 NEWCLOSURE                       R1 P7
      125 CAPTURE                          VAL R0
      126 SETTABLEKS                       R1 R0 K39 ["hideTangentMenu"]
      128 NEWCLOSURE                       R1 P8
      129 CAPTURE                          VAL R0
      130 SETTABLEKS                       R1 R0 K40 ["onInterpolationSelected"]
      132 NEWCLOSURE                       R1 P9
      133 CAPTURE                          VAL R0
      134 CAPTURE                          UPVAL U0
      135 SETTABLEKS                       R1 R0 K41 ["toCurveSpace"]
      137 NEWCLOSURE                       R1 P10
      138 CAPTURE                          VAL R0
      139 CAPTURE                          UPVAL U3
      140 CAPTURE                          UPVAL U4
      141 SETTABLEKS                       R1 R0 K42 ["setSelectedKeyframeDuration"]
      143 NEWCLOSURE                       R1 P11
      144 CAPTURE                          VAL R0
      145 SETTABLEKS                       R1 R0 K43 ["addDragWaypoint"]
      147 NEWCLOSURE                       R1 P12
      148 CAPTURE                          VAL R0
      149 CAPTURE                          UPVAL U5
      150 SETTABLEKS                       R1 R0 K44 ["onScaleHandleDragStarted"]
      152 NEWCLOSURE                       R1 P13
      153 CAPTURE                          VAL R0
      154 CAPTURE                          UPVAL U6
      155 CAPTURE                          UPVAL U0
      156 SETTABLEKS                       R1 R0 K45 ["onScaleHandleDragMoved"]
      158 NEWCLOSURE                       R1 P14
      159 CAPTURE                          VAL R0
      160 CAPTURE                          UPVAL U1
      161 SETTABLEKS                       R1 R0 K46 ["onScaleHandleDragEnded"]
      163 NEWCLOSURE                       R1 P15
      164 CAPTURE                          VAL R0
      165 SETTABLEKS                       R1 R0 K47 ["onSelectDragStarted"]
      167 NEWCLOSURE                       R1 P16
      168 CAPTURE                          VAL R0
      169 CAPTURE                          UPVAL U2
      170 SETTABLEKS                       R1 R0 K48 ["onSetTangent"]
      172 NEWCLOSURE                       R1 P17
      173 CAPTURE                          VAL R0
      174 CAPTURE                          UPVAL U0
      175 SETTABLEKS                       R1 R0 K49 ["onSelectDragMoved"]
      177 NEWCLOSURE                       R1 P18
      178 CAPTURE                          VAL R0
      179 CAPTURE                          UPVAL U1
      180 SETTABLEKS                       R1 R0 K50 ["onSelectDragEnded"]
      182 NEWCLOSURE                       R1 P19
      183 CAPTURE                          VAL R0
      184 CAPTURE                          UPVAL U5
      185 SETTABLEKS                       R1 R0 K51 ["onKeyframeDragStarted"]
      187 NEWCLOSURE                       R1 P20
      188 CAPTURE                          VAL R0
      189 CAPTURE                          UPVAL U5
      190 SETTABLEKS                       R1 R0 K52 ["onTangentDragStarted"]
      192 NEWCLOSURE                       R1 P21
      193 CAPTURE                          VAL R0
      194 CAPTURE                          UPVAL U0
      195 CAPTURE                          UPVAL U6
      196 SETTABLEKS                       R1 R0 K53 ["onDragMoved"]
      198 NEWCLOSURE                       R1 P22
      199 CAPTURE                          VAL R0
      200 CAPTURE                          UPVAL U1
      201 SETTABLEKS                       R1 R0 K54 ["onDragEnded"]
      203 NEWCLOSURE                       R1 P23
      204 CAPTURE                          UPVAL U7
      205 CAPTURE                          VAL R0
      206 SETTABLEKS                       R1 R0 K55 ["handleKeyframeRightClick"]
      208 NEWCLOSURE                       R1 P24
      209 CAPTURE                          VAL R0
      210 SETTABLEKS                       R1 R0 K56 ["handleKeyframeInputBegan"]
      212 NEWCLOSURE                       R1 P25
      213 CAPTURE                          VAL R0
      214 SETTABLEKS                       R1 R0 K57 ["handleKeyframeInputEnded"]
      216 NEWCLOSURE                       R1 P26
      217 CAPTURE                          VAL R0
      218 SETTABLEKS                       R1 R0 K58 ["handleTangentRightClick"]
      220 NEWCLOSURE                       R1 P27
      221 CAPTURE                          VAL R0
      222 SETTABLEKS                       R1 R0 K59 ["handleTangentInputBegan"]
      224 NEWCLOSURE                       R1 P28
      225 CAPTURE                          VAL R0
      226 SETTABLEKS                       R1 R0 K60 ["handleTangentInputEnded"]
      228 RETURN                           R0 0

PROTO_31:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 GETTABLEKS                       R5 R0 K0 ["Keyframes"]
        4 JUMPIFNOT                        R5 ; [+149]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R6 R0 K0 ["Keyframes"]
        8 CALL                             R5 1 1
        9 JUMPIF                           R5 ; [+144]
       10 GETIMPORT                        R5 K2 [ipairs]
       12 GETTABLEKS                       R6 R0 K0 ["Keyframes"]
       14 CALL                             R5 1 3
       15 FORGPREP_INEXT                   R5
       16 GETTABLEKS                       R11 R0 K3 ["Data"]
       18 GETTABLE                         R10 R11 R9
       19 LOADNIL                          R11
       20 LOADNIL                          R12
       21 JUMPIF                           R3 ; [+17]
       22 GETTABLEKS                       R13 R0 K4 ["Type"]
       24 GETUPVAL                         R14 1
       25 GETTABLEKS                       R14 R14 K5 ["TRACK_TYPES"]
       27 GETTABLEKS                       R14 R14 K6 ["Quaternion"]
       29 JUMPIFNOTEQ                      R13 R14 ; [+4]
       31 LOADN                            R11 0
       32 LOADN                            R12 1
       33 JUMP                             ; [+92]
       34 GETTABLEKS                       R13 R10 K7 ["Value"]
       36 MOVE                             R11 R13
       37 MOVE                             R12 R13
       38 JUMP                             ; [+87]
       39 GETUPVAL                         R13 2
       40 GETTABLEKS                       R13 R13 K8 ["getSlope"]
       42 MOVE                             R14 R0
       43 MOVE                             R15 R3
       44 GETUPVAL                         R16 1
       45 GETTABLEKS                       R16 R16 K9 ["SLOPES"]
       47 GETTABLEKS                       R16 R16 K10 ["Right"]
       49 CALL                             R13 3 1
       50 GETUPVAL                         R14 2
       51 GETTABLEKS                       R14 R14 K8 ["getSlope"]
       53 MOVE                             R15 R0
       54 MOVE                             R16 R9
       55 GETUPVAL                         R17 1
       56 GETTABLEKS                       R17 R17 K9 ["SLOPES"]
       58 GETTABLEKS                       R17 R17 K11 ["Left"]
       60 CALL                             R14 3 1
       61 GETTABLEKS                       R15 R0 K4 ["Type"]
       63 GETUPVAL                         R16 1
       64 GETTABLEKS                       R16 R16 K5 ["TRACK_TYPES"]
       66 GETTABLEKS                       R16 R16 K6 ["Quaternion"]
       68 JUMPIFNOTEQ                      R15 R16 ; [+14]
       70 GETUPVAL                         R15 3
       71 GETTABLEKS                       R15 R15 K12 ["getYExtents"]
       73 MOVE                             R16 R3
       74 LOADN                            R17 0
       75 MOVE                             R18 R13
       76 MOVE                             R19 R9
       77 LOADN                            R20 1
       78 MOVE                             R21 R14
       79 CALL                             R15 6 2
       80 MOVE                             R11 R15
       81 MOVE                             R12 R16
       82 JUMP                             ; [+43]
       83 GETTABLEKS                       R15 R4 K7 ["Value"]
       85 GETTABLEKS                       R16 R10 K7 ["Value"]
       87 GETUPVAL                         R17 3
       88 GETTABLEKS                       R17 R17 K12 ["getYExtents"]
       90 MOVE                             R18 R3
       91 MOVE                             R19 R15
       92 MOVE                             R20 R13
       93 MOVE                             R21 R9
       94 MOVE                             R22 R16
       95 MOVE                             R23 R14
       96 CALL                             R17 6 2
       97 MOVE                             R11 R17
       98 MOVE                             R12 R18
       99 GETTABLEKS                       R17 R0 K4 ["Type"]
      101 GETUPVAL                         R18 1
      102 GETTABLEKS                       R18 R18 K5 ["TRACK_TYPES"]
      104 GETTABLEKS                       R18 R18 K13 ["Facs"]
      106 JUMPIFNOTEQ                      R17 R18 ; [+19]
      108 LOADN                            R19 0
      109 LOADN                            R20 1
      110 FASTCALL3                        MATH_CLAMP R11 R19 R20
      112 MOVE                             R18 R11
      113 GETIMPORT                        R17 K16 [math.clamp]
      115 CALL                             R17 3 1
      116 MOVE                             R11 R17
      117 LOADN                            R19 0
      118 LOADN                            R20 1
      119 FASTCALL3                        MATH_CLAMP R12 R19 R20
      121 MOVE                             R18 R12
      122 GETIMPORT                        R17 K16 [math.clamp]
      124 CALL                             R17 3 1
      125 MOVE                             R12 R17
      126 GETUPVAL                         R14 4
      127 JUMPIFNOT                        R14 ; [+8]
      128 GETUPVAL                         R14 4
      129 FASTCALL2                        MATH_MIN R14 R11 ; [+4]
      131 MOVE                             R15 R11
      132 GETIMPORT                        R13 K18 [math.min]
      134 CALL                             R13 2 1
      135 JUMP                             ; [+1]
      136 MOVE                             R13 R11
      137 SETUPVAL                         R13 4
      138 GETUPVAL                         R14 5
      139 JUMPIFNOT                        R14 ; [+8]
      140 GETUPVAL                         R14 5
      141 FASTCALL2                        MATH_MAX R14 R12 ; [+4]
      143 MOVE                             R15 R12
      144 GETIMPORT                        R13 K20 [math.max]
      146 CALL                             R13 2 1
      147 JUMP                             ; [+1]
      148 MOVE                             R13 R12
      149 SETUPVAL                         R13 5
      150 MOVE                             R4 R10
      151 MOVE                             R3 R9
      152 FORGLOOP                         R5 2 [inext] ; [-137]
      154 RETURN                           R0 0

PROTO_32:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 JUMPIFNOT                        R1 ; [+21]
        3 GETIMPORT                        R4 K1 [pairs]
        5 MOVE                             R5 R1
        6 CALL                             R4 1 3
        7 FORGPREP_NEXT                    R4
        8 GETUPVAL                         R9 0
        9 GETTABLEKS                       R9 R9 K2 ["traverseTracks"]
       11 LOADNIL                          R10
       12 MOVE                             R11 R8
       13 NEWCLOSURE                       R12 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          REF R2
       19 CAPTURE                          REF R3
       20 LOADB                            R13 1
       21 CALL                             R9 4 0
       22 FORGLOOP                         R4 2 ; [-15]
       24 ORK                              R2 R2 K3 [0]
       25 ORK                              R3 R3 K4 [1]
       26 JUMPIFNOTEQ                      R2 R3 ; [+3]
       28 SUBK                             R2 R2 K5 [0.5]
       29 ADDK                             R3 R3 K5 [0.5]
       30 DUPTABLE                         R6 K8 [{"MinValue", "MaxValue"}]
       31 SETTABLEKS                       R2 R6 K6 ["MinValue"]
       33 SETTABLEKS                       R3 R6 K7 ["MaxValue"]
       35 NAMECALL                         R4 R0 K9 ["setState"]
       37 CALL                             R4 2 0
       38 CLOSEUPVALS                      R2
       39 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["List"]
        3 GETTABLEKS                       R3 R3 K1 ["join"]
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R2
        7 CALL                             R3 2 1
        8 GETIMPORT                        R4 K4 [table.concat]
       10 MOVE                             R5 R3
       11 LOADK                            R6 K5 ["."]
       12 CALL                             R4 2 1
       13 GETUPVAL                         R6 2
       14 GETTABLE                         R5 R6 R4
       15 JUMPIF                           R5 ; [+21]
       16 GETUPVAL                         R6 3
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K6 ["Dictionary"]
       20 GETTABLEKS                       R7 R7 K1 ["join"]
       22 MOVE                             R8 R0
       23 DUPTABLE                         R9 K9 [{"Path", "Instance"}]
       24 SETTABLEKS                       R3 R9 K7 ["Path"]
       26 LOADK                            R10 K10 ["Root"]
       27 SETTABLEKS                       R10 R9 K8 ["Instance"]
       29 CALL                             R7 2 -1
       30 FASTCALL                         TABLE_INSERT ; [+2]
       31 GETIMPORT                        R5 K12 [table.insert]
       33 CALL                             R5 -1 0
       34 GETUPVAL                         R5 2
       35 LOADB                            R6 1
       36 SETTABLE                         R6 R5 R4
       37 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 NEWTABLE                         R3 0 0
        4 GETTABLEKS                       R4 R2 K1 ["SelectedTracks"]
        6 JUMPIFNOT                        R4 ; [+45]
        7 GETTABLEKS                       R4 R2 K2 ["AnimationData"]
        9 JUMPIFNOT                        R4 ; [+42]
       10 GETTABLEKS                       R4 R2 K2 ["AnimationData"]
       12 GETTABLEKS                       R4 R4 K3 ["Instances"]
       14 JUMPIFNOT                        R4 ; [+37]
       15 NEWTABLE                         R4 0 0
       17 GETIMPORT                        R5 K5 [pairs]
       19 GETTABLEKS                       R6 R2 K1 ["SelectedTracks"]
       21 CALL                             R5 1 3
       22 FORGPREP_NEXT                    R5
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R10 R10 K6 ["getTrack"]
       26 GETTABLEKS                       R11 R2 K2 ["AnimationData"]
       28 LOADK                            R12 K7 ["Root"]
       29 MOVE                             R13 R9
       30 CALL                             R10 3 1
       31 JUMPIFNOT                        R10 ; [+12]
       32 GETUPVAL                         R11 1
       33 GETTABLEKS                       R11 R11 K8 ["traverseTracks"]
       35 LOADNIL                          R12
       36 MOVE                             R13 R10
       37 NEWCLOSURE                       R14 P0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R9
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 LOADB                            R15 1
       43 CALL                             R11 4 0
       44 FORGLOOP                         R5 2 ; [-22]
       46 DUPTABLE                         R7 K10 [{"Tracks"}]
       47 SETTABLEKS                       R3 R7 K9 ["Tracks"]
       49 NAMECALL                         R5 R0 K11 ["setState"]
       51 CALL                             R5 2 0
       52 GETTABLEKS                       R4 R2 K1 ["SelectedTracks"]
       54 GETTABLEKS                       R5 R1 K1 ["SelectedTracks"]
       56 JUMPIFEQ                         R4 R5 ; [+5]
       58 MOVE                             R6 R3
       59 NAMECALL                         R4 R0 K12 ["updateCanvasExtents"]
       61 CALL                             R4 2 0
       62 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["AnimationData"]
        4 GETTABLEKS                       R4 R2 K1 ["AnimationData"]
        6 JUMPIFNOTEQ                      R3 R4 ; [+7]
        8 GETTABLEKS                       R3 R1 K2 ["SelectedTracks"]
       10 GETTABLEKS                       R4 R2 K2 ["SelectedTracks"]
       12 JUMPIFEQ                         R3 R4 ; [+5]
       14 MOVE                             R5 R1
       15 NAMECALL                         R3 R0 K3 ["updateTracks"]
       17 CALL                             R3 2 0
       18 GETTABLEKS                       R3 R0 K0 ["props"]
       20 GETTABLEKS                       R3 R3 K4 ["TestSetCurveEditorScroll"]
       22 GETTABLEKS                       R4 R0 K5 ["state"]
       24 GETTABLEKS                       R4 R4 K6 ["MinValue"]
       26 GETTABLEKS                       R5 R0 K5 ["state"]
       28 GETTABLEKS                       R5 R5 K7 ["MaxValue"]
       30 CALL                             R3 2 0
       31 RETURN                           R0 0

PROTO_36:
        0 JUMPIFNOT                        R1 ; [+23]
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R1 K0 ["Enabled"]
        4 GETTABLEKS                       R4 R0 K1 ["Actions"]
        6 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
        8 MOVE                             R5 R1
        9 GETIMPORT                        R3 K4 [table.insert]
       11 CALL                             R3 2 0
       12 GETTABLEKS                       R4 R0 K5 ["Connections"]
       14 GETTABLEKS                       R5 R1 K6 ["Triggered"]
       16 MOVE                             R7 R2
       17 NAMECALL                         R5 R5 K7 ["Connect"]
       19 CALL                             R5 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R3 K4 [table.insert]
       23 CALL                             R3 -1 0
       24 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["state"]
        4 GETTABLEKS                       R2 R2 K1 ["Tracks"]
        6 NAMECALL                         R0 R0 K2 ["updateCanvasExtents"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K3 ["props"]
       12 GETTABLEKS                       R0 R0 K4 ["SetVerticalScrollZoom"]
       14 LOADN                            R1 0
       15 LOADN                            R2 0
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_38:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 NEWTABLE                         R3 0 0
        5 NAMECALL                         R1 R0 K1 ["updateTracks"]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K2 ["props"]
       10 GETTABLEKS                       R1 R1 K3 ["PluginActions"]
       12 NEWTABLE                         R2 0 0
       14 SETTABLEKS                       R2 R0 K4 ["Connections"]
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R0 K5 ["Actions"]
       20 LOADK                            R6 K6 ["ResizeCanvas"]
       21 NAMECALL                         R4 R1 K7 ["get"]
       23 CALL                             R4 2 1
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R0
       26 NAMECALL                         R2 R0 K8 ["addAction"]
       28 CALL                             R2 3 0
       29 GETTABLEKS                       R2 R0 K2 ["props"]
       31 GETTABLEKS                       R2 R2 K9 ["TestSetCurveEditorScroll"]
       33 GETTABLEKS                       R3 R0 K10 ["state"]
       35 GETTABLEKS                       R3 R3 K11 ["MinValue"]
       37 GETTABLEKS                       R4 R0 K10 ["state"]
       39 GETTABLEKS                       R4 R4 K12 ["MaxValue"]
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

PROTO_39:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["Connections"]
        5 JUMPIFNOT                        R1 ; [+15]
        6 GETIMPORT                        R1 K3 [ipairs]
        8 GETTABLEKS                       R2 R0 K1 ["Connections"]
       10 CALL                             R1 1 3
       11 FORGPREP_INEXT                   R1
       12 NAMECALL                         R6 R5 K4 ["Disconnect"]
       14 CALL                             R6 1 0
       15 FORGLOOP                         R1 2 [inext] ; [-4]
       17 NEWTABLE                         R1 0 0
       19 SETTABLEKS                       R1 R0 K1 ["Connections"]
       21 GETTABLEKS                       R1 R0 K5 ["Actions"]
       23 JUMPIFNOT                        R1 ; [+11]
       24 GETIMPORT                        R1 K3 [ipairs]
       26 GETTABLEKS                       R2 R0 K5 ["Actions"]
       28 CALL                             R1 1 3
       29 FORGPREP_INEXT                   R1
       30 LOADB                            R6 0
       31 SETTABLEKS                       R6 R5 K6 ["Enabled"]
       33 FORGLOOP                         R1 2 [inext] ; [-4]
       35 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R2 R0 K0 ["dragContext"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["dragContext"]
        5 GETTABLEKS                       R1 R1 K1 ["selectedKeyframe"]
        7 JUMPIF                           R1 ; [+4]
        8 GETTABLEKS                       R1 R0 K2 ["props"]
       10 GETTABLEKS                       R1 R1 K3 ["SelectedKeyframes"]
       12 LOADB                            R2 0
       13 JUMPIFEQKNIL                     R1 ; [+5]
       15 GETUPVAL                         R3 0
       16 MOVE                             R4 R1
       17 CALL                             R3 1 1
       18 NOT                              R2 R3
       19 RETURN                           R2 1

PROTO_41:
        0 GETTABLEKS                       R2 R0 K0 ["dragContext"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["dragContext"]
        5 GETTABLEKS                       R1 R1 K1 ["animationData"]
        7 JUMPIF                           R1 ; [+4]
        8 GETTABLEKS                       R1 R0 K2 ["props"]
       10 GETTABLEKS                       R1 R1 K3 ["AnimationData"]
       12 GETTABLEKS                       R3 R0 K0 ["dragContext"]
       14 JUMPIFNOT                        R3 ; [+5]
       15 GETTABLEKS                       R2 R0 K0 ["dragContext"]
       17 GETTABLEKS                       R2 R2 K4 ["selectedKeyframes"]
       19 JUMPIF                           R2 ; [+4]
       20 GETTABLEKS                       R2 R0 K2 ["props"]
       22 GETTABLEKS                       R2 R2 K5 ["SelectedKeyframes"]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K6 ["getSelectionBounds"]
       27 MOVE                             R4 R1
       28 MOVE                             R5 R2
       29 CALL                             R3 2 2
       30 MOVE                             R5 R2
       31 JUMPIFNOT                        R5 ; [+4]
       32 JUMPIFNOTEQ                      R3 R4 ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 RETURN                           R5 1

PROTO_42:
        0 GETTABLEKS                       R3 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R4 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R3 R4 ; [+22]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K4 ["isMultiSelectKey"]
        9 GETTABLEKS                       R4 R1 K5 ["KeyCode"]
       11 CALL                             R3 1 1
       12 JUMPIFNOT                        R3 ; [+3]
       13 LOADB                            R3 1
       14 SETTABLEKS                       R3 R0 K6 ["isMultiSelecting"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K7 ["isControl"]
       19 GETTABLEKS                       R4 R1 K5 ["KeyCode"]
       21 CALL                             R3 1 1
       22 JUMPIFNOT                        R3 ; [+22]
       23 LOADB                            R3 1
       24 SETTABLEKS                       R3 R0 K8 ["ctrlHeld"]
       26 RETURN                           R0 0
       27 GETTABLEKS                       R3 R1 K0 ["UserInputType"]
       29 GETIMPORT                        R4 K10 [Enum.UserInputType.MouseButton1]
       31 JUMPIFNOTEQ                      R3 R4 ; [+13]
       33 GETTABLEKS                       R3 R0 K11 ["props"]
       35 GETTABLEKS                       R3 R3 K12 ["DeselectAllKeyframes"]
       37 CALL                             R3 0 0
       38 LOADB                            R3 1
       39 SETTABLEKS                       R3 R0 K13 ["mouseDownInCanvas"]
       41 GETTABLEKS                       R3 R0 K14 ["onSelectDragStarted"]
       43 MOVE                             R4 R1
       44 CALL                             R3 1 0
       45 RETURN                           R0 0

PROTO_43:
        0 GETTABLEKS                       R3 R0 K0 ["ctrlHeld"]
        2 JUMPIF                           R3 ; [+66]
        3 GETTABLEKS                       R3 R0 K1 ["toCurveSpace"]
        5 GETIMPORT                        R4 K4 [Vector2.new]
        7 LOADN                            R5 0
        8 GETTABLEKS                       R6 R1 K5 ["Y"]
       10 CALL                             R4 2 -1
       11 CALL                             R3 -1 1
       12 GETTABLEKS                       R3 R3 K5 ["Y"]
       14 LOADN                            R5 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K6 ["CANVAS_ZOOM_INCREMENT"]
       18 ADD                              R4 R5 R6
       19 JUMPIFNOTEQKS                    R2 K7 ["forward"] ; [+24]
       21 DUPTABLE                         R7 K10 [{"MinValue", "MaxValue"}]
       22 GETTABLEKS                       R11 R0 K11 ["state"]
       24 GETTABLEKS                       R11 R11 K8 ["MinValue"]
       26 SUB                              R10 R11 R3
       27 DIV                              R9 R10 R4
       28 ADD                              R8 R3 R9
       29 SETTABLEKS                       R8 R7 K8 ["MinValue"]
       31 GETTABLEKS                       R11 R0 K11 ["state"]
       33 GETTABLEKS                       R11 R11 K9 ["MaxValue"]
       35 SUB                              R10 R11 R3
       36 DIV                              R9 R10 R4
       37 ADD                              R8 R3 R9
       38 SETTABLEKS                       R8 R7 K9 ["MaxValue"]
       40 NAMECALL                         R5 R0 K12 ["setState"]
       42 CALL                             R5 2 0
       43 RETURN                           R0 0
       44 JUMPIFNOTEQKS                    R2 K13 ["backward"] ; [+31]
       46 DUPTABLE                         R7 K10 [{"MinValue", "MaxValue"}]
       47 GETTABLEKS                       R11 R0 K11 ["state"]
       49 GETTABLEKS                       R11 R11 K8 ["MinValue"]
       51 SUB                              R10 R11 R3
       52 MUL                              R9 R10 R4
       53 ADD                              R8 R3 R9
       54 SETTABLEKS                       R8 R7 K8 ["MinValue"]
       56 GETTABLEKS                       R11 R0 K11 ["state"]
       58 GETTABLEKS                       R11 R11 K9 ["MaxValue"]
       60 SUB                              R10 R11 R3
       61 MUL                              R9 R10 R4
       62 ADD                              R8 R3 R9
       63 SETTABLEKS                       R8 R7 K9 ["MaxValue"]
       65 NAMECALL                         R5 R0 K12 ["setState"]
       67 CALL                             R5 2 0
       68 RETURN                           R0 0
       69 GETTABLEKS                       R3 R0 K14 ["props"]
       71 GETTABLEKS                       R3 R3 K15 ["OnWheelTick"]
       73 MOVE                             R4 R1
       74 MOVE                             R5 R2
       75 CALL                             R3 2 0
       76 RETURN                           R0 0

PROTO_44:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["OnInputChanged"]
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R2 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R2 K1 ["OnInputChanged"]
        9 LOADNIL                          R3
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_45:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R2 R3 ; [+22]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["isMultiSelectKey"]
        9 GETTABLEKS                       R3 R1 K5 ["KeyCode"]
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R0 K6 ["isMultiSelecting"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K7 ["isControl"]
       19 GETTABLEKS                       R3 R1 K5 ["KeyCode"]
       21 CALL                             R2 1 1
       22 JUMPIFNOT                        R2 ; [+23]
       23 LOADB                            R2 0
       24 SETTABLEKS                       R2 R0 K8 ["ctrlHeld"]
       26 RETURN                           R0 0
       27 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       29 GETIMPORT                        R3 K10 [Enum.UserInputType.MouseButton1]
       31 JUMPIFNOTEQ                      R2 R3 ; [+5]
       33 LOADB                            R2 0
       34 SETTABLEKS                       R2 R0 K11 ["mouseDownInCanvas"]
       36 RETURN                           R0 0
       37 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       39 GETIMPORT                        R3 K13 [Enum.UserInputType.MouseButton2]
       41 JUMPIFNOTEQ                      R2 R3 ; [+4]
       43 GETTABLEKS                       R2 R0 K14 ["showKeyframeMenu"]
       45 CALL                             R2 0 0
       46 RETURN                           R0 0

PROTO_46:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFEQ                         R2 R3 ; [+6]
        6 GETUPVAL                         R2 0
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K4 ["handleCanvasInputBegan"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_47:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFEQ                         R2 R3 ; [+6]
        6 GETUPVAL                         R2 0
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K4 ["handleCanvasInputEnded"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["handleCanvasInputChanged"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R3 0
        1 GETIMPORT                        R5 K2 [Vector2.new]
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R5 2 1
        6 LOADK                            R6 K3 ["forward"]
        7 NAMECALL                         R3 R3 K4 ["handleWheelTick"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R3 0
        1 GETIMPORT                        R5 K2 [Vector2.new]
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R5 2 1
        6 LOADK                            R6 K3 ["backward"]
        7 NAMECALL                         R3 R3 K4 ["handleWheelTick"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["handleCanvasInputBegan"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["handleCanvasInputEnded"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_53:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["AnimationData"]
        6 GETTABLEKS                       R4 R0 K3 ["isMounted"]
        8 GETTABLEKS                       R5 R2 K4 ["AbsoluteSize"]
       10 GETTABLEKS                       R6 R2 K5 ["CanvasSize"]
       12 GETTABLEKS                       R7 R2 K6 ["AbsolutePosition"]
       14 GETTABLEKS                       R8 R1 K7 ["StartTick"]
       16 GETTABLEKS                       R9 R1 K8 ["EndTick"]
       18 GETTABLEKS                       R10 R1 K9 ["TrackPadding"]
       20 GETTABLEKS                       R11 R1 K10 ["ShowEvents"]
       22 GETTABLEKS                       R12 R1 K11 ["Active"]
       24 GETTABLEKS                       R13 R1 K12 ["SelectedKeyframes"]
       26 GETTABLEKS                       R14 R2 K13 ["ShowKeyframeMenu"]
       28 GETTABLEKS                       R15 R2 K14 ["ShowTangentMenu"]
       30 GETTABLEKS                       R16 R2 K15 ["ChangingDuration"]
       32 NAMECALL                         R17 R0 K16 ["hasSelectedKeyframes"]
       34 CALL                             R17 1 1
       35 JUMPIFNOT                        R17 ; [+3]
       36 NAMECALL                         R17 R0 K17 ["multipleFramesSelected"]
       38 CALL                             R17 1 1
       39 GETTABLEKS                       R18 R1 K18 ["Localization"]
       41 GETTABLEKS                       R19 R1 K19 ["FrameRate"]
       43 GETTABLEKS                       R20 R1 K20 ["TimelineUnit"]
       45 GETTABLEKS                       R21 R2 K21 ["Dragging"]
       47 GETTABLEKS                       R22 R2 K22 ["DraggingScale"]
       49 GETTABLEKS                       R23 R2 K23 ["Tracks"]
       51 GETTABLEKS                       R24 R2 K24 ["MinValue"]
       53 GETTABLEKS                       R25 R2 K25 ["MaxValue"]
       55 GETTABLEKS                       R26 R2 K26 ["DraggingSelection"]
       57 JUMPIFNOT                        R3 ; [+8]
       58 GETTABLEKS                       R28 R3 K27 ["Events"]
       60 JUMPIFNOT                        R28 ; [+5]
       61 GETTABLEKS                       R27 R3 K27 ["Events"]
       63 GETTABLEKS                       R27 R27 K28 ["NamedKeyframes"]
       65 JUMPIF                           R27 ; [+2]
       66 NEWTABLE                         R27 0 0
       68 LOADNIL                          R28
       69 JUMPIFNOT                        R16 ; [+18]
       70 GETUPVAL                         R29 0
       71 GETTABLEKS                       R29 R29 K29 ["getSelectionBounds"]
       73 GETTABLEKS                       R30 R0 K0 ["props"]
       75 GETTABLEKS                       R30 R30 K2 ["AnimationData"]
       77 GETTABLEKS                       R31 R0 K0 ["props"]
       79 GETTABLEKS                       R31 R31 K12 ["SelectedKeyframes"]
       81 CALL                             R29 2 2
       82 SUB                              R32 R30 R29
       83 MUL                              R31 R32 R19
       84 GETUPVAL                         R32 1
       85 GETTABLEKS                       R32 R32 K30 ["TICK_FREQUENCY"]
       87 DIV                              R28 R31 R32
       88 GETUPVAL                         R29 2
       89 GETTABLEKS                       R29 R29 K31 ["createElement"]
       91 LOADK                            R30 K32 ["Frame"]
       92 DUPTABLE                         R31 K37 [{"Size", "Position", "BackgroundTransparency", "ZIndex"}]
       93 GETTABLEKS                       R32 R1 K33 ["Size"]
       95 SETTABLEKS                       R32 R31 K33 ["Size"]
       97 GETTABLEKS                       R32 R1 K34 ["Position"]
       99 SETTABLEKS                       R32 R31 K34 ["Position"]
      101 LOADN                            R32 1
      102 SETTABLEKS                       R32 R31 K35 ["BackgroundTransparency"]
      104 GETTABLEKS                       R32 R1 K36 ["ZIndex"]
      106 SETTABLEKS                       R32 R31 K36 ["ZIndex"]
      108 DUPTABLE                         R32 K40 [{"Layout", "Events", "CanvasContainer"}]
      109 GETUPVAL                         R33 2
      110 GETTABLEKS                       R33 R33 K31 ["createElement"]
      112 LOADK                            R34 K41 ["UIListLayout"]
      113 DUPTABLE                         R35 K44 [{"FillDirection", "SortOrder"}]
      114 GETIMPORT                        R36 K47 [Enum.FillDirection.Vertical]
      116 SETTABLEKS                       R36 R35 K42 ["FillDirection"]
      118 GETIMPORT                        R36 K49 [Enum.SortOrder.LayoutOrder]
      120 SETTABLEKS                       R36 R35 K43 ["SortOrder"]
      122 CALL                             R33 2 1
      123 SETTABLEKS                       R33 R32 K38 ["Layout"]
      125 MOVE                             R33 R11
      126 JUMPIFNOT                        R33 ; [+34]
      127 GETUPVAL                         R33 2
      128 GETTABLEKS                       R33 R33 K31 ["createElement"]
      130 GETUPVAL                         R34 3
      131 DUPTABLE                         R35 K50 [{"AbsolutePosition", "AbsoluteSize", "AnimationData", "StartTick", "EndTick", "TrackPadding"}]
      132 GETIMPORT                        R37 K53 [Vector2.new]
      134 LOADN                            R38 0
      135 GETUPVAL                         R39 1
      136 GETTABLEKS                       R39 R39 K54 ["TRACK_HEIGHT"]
      138 CALL                             R37 2 1
      139 SUB                              R36 R7 R37
      140 SETTABLEKS                       R36 R35 K6 ["AbsolutePosition"]
      142 GETIMPORT                        R36 K53 [Vector2.new]
      144 GETTABLEKS                       R37 R5 K55 ["X"]
      146 GETUPVAL                         R38 1
      147 GETTABLEKS                       R38 R38 K54 ["TRACK_HEIGHT"]
      149 CALL                             R36 2 1
      150 SETTABLEKS                       R36 R35 K4 ["AbsoluteSize"]
      152 SETTABLEKS                       R3 R35 K2 ["AnimationData"]
      154 SETTABLEKS                       R8 R35 K7 ["StartTick"]
      156 SETTABLEKS                       R9 R35 K8 ["EndTick"]
      158 SETTABLEKS                       R10 R35 K9 ["TrackPadding"]
      160 CALL                             R33 2 1
      161 SETTABLEKS                       R33 R32 K27 ["Events"]
      163 GETUPVAL                         R33 2
      164 GETTABLEKS                       R33 R33 K31 ["createElement"]
      166 LOADK                            R34 K32 ["Frame"]
      167 NEWTABLE                         R35 16 0
      169 GETIMPORT                        R36 K57 [UDim2.new]
      171 LOADN                            R37 1
      172 LOADN                            R38 0
      173 LOADN                            R39 1
      174 JUMPIFNOT                        R11 ; [+5]
      175 GETUPVAL                         R41 1
      176 GETTABLEKS                       R41 R41 K54 ["TRACK_HEIGHT"]
      178 MINUS                            R40 R41
      179 JUMPIF                           R40 ; [+1]
      180 LOADN                            R40 0
      181 CALL                             R36 4 1
      182 SETTABLEKS                       R36 R35 K33 ["Size"]
      184 LOADN                            R36 1
      185 SETTABLEKS                       R36 R35 K35 ["BackgroundTransparency"]
      187 LOADN                            R36 1
      188 SETTABLEKS                       R36 R35 K48 ["LayoutOrder"]
      190 GETUPVAL                         R36 2
      191 GETTABLEKS                       R36 R36 K58 ["Change"]
      193 GETTABLEKS                       R36 R36 K4 ["AbsoluteSize"]
      195 GETTABLEKS                       R37 R0 K59 ["recalculateExtents"]
      197 SETTABLE                         R37 R35 R36
      198 GETUPVAL                         R36 2
      199 GETTABLEKS                       R36 R36 K60 ["Event"]
      201 GETTABLEKS                       R36 R36 K61 ["InputBegan"]
      203 NEWCLOSURE                       R37 P0
      204 CAPTURE                          VAL R0
      205 SETTABLE                         R37 R35 R36
      206 GETUPVAL                         R36 2
      207 GETTABLEKS                       R36 R36 K60 ["Event"]
      209 GETTABLEKS                       R36 R36 K62 ["InputEnded"]
      211 NEWCLOSURE                       R37 P1
      212 CAPTURE                          VAL R0
      213 SETTABLE                         R37 R35 R36
      214 GETUPVAL                         R36 2
      215 GETTABLEKS                       R36 R36 K60 ["Event"]
      217 GETTABLEKS                       R36 R36 K63 ["InputChanged"]
      219 NEWCLOSURE                       R37 P2
      220 CAPTURE                          VAL R0
      221 SETTABLE                         R37 R35 R36
      222 GETUPVAL                         R36 2
      223 GETTABLEKS                       R36 R36 K60 ["Event"]
      225 GETTABLEKS                       R36 R36 K64 ["MouseWheelForward"]
      227 NEWCLOSURE                       R37 P3
      228 CAPTURE                          VAL R0
      229 SETTABLE                         R37 R35 R36
      230 GETUPVAL                         R36 2
      231 GETTABLEKS                       R36 R36 K60 ["Event"]
      233 GETTABLEKS                       R36 R36 K65 ["MouseWheelBackward"]
      235 NEWCLOSURE                       R37 P4
      236 CAPTURE                          VAL R0
      237 SETTABLE                         R37 R35 R36
      238 DUPTABLE                         R36 K76 [{"KeyboardListener", "KeyframeActions", "TangentActions", "PositionScale", "CurveCanvas", "RotationScale", "ScaleControls", "DragTarget", "MultiSelectBox", "ChangeDurationPrompt"}]
      239 GETUPVAL                         R37 2
      240 GETTABLEKS                       R37 R37 K31 ["createElement"]
      242 GETUPVAL                         R38 4
      243 DUPTABLE                         R39 K79 [{"OnKeyPressed", "OnKeyReleased"}]
      244 NEWCLOSURE                       R40 P5
      245 CAPTURE                          VAL R0
      246 SETTABLEKS                       R40 R39 K77 ["OnKeyPressed"]
      248 NEWCLOSURE                       R40 P6
      249 CAPTURE                          VAL R0
      250 SETTABLEKS                       R40 R39 K78 ["OnKeyReleased"]
      252 CALL                             R37 2 1
      253 SETTABLEKS                       R37 R36 K66 ["KeyboardListener"]
      255 JUMPIFNOT                        R12 ; [+33]
      256 GETUPVAL                         R37 2
      257 GETTABLEKS                       R37 R37 K31 ["createElement"]
      259 GETUPVAL                         R38 5
      260 DUPTABLE                         R39 K87 [{"ShowMenu", "MultipleSelected", "OnMenuOpened", "OnClearTangentsSelected", "OnGenerateCurve", "OnChangeDuration", "OnInterpolationSelected"}]
      261 SETTABLEKS                       R14 R39 K80 ["ShowMenu"]
      263 SETTABLEKS                       R17 R39 K81 ["MultipleSelected"]
      265 GETTABLEKS                       R40 R0 K88 ["hideKeyframeMenu"]
      267 SETTABLEKS                       R40 R39 K82 ["OnMenuOpened"]
      269 GETTABLEKS                       R40 R0 K89 ["onClearTangentsSelected"]
      271 SETTABLEKS                       R40 R39 K83 ["OnClearTangentsSelected"]
      273 GETTABLEKS                       R40 R0 K0 ["props"]
      275 GETTABLEKS                       R40 R40 K90 ["GenerateCurve"]
      277 SETTABLEKS                       R40 R39 K84 ["OnGenerateCurve"]
      279 GETTABLEKS                       R40 R0 K91 ["onChangeDuration"]
      281 SETTABLEKS                       R40 R39 K85 ["OnChangeDuration"]
      283 GETTABLEKS                       R40 R0 K92 ["onInterpolationSelected"]
      285 SETTABLEKS                       R40 R39 K86 ["OnInterpolationSelected"]
      287 CALL                             R37 2 1
      288 JUMPIF                           R37 ; [+1]
      289 LOADNIL                          R37
      290 SETTABLEKS                       R37 R36 K67 ["KeyframeActions"]
      292 JUMPIFNOT                        R12 ; [+17]
      293 GETUPVAL                         R37 2
      294 GETTABLEKS                       R37 R37 K31 ["createElement"]
      296 GETUPVAL                         R38 6
      297 DUPTABLE                         R39 K94 [{"ShowMenu", "OnMenuOpened", "OnSetTangent"}]
      298 SETTABLEKS                       R15 R39 K80 ["ShowMenu"]
      300 GETTABLEKS                       R40 R0 K95 ["hideTangentMenu"]
      302 SETTABLEKS                       R40 R39 K82 ["OnMenuOpened"]
      304 GETTABLEKS                       R40 R0 K96 ["onSetTangent"]
      306 SETTABLEKS                       R40 R39 K93 ["OnSetTangent"]
      308 CALL                             R37 2 1
      309 JUMPIF                           R37 ; [+1]
      310 LOADNIL                          R37
      311 SETTABLEKS                       R37 R36 K68 ["TangentActions"]
      313 GETUPVAL                         R37 2
      314 GETTABLEKS                       R37 R37 K31 ["createElement"]
      316 GETUPVAL                         R38 7
      317 DUPTABLE                         R39 K104 [{"Size", "Width", "ParentSize", "Position", "TickWidthScale", "SmallTickWidthScale", "MinValue", "MaxValue", "VerticalScroll", "VerticalZoom", "ScaleType", "ZIndex"}]
      318 GETIMPORT                        R40 K57 [UDim2.new]
      320 LOADN                            R41 0
      321 GETTABLEKS                       R43 R1 K9 ["TrackPadding"]
      323 DIVK                             R42 R43 K105 [2]
      324 LOADN                            R43 1
      325 LOADN                            R44 0
      326 CALL                             R40 4 1
      327 SETTABLEKS                       R40 R39 K33 ["Size"]
      329 GETTABLEKS                       R41 R1 K9 ["TrackPadding"]
      331 DIVK                             R40 R41 K105 [2]
      332 SETTABLEKS                       R40 R39 K97 ["Width"]
      334 SETTABLEKS                       R6 R39 K98 ["ParentSize"]
      336 GETIMPORT                        R40 K57 [UDim2.new]
      338 LOADN                            R41 0
      339 LOADN                            R42 0
      340 LOADN                            R43 0
      341 LOADN                            R44 0
      342 CALL                             R40 4 1
      343 SETTABLEKS                       R40 R39 K34 ["Position"]
      345 LOADK                            R40 K106 [0.7]
      346 SETTABLEKS                       R40 R39 K99 ["TickWidthScale"]
      348 LOADK                            R40 K107 [0.3]
      349 SETTABLEKS                       R40 R39 K100 ["SmallTickWidthScale"]
      351 SETTABLEKS                       R24 R39 K24 ["MinValue"]
      353 SETTABLEKS                       R25 R39 K25 ["MaxValue"]
      355 GETTABLEKS                       R40 R1 K101 ["VerticalScroll"]
      357 SETTABLEKS                       R40 R39 K101 ["VerticalScroll"]
      359 GETTABLEKS                       R40 R1 K102 ["VerticalZoom"]
      361 SETTABLEKS                       R40 R39 K102 ["VerticalZoom"]
      363 GETUPVAL                         R40 1
      364 GETTABLEKS                       R40 R40 K108 ["SCALE_TYPE"]
      366 GETTABLEKS                       R40 R40 K109 ["Number"]
      368 SETTABLEKS                       R40 R39 K103 ["ScaleType"]
      370 LOADN                            R40 3
      371 SETTABLEKS                       R40 R39 K36 ["ZIndex"]
      373 CALL                             R37 2 1
      374 SETTABLEKS                       R37 R36 K69 ["PositionScale"]
      376 JUMPIFNOT                        R4 ; [+87]
      377 GETUPVAL                         R37 2
      378 GETTABLEKS                       R37 R37 K31 ["createElement"]
      380 GETUPVAL                         R38 8
      381 DUPTABLE                         R39 K118 [{"Size", "Position", "AbsoluteSize", "StartTick", "EndTick", "MinValue", "MaxValue", "Tracks", "VerticalScroll", "VerticalZoom", "SelectedKeyframes", "NamedKeyframes", "Playhead", "ShowTooltips", "ZIndex", "OnKeyRightClick", "OnKeyInputBegan", "OnKeyInputEnded", "OnTangentRightClick", "OnTangentInputBegan", "OnTangentInputEnded"}]
      382 GETIMPORT                        R40 K57 [UDim2.new]
      384 LOADN                            R41 1
      385 GETTABLEKS                       R43 R1 K9 ["TrackPadding"]
      387 MINUS                            R42 R43
      388 LOADN                            R43 1
      389 LOADN                            R44 0
      390 CALL                             R40 4 1
      391 SETTABLEKS                       R40 R39 K33 ["Size"]
      393 GETIMPORT                        R40 K57 [UDim2.new]
      395 LOADN                            R41 0
      396 GETTABLEKS                       R43 R1 K9 ["TrackPadding"]
      398 DIVK                             R42 R43 K105 [2]
      399 LOADN                            R43 0
      400 LOADN                            R44 0
      401 CALL                             R40 4 1
      402 SETTABLEKS                       R40 R39 K34 ["Position"]
      404 SETTABLEKS                       R6 R39 K4 ["AbsoluteSize"]
      406 SETTABLEKS                       R8 R39 K7 ["StartTick"]
      408 SETTABLEKS                       R9 R39 K8 ["EndTick"]
      410 SETTABLEKS                       R24 R39 K24 ["MinValue"]
      412 SETTABLEKS                       R25 R39 K25 ["MaxValue"]
      414 SETTABLEKS                       R23 R39 K23 ["Tracks"]
      416 GETTABLEKS                       R40 R1 K101 ["VerticalScroll"]
      418 SETTABLEKS                       R40 R39 K101 ["VerticalScroll"]
      420 GETTABLEKS                       R40 R1 K102 ["VerticalZoom"]
      422 SETTABLEKS                       R40 R39 K102 ["VerticalZoom"]
      424 SETTABLEKS                       R13 R39 K12 ["SelectedKeyframes"]
      426 SETTABLEKS                       R27 R39 K28 ["NamedKeyframes"]
      428 GETTABLEKS                       R40 R1 K110 ["Playhead"]
      430 SETTABLEKS                       R40 R39 K110 ["Playhead"]
      432 NOT                              R40 R21
      433 SETTABLEKS                       R40 R39 K111 ["ShowTooltips"]
      435 LOADN                            R40 1
      436 SETTABLEKS                       R40 R39 K36 ["ZIndex"]
      438 GETTABLEKS                       R40 R0 K119 ["handleKeyframeRightClick"]
      440 SETTABLEKS                       R40 R39 K112 ["OnKeyRightClick"]
      442 GETTABLEKS                       R40 R0 K120 ["handleKeyframeInputBegan"]
      444 SETTABLEKS                       R40 R39 K113 ["OnKeyInputBegan"]
      446 GETTABLEKS                       R40 R0 K121 ["handleKeyframeInputEnded"]
      448 SETTABLEKS                       R40 R39 K114 ["OnKeyInputEnded"]
      450 GETTABLEKS                       R40 R0 K122 ["handleTangentRightClick"]
      452 SETTABLEKS                       R40 R39 K115 ["OnTangentRightClick"]
      454 GETTABLEKS                       R40 R0 K123 ["handleTangentInputBegan"]
      456 SETTABLEKS                       R40 R39 K116 ["OnTangentInputBegan"]
      458 GETTABLEKS                       R40 R0 K124 ["handleTangentInputEnded"]
      460 SETTABLEKS                       R40 R39 K117 ["OnTangentInputEnded"]
      462 CALL                             R37 2 1
      463 JUMPIF                           R37 ; [+1]
      464 LOADNIL                          R37
      465 SETTABLEKS                       R37 R36 K70 ["CurveCanvas"]
      467 GETUPVAL                         R38 2
      468 GETTABLEKS                       R38 R38 K31 ["createElement"]
      470 GETUPVAL                         R39 7
      471 DUPTABLE                         R40 K104 [{"Size", "Width", "ParentSize", "Position", "TickWidthScale", "SmallTickWidthScale", "MinValue", "MaxValue", "VerticalScroll", "VerticalZoom", "ScaleType", "ZIndex"}]
      472 GETIMPORT                        R41 K57 [UDim2.new]
      474 LOADN                            R42 0
      475 GETTABLEKS                       R44 R1 K9 ["TrackPadding"]
      477 DIVK                             R43 R44 K105 [2]
      478 LOADN                            R44 1
      479 LOADN                            R45 0
      480 CALL                             R41 4 1
      481 SETTABLEKS                       R41 R40 K33 ["Size"]
      483 GETTABLEKS                       R42 R1 K9 ["TrackPadding"]
      485 DIVK                             R41 R42 K105 [2]
      486 SETTABLEKS                       R41 R40 K97 ["Width"]
      488 SETTABLEKS                       R6 R40 K98 ["ParentSize"]
      490 GETIMPORT                        R41 K57 [UDim2.new]
      492 LOADN                            R42 1
      493 GETTABLEKS                       R45 R1 K9 ["TrackPadding"]
      495 MINUS                            R44 R45
      496 DIVK                             R43 R44 K105 [2]
      497 LOADN                            R44 0
      498 LOADN                            R45 0
      499 CALL                             R41 4 1
      500 SETTABLEKS                       R41 R40 K34 ["Position"]
      502 LOADK                            R41 K106 [0.7]
      503 SETTABLEKS                       R41 R40 K99 ["TickWidthScale"]
      505 LOADK                            R41 K107 [0.3]
      506 SETTABLEKS                       R41 R40 K100 ["SmallTickWidthScale"]
      508 FASTCALL1                        MATH_DEG R24 ; [+3]
      509 MOVE                             R42 R24
      510 GETIMPORT                        R41 K128 [math.deg]
      512 CALL                             R41 1 1
      513 SETTABLEKS                       R41 R40 K24 ["MinValue"]
      515 FASTCALL1                        MATH_DEG R25 ; [+3]
      516 MOVE                             R42 R25
      517 GETIMPORT                        R41 K128 [math.deg]
      519 CALL                             R41 1 1
      520 SETTABLEKS                       R41 R40 K25 ["MaxValue"]
      522 GETTABLEKS                       R41 R1 K101 ["VerticalScroll"]
      524 SETTABLEKS                       R41 R40 K101 ["VerticalScroll"]
      526 GETTABLEKS                       R41 R1 K102 ["VerticalZoom"]
      528 SETTABLEKS                       R41 R40 K102 ["VerticalZoom"]
      530 GETUPVAL                         R41 1
      531 GETTABLEKS                       R41 R41 K108 ["SCALE_TYPE"]
      533 GETTABLEKS                       R41 R41 K129 ["Angle"]
      535 SETTABLEKS                       R41 R40 K103 ["ScaleType"]
      537 LOADN                            R41 4
      538 SETTABLEKS                       R41 R40 K36 ["ZIndex"]
      540 CALL                             R38 2 1
      541 ORK                              R37 R38 K125 []
      542 SETTABLEKS                       R37 R36 K71 ["RotationScale"]
      544 MOVE                             R37 R17
      545 JUMPIFNOT                        R37 ; [+51]
      546 NOT                              R37 R26
      547 JUMPIFNOT                        R37 ; [+49]
      548 GETUPVAL                         R37 2
      549 GETTABLEKS                       R37 R37 K31 ["createElement"]
      551 GETUPVAL                         R38 9
      552 DUPTABLE                         R39 K137 [{"SelectedKeyframes", "StartTick", "EndTick", "UseFullHeight", "TrackPadding", "Dragging", "TimelineUnit", "FrameRate", "DopeSheetWidth", "ZIndex", "ShowSelectionArea", "IsChannelAnimation", "OnScaleHandleDragStart", "OnScaleHandleDragEnd", "OnScaleHandleDragMoved"}]
      553 SETTABLEKS                       R13 R39 K12 ["SelectedKeyframes"]
      555 SETTABLEKS                       R8 R39 K7 ["StartTick"]
      557 SETTABLEKS                       R9 R39 K8 ["EndTick"]
      559 LOADB                            R40 1
      560 SETTABLEKS                       R40 R39 K130 ["UseFullHeight"]
      562 SETTABLEKS                       R10 R39 K9 ["TrackPadding"]
      564 OR                               R40 R22 R21
      565 SETTABLEKS                       R40 R39 K21 ["Dragging"]
      567 SETTABLEKS                       R20 R39 K20 ["TimelineUnit"]
      569 SETTABLEKS                       R19 R39 K19 ["FrameRate"]
      571 GETTABLEKS                       R40 R6 K55 ["X"]
      573 SETTABLEKS                       R40 R39 K131 ["DopeSheetWidth"]
      575 LOADN                            R40 2
      576 SETTABLEKS                       R40 R39 K36 ["ZIndex"]
      578 LOADB                            R40 1
      579 SETTABLEKS                       R40 R39 K132 ["ShowSelectionArea"]
      581 LOADB                            R40 1
      582 SETTABLEKS                       R40 R39 K133 ["IsChannelAnimation"]
      584 GETTABLEKS                       R40 R0 K138 ["onScaleHandleDragStarted"]
      586 SETTABLEKS                       R40 R39 K134 ["OnScaleHandleDragStart"]
      588 GETTABLEKS                       R40 R0 K139 ["onScaleHandleDragEnded"]
      590 SETTABLEKS                       R40 R39 K135 ["OnScaleHandleDragEnd"]
      592 GETTABLEKS                       R40 R0 K140 ["onScaleHandleDragMoved"]
      594 SETTABLEKS                       R40 R39 K136 ["OnScaleHandleDragMoved"]
      596 CALL                             R37 2 1
      597 SETTABLEKS                       R37 R36 K72 ["ScaleControls"]
      599 MOVE                             R37 R21
      600 JUMPIFNOT                        R37 ; [+14]
      601 GETUPVAL                         R37 2
      602 GETTABLEKS                       R37 R37 K31 ["createElement"]
      604 GETUPVAL                         R38 10
      605 DUPTABLE                         R39 K143 [{"OnDragMoved", "OnDragEnded"}]
      606 GETTABLEKS                       R40 R0 K144 ["onDragMoved"]
      608 SETTABLEKS                       R40 R39 K141 ["OnDragMoved"]
      610 GETTABLEKS                       R40 R0 K145 ["onDragEnded"]
      612 SETTABLEKS                       R40 R39 K142 ["OnDragEnded"]
      614 CALL                             R37 2 1
      615 SETTABLEKS                       R37 R36 K73 ["DragTarget"]
      617 MOVE                             R37 R26
      618 JUMPIFNOT                        R37 ; [+29]
      619 GETUPVAL                         R37 2
      620 GETTABLEKS                       R37 R37 K31 ["createElement"]
      622 GETUPVAL                         R38 11
      623 DUPTABLE                         R39 K149 [{"OnDragMoved", "OnDragEnded", "SelectionStart", "SelectionEnd", "SourceExtents"}]
      624 GETTABLEKS                       R40 R0 K150 ["onSelectDragMoved"]
      626 SETTABLEKS                       R40 R39 K141 ["OnDragMoved"]
      628 GETTABLEKS                       R40 R0 K151 ["onSelectDragEnded"]
      630 SETTABLEKS                       R40 R39 K142 ["OnDragEnded"]
      632 GETTABLEKS                       R40 R0 K152 ["selectDragStart"]
      634 SETTABLEKS                       R40 R39 K146 ["SelectionStart"]
      636 GETTABLEKS                       R40 R0 K153 ["selectDragEnd"]
      638 SETTABLEKS                       R40 R39 K147 ["SelectionEnd"]
      640 GETIMPORT                        R40 K155 [Rect.new]
      642 MOVE                             R41 R7
      643 ADD                              R42 R7 R5
      644 CALL                             R40 2 1
      645 SETTABLEKS                       R40 R39 K148 ["SourceExtents"]
      647 CALL                             R37 2 1
      648 SETTABLEKS                       R37 R36 K74 ["MultiSelectBox"]
      650 MOVE                             R37 R28
      651 JUMPIFNOT                        R37 ; [+74]
      652 GETUPVAL                         R37 2
      653 GETTABLEKS                       R37 R37 K31 ["createElement"]
      655 GETUPVAL                         R38 12
      656 DUPTABLE                         R39 K163 [{"PromptText", "InputText", "NoticeText", "Text", "Buttons", "OnTextSubmitted", "OnClose"}]
      657 LOADK                            R42 K164 ["Title"]
      658 LOADK                            R43 K165 ["ChangeDuration"]
      659 NAMECALL                         R40 R18 K166 ["getText"]
      661 CALL                             R40 3 1
      662 SETTABLEKS                       R40 R39 K156 ["PromptText"]
      664 LOADK                            R42 K164 ["Title"]
      665 LOADK                            R43 K167 ["NewDuration"]
      666 NAMECALL                         R40 R18 K166 ["getText"]
      668 CALL                             R40 3 1
      669 SETTABLEKS                       R40 R39 K157 ["InputText"]
      671 LOADK                            R42 K164 ["Title"]
      672 LOADK                            R43 K168 ["CurrentDuration_Migrated"]
      673 DUPTABLE                         R44 K170 [{"currentDuration"}]
      674 SETTABLEKS                       R28 R44 K169 ["currentDuration"]
      676 NAMECALL                         R40 R18 K166 ["getText"]
      678 CALL                             R40 4 1
      679 SETTABLEKS                       R40 R39 K158 ["NoticeText"]
      681 SETTABLEKS                       R28 R39 K159 ["Text"]
      683 NEWTABLE                         R40 0 2
      685 DUPTABLE                         R41 K173 [{"Key", "Text", "Style"}]
      686 LOADB                            R42 0
      687 SETTABLEKS                       R42 R41 K171 ["Key"]
      689 LOADK                            R44 K174 ["Dialog"]
      690 LOADK                            R45 K175 ["Cancel"]
      691 NAMECALL                         R42 R18 K166 ["getText"]
      693 CALL                             R42 3 1
      694 SETTABLEKS                       R42 R41 K159 ["Text"]
      696 LOADK                            R42 K176 ["Round"]
      697 SETTABLEKS                       R42 R41 K172 ["Style"]
      699 DUPTABLE                         R42 K173 [{"Key", "Text", "Style"}]
      700 LOADB                            R43 1
      701 SETTABLEKS                       R43 R42 K171 ["Key"]
      703 LOADK                            R45 K174 ["Dialog"]
      704 LOADK                            R46 K177 ["Save"]
      705 NAMECALL                         R43 R18 K166 ["getText"]
      707 CALL                             R43 3 1
      708 SETTABLEKS                       R43 R42 K159 ["Text"]
      710 LOADK                            R43 K178 ["RoundPrimary"]
      711 SETTABLEKS                       R43 R42 K172 ["Style"]
      713 SETLIST                          R40 R41 2 [1]
      715 SETTABLEKS                       R40 R39 K160 ["Buttons"]
      717 GETTABLEKS                       R40 R0 K179 ["setSelectedKeyframeDuration"]
      719 SETTABLEKS                       R40 R39 K161 ["OnTextSubmitted"]
      721 GETTABLEKS                       R40 R0 K180 ["setChangingDuration"]
      723 SETTABLEKS                       R40 R39 K162 ["OnClose"]
      725 CALL                             R37 2 1
      726 SETTABLEKS                       R37 R36 K75 ["ChangeDurationPrompt"]
      728 CALL                             R33 3 1
      729 SETTABLEKS                       R33 R32 K39 ["CanvasContainer"]
      731 CALL                             R29 3 -1
      732 RETURN                           R29 -1

PROTO_54:
        0 GETTABLEKS                       R1 R0 K0 ["Status"]
        2 DUPTABLE                         R2 K10 [{"AnimationData", "Active", "FrameRate", "ReadOnly", "SelectedKeyframes", "SelectedTracks", "SnapMode", "VerticalScroll", "VerticalZoom"}]
        3 GETTABLEKS                       R3 R0 K1 ["AnimationData"]
        5 SETTABLEKS                       R3 R2 K1 ["AnimationData"]
        7 GETTABLEKS                       R3 R1 K2 ["Active"]
        9 SETTABLEKS                       R3 R2 K2 ["Active"]
       11 GETTABLEKS                       R3 R1 K3 ["FrameRate"]
       13 SETTABLEKS                       R3 R2 K3 ["FrameRate"]
       15 GETTABLEKS                       R3 R1 K4 ["ReadOnly"]
       17 SETTABLEKS                       R3 R2 K4 ["ReadOnly"]
       19 GETTABLEKS                       R3 R1 K5 ["SelectedKeyframes"]
       21 SETTABLEKS                       R3 R2 K5 ["SelectedKeyframes"]
       23 GETTABLEKS                       R3 R1 K6 ["SelectedTracks"]
       25 SETTABLEKS                       R3 R2 K6 ["SelectedTracks"]
       27 GETTABLEKS                       R3 R1 K7 ["SnapMode"]
       29 SETTABLEKS                       R3 R2 K7 ["SnapMode"]
       31 GETTABLEKS                       R3 R1 K8 ["VerticalScroll"]
       33 SETTABLEKS                       R3 R2 K8 ["VerticalScroll"]
       35 GETTABLEKS                       R3 R1 K9 ["VerticalZoom"]
       37 SETTABLEKS                       R3 R2 K9 ["VerticalZoom"]
       39 RETURN                           R2 1

PROTO_55:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWTABLE                         R2 0 0
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R1 2
        8 NEWTABLE                         R2 0 0
       10 CALL                             R1 1 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 CALL                             R4 0 -1
        3 CALL                             R3 -1 0
        4 GETUPVAL                         R3 0
        5 GETUPVAL                         R4 2
        6 MOVE                             R5 R0
        7 MOVE                             R6 R1
        8 MOVE                             R7 R2
        9 CALL                             R4 3 -1
       10 CALL                             R3 -1 0
       11 GETUPVAL                         R3 0
       12 GETUPVAL                         R4 3
       13 NEWTABLE                         R5 0 0
       15 CALL                             R4 1 -1
       16 CALL                             R3 -1 0
       17 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 CALL                             R3 0 -1
        3 CALL                             R2 -1 0
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 2
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R3 2 -1
        9 CALL                             R2 -1 0
       10 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 MOVE                             R10 R3
        6 MOVE                             R11 R4
        7 CALL                             R6 5 -1
        8 CALL                             R5 -1 0
        9 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 NEWTABLE                         R7 0 0
        4 CALL                             R6 1 -1
        5 CALL                             R5 -1 0
        6 GETUPVAL                         R5 0
        7 GETUPVAL                         R6 2
        8 MOVE                             R7 R0
        9 MOVE                             R8 R1
       10 MOVE                             R9 R2
       11 MOVE                             R10 R3
       12 MOVE                             R11 R4
       13 CALL                             R6 5 -1
       14 CALL                             R5 -1 0
       15 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 MOVE                             R10 R3
        6 MOVE                             R11 R4
        7 CALL                             R6 5 -1
        8 CALL                             R5 -1 0
        9 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 CALL                             R1 -1 0
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 2
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_69:
        0 DUPTABLE                         R1 K14 [{"TestSetCurveEditorScroll", "AddWaypoint", "DeselectAllKeyframes", "DeselectKeyframe", "GenerateCurve", "MoveSelectedKeyframes", "ScaleSelectedKeyframes", "SelectKeyframeRange", "SetKeyframeTangent", "SetPlayState", "SetRightClickContextInfo", "SetSelectedKeyframes", "SetSelectedKeyframeData", "SetVerticalScrollZoom"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["TestSetCurveEditorScroll"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["AddWaypoint"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R2 R1 K2 ["DeselectAllKeyframes"]
       17 NEWCLOSURE                       R2 P3
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 SETTABLEKS                       R2 R1 K3 ["DeselectKeyframe"]
       24 NEWCLOSURE                       R2 P4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U6
       28 SETTABLEKS                       R2 R1 K4 ["GenerateCurve"]
       30 NEWCLOSURE                       R2 P5
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U7
       33 SETTABLEKS                       R2 R1 K5 ["MoveSelectedKeyframes"]
       35 NEWCLOSURE                       R2 P6
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U8
       38 SETTABLEKS                       R2 R1 K6 ["ScaleSelectedKeyframes"]
       40 NEWCLOSURE                       R2 P7
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U9
       44 SETTABLEKS                       R2 R1 K7 ["SelectKeyframeRange"]
       46 NEWCLOSURE                       R2 P8
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U10
       49 SETTABLEKS                       R2 R1 K8 ["SetKeyframeTangent"]
       51 NEWCLOSURE                       R2 P9
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U11
       54 SETTABLEKS                       R2 R1 K9 ["SetPlayState"]
       56 NEWCLOSURE                       R2 P10
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U5
       59 SETTABLEKS                       R2 R1 K10 ["SetRightClickContextInfo"]
       61 NEWCLOSURE                       R2 P11
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U2
       64 SETTABLEKS                       R2 R1 K11 ["SetSelectedKeyframes"]
       66 NEWCLOSURE                       R2 P12
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U1
       69 CAPTURE                          UPVAL U12
       70 SETTABLEKS                       R2 R1 K12 ["SetSelectedKeyframeData"]
       72 NEWCLOSURE                       R2 P13
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U13
       75 SETTABLEKS                       R2 R1 K13 ["SetVerticalScrollZoom"]
       77 RETURN                           R1 1

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
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["withContext"]
       39 GETTABLEKS                       R7 R4 K13 ["UI"]
       41 GETTABLEKS                       R7 R7 K14 ["KeyboardListener"]
       43 GETTABLEKS                       R8 R4 K13 ["UI"]
       45 GETTABLEKS                       R8 R8 K15 ["DragListener"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K16 ["Src"]
       51 GETTABLEKS                       R10 R10 K17 ["Util"]
       53 GETTABLEKS                       R10 R10 K18 ["AnimationData"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R0 K16 ["Src"]
       60 GETTABLEKS                       R11 R11 K17 ["Util"]
       62 GETTABLEKS                       R11 R11 K19 ["Constants"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R12 R0 K16 ["Src"]
       69 GETTABLEKS                       R12 R12 K17 ["Util"]
       71 GETTABLEKS                       R12 R12 K20 ["CurveUtils"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R13 R0 K16 ["Src"]
       78 GETTABLEKS                       R13 R13 K17 ["Util"]
       80 GETTABLEKS                       R13 R13 K21 ["DragContext"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R14 R0 K16 ["Src"]
       87 GETTABLEKS                       R14 R14 K17 ["Util"]
       89 GETTABLEKS                       R14 R14 K22 ["Input"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETTABLEKS                       R15 R0 K16 ["Src"]
       96 GETTABLEKS                       R15 R15 K17 ["Util"]
       98 GETTABLEKS                       R15 R15 K23 ["isEmpty"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R16 R0 K16 ["Src"]
      105 GETTABLEKS                       R16 R16 K17 ["Util"]
      107 GETTABLEKS                       R16 R16 K24 ["KeyframeUtils"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K16 ["Src"]
      114 GETTABLEKS                       R17 R17 K17 ["Util"]
      116 GETTABLEKS                       R17 R17 K25 ["PathUtils"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R18 R0 K16 ["Src"]
      123 GETTABLEKS                       R18 R18 K17 ["Util"]
      125 GETTABLEKS                       R18 R18 K26 ["StringUtils"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K5 [require]
      130 GETTABLEKS                       R19 R0 K16 ["Src"]
      132 GETTABLEKS                       R19 R19 K17 ["Util"]
      134 GETTABLEKS                       R19 R19 K27 ["TrackUtils"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K16 ["Src"]
      141 GETTABLEKS                       R20 R20 K28 ["Actions"]
      143 GETTABLEKS                       R20 R20 K29 ["SetPlayState"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K16 ["Src"]
      150 GETTABLEKS                       R21 R21 K28 ["Actions"]
      152 GETTABLEKS                       R21 R21 K30 ["SetRightClickContextInfo"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K5 [require]
      157 GETTABLEKS                       R22 R0 K16 ["Src"]
      159 GETTABLEKS                       R22 R22 K28 ["Actions"]
      161 GETTABLEKS                       R22 R22 K31 ["SetSelectedEvents"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K5 [require]
      166 GETTABLEKS                       R23 R0 K16 ["Src"]
      168 GETTABLEKS                       R23 R23 K28 ["Actions"]
      170 GETTABLEKS                       R23 R23 K32 ["SetSelectedKeyframes"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K5 [require]
      175 GETTABLEKS                       R24 R0 K16 ["Src"]
      177 GETTABLEKS                       R24 R24 K28 ["Actions"]
      179 GETTABLEKS                       R24 R24 K33 ["SetVerticalScrollZoom"]
      181 CALL                             R23 1 1
      182 GETIMPORT                        R24 K5 [require]
      184 GETTABLEKS                       R25 R0 K16 ["Src"]
      186 GETTABLEKS                       R25 R25 K28 ["Actions"]
      188 GETTABLEKS                       R25 R25 K34 ["TestSetCurveEditorScroll"]
      190 CALL                             R24 1 1
      191 GETIMPORT                        R25 K5 [require]
      193 GETTABLEKS                       R26 R0 K16 ["Src"]
      195 GETTABLEKS                       R26 R26 K35 ["Components"]
      197 GETTABLEKS                       R26 R26 K36 ["Curves"]
      199 GETTABLEKS                       R26 R26 K37 ["CurveCanvas"]
      201 CALL                             R25 1 1
      202 GETIMPORT                        R26 K5 [require]
      204 GETTABLEKS                       R27 R0 K16 ["Src"]
      206 GETTABLEKS                       R27 R27 K35 ["Components"]
      208 GETTABLEKS                       R27 R27 K36 ["Curves"]
      210 GETTABLEKS                       R27 R27 K38 ["KeyframeActions"]
      212 CALL                             R26 1 1
      213 GETIMPORT                        R27 K5 [require]
      215 GETTABLEKS                       R28 R0 K16 ["Src"]
      217 GETTABLEKS                       R28 R28 K35 ["Components"]
      219 GETTABLEKS                       R28 R28 K36 ["Curves"]
      221 GETTABLEKS                       R28 R28 K39 ["TangentActions"]
      223 CALL                             R27 1 1
      224 GETIMPORT                        R28 K5 [require]
      226 GETTABLEKS                       R29 R0 K16 ["Src"]
      228 GETTABLEKS                       R29 R29 K35 ["Components"]
      230 GETTABLEKS                       R29 R29 K40 ["EventsController"]
      232 CALL                             R28 1 1
      233 GETIMPORT                        R29 K5 [require]
      235 GETTABLEKS                       R30 R0 K16 ["Src"]
      237 GETTABLEKS                       R30 R30 K35 ["Components"]
      239 GETTABLEKS                       R30 R30 K36 ["Curves"]
      241 GETTABLEKS                       R30 R30 K41 ["Scale"]
      243 CALL                             R29 1 1
      244 GETIMPORT                        R30 K5 [require]
      246 GETTABLEKS                       R31 R0 K16 ["Src"]
      248 GETTABLEKS                       R31 R31 K35 ["Components"]
      250 GETTABLEKS                       R31 R31 K42 ["ScaleControls"]
      252 GETTABLEKS                       R31 R31 K42 ["ScaleControls"]
      254 CALL                             R30 1 1
      255 GETIMPORT                        R31 K5 [require]
      257 GETTABLEKS                       R32 R0 K16 ["Src"]
      259 GETTABLEKS                       R32 R32 K35 ["Components"]
      261 GETTABLEKS                       R32 R32 K43 ["SelectionBox"]
      263 CALL                             R31 1 1
      264 GETIMPORT                        R32 K5 [require]
      266 GETTABLEKS                       R33 R0 K16 ["Src"]
      268 GETTABLEKS                       R33 R33 K35 ["Components"]
      270 GETTABLEKS                       R33 R33 K44 ["TextEntryPrompt"]
      272 CALL                             R32 1 1
      273 GETIMPORT                        R33 K5 [require]
      275 GETTABLEKS                       R34 R0 K16 ["Src"]
      277 GETTABLEKS                       R34 R34 K45 ["Thunks"]
      279 GETTABLEKS                       R34 R34 K46 ["History"]
      281 GETTABLEKS                       R34 R34 K47 ["AddWaypoint"]
      283 CALL                             R33 1 1
      284 GETIMPORT                        R34 K5 [require]
      286 GETTABLEKS                       R35 R0 K16 ["Src"]
      288 GETTABLEKS                       R35 R35 K45 ["Thunks"]
      290 GETTABLEKS                       R35 R35 K48 ["Selection"]
      292 GETTABLEKS                       R35 R35 K49 ["DeselectKeyframe"]
      294 CALL                             R34 1 1
      295 GETIMPORT                        R35 K5 [require]
      297 GETTABLEKS                       R36 R0 K16 ["Src"]
      299 GETTABLEKS                       R36 R36 K45 ["Thunks"]
      301 GETTABLEKS                       R36 R36 K48 ["Selection"]
      303 GETTABLEKS                       R36 R36 K50 ["GenerateCurve"]
      305 CALL                             R35 1 1
      306 GETIMPORT                        R36 K5 [require]
      308 GETTABLEKS                       R37 R0 K16 ["Src"]
      310 GETTABLEKS                       R37 R37 K45 ["Thunks"]
      312 GETTABLEKS                       R37 R37 K48 ["Selection"]
      314 GETTABLEKS                       R37 R37 K51 ["MoveSelectedKeyframes"]
      316 CALL                             R36 1 1
      317 GETIMPORT                        R37 K5 [require]
      319 GETTABLEKS                       R38 R0 K16 ["Src"]
      321 GETTABLEKS                       R38 R38 K45 ["Thunks"]
      323 GETTABLEKS                       R38 R38 K48 ["Selection"]
      325 GETTABLEKS                       R38 R38 K52 ["ScaleSelectedKeyframes"]
      327 CALL                             R37 1 1
      328 GETIMPORT                        R38 K5 [require]
      330 GETTABLEKS                       R39 R0 K16 ["Src"]
      332 GETTABLEKS                       R39 R39 K45 ["Thunks"]
      334 GETTABLEKS                       R39 R39 K48 ["Selection"]
      336 GETTABLEKS                       R39 R39 K53 ["SelectKeyframeRange"]
      338 CALL                             R38 1 1
      339 GETIMPORT                        R39 K5 [require]
      341 GETTABLEKS                       R40 R0 K16 ["Src"]
      343 GETTABLEKS                       R40 R40 K45 ["Thunks"]
      345 GETTABLEKS                       R40 R40 K54 ["SetKeyframeTangent"]
      347 CALL                             R39 1 1
      348 GETIMPORT                        R40 K5 [require]
      350 GETTABLEKS                       R41 R0 K16 ["Src"]
      352 GETTABLEKS                       R41 R41 K45 ["Thunks"]
      354 GETTABLEKS                       R41 R41 K48 ["Selection"]
      356 GETTABLEKS                       R41 R41 K55 ["SetSelectedKeyframeData"]
      358 CALL                             R40 1 1
      359 GETTABLEKS                       R41 R1 K56 ["Component"]
      361 LOADK                            R43 K57 ["CurveEditorController"]
      362 NAMECALL                         R41 R41 K58 ["extend"]
      364 CALL                             R41 2 1
      365 DUPCLOSURE                       R42 K59 [PROTO_30]
      366 CAPTURE                          VAL R10
      367 CAPTURE                          VAL R1
      368 CAPTURE                          VAL R3
      369 CAPTURE                          VAL R17
      370 CAPTURE                          VAL R9
      371 CAPTURE                          VAL R12
      372 CAPTURE                          VAL R15
      373 CAPTURE                          VAL R14
      374 SETTABLEKS                       R42 R41 K60 ["init"]
      376 DUPCLOSURE                       R42 K61 [PROTO_32]
      377 CAPTURE                          VAL R18
      378 CAPTURE                          VAL R14
      379 CAPTURE                          VAL R10
      380 CAPTURE                          VAL R15
      381 CAPTURE                          VAL R11
      382 SETTABLEKS                       R42 R41 K62 ["updateCanvasExtents"]
      384 DUPCLOSURE                       R42 K63 [PROTO_34]
      385 CAPTURE                          VAL R9
      386 CAPTURE                          VAL R18
      387 CAPTURE                          VAL R3
      388 SETTABLEKS                       R42 R41 K64 ["updateTracks"]
      390 DUPCLOSURE                       R42 K65 [PROTO_35]
      391 SETTABLEKS                       R42 R41 K66 ["didUpdate"]
      393 DUPCLOSURE                       R42 K67 [PROTO_36]
      394 SETTABLEKS                       R42 R41 K68 ["addAction"]
      396 DUPCLOSURE                       R42 K69 [PROTO_38]
      397 SETTABLEKS                       R42 R41 K70 ["didMount"]
      399 DUPCLOSURE                       R42 K71 [PROTO_39]
      400 SETTABLEKS                       R42 R41 K72 ["willUnmount"]
      402 DUPCLOSURE                       R42 K73 [PROTO_40]
      403 CAPTURE                          VAL R14
      404 SETTABLEKS                       R42 R41 K74 ["hasSelectedKeyframes"]
      406 DUPCLOSURE                       R42 K75 [PROTO_41]
      407 CAPTURE                          VAL R9
      408 SETTABLEKS                       R42 R41 K76 ["multipleFramesSelected"]
      410 DUPCLOSURE                       R42 K77 [PROTO_42]
      411 CAPTURE                          VAL R13
      412 SETTABLEKS                       R42 R41 K78 ["handleCanvasInputBegan"]
      414 DUPCLOSURE                       R42 K79 [PROTO_43]
      415 CAPTURE                          VAL R10
      416 SETTABLEKS                       R42 R41 K80 ["handleWheelTick"]
      418 DUPCLOSURE                       R42 K81 [PROTO_44]
      419 SETTABLEKS                       R42 R41 K82 ["handleCanvasInputChanged"]
      421 DUPCLOSURE                       R42 K83 [PROTO_45]
      422 CAPTURE                          VAL R13
      423 SETTABLEKS                       R42 R41 K84 ["handleCanvasInputEnded"]
      425 DUPCLOSURE                       R42 K85 [PROTO_53]
      426 CAPTURE                          VAL R9
      427 CAPTURE                          VAL R10
      428 CAPTURE                          VAL R1
      429 CAPTURE                          VAL R28
      430 CAPTURE                          VAL R7
      431 CAPTURE                          VAL R26
      432 CAPTURE                          VAL R27
      433 CAPTURE                          VAL R29
      434 CAPTURE                          VAL R25
      435 CAPTURE                          VAL R30
      436 CAPTURE                          VAL R8
      437 CAPTURE                          VAL R31
      438 CAPTURE                          VAL R32
      439 SETTABLEKS                       R42 R41 K86 ["render"]
      441 MOVE                             R42 R6
      442 DUPTABLE                         R43 K91 [{"Analytics", "Localization", "PluginActions", "Stylizer"}]
      443 GETTABLEKS                       R44 R5 K87 ["Analytics"]
      445 SETTABLEKS                       R44 R43 K87 ["Analytics"]
      447 GETTABLEKS                       R44 R5 K88 ["Localization"]
      449 SETTABLEKS                       R44 R43 K88 ["Localization"]
      451 GETTABLEKS                       R44 R5 K89 ["PluginActions"]
      453 SETTABLEKS                       R44 R43 K89 ["PluginActions"]
      455 GETTABLEKS                       R44 R5 K90 ["Stylizer"]
      457 SETTABLEKS                       R44 R43 K90 ["Stylizer"]
      459 CALL                             R42 1 1
      460 MOVE                             R43 R41
      461 CALL                             R42 1 1
      462 MOVE                             R41 R42
      463 DUPCLOSURE                       R42 K92 [PROTO_54]
      464 DUPCLOSURE                       R43 K93 [PROTO_69]
      465 CAPTURE                          VAL R24
      466 CAPTURE                          VAL R33
      467 CAPTURE                          VAL R22
      468 CAPTURE                          VAL R21
      469 CAPTURE                          VAL R34
      470 CAPTURE                          VAL R20
      471 CAPTURE                          VAL R35
      472 CAPTURE                          VAL R36
      473 CAPTURE                          VAL R37
      474 CAPTURE                          VAL R38
      475 CAPTURE                          VAL R39
      476 CAPTURE                          VAL R19
      477 CAPTURE                          VAL R40
      478 CAPTURE                          VAL R23
      479 GETTABLEKS                       R44 R2 K94 ["connect"]
      481 MOVE                             R45 R42
      482 MOVE                             R46 R43
      483 CALL                             R44 2 1
      484 MOVE                             R45 R41
      485 CALL                             R44 1 -1
      486 RETURN                           R44 -1
