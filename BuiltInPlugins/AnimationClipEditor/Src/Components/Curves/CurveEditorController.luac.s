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
       12 DUPTABLE                         R2 K8 [{["ShowKeyframeMenu"] = True, ["ShowTangentMenu"] = False}]
       13 NAMECALL                         R0 R0 K9 ["setState"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["SetPlayState"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["PLAY_STATE"]
        8 GETTABLEKS                       R1 R1 K3 ["Pause"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 DUPTABLE                         R2 K8 [{["ShowKeyframeMenu"] = False, ["ShowTangentMenu"] = True}]
       13 NAMECALL                         R0 R0 K9 ["setState"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

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
       22 SUBRK                            R8 K10 [1] R6
       23 DIVRK                            R7 K10 [1] R8
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
       94 SUBRK                            R19 K10 [1] R20
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
        5 JUMPIF                           R0 ; [+11]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["props"]
        9 GETTABLEKS                       R0 R0 K3 ["AddWaypoint"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 0
       13 DUPTABLE                         R2 K5 [{["HasDragWaypoint"] = True}]
       14 NAMECALL                         R0 R0 K6 ["setState"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

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
       22 DUPTABLE                         R5 K10 [{["DraggingScale"] = True, ["DragTick"], ["HasDragWaypoint"] = False}]
       23 SETTABLEKS                       R0 R5 K7 ["DragTick"]
       25 NAMECALL                         R3 R3 K11 ["setState"]
       27 CALL                             R3 2 0
       28 RETURN                           R0 0

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
        5 DUPTABLE                         R2 K5 [{["DraggingScale"] = False, ["DragTick"], ["HasDragWaypoint"] = False}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K6 ["None"]
        9 SETTABLEKS                       R3 R2 K3 ["DragTick"]
       11 NAMECALL                         R0 R0 K7 ["setState"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["ShowKeyframeMenu"]
        5 JUMPIF                           R1 ; [+29]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["state"]
        9 GETTABLEKS                       R1 R1 K2 ["ShowTangentMenu"]
       11 JUMPIF                           R1 ; [+23]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K3 ["props"]
       15 GETTABLEKS                       R1 R1 K4 ["ReadOnly"]
       17 JUMPIF                           R1 ; [+17]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K5 ["updateSelectDragStart"]
       21 GETTABLEKS                       R2 R0 K6 ["Position"]
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K7 ["updateSelectDragEnd"]
       27 GETTABLEKS                       R2 R0 K6 ["Position"]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 0
       31 DUPTABLE                         R3 K10 [{["DraggingSelection"] = True}]
       32 NAMECALL                         R1 R1 K11 ["setState"]
       34 CALL                             R1 2 0
       35 RETURN                           R0 0

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
       22 DUPTABLE                         R6 K10 [{["Dragging"] = True, ["DragTick"], ["HasDragWaypoint"] = False}]
       23 SETTABLEKS                       R0 R6 K7 ["DragTick"]
       25 NAMECALL                         R4 R4 K11 ["setState"]
       27 CALL                             R4 2 0
       28 RETURN                           R0 0

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
       18 DUPTABLE                         R7 K9 [{["Dragging"] = True, ["DragTick"], ["HasDragWaypoint"] = False}]
       19 SETTABLEKS                       R2 R7 K6 ["DragTick"]
       21 NAMECALL                         R5 R5 K10 ["setState"]
       23 CALL                             R5 2 0
       24 RETURN                           R0 0

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
        9 DUPTABLE                         R2 K6 [{["Dragging"] = False, ["DragTick"], ["HasDragWaypoint"] = False}]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K7 ["None"]
       13 SETTABLEKS                       R3 R2 K4 ["DragTick"]
       15 NAMECALL                         R0 R0 K8 ["setState"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

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
        0 DUPTABLE                         R1 K16 [{[1], ["AbsoluteSize"], ["CanvasSize"], ["ChangingDuration"] = False, ["Dragging"] = False, ["DraggingScale"] = False, ["DraggingSelection"] = False, ["DragTick"] = False, ["HasDragWaypoint"] = False, ["MinValue"] = 0, ["MaxValue"], ["ShowKeyframeMenu"] = False, ["ShotTangentMenu"] = False, ["Tracks"]}]
        1 GETIMPORT                        R2 K19 [Vector2.new]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R1 K0 ["AbsolutePosition"]
        6 GETIMPORT                        R2 K19 [Vector2.new]
        8 CALL                             R2 0 1
        9 SETTABLEKS                       R2 R1 K1 ["AbsoluteSize"]
       11 GETIMPORT                        R2 K19 [Vector2.new]
       13 CALL                             R2 0 1
       14 SETTABLEKS                       R2 R1 K2 ["CanvasSize"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K20 ["CURVE_CANVAS_MIN_RANGE"]
       19 SETTABLEKS                       R2 R1 K12 ["MaxValue"]
       21 NEWTABLE                         R2 0 0
       23 SETTABLEKS                       R2 R1 K15 ["Tracks"]
       25 SETTABLEKS                       R1 R0 K21 ["state"]
       27 LOADB                            R1 0
       28 SETTABLEKS                       R1 R0 K22 ["isMounted"]
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K23 ["dragContext"]
       33 LOADB                            R1 0
       34 SETTABLEKS                       R1 R0 K24 ["isMultiSelecting"]
       36 LOADNIL                          R1
       37 SETTABLEKS                       R1 R0 K25 ["dragMode"]
       39 LOADB                            R1 0
       40 SETTABLEKS                       R1 R0 K26 ["mouseDown"]
       42 LOADB                            R1 0
       43 SETTABLEKS                       R1 R0 K27 ["mouseDownInCanvas"]
       45 LOADB                            R1 0
       46 SETTABLEKS                       R1 R0 K28 ["ctrlHeld"]
       48 GETUPVAL                         R1 1
       49 GETTABLEKS                       R1 R1 K29 ["createBinding"]
       51 LOADNIL                          R2
       52 CALL                             R1 1 2
       53 SETTABLEKS                       R1 R0 K30 ["selectDragStart"]
       55 SETTABLEKS                       R2 R0 K31 ["updateSelectDragStart"]
       57 GETUPVAL                         R1 1
       58 GETTABLEKS                       R1 R1 K29 ["createBinding"]
       60 LOADNIL                          R2
       61 CALL                             R1 1 2
       62 SETTABLEKS                       R1 R0 K32 ["selectDragEnd"]
       64 SETTABLEKS                       R2 R0 K33 ["updateSelectDragEnd"]
       66 NEWCLOSURE                       R1 P0
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R1 R0 K34 ["recalculateExtents"]
       70 NEWCLOSURE                       R1 P1
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R1 R0 K35 ["onClearTangentsSelected"]
       75 NEWCLOSURE                       R1 P2
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R1 R0 K36 ["setChangingDuration"]
       79 NEWCLOSURE                       R1 P3
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R1 R0 K37 ["onChangeDuration"]
       83 NEWCLOSURE                       R1 P4
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U0
       86 SETTABLEKS                       R1 R0 K38 ["showKeyframeMenu"]
       88 NEWCLOSURE                       R1 P5
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R1 R0 K39 ["hideKeyframeMenu"]
       92 NEWCLOSURE                       R1 P6
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U0
       95 SETTABLEKS                       R1 R0 K40 ["showTangentMenu"]
       97 NEWCLOSURE                       R1 P7
       98 CAPTURE                          VAL R0
       99 SETTABLEKS                       R1 R0 K41 ["hideTangentMenu"]
      101 NEWCLOSURE                       R1 P8
      102 CAPTURE                          VAL R0
      103 SETTABLEKS                       R1 R0 K42 ["onInterpolationSelected"]
      105 NEWCLOSURE                       R1 P9
      106 CAPTURE                          VAL R0
      107 CAPTURE                          UPVAL U0
      108 SETTABLEKS                       R1 R0 K43 ["toCurveSpace"]
      110 NEWCLOSURE                       R1 P10
      111 CAPTURE                          VAL R0
      112 CAPTURE                          UPVAL U3
      113 CAPTURE                          UPVAL U4
      114 SETTABLEKS                       R1 R0 K44 ["setSelectedKeyframeDuration"]
      116 NEWCLOSURE                       R1 P11
      117 CAPTURE                          VAL R0
      118 SETTABLEKS                       R1 R0 K45 ["addDragWaypoint"]
      120 NEWCLOSURE                       R1 P12
      121 CAPTURE                          VAL R0
      122 CAPTURE                          UPVAL U5
      123 SETTABLEKS                       R1 R0 K46 ["onScaleHandleDragStarted"]
      125 NEWCLOSURE                       R1 P13
      126 CAPTURE                          VAL R0
      127 CAPTURE                          UPVAL U6
      128 CAPTURE                          UPVAL U0
      129 SETTABLEKS                       R1 R0 K47 ["onScaleHandleDragMoved"]
      131 NEWCLOSURE                       R1 P14
      132 CAPTURE                          VAL R0
      133 CAPTURE                          UPVAL U1
      134 SETTABLEKS                       R1 R0 K48 ["onScaleHandleDragEnded"]
      136 NEWCLOSURE                       R1 P15
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R1 R0 K49 ["onSelectDragStarted"]
      140 NEWCLOSURE                       R1 P16
      141 CAPTURE                          VAL R0
      142 CAPTURE                          UPVAL U2
      143 SETTABLEKS                       R1 R0 K50 ["onSetTangent"]
      145 NEWCLOSURE                       R1 P17
      146 CAPTURE                          VAL R0
      147 CAPTURE                          UPVAL U0
      148 SETTABLEKS                       R1 R0 K51 ["onSelectDragMoved"]
      150 NEWCLOSURE                       R1 P18
      151 CAPTURE                          VAL R0
      152 CAPTURE                          UPVAL U1
      153 SETTABLEKS                       R1 R0 K52 ["onSelectDragEnded"]
      155 NEWCLOSURE                       R1 P19
      156 CAPTURE                          VAL R0
      157 CAPTURE                          UPVAL U5
      158 SETTABLEKS                       R1 R0 K53 ["onKeyframeDragStarted"]
      160 NEWCLOSURE                       R1 P20
      161 CAPTURE                          VAL R0
      162 CAPTURE                          UPVAL U5
      163 SETTABLEKS                       R1 R0 K54 ["onTangentDragStarted"]
      165 NEWCLOSURE                       R1 P21
      166 CAPTURE                          VAL R0
      167 CAPTURE                          UPVAL U0
      168 CAPTURE                          UPVAL U6
      169 SETTABLEKS                       R1 R0 K55 ["onDragMoved"]
      171 NEWCLOSURE                       R1 P22
      172 CAPTURE                          VAL R0
      173 CAPTURE                          UPVAL U1
      174 SETTABLEKS                       R1 R0 K56 ["onDragEnded"]
      176 NEWCLOSURE                       R1 P23
      177 CAPTURE                          UPVAL U7
      178 CAPTURE                          VAL R0
      179 SETTABLEKS                       R1 R0 K57 ["handleKeyframeRightClick"]
      181 NEWCLOSURE                       R1 P24
      182 CAPTURE                          VAL R0
      183 SETTABLEKS                       R1 R0 K58 ["handleKeyframeInputBegan"]
      185 NEWCLOSURE                       R1 P25
      186 CAPTURE                          VAL R0
      187 SETTABLEKS                       R1 R0 K59 ["handleKeyframeInputEnded"]
      189 NEWCLOSURE                       R1 P26
      190 CAPTURE                          VAL R0
      191 SETTABLEKS                       R1 R0 K60 ["handleTangentRightClick"]
      193 NEWCLOSURE                       R1 P27
      194 CAPTURE                          VAL R0
      195 SETTABLEKS                       R1 R0 K61 ["handleTangentInputBegan"]
      197 NEWCLOSURE                       R1 P28
      198 CAPTURE                          VAL R0
      199 SETTABLEKS                       R1 R0 K62 ["handleTangentInputEnded"]
      201 RETURN                           R0 0

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
       38 GETUPVAL                         R4 5
       39 CALL                             R4 0 1
       40 JUMPIFNOT                        R4 ; [+2]
       41 CLOSEUPVALS                      R2
       42 RETURN                           R2 2
       43 LOADNIL                          R4
       44 LOADNIL                          R5
       45 CLOSEUPVALS                      R2
       46 RETURN                           R4 2

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
       15 JUMPIF                           R5 ; [+18]
       16 GETUPVAL                         R6 3
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K6 ["Dictionary"]
       20 GETTABLEKS                       R7 R7 K1 ["join"]
       22 MOVE                             R8 R0
       23 DUPTABLE                         R9 K10 [{["Path"], ["Instance"] = "Root"}]
       24 SETTABLEKS                       R3 R9 K7 ["Path"]
       26 CALL                             R7 2 -1
       27 FASTCALL                         TABLE_INSERT ; [+2]
       28 GETIMPORT                        R5 K12 [table.insert]
       30 CALL                             R5 -1 0
       31 GETUPVAL                         R5 2
       32 LOADB                            R6 1
       33 SETTABLE                         R6 R5 R4
       34 RETURN                           R0 0

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
       56 JUMPIFEQ                         R4 R5 ; [+13]
       58 GETUPVAL                         R4 3
       59 CALL                             R4 0 1
       60 JUMPIFNOT                        R4 ; [+5]
       61 MOVE                             R6 R3
       62 NAMECALL                         R4 R0 K12 ["updateCanvasExtents"]
       64 CALL                             R4 2 -1
       65 RETURN                           R4 -1
       66 MOVE                             R6 R3
       67 NAMECALL                         R4 R0 K12 ["updateCanvasExtents"]
       69 CALL                             R4 2 0
       70 LOADNIL                          R4
       71 LOADNIL                          R5
       72 RETURN                           R4 2

PROTO_35:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["AnimationData"]
        4 GETTABLEKS                       R4 R2 K1 ["AnimationData"]
        6 JUMPIFNOTEQ                      R3 R4 ; [+7]
        8 GETTABLEKS                       R3 R1 K2 ["SelectedTracks"]
       10 GETTABLEKS                       R4 R2 K2 ["SelectedTracks"]
       12 JUMPIFEQ                         R3 R4 ; [+34]
       14 GETUPVAL                         R3 0
       15 CALL                             R3 0 1
       16 JUMPIFNOT                        R3 ; [+26]
       17 MOVE                             R5 R1
       18 NAMECALL                         R3 R0 K3 ["updateTracks"]
       20 CALL                             R3 2 2
       21 GETTABLEKS                       R5 R0 K0 ["props"]
       23 GETTABLEKS                       R5 R5 K4 ["TestSetCurveEditorScroll"]
       25 JUMPIFEQKNIL                     R3 ; [+3]
       27 MOVE                             R6 R3
       28 JUMP                             ; [+4]
       29 GETTABLEKS                       R6 R0 K5 ["state"]
       31 GETTABLEKS                       R6 R6 K6 ["MinValue"]
       33 JUMPIFEQKNIL                     R4 ; [+3]
       35 MOVE                             R7 R4
       36 JUMP                             ; [+4]
       37 GETTABLEKS                       R7 R0 K5 ["state"]
       39 GETTABLEKS                       R7 R7 K7 ["MaxValue"]
       41 CALL                             R5 2 0
       42 RETURN                           R0 0
       43 MOVE                             R5 R1
       44 NAMECALL                         R3 R0 K3 ["updateTracks"]
       46 CALL                             R3 2 0
       47 GETTABLEKS                       R3 R0 K0 ["props"]
       49 GETTABLEKS                       R3 R3 K4 ["TestSetCurveEditorScroll"]
       51 GETTABLEKS                       R4 R0 K5 ["state"]
       53 GETTABLEKS                       R4 R4 K6 ["MinValue"]
       55 GETTABLEKS                       R5 R0 K5 ["state"]
       57 GETTABLEKS                       R5 R5 K7 ["MaxValue"]
       59 CALL                             R3 2 0
       60 RETURN                           R0 0

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

PROTO_39:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETUPVAL                         R1 0
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+48]
        6 NEWTABLE                         R3 0 0
        8 NAMECALL                         R1 R0 K1 ["updateTracks"]
       10 CALL                             R1 2 2
       11 GETTABLEKS                       R3 R0 K2 ["props"]
       13 GETTABLEKS                       R3 R3 K3 ["PluginActions"]
       15 NEWTABLE                         R4 0 0
       17 SETTABLEKS                       R4 R0 K4 ["Connections"]
       19 NEWTABLE                         R4 0 0
       21 SETTABLEKS                       R4 R0 K5 ["Actions"]
       23 LOADK                            R8 K6 ["ResizeCanvas"]
       24 NAMECALL                         R6 R3 K7 ["get"]
       26 CALL                             R6 2 1
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R0
       29 NAMECALL                         R4 R0 K8 ["addAction"]
       31 CALL                             R4 3 0
       32 GETTABLEKS                       R4 R0 K2 ["props"]
       34 GETTABLEKS                       R4 R4 K9 ["TestSetCurveEditorScroll"]
       36 JUMPIFEQKNIL                     R1 ; [+3]
       38 MOVE                             R5 R1
       39 JUMP                             ; [+4]
       40 GETTABLEKS                       R5 R0 K10 ["state"]
       42 GETTABLEKS                       R5 R5 K11 ["MinValue"]
       44 JUMPIFEQKNIL                     R2 ; [+3]
       46 MOVE                             R6 R2
       47 JUMP                             ; [+4]
       48 GETTABLEKS                       R6 R0 K10 ["state"]
       50 GETTABLEKS                       R6 R6 K12 ["MaxValue"]
       52 CALL                             R4 2 0
       53 RETURN                           R0 0
       54 NEWTABLE                         R3 0 0
       56 NAMECALL                         R1 R0 K1 ["updateTracks"]
       58 CALL                             R1 2 0
       59 GETTABLEKS                       R1 R0 K2 ["props"]
       61 GETTABLEKS                       R1 R1 K3 ["PluginActions"]
       63 NEWTABLE                         R2 0 0
       65 SETTABLEKS                       R2 R0 K4 ["Connections"]
       67 NEWTABLE                         R2 0 0
       69 SETTABLEKS                       R2 R0 K5 ["Actions"]
       71 LOADK                            R6 K6 ["ResizeCanvas"]
       72 NAMECALL                         R4 R1 K7 ["get"]
       74 CALL                             R4 2 1
       75 NEWCLOSURE                       R5 P1
       76 CAPTURE                          VAL R0
       77 NAMECALL                         R2 R0 K8 ["addAction"]
       79 CALL                             R2 3 0
       80 GETTABLEKS                       R2 R0 K2 ["props"]
       82 GETTABLEKS                       R2 R2 K9 ["TestSetCurveEditorScroll"]
       84 GETTABLEKS                       R3 R0 K10 ["state"]
       86 GETTABLEKS                       R3 R3 K11 ["MinValue"]
       88 GETTABLEKS                       R4 R0 K10 ["state"]
       90 GETTABLEKS                       R4 R4 K12 ["MaxValue"]
       92 CALL                             R2 2 0
       93 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["OnInputChanged"]
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R2 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R2 K1 ["OnInputChanged"]
        9 LOADNIL                          R3
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_46:
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

PROTO_47:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFEQ                         R2 R3 ; [+6]
        6 GETUPVAL                         R2 0
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K4 ["handleCanvasInputBegan"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_48:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFEQ                         R2 R3 ; [+6]
        6 GETUPVAL                         R2 0
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K4 ["handleCanvasInputEnded"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["handleCanvasInputChanged"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R3 0
        1 GETIMPORT                        R5 K2 [Vector2.new]
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R5 2 1
        6 LOADK                            R6 K3 ["forward"]
        7 NAMECALL                         R3 R3 K4 ["handleWheelTick"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R3 0
        1 GETIMPORT                        R5 K2 [Vector2.new]
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R5 2 1
        6 LOADK                            R6 K3 ["backward"]
        7 NAMECALL                         R3 R3 K4 ["handleWheelTick"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["handleCanvasInputBegan"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["handleCanvasInputEnded"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_54:
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
       92 DUPTABLE                         R31 K38 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["ZIndex"]}]
       93 GETTABLEKS                       R32 R1 K33 ["Size"]
       95 SETTABLEKS                       R32 R31 K33 ["Size"]
       97 GETTABLEKS                       R32 R1 K34 ["Position"]
       99 SETTABLEKS                       R32 R31 K34 ["Position"]
      101 GETTABLEKS                       R32 R1 K37 ["ZIndex"]
      103 SETTABLEKS                       R32 R31 K37 ["ZIndex"]
      105 DUPTABLE                         R32 K41 [{"Layout", "Events", "CanvasContainer"}]
      106 GETUPVAL                         R33 2
      107 GETTABLEKS                       R33 R33 K31 ["createElement"]
      109 LOADK                            R34 K42 ["UIListLayout"]
      110 DUPTABLE                         R35 K45 [{"FillDirection", "SortOrder"}]
      111 GETIMPORT                        R36 K48 [Enum.FillDirection.Vertical]
      113 SETTABLEKS                       R36 R35 K43 ["FillDirection"]
      115 GETIMPORT                        R36 K50 [Enum.SortOrder.LayoutOrder]
      117 SETTABLEKS                       R36 R35 K44 ["SortOrder"]
      119 CALL                             R33 2 1
      120 SETTABLEKS                       R33 R32 K39 ["Layout"]
      122 MOVE                             R33 R11
      123 JUMPIFNOT                        R33 ; [+34]
      124 GETUPVAL                         R33 2
      125 GETTABLEKS                       R33 R33 K31 ["createElement"]
      127 GETUPVAL                         R34 3
      128 DUPTABLE                         R35 K51 [{"AbsolutePosition", "AbsoluteSize", "AnimationData", "StartTick", "EndTick", "TrackPadding"}]
      129 GETIMPORT                        R37 K54 [Vector2.new]
      131 LOADN                            R38 0
      132 GETUPVAL                         R39 1
      133 GETTABLEKS                       R39 R39 K55 ["TRACK_HEIGHT"]
      135 CALL                             R37 2 1
      136 SUB                              R36 R7 R37
      137 SETTABLEKS                       R36 R35 K6 ["AbsolutePosition"]
      139 GETIMPORT                        R36 K54 [Vector2.new]
      141 GETTABLEKS                       R37 R5 K56 ["X"]
      143 GETUPVAL                         R38 1
      144 GETTABLEKS                       R38 R38 K55 ["TRACK_HEIGHT"]
      146 CALL                             R36 2 1
      147 SETTABLEKS                       R36 R35 K4 ["AbsoluteSize"]
      149 SETTABLEKS                       R3 R35 K2 ["AnimationData"]
      151 SETTABLEKS                       R8 R35 K7 ["StartTick"]
      153 SETTABLEKS                       R9 R35 K8 ["EndTick"]
      155 SETTABLEKS                       R10 R35 K9 ["TrackPadding"]
      157 CALL                             R33 2 1
      158 SETTABLEKS                       R33 R32 K27 ["Events"]
      160 GETUPVAL                         R33 2
      161 GETTABLEKS                       R33 R33 K31 ["createElement"]
      163 LOADK                            R34 K32 ["Frame"]
      164 NEWTABLE                         R35 16 0
      166 GETIMPORT                        R36 K58 [UDim2.new]
      168 LOADN                            R37 1
      169 LOADN                            R38 0
      170 LOADN                            R39 1
      171 JUMPIFNOT                        R11 ; [+5]
      172 GETUPVAL                         R41 1
      173 GETTABLEKS                       R41 R41 K55 ["TRACK_HEIGHT"]
      175 MINUS                            R40 R41
      176 JUMPIF                           R40 ; [+1]
      177 LOADN                            R40 0
      178 CALL                             R36 4 1
      179 SETTABLEKS                       R36 R35 K33 ["Size"]
      181 LOADN                            R36 1
      182 SETTABLEKS                       R36 R35 K35 ["BackgroundTransparency"]
      184 LOADN                            R36 1
      185 SETTABLEKS                       R36 R35 K49 ["LayoutOrder"]
      187 GETUPVAL                         R36 2
      188 GETTABLEKS                       R36 R36 K59 ["Change"]
      190 GETTABLEKS                       R36 R36 K4 ["AbsoluteSize"]
      192 GETTABLEKS                       R37 R0 K60 ["recalculateExtents"]
      194 SETTABLE                         R37 R35 R36
      195 GETUPVAL                         R36 2
      196 GETTABLEKS                       R36 R36 K61 ["Event"]
      198 GETTABLEKS                       R36 R36 K62 ["InputBegan"]
      200 NEWCLOSURE                       R37 P0
      201 CAPTURE                          VAL R0
      202 SETTABLE                         R37 R35 R36
      203 GETUPVAL                         R36 2
      204 GETTABLEKS                       R36 R36 K61 ["Event"]
      206 GETTABLEKS                       R36 R36 K63 ["InputEnded"]
      208 NEWCLOSURE                       R37 P1
      209 CAPTURE                          VAL R0
      210 SETTABLE                         R37 R35 R36
      211 GETUPVAL                         R36 2
      212 GETTABLEKS                       R36 R36 K61 ["Event"]
      214 GETTABLEKS                       R36 R36 K64 ["InputChanged"]
      216 NEWCLOSURE                       R37 P2
      217 CAPTURE                          VAL R0
      218 SETTABLE                         R37 R35 R36
      219 GETUPVAL                         R36 2
      220 GETTABLEKS                       R36 R36 K61 ["Event"]
      222 GETTABLEKS                       R36 R36 K65 ["MouseWheelForward"]
      224 NEWCLOSURE                       R37 P3
      225 CAPTURE                          VAL R0
      226 SETTABLE                         R37 R35 R36
      227 GETUPVAL                         R36 2
      228 GETTABLEKS                       R36 R36 K61 ["Event"]
      230 GETTABLEKS                       R36 R36 K66 ["MouseWheelBackward"]
      232 NEWCLOSURE                       R37 P4
      233 CAPTURE                          VAL R0
      234 SETTABLE                         R37 R35 R36
      235 DUPTABLE                         R36 K77 [{"KeyboardListener", "KeyframeActions", "TangentActions", "PositionScale", "CurveCanvas", "RotationScale", "ScaleControls", "DragTarget", "MultiSelectBox", "ChangeDurationPrompt"}]
      236 GETUPVAL                         R37 2
      237 GETTABLEKS                       R37 R37 K31 ["createElement"]
      239 GETUPVAL                         R38 4
      240 DUPTABLE                         R39 K80 [{"OnKeyPressed", "OnKeyReleased"}]
      241 NEWCLOSURE                       R40 P5
      242 CAPTURE                          VAL R0
      243 SETTABLEKS                       R40 R39 K78 ["OnKeyPressed"]
      245 NEWCLOSURE                       R40 P6
      246 CAPTURE                          VAL R0
      247 SETTABLEKS                       R40 R39 K79 ["OnKeyReleased"]
      249 CALL                             R37 2 1
      250 SETTABLEKS                       R37 R36 K67 ["KeyboardListener"]
      252 JUMPIFNOT                        R12 ; [+33]
      253 GETUPVAL                         R37 2
      254 GETTABLEKS                       R37 R37 K31 ["createElement"]
      256 GETUPVAL                         R38 5
      257 DUPTABLE                         R39 K88 [{"ShowMenu", "MultipleSelected", "OnMenuOpened", "OnClearTangentsSelected", "OnGenerateCurve", "OnChangeDuration", "OnInterpolationSelected"}]
      258 SETTABLEKS                       R14 R39 K81 ["ShowMenu"]
      260 SETTABLEKS                       R17 R39 K82 ["MultipleSelected"]
      262 GETTABLEKS                       R40 R0 K89 ["hideKeyframeMenu"]
      264 SETTABLEKS                       R40 R39 K83 ["OnMenuOpened"]
      266 GETTABLEKS                       R40 R0 K90 ["onClearTangentsSelected"]
      268 SETTABLEKS                       R40 R39 K84 ["OnClearTangentsSelected"]
      270 GETTABLEKS                       R40 R0 K0 ["props"]
      272 GETTABLEKS                       R40 R40 K91 ["GenerateCurve"]
      274 SETTABLEKS                       R40 R39 K85 ["OnGenerateCurve"]
      276 GETTABLEKS                       R40 R0 K92 ["onChangeDuration"]
      278 SETTABLEKS                       R40 R39 K86 ["OnChangeDuration"]
      280 GETTABLEKS                       R40 R0 K93 ["onInterpolationSelected"]
      282 SETTABLEKS                       R40 R39 K87 ["OnInterpolationSelected"]
      284 CALL                             R37 2 1
      285 JUMPIF                           R37 ; [+1]
      286 LOADNIL                          R37
      287 SETTABLEKS                       R37 R36 K68 ["KeyframeActions"]
      289 JUMPIFNOT                        R12 ; [+17]
      290 GETUPVAL                         R37 2
      291 GETTABLEKS                       R37 R37 K31 ["createElement"]
      293 GETUPVAL                         R38 6
      294 DUPTABLE                         R39 K95 [{"ShowMenu", "OnMenuOpened", "OnSetTangent"}]
      295 SETTABLEKS                       R15 R39 K81 ["ShowMenu"]
      297 GETTABLEKS                       R40 R0 K96 ["hideTangentMenu"]
      299 SETTABLEKS                       R40 R39 K83 ["OnMenuOpened"]
      301 GETTABLEKS                       R40 R0 K97 ["onSetTangent"]
      303 SETTABLEKS                       R40 R39 K94 ["OnSetTangent"]
      305 CALL                             R37 2 1
      306 JUMPIF                           R37 ; [+1]
      307 LOADNIL                          R37
      308 SETTABLEKS                       R37 R36 K69 ["TangentActions"]
      310 GETUPVAL                         R37 2
      311 GETTABLEKS                       R37 R37 K31 ["createElement"]
      313 GETUPVAL                         R38 7
      314 DUPTABLE                         R39 K108 [{["Size"], ["Width"], ["ParentSize"], ["Position"], ["TickWidthScale"] = 0.7, ["SmallTickWidthScale"] = 0.3, ["MinValue"], ["MaxValue"], ["VerticalScroll"], ["VerticalZoom"], ["ScaleType"], ["ZIndex"] = 3}]
      315 GETIMPORT                        R40 K58 [UDim2.new]
      317 LOADN                            R41 0
      318 GETTABLEKS                       R43 R1 K9 ["TrackPadding"]
      320 DIVK                             R42 R43 K109 [2]
      321 LOADN                            R43 1
      322 LOADN                            R44 0
      323 CALL                             R40 4 1
      324 SETTABLEKS                       R40 R39 K33 ["Size"]
      326 GETTABLEKS                       R41 R1 K9 ["TrackPadding"]
      328 DIVK                             R40 R41 K109 [2]
      329 SETTABLEKS                       R40 R39 K98 ["Width"]
      331 SETTABLEKS                       R6 R39 K99 ["ParentSize"]
      333 GETIMPORT                        R40 K58 [UDim2.new]
      335 LOADN                            R41 0
      336 LOADN                            R42 0
      337 LOADN                            R43 0
      338 LOADN                            R44 0
      339 CALL                             R40 4 1
      340 SETTABLEKS                       R40 R39 K34 ["Position"]
      342 SETTABLEKS                       R24 R39 K24 ["MinValue"]
      344 SETTABLEKS                       R25 R39 K25 ["MaxValue"]
      346 GETTABLEKS                       R40 R1 K104 ["VerticalScroll"]
      348 SETTABLEKS                       R40 R39 K104 ["VerticalScroll"]
      350 GETTABLEKS                       R40 R1 K105 ["VerticalZoom"]
      352 SETTABLEKS                       R40 R39 K105 ["VerticalZoom"]
      354 GETUPVAL                         R40 1
      355 GETTABLEKS                       R40 R40 K110 ["SCALE_TYPE"]
      357 GETTABLEKS                       R40 R40 K111 ["Number"]
      359 SETTABLEKS                       R40 R39 K106 ["ScaleType"]
      361 CALL                             R37 2 1
      362 SETTABLEKS                       R37 R36 K70 ["PositionScale"]
      364 JUMPIFNOT                        R4 ; [+84]
      365 GETUPVAL                         R37 2
      366 GETTABLEKS                       R37 R37 K31 ["createElement"]
      368 GETUPVAL                         R38 8
      369 DUPTABLE                         R39 K120 [{["Size"], ["Position"], ["AbsoluteSize"], ["StartTick"], ["EndTick"], ["MinValue"], ["MaxValue"], ["Tracks"], ["VerticalScroll"], ["VerticalZoom"], ["SelectedKeyframes"], ["NamedKeyframes"], ["Playhead"], ["ShowTooltips"], ["ZIndex"] = 1, ["OnKeyRightClick"], ["OnKeyInputBegan"], ["OnKeyInputEnded"], ["OnTangentRightClick"], ["OnTangentInputBegan"], ["OnTangentInputEnded"]}]
      370 GETIMPORT                        R40 K58 [UDim2.new]
      372 LOADN                            R41 1
      373 GETTABLEKS                       R43 R1 K9 ["TrackPadding"]
      375 MINUS                            R42 R43
      376 LOADN                            R43 1
      377 LOADN                            R44 0
      378 CALL                             R40 4 1
      379 SETTABLEKS                       R40 R39 K33 ["Size"]
      381 GETIMPORT                        R40 K58 [UDim2.new]
      383 LOADN                            R41 0
      384 GETTABLEKS                       R43 R1 K9 ["TrackPadding"]
      386 DIVK                             R42 R43 K109 [2]
      387 LOADN                            R43 0
      388 LOADN                            R44 0
      389 CALL                             R40 4 1
      390 SETTABLEKS                       R40 R39 K34 ["Position"]
      392 SETTABLEKS                       R6 R39 K4 ["AbsoluteSize"]
      394 SETTABLEKS                       R8 R39 K7 ["StartTick"]
      396 SETTABLEKS                       R9 R39 K8 ["EndTick"]
      398 SETTABLEKS                       R24 R39 K24 ["MinValue"]
      400 SETTABLEKS                       R25 R39 K25 ["MaxValue"]
      402 SETTABLEKS                       R23 R39 K23 ["Tracks"]
      404 GETTABLEKS                       R40 R1 K104 ["VerticalScroll"]
      406 SETTABLEKS                       R40 R39 K104 ["VerticalScroll"]
      408 GETTABLEKS                       R40 R1 K105 ["VerticalZoom"]
      410 SETTABLEKS                       R40 R39 K105 ["VerticalZoom"]
      412 SETTABLEKS                       R13 R39 K12 ["SelectedKeyframes"]
      414 SETTABLEKS                       R27 R39 K28 ["NamedKeyframes"]
      416 GETTABLEKS                       R40 R1 K112 ["Playhead"]
      418 SETTABLEKS                       R40 R39 K112 ["Playhead"]
      420 NOT                              R40 R21
      421 SETTABLEKS                       R40 R39 K113 ["ShowTooltips"]
      423 GETTABLEKS                       R40 R0 K121 ["handleKeyframeRightClick"]
      425 SETTABLEKS                       R40 R39 K114 ["OnKeyRightClick"]
      427 GETTABLEKS                       R40 R0 K122 ["handleKeyframeInputBegan"]
      429 SETTABLEKS                       R40 R39 K115 ["OnKeyInputBegan"]
      431 GETTABLEKS                       R40 R0 K123 ["handleKeyframeInputEnded"]
      433 SETTABLEKS                       R40 R39 K116 ["OnKeyInputEnded"]
      435 GETTABLEKS                       R40 R0 K124 ["handleTangentRightClick"]
      437 SETTABLEKS                       R40 R39 K117 ["OnTangentRightClick"]
      439 GETTABLEKS                       R40 R0 K125 ["handleTangentInputBegan"]
      441 SETTABLEKS                       R40 R39 K118 ["OnTangentInputBegan"]
      443 GETTABLEKS                       R40 R0 K126 ["handleTangentInputEnded"]
      445 SETTABLEKS                       R40 R39 K119 ["OnTangentInputEnded"]
      447 CALL                             R37 2 1
      448 JUMPIF                           R37 ; [+1]
      449 LOADNIL                          R37
      450 SETTABLEKS                       R37 R36 K71 ["CurveCanvas"]
      452 GETUPVAL                         R38 2
      453 GETTABLEKS                       R38 R38 K31 ["createElement"]
      455 GETUPVAL                         R39 7
      456 DUPTABLE                         R40 K129 [{["Size"], ["Width"], ["ParentSize"], ["Position"], ["TickWidthScale"] = 0.7, ["SmallTickWidthScale"] = 0.3, ["MinValue"], ["MaxValue"], ["VerticalScroll"], ["VerticalZoom"], ["ScaleType"], ["ZIndex"] = 4}]
      457 GETIMPORT                        R41 K58 [UDim2.new]
      459 LOADN                            R42 0
      460 GETTABLEKS                       R44 R1 K9 ["TrackPadding"]
      462 DIVK                             R43 R44 K109 [2]
      463 LOADN                            R44 1
      464 LOADN                            R45 0
      465 CALL                             R41 4 1
      466 SETTABLEKS                       R41 R40 K33 ["Size"]
      468 GETTABLEKS                       R42 R1 K9 ["TrackPadding"]
      470 DIVK                             R41 R42 K109 [2]
      471 SETTABLEKS                       R41 R40 K98 ["Width"]
      473 SETTABLEKS                       R6 R40 K99 ["ParentSize"]
      475 GETIMPORT                        R41 K58 [UDim2.new]
      477 LOADN                            R42 1
      478 GETTABLEKS                       R45 R1 K9 ["TrackPadding"]
      480 MINUS                            R44 R45
      481 DIVK                             R43 R44 K109 [2]
      482 LOADN                            R44 0
      483 LOADN                            R45 0
      484 CALL                             R41 4 1
      485 SETTABLEKS                       R41 R40 K34 ["Position"]
      487 FASTCALL1                        MATH_DEG R24 ; [+3]
      488 MOVE                             R42 R24
      489 GETIMPORT                        R41 K132 [math.deg]
      491 CALL                             R41 1 1
      492 SETTABLEKS                       R41 R40 K24 ["MinValue"]
      494 FASTCALL1                        MATH_DEG R25 ; [+3]
      495 MOVE                             R42 R25
      496 GETIMPORT                        R41 K132 [math.deg]
      498 CALL                             R41 1 1
      499 SETTABLEKS                       R41 R40 K25 ["MaxValue"]
      501 GETTABLEKS                       R41 R1 K104 ["VerticalScroll"]
      503 SETTABLEKS                       R41 R40 K104 ["VerticalScroll"]
      505 GETTABLEKS                       R41 R1 K105 ["VerticalZoom"]
      507 SETTABLEKS                       R41 R40 K105 ["VerticalZoom"]
      509 GETUPVAL                         R41 1
      510 GETTABLEKS                       R41 R41 K110 ["SCALE_TYPE"]
      512 GETTABLEKS                       R41 R41 K133 ["Angle"]
      514 SETTABLEKS                       R41 R40 K106 ["ScaleType"]
      516 CALL                             R38 2 1
      517 ORK                              R37 R38 K127 []
      518 SETTABLEKS                       R37 R36 K72 ["RotationScale"]
      520 MOVE                             R37 R17
      521 JUMPIFNOT                        R37 ; [+39]
      522 NOT                              R37 R26
      523 JUMPIFNOT                        R37 ; [+37]
      524 GETUPVAL                         R37 2
      525 GETTABLEKS                       R37 R37 K31 ["createElement"]
      527 GETUPVAL                         R38 9
      528 DUPTABLE                         R39 K142 [{["SelectedKeyframes"], ["StartTick"], ["EndTick"], ["UseFullHeight"] = True, ["TrackPadding"], ["Dragging"], ["TimelineUnit"], ["FrameRate"], ["DopeSheetWidth"], ["ZIndex"] = 2, ["ShowSelectionArea"] = True, ["IsChannelAnimation"] = True, ["OnScaleHandleDragStart"], ["OnScaleHandleDragEnd"], ["OnScaleHandleDragMoved"]}]
      529 SETTABLEKS                       R13 R39 K12 ["SelectedKeyframes"]
      531 SETTABLEKS                       R8 R39 K7 ["StartTick"]
      533 SETTABLEKS                       R9 R39 K8 ["EndTick"]
      535 SETTABLEKS                       R10 R39 K9 ["TrackPadding"]
      537 OR                               R40 R22 R21
      538 SETTABLEKS                       R40 R39 K21 ["Dragging"]
      540 SETTABLEKS                       R20 R39 K20 ["TimelineUnit"]
      542 SETTABLEKS                       R19 R39 K19 ["FrameRate"]
      544 GETTABLEKS                       R40 R6 K56 ["X"]
      546 SETTABLEKS                       R40 R39 K136 ["DopeSheetWidth"]
      548 GETTABLEKS                       R40 R0 K143 ["onScaleHandleDragStarted"]
      550 SETTABLEKS                       R40 R39 K139 ["OnScaleHandleDragStart"]
      552 GETTABLEKS                       R40 R0 K144 ["onScaleHandleDragEnded"]
      554 SETTABLEKS                       R40 R39 K140 ["OnScaleHandleDragEnd"]
      556 GETTABLEKS                       R40 R0 K145 ["onScaleHandleDragMoved"]
      558 SETTABLEKS                       R40 R39 K141 ["OnScaleHandleDragMoved"]
      560 CALL                             R37 2 1
      561 SETTABLEKS                       R37 R36 K73 ["ScaleControls"]
      563 MOVE                             R37 R21
      564 JUMPIFNOT                        R37 ; [+14]
      565 GETUPVAL                         R37 2
      566 GETTABLEKS                       R37 R37 K31 ["createElement"]
      568 GETUPVAL                         R38 10
      569 DUPTABLE                         R39 K148 [{"OnDragMoved", "OnDragEnded"}]
      570 GETTABLEKS                       R40 R0 K149 ["onDragMoved"]
      572 SETTABLEKS                       R40 R39 K146 ["OnDragMoved"]
      574 GETTABLEKS                       R40 R0 K150 ["onDragEnded"]
      576 SETTABLEKS                       R40 R39 K147 ["OnDragEnded"]
      578 CALL                             R37 2 1
      579 SETTABLEKS                       R37 R36 K74 ["DragTarget"]
      581 MOVE                             R37 R26
      582 JUMPIFNOT                        R37 ; [+29]
      583 GETUPVAL                         R37 2
      584 GETTABLEKS                       R37 R37 K31 ["createElement"]
      586 GETUPVAL                         R38 11
      587 DUPTABLE                         R39 K154 [{"OnDragMoved", "OnDragEnded", "SelectionStart", "SelectionEnd", "SourceExtents"}]
      588 GETTABLEKS                       R40 R0 K155 ["onSelectDragMoved"]
      590 SETTABLEKS                       R40 R39 K146 ["OnDragMoved"]
      592 GETTABLEKS                       R40 R0 K156 ["onSelectDragEnded"]
      594 SETTABLEKS                       R40 R39 K147 ["OnDragEnded"]
      596 GETTABLEKS                       R40 R0 K157 ["selectDragStart"]
      598 SETTABLEKS                       R40 R39 K151 ["SelectionStart"]
      600 GETTABLEKS                       R40 R0 K158 ["selectDragEnd"]
      602 SETTABLEKS                       R40 R39 K152 ["SelectionEnd"]
      604 GETIMPORT                        R40 K160 [Rect.new]
      606 MOVE                             R41 R7
      607 ADD                              R42 R7 R5
      608 CALL                             R40 2 1
      609 SETTABLEKS                       R40 R39 K153 ["SourceExtents"]
      611 CALL                             R37 2 1
      612 SETTABLEKS                       R37 R36 K75 ["MultiSelectBox"]
      614 MOVE                             R37 R28
      615 JUMPIFNOT                        R37 ; [+62]
      616 GETUPVAL                         R37 2
      617 GETTABLEKS                       R37 R37 K31 ["createElement"]
      619 GETUPVAL                         R38 12
      620 DUPTABLE                         R39 K168 [{"PromptText", "InputText", "NoticeText", "Text", "Buttons", "OnTextSubmitted", "OnClose"}]
      621 LOADK                            R42 K169 ["Title"]
      622 LOADK                            R43 K170 ["ChangeDuration"]
      623 NAMECALL                         R40 R18 K171 ["getText"]
      625 CALL                             R40 3 1
      626 SETTABLEKS                       R40 R39 K161 ["PromptText"]
      628 LOADK                            R42 K169 ["Title"]
      629 LOADK                            R43 K172 ["NewDuration"]
      630 NAMECALL                         R40 R18 K171 ["getText"]
      632 CALL                             R40 3 1
      633 SETTABLEKS                       R40 R39 K162 ["InputText"]
      635 LOADK                            R42 K169 ["Title"]
      636 LOADK                            R43 K173 ["CurrentDuration_Migrated"]
      637 DUPTABLE                         R44 K175 [{"currentDuration"}]
      638 SETTABLEKS                       R28 R44 K174 ["currentDuration"]
      640 NAMECALL                         R40 R18 K171 ["getText"]
      642 CALL                             R40 4 1
      643 SETTABLEKS                       R40 R39 K163 ["NoticeText"]
      645 SETTABLEKS                       R28 R39 K164 ["Text"]
      647 NEWTABLE                         R40 0 2
      649 DUPTABLE                         R41 K180 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
      650 LOADK                            R44 K181 ["Dialog"]
      651 LOADK                            R45 K182 ["Cancel"]
      652 NAMECALL                         R42 R18 K171 ["getText"]
      654 CALL                             R42 3 1
      655 SETTABLEKS                       R42 R41 K164 ["Text"]
      657 DUPTABLE                         R42 K184 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
      658 LOADK                            R45 K181 ["Dialog"]
      659 LOADK                            R46 K185 ["Save"]
      660 NAMECALL                         R43 R18 K171 ["getText"]
      662 CALL                             R43 3 1
      663 SETTABLEKS                       R43 R42 K164 ["Text"]
      665 SETLIST                          R40 R41 2 [1]
      667 SETTABLEKS                       R40 R39 K165 ["Buttons"]
      669 GETTABLEKS                       R40 R0 K186 ["setSelectedKeyframeDuration"]
      671 SETTABLEKS                       R40 R39 K166 ["OnTextSubmitted"]
      673 GETTABLEKS                       R40 R0 K187 ["setChangingDuration"]
      675 SETTABLEKS                       R40 R39 K167 ["OnClose"]
      677 CALL                             R37 2 1
      678 SETTABLEKS                       R37 R36 K76 ["ChangeDurationPrompt"]
      680 CALL                             R33 3 1
      681 SETTABLEKS                       R33 R32 K40 ["CanvasContainer"]
      683 CALL                             R29 3 -1
      684 RETURN                           R29 -1

PROTO_55:
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

PROTO_56:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_58:
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

PROTO_59:
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

PROTO_60:
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

PROTO_61:
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

PROTO_62:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_63:
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

PROTO_64:
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
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_68:
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

PROTO_69:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_70:
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
       58 GETTABLEKS                       R11 R0 K19 ["LuaFlags"]
       60 GETTABLEKS                       R11 R11 K20 ["GetFFlagACERoactCompatPrepFixes"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K5 [require]
       65 GETTABLEKS                       R12 R0 K16 ["Src"]
       67 GETTABLEKS                       R12 R12 K17 ["Util"]
       69 GETTABLEKS                       R12 R12 K21 ["Constants"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K5 [require]
       74 GETTABLEKS                       R13 R0 K16 ["Src"]
       76 GETTABLEKS                       R13 R13 K17 ["Util"]
       78 GETTABLEKS                       R13 R13 K22 ["CurveUtils"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K5 [require]
       83 GETTABLEKS                       R14 R0 K16 ["Src"]
       85 GETTABLEKS                       R14 R14 K17 ["Util"]
       87 GETTABLEKS                       R14 R14 K23 ["DragContext"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K5 [require]
       92 GETTABLEKS                       R15 R0 K16 ["Src"]
       94 GETTABLEKS                       R15 R15 K17 ["Util"]
       96 GETTABLEKS                       R15 R15 K24 ["Input"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K5 [require]
      101 GETTABLEKS                       R16 R0 K16 ["Src"]
      103 GETTABLEKS                       R16 R16 K17 ["Util"]
      105 GETTABLEKS                       R16 R16 K25 ["isEmpty"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETTABLEKS                       R17 R0 K16 ["Src"]
      112 GETTABLEKS                       R17 R17 K17 ["Util"]
      114 GETTABLEKS                       R17 R17 K26 ["KeyframeUtils"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R18 R0 K16 ["Src"]
      121 GETTABLEKS                       R18 R18 K17 ["Util"]
      123 GETTABLEKS                       R18 R18 K27 ["PathUtils"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETTABLEKS                       R19 R0 K16 ["Src"]
      130 GETTABLEKS                       R19 R19 K17 ["Util"]
      132 GETTABLEKS                       R19 R19 K28 ["StringUtils"]
      134 CALL                             R18 1 1
      135 GETIMPORT                        R19 K5 [require]
      137 GETTABLEKS                       R20 R0 K16 ["Src"]
      139 GETTABLEKS                       R20 R20 K17 ["Util"]
      141 GETTABLEKS                       R20 R20 K29 ["TrackUtils"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K5 [require]
      146 GETTABLEKS                       R21 R0 K16 ["Src"]
      148 GETTABLEKS                       R21 R21 K30 ["Actions"]
      150 GETTABLEKS                       R21 R21 K31 ["SetPlayState"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R22 R0 K16 ["Src"]
      157 GETTABLEKS                       R22 R22 K30 ["Actions"]
      159 GETTABLEKS                       R22 R22 K32 ["SetRightClickContextInfo"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K5 [require]
      164 GETTABLEKS                       R23 R0 K16 ["Src"]
      166 GETTABLEKS                       R23 R23 K30 ["Actions"]
      168 GETTABLEKS                       R23 R23 K33 ["SetSelectedEvents"]
      170 CALL                             R22 1 1
      171 GETIMPORT                        R23 K5 [require]
      173 GETTABLEKS                       R24 R0 K16 ["Src"]
      175 GETTABLEKS                       R24 R24 K30 ["Actions"]
      177 GETTABLEKS                       R24 R24 K34 ["SetSelectedKeyframes"]
      179 CALL                             R23 1 1
      180 GETIMPORT                        R24 K5 [require]
      182 GETTABLEKS                       R25 R0 K16 ["Src"]
      184 GETTABLEKS                       R25 R25 K30 ["Actions"]
      186 GETTABLEKS                       R25 R25 K35 ["SetVerticalScrollZoom"]
      188 CALL                             R24 1 1
      189 GETIMPORT                        R25 K5 [require]
      191 GETTABLEKS                       R26 R0 K16 ["Src"]
      193 GETTABLEKS                       R26 R26 K30 ["Actions"]
      195 GETTABLEKS                       R26 R26 K36 ["TestSetCurveEditorScroll"]
      197 CALL                             R25 1 1
      198 GETIMPORT                        R26 K5 [require]
      200 GETTABLEKS                       R27 R0 K16 ["Src"]
      202 GETTABLEKS                       R27 R27 K37 ["Components"]
      204 GETTABLEKS                       R27 R27 K38 ["Curves"]
      206 GETTABLEKS                       R27 R27 K39 ["CurveCanvas"]
      208 CALL                             R26 1 1
      209 GETIMPORT                        R27 K5 [require]
      211 GETTABLEKS                       R28 R0 K16 ["Src"]
      213 GETTABLEKS                       R28 R28 K37 ["Components"]
      215 GETTABLEKS                       R28 R28 K38 ["Curves"]
      217 GETTABLEKS                       R28 R28 K40 ["KeyframeActions"]
      219 CALL                             R27 1 1
      220 GETIMPORT                        R28 K5 [require]
      222 GETTABLEKS                       R29 R0 K16 ["Src"]
      224 GETTABLEKS                       R29 R29 K37 ["Components"]
      226 GETTABLEKS                       R29 R29 K38 ["Curves"]
      228 GETTABLEKS                       R29 R29 K41 ["TangentActions"]
      230 CALL                             R28 1 1
      231 GETIMPORT                        R29 K5 [require]
      233 GETTABLEKS                       R30 R0 K16 ["Src"]
      235 GETTABLEKS                       R30 R30 K37 ["Components"]
      237 GETTABLEKS                       R30 R30 K42 ["EventsController"]
      239 CALL                             R29 1 1
      240 GETIMPORT                        R30 K5 [require]
      242 GETTABLEKS                       R31 R0 K16 ["Src"]
      244 GETTABLEKS                       R31 R31 K37 ["Components"]
      246 GETTABLEKS                       R31 R31 K38 ["Curves"]
      248 GETTABLEKS                       R31 R31 K43 ["Scale"]
      250 CALL                             R30 1 1
      251 GETIMPORT                        R31 K5 [require]
      253 GETTABLEKS                       R32 R0 K16 ["Src"]
      255 GETTABLEKS                       R32 R32 K37 ["Components"]
      257 GETTABLEKS                       R32 R32 K44 ["ScaleControls"]
      259 GETTABLEKS                       R32 R32 K44 ["ScaleControls"]
      261 CALL                             R31 1 1
      262 GETIMPORT                        R32 K5 [require]
      264 GETTABLEKS                       R33 R0 K16 ["Src"]
      266 GETTABLEKS                       R33 R33 K37 ["Components"]
      268 GETTABLEKS                       R33 R33 K45 ["SelectionBox"]
      270 CALL                             R32 1 1
      271 GETIMPORT                        R33 K5 [require]
      273 GETTABLEKS                       R34 R0 K16 ["Src"]
      275 GETTABLEKS                       R34 R34 K37 ["Components"]
      277 GETTABLEKS                       R34 R34 K46 ["TextEntryPrompt"]
      279 CALL                             R33 1 1
      280 GETIMPORT                        R34 K5 [require]
      282 GETTABLEKS                       R35 R0 K16 ["Src"]
      284 GETTABLEKS                       R35 R35 K47 ["Thunks"]
      286 GETTABLEKS                       R35 R35 K48 ["History"]
      288 GETTABLEKS                       R35 R35 K49 ["AddWaypoint"]
      290 CALL                             R34 1 1
      291 GETIMPORT                        R35 K5 [require]
      293 GETTABLEKS                       R36 R0 K16 ["Src"]
      295 GETTABLEKS                       R36 R36 K47 ["Thunks"]
      297 GETTABLEKS                       R36 R36 K50 ["Selection"]
      299 GETTABLEKS                       R36 R36 K51 ["DeselectKeyframe"]
      301 CALL                             R35 1 1
      302 GETIMPORT                        R36 K5 [require]
      304 GETTABLEKS                       R37 R0 K16 ["Src"]
      306 GETTABLEKS                       R37 R37 K47 ["Thunks"]
      308 GETTABLEKS                       R37 R37 K50 ["Selection"]
      310 GETTABLEKS                       R37 R37 K52 ["GenerateCurve"]
      312 CALL                             R36 1 1
      313 GETIMPORT                        R37 K5 [require]
      315 GETTABLEKS                       R38 R0 K16 ["Src"]
      317 GETTABLEKS                       R38 R38 K47 ["Thunks"]
      319 GETTABLEKS                       R38 R38 K50 ["Selection"]
      321 GETTABLEKS                       R38 R38 K53 ["MoveSelectedKeyframes"]
      323 CALL                             R37 1 1
      324 GETIMPORT                        R38 K5 [require]
      326 GETTABLEKS                       R39 R0 K16 ["Src"]
      328 GETTABLEKS                       R39 R39 K47 ["Thunks"]
      330 GETTABLEKS                       R39 R39 K50 ["Selection"]
      332 GETTABLEKS                       R39 R39 K54 ["ScaleSelectedKeyframes"]
      334 CALL                             R38 1 1
      335 GETIMPORT                        R39 K5 [require]
      337 GETTABLEKS                       R40 R0 K16 ["Src"]
      339 GETTABLEKS                       R40 R40 K47 ["Thunks"]
      341 GETTABLEKS                       R40 R40 K50 ["Selection"]
      343 GETTABLEKS                       R40 R40 K55 ["SelectKeyframeRange"]
      345 CALL                             R39 1 1
      346 GETIMPORT                        R40 K5 [require]
      348 GETTABLEKS                       R41 R0 K16 ["Src"]
      350 GETTABLEKS                       R41 R41 K47 ["Thunks"]
      352 GETTABLEKS                       R41 R41 K56 ["SetKeyframeTangent"]
      354 CALL                             R40 1 1
      355 GETIMPORT                        R41 K5 [require]
      357 GETTABLEKS                       R42 R0 K16 ["Src"]
      359 GETTABLEKS                       R42 R42 K47 ["Thunks"]
      361 GETTABLEKS                       R42 R42 K50 ["Selection"]
      363 GETTABLEKS                       R42 R42 K57 ["SetSelectedKeyframeData"]
      365 CALL                             R41 1 1
      366 GETTABLEKS                       R42 R1 K58 ["Component"]
      368 LOADK                            R44 K59 ["CurveEditorController"]
      369 NAMECALL                         R42 R42 K60 ["extend"]
      371 CALL                             R42 2 1
      372 DUPCLOSURE                       R43 K61 [PROTO_30]
      373 CAPTURE                          VAL R11
      374 CAPTURE                          VAL R1
      375 CAPTURE                          VAL R3
      376 CAPTURE                          VAL R18
      377 CAPTURE                          VAL R9
      378 CAPTURE                          VAL R13
      379 CAPTURE                          VAL R16
      380 CAPTURE                          VAL R15
      381 SETTABLEKS                       R43 R42 K62 ["init"]
      383 DUPCLOSURE                       R43 K63 [PROTO_32]
      384 CAPTURE                          VAL R19
      385 CAPTURE                          VAL R15
      386 CAPTURE                          VAL R11
      387 CAPTURE                          VAL R16
      388 CAPTURE                          VAL R12
      389 CAPTURE                          VAL R10
      390 SETTABLEKS                       R43 R42 K64 ["updateCanvasExtents"]
      392 DUPCLOSURE                       R43 K65 [PROTO_34]
      393 CAPTURE                          VAL R9
      394 CAPTURE                          VAL R19
      395 CAPTURE                          VAL R3
      396 CAPTURE                          VAL R10
      397 SETTABLEKS                       R43 R42 K66 ["updateTracks"]
      399 DUPCLOSURE                       R43 K67 [PROTO_35]
      400 CAPTURE                          VAL R10
      401 SETTABLEKS                       R43 R42 K68 ["didUpdate"]
      403 DUPCLOSURE                       R43 K69 [PROTO_36]
      404 SETTABLEKS                       R43 R42 K70 ["addAction"]
      406 DUPCLOSURE                       R43 K71 [PROTO_39]
      407 CAPTURE                          VAL R10
      408 SETTABLEKS                       R43 R42 K72 ["didMount"]
      410 DUPCLOSURE                       R43 K73 [PROTO_40]
      411 SETTABLEKS                       R43 R42 K74 ["willUnmount"]
      413 DUPCLOSURE                       R43 K75 [PROTO_41]
      414 CAPTURE                          VAL R15
      415 SETTABLEKS                       R43 R42 K76 ["hasSelectedKeyframes"]
      417 DUPCLOSURE                       R43 K77 [PROTO_42]
      418 CAPTURE                          VAL R9
      419 SETTABLEKS                       R43 R42 K78 ["multipleFramesSelected"]
      421 DUPCLOSURE                       R43 K79 [PROTO_43]
      422 CAPTURE                          VAL R14
      423 SETTABLEKS                       R43 R42 K80 ["handleCanvasInputBegan"]
      425 DUPCLOSURE                       R43 K81 [PROTO_44]
      426 CAPTURE                          VAL R11
      427 SETTABLEKS                       R43 R42 K82 ["handleWheelTick"]
      429 DUPCLOSURE                       R43 K83 [PROTO_45]
      430 SETTABLEKS                       R43 R42 K84 ["handleCanvasInputChanged"]
      432 DUPCLOSURE                       R43 K85 [PROTO_46]
      433 CAPTURE                          VAL R14
      434 SETTABLEKS                       R43 R42 K86 ["handleCanvasInputEnded"]
      436 DUPCLOSURE                       R43 K87 [PROTO_54]
      437 CAPTURE                          VAL R9
      438 CAPTURE                          VAL R11
      439 CAPTURE                          VAL R1
      440 CAPTURE                          VAL R29
      441 CAPTURE                          VAL R7
      442 CAPTURE                          VAL R27
      443 CAPTURE                          VAL R28
      444 CAPTURE                          VAL R30
      445 CAPTURE                          VAL R26
      446 CAPTURE                          VAL R31
      447 CAPTURE                          VAL R8
      448 CAPTURE                          VAL R32
      449 CAPTURE                          VAL R33
      450 SETTABLEKS                       R43 R42 K88 ["render"]
      452 MOVE                             R43 R6
      453 DUPTABLE                         R44 K93 [{"Analytics", "Localization", "PluginActions", "Stylizer"}]
      454 GETTABLEKS                       R45 R5 K89 ["Analytics"]
      456 SETTABLEKS                       R45 R44 K89 ["Analytics"]
      458 GETTABLEKS                       R45 R5 K90 ["Localization"]
      460 SETTABLEKS                       R45 R44 K90 ["Localization"]
      462 GETTABLEKS                       R45 R5 K91 ["PluginActions"]
      464 SETTABLEKS                       R45 R44 K91 ["PluginActions"]
      466 GETTABLEKS                       R45 R5 K92 ["Stylizer"]
      468 SETTABLEKS                       R45 R44 K92 ["Stylizer"]
      470 CALL                             R43 1 1
      471 MOVE                             R44 R42
      472 CALL                             R43 1 1
      473 MOVE                             R42 R43
      474 DUPCLOSURE                       R43 K94 [PROTO_55]
      475 DUPCLOSURE                       R44 K95 [PROTO_70]
      476 CAPTURE                          VAL R25
      477 CAPTURE                          VAL R34
      478 CAPTURE                          VAL R23
      479 CAPTURE                          VAL R22
      480 CAPTURE                          VAL R35
      481 CAPTURE                          VAL R21
      482 CAPTURE                          VAL R36
      483 CAPTURE                          VAL R37
      484 CAPTURE                          VAL R38
      485 CAPTURE                          VAL R39
      486 CAPTURE                          VAL R40
      487 CAPTURE                          VAL R20
      488 CAPTURE                          VAL R41
      489 CAPTURE                          VAL R24
      490 GETTABLEKS                       R45 R2 K96 ["connect"]
      492 MOVE                             R46 R43
      493 MOVE                             R47 R44
      494 CALL                             R45 2 1
      495 MOVE                             R46 R42
      496 CALL                             R45 1 -1
      497 RETURN                           R45 -1
