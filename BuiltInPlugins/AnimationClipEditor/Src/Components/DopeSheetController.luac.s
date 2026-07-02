PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getKeyframeFromPosition"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["props"]
        7 GETTABLEKS                       R4 R4 K2 ["StartTick"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K1 ["props"]
       12 GETTABLEKS                       R5 R5 K3 ["EndTick"]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K4 ["state"]
       17 GETTABLEKS                       R7 R7 K5 ["AbsolutePosition"]
       19 GETTABLEKS                       R7 R7 K6 ["X"]
       21 GETUPVAL                         R9 1
       22 GETTABLEKS                       R9 R9 K1 ["props"]
       24 GETTABLEKS                       R9 R9 K8 ["TrackPadding"]
       26 DIVK                             R8 R9 K7 [2]
       27 ADD                              R6 R7 R8
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K4 ["state"]
       31 GETTABLEKS                       R8 R8 K9 ["AbsoluteSize"]
       33 GETTABLEKS                       R8 R8 K6 ["X"]
       35 GETUPVAL                         R9 1
       36 GETTABLEKS                       R9 R9 K1 ["props"]
       38 GETTABLEKS                       R9 R9 K8 ["TrackPadding"]
       40 SUB                              R7 R8 R9
       41 CALL                             R2 5 1
       42 JUMPIFNOT                        R1 ; [+23]
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K1 ["props"]
       46 GETTABLEKS                       R3 R3 K10 ["SnapMode"]
       48 GETUPVAL                         R4 2
       49 GETTABLEKS                       R4 R4 K11 ["SNAP_MODES"]
       51 GETTABLEKS                       R4 R4 K12 ["None"]
       53 JUMPIFEQ                         R3 R4 ; [+12]
       55 GETUPVAL                         R3 3
       56 GETTABLEKS                       R3 R3 K13 ["getNearestFrame"]
       58 MOVE                             R4 R2
       59 GETUPVAL                         R5 1
       60 GETTABLEKS                       R5 R5 K1 ["props"]
       62 GETTABLEKS                       R5 R5 K14 ["FrameRate"]
       64 CALL                             R3 2 1
       65 MOVE                             R2 R3
       66 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["TopTrackIndex"]
        5 GETTABLEKS                       R3 R0 K2 ["Y"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["state"]
       10 GETTABLEKS                       R4 R4 K4 ["AbsolutePosition"]
       12 GETTABLEKS                       R4 R4 K2 ["Y"]
       14 SUB                              R2 R3 R4
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K5 ["getTrackInfoFromPosition"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K6 ["tracks"]
       21 MOVE                             R5 R1
       22 MOVE                             R6 R2
       23 CALL                             R3 3 1
       24 GETTABLEKS                       R4 R3 K7 ["Index"]
       26 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["TopTrackIndex"]
        5 GETTABLEKS                       R3 R0 K2 ["Y"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["state"]
       10 GETTABLEKS                       R4 R4 K4 ["AbsolutePosition"]
       12 GETTABLEKS                       R4 R4 K2 ["Y"]
       14 SUB                              R2 R3 R4
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["props"]
       18 GETTABLEKS                       R3 R3 K5 ["IsChannelAnimation"]
       20 JUMPIFNOT                        R3 ; [+20]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K6 ["getTrackInfoFromPosition"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K7 ["tracks"]
       27 MOVE                             R6 R1
       28 MOVE                             R7 R2
       29 CALL                             R4 3 2
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K8 ["getPathValue"]
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R8 R8 K9 ["getRelativePath"]
       36 MOVE                             R9 R5
       37 CALL                             R8 1 -1
       38 CALL                             R7 -1 1
       39 ADD                              R6 R4 R7
       40 RETURN                           R6 1
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K10 ["getTrackFromPosition"]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K7 ["tracks"]
       47 MOVE                             R6 R1
       48 MOVE                             R7 R2
       49 CALL                             R4 3 -1
       50 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["TopTrackIndex"]
        5 GETTABLEKS                       R3 R0 K2 ["Y"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["state"]
       10 GETTABLEKS                       R4 R4 K4 ["AbsolutePosition"]
       12 GETTABLEKS                       R4 R4 K2 ["Y"]
       14 SUB                              R2 R3 R4
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K5 ["getTrackInfoFromPosition"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K6 ["tracks"]
       21 MOVE                             R5 R1
       22 MOVE                             R6 R2
       23 CALL                             R3 3 -1
       24 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["hasDragWaypoint"]
        5 JUMPIF                           R0 ; [+11]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["props"]
        9 GETTABLEKS                       R0 R0 K3 ["AddWaypoint"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 0
       13 DUPTABLE                         R2 K5 [{["hasDragWaypoint"] = True}]
       14 NAMECALL                         R0 R0 K6 ["setState"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_5:
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
       17 CALL                             R4 3 1
       18 SETTABLEKS                       R4 R3 K4 ["DragContext"]
       20 GETUPVAL                         R3 0
       21 DUPTABLE                         R5 K10 [{["draggingScale"] = True, ["dragTick"], ["hasDragWaypoint"] = False}]
       22 SETTABLEKS                       R0 R5 K7 ["dragTick"]
       24 NAMECALL                         R3 R3 K11 ["setState"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_6:
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
       17 CALL                             R4 3 1
       18 SETTABLEKS                       R4 R3 K4 ["DragContext"]
       20 GETUPVAL                         R3 0
       21 DUPTABLE                         R5 K10 [{["dragging"] = True, ["dragTick"], ["hasDragWaypoint"] = False}]
       22 SETTABLEKS                       R0 R5 K7 ["dragTick"]
       24 NAMECALL                         R3 R3 K11 ["setState"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getTickFromPosition"]
        3 GETTABLEKS                       R2 R0 K1 ["Position"]
        5 LOADB                            R3 1
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["state"]
       10 GETTABLEKS                       R2 R2 K3 ["dragTick"]
       12 JUMPIFEQ                         R2 R1 ; [+47]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K4 ["DragContext"]
       17 JUMPIFNOT                        R2 ; [+42]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K5 ["addDragWaypoint"]
       21 CALL                             R2 0 0
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K4 ["DragContext"]
       25 MOVE                             R4 R1
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K6 ["props"]
       29 GETTABLEKS                       R5 R5 K7 ["StartTick"]
       31 NAMECALL                         R2 R2 K8 ["scaleKeyframes"]
       33 CALL                             R2 3 0
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K6 ["props"]
       37 GETTABLEKS                       R2 R2 K9 ["ScaleSelectedKeyframes"]
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K4 ["DragContext"]
       42 GETTABLEKS                       R3 R3 K10 ["pivotTick"]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K4 ["DragContext"]
       47 GETTABLEKS                       R4 R4 K11 ["scale"]
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K4 ["DragContext"]
       52 CALL                             R2 3 0
       53 GETUPVAL                         R2 0
       54 DUPTABLE                         R4 K12 [{"dragTick"}]
       55 SETTABLEKS                       R1 R4 K3 ["dragTick"]
       57 NAMECALL                         R2 R2 K13 ["setState"]
       59 CALL                             R2 2 0
       60 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getTickFromPosition"]
        3 GETTABLEKS                       R2 R0 K1 ["Position"]
        5 LOADB                            R3 1
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["state"]
       10 GETTABLEKS                       R2 R2 K3 ["dragTick"]
       12 JUMPIFEQ                         R2 R1 ; [+42]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K4 ["DragContext"]
       17 JUMPIFNOT                        R2 ; [+37]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K5 ["addDragWaypoint"]
       21 CALL                             R2 0 0
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K4 ["DragContext"]
       25 MOVE                             R4 R1
       26 NAMECALL                         R2 R2 K6 ["moveKeyframes"]
       28 CALL                             R2 2 0
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K7 ["props"]
       32 GETTABLEKS                       R2 R2 K8 ["MoveSelectedKeyframes"]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K4 ["DragContext"]
       37 GETTABLEKS                       R3 R3 K9 ["pivotTick"]
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R4 R4 K4 ["DragContext"]
       42 GETTABLEKS                       R4 R4 K10 ["newTick"]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K4 ["DragContext"]
       47 CALL                             R2 3 0
       48 GETUPVAL                         R2 0
       49 DUPTABLE                         R4 K11 [{"dragTick"}]
       50 SETTABLEKS                       R1 R4 K3 ["dragTick"]
       52 NAMECALL                         R2 R2 K12 ["setState"]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["DragContext"]
        4 GETUPVAL                         R0 0
        5 DUPTABLE                         R2 K5 [{["dragging"] = False, ["dragTick"], ["hasDragWaypoint"] = False}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K6 ["None"]
        9 SETTABLEKS                       R3 R2 K3 ["dragTick"]
       11 NAMECALL                         R0 R0 K7 ["setState"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["DragContext"]
        4 GETUPVAL                         R0 0
        5 DUPTABLE                         R2 K5 [{["draggingScale"] = False, ["dragTick"], ["hasDragWaypoint"] = False}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K6 ["None"]
        9 SETTABLEKS                       R3 R2 K3 ["dragTick"]
       11 NAMECALL                         R0 R0 K7 ["setState"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["showContextMenu"]
        5 JUMPIF                           R1 ; [+23]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["props"]
        9 GETTABLEKS                       R1 R1 K3 ["ReadOnly"]
       11 JUMPIF                           R1 ; [+17]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["updateSelectDragStart"]
       15 GETTABLEKS                       R2 R0 K5 ["Position"]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K6 ["updateSelectDragEnd"]
       21 GETTABLEKS                       R2 R0 K5 ["Position"]
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 0
       25 DUPTABLE                         R3 K9 [{["draggingSelection"] = True}]
       26 NAMECALL                         R1 R1 K10 ["setState"]
       28 CALL                             R1 2 0
       29 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+16]
        3 GETTABLEKS                       R3 R0 K0 ["Index"]
        5 GETUPVAL                         R5 1
        6 GETTABLE                         R4 R5 R3
        7 JUMPIF                           R4 ; [+6]
        8 GETUPVAL                         R4 2
        9 JUMPIFLT                         R3 R4 ; [+4]
       11 GETUPVAL                         R4 3
       12 JUMPIFNOTLT                      R4 R3 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R4 1
       16 LOADB                            R5 1
       17 SETTABLE                         R5 R4 R3
       18 JUMP                             ; [+24]
       19 GETUPVAL                         R3 4
       20 GETTABLEKS                       R3 R3 K1 ["getPathValue"]
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K2 ["getRelativePath"]
       25 MOVE                             R5 R2
       26 CALL                             R4 1 -1
       27 CALL                             R3 -1 1
       28 GETUPVAL                         R5 5
       29 ADD                              R4 R5 R3
       30 GETUPVAL                         R6 1
       31 GETTABLE                         R5 R6 R3
       32 JUMPIF                           R5 ; [+6]
       33 GETUPVAL                         R5 2
       34 JUMPIFLT                         R4 R5 ; [+4]
       36 GETUPVAL                         R5 3
       37 JUMPIFNOTLT                      R5 R4 ; [+2]
       39 RETURN                           R0 0
       40 GETUPVAL                         R5 1
       41 LOADB                            R6 1
       42 SETTABLE                         R6 R5 R3
       43 GETUPVAL                         R3 6
       44 GETTABLEKS                       R3 R3 K3 ["SelectKeyframeRange"]
       46 GETUPVAL                         R4 7
       47 GETTABLEKS                       R4 R4 K4 ["Instance"]
       49 MOVE                             R5 R2
       50 GETUPVAL                         R6 8
       51 GETUPVAL                         R7 9
       52 LOADB                            R8 1
       53 CALL                             R3 5 0
       54 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SelectKeyframesAtTick"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["Position"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["updateSelectDragEnd"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["selectDragStart"]
       13 NAMECALL                         R3 R3 K4 ["getValue"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R4 R1 K5 ["SelectedKeyframes"]
       18 GETTABLEKS                       R5 R1 K6 ["IsChannelAnimation"]
       20 GETIMPORT                        R6 K9 [Vector2.new]
       22 GETTABLEKS                       R8 R2 K10 ["X"]
       24 GETTABLEKS                       R9 R3 K10 ["X"]
       26 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       28 GETIMPORT                        R7 K13 [math.min]
       30 CALL                             R7 2 1
       31 GETTABLEKS                       R9 R2 K14 ["Y"]
       33 GETTABLEKS                       R10 R3 K14 ["Y"]
       35 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       37 GETIMPORT                        R8 K13 [math.min]
       39 CALL                             R8 2 1
       40 CALL                             R6 2 1
       41 GETIMPORT                        R7 K9 [Vector2.new]
       43 GETTABLEKS                       R9 R2 K10 ["X"]
       45 GETTABLEKS                       R10 R3 K10 ["X"]
       47 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       49 GETIMPORT                        R8 K16 [math.max]
       51 CALL                             R8 2 1
       52 GETTABLEKS                       R10 R2 K14 ["Y"]
       54 GETTABLEKS                       R11 R3 K14 ["Y"]
       56 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       58 GETIMPORT                        R9 K16 [math.max]
       60 CALL                             R9 2 1
       61 CALL                             R7 2 1
       62 GETTABLEKS                       R8 R1 K17 ["StartTick"]
       64 GETTABLEKS                       R9 R1 K18 ["EndTick"]
       66 GETUPVAL                         R11 0
       67 GETTABLEKS                       R11 R11 K19 ["state"]
       69 GETTABLEKS                       R11 R11 K20 ["AbsoluteSize"]
       71 GETTABLEKS                       R11 R11 K10 ["X"]
       73 GETTABLEKS                       R12 R1 K21 ["TrackPadding"]
       75 SUB                              R10 R11 R12
       76 SUB                              R12 R9 R8
       77 DIV                              R11 R10 R12
       78 GETIMPORT                        R12 K9 [Vector2.new]
       80 DIVK                             R13 R11 K22 [2]
       81 GETUPVAL                         R15 1
       82 GETTABLEKS                       R15 R15 K23 ["TRACK_HEIGHT"]
       84 DIVK                             R14 R15 K22 [2]
       85 CALL                             R12 2 1
       86 GETUPVAL                         R13 0
       87 GETTABLEKS                       R13 R13 K24 ["getTickFromPosition"]
       89 ADD                              R14 R6 R12
       90 LOADB                            R15 0
       91 CALL                             R13 2 1
       92 GETUPVAL                         R15 2
       93 CALL                             R15 0 1
       94 JUMPIFNOT                        R15 ; [+6]
       95 GETUPVAL                         R14 0
       96 GETTABLEKS                       R14 R14 K25 ["getTrackIndexFromPosition"]
       98 ADD                              R15 R6 R12
       99 CALL                             R14 1 1
      100 JUMP                             ; [+5]
      101 GETUPVAL                         R14 0
      102 GETTABLEKS                       R14 R14 K26 ["getTrackFromPosition"]
      104 ADD                              R15 R6 R12
      105 CALL                             R14 1 1
      106 GETUPVAL                         R15 0
      107 GETTABLEKS                       R15 R15 K24 ["getTickFromPosition"]
      109 SUB                              R16 R7 R12
      110 LOADB                            R17 0
      111 CALL                             R15 2 1
      112 GETUPVAL                         R17 2
      113 CALL                             R17 0 1
      114 JUMPIFNOT                        R17 ; [+6]
      115 GETUPVAL                         R16 0
      116 GETTABLEKS                       R16 R16 K25 ["getTrackIndexFromPosition"]
      118 SUB                              R17 R7 R12
      119 CALL                             R16 1 1
      120 JUMP                             ; [+5]
      121 GETUPVAL                         R16 0
      122 GETTABLEKS                       R16 R16 K26 ["getTrackFromPosition"]
      124 SUB                              R17 R7 R12
      125 CALL                             R16 1 1
      126 GETUPVAL                         R18 0
      127 GETTABLEKS                       R18 R18 K27 ["lastMinTick"]
      129 OR                               R17 R18 R13
      130 GETUPVAL                         R19 0
      131 GETTABLEKS                       R19 R19 K28 ["lastMinTrack"]
      133 OR                               R18 R19 R14
      134 GETUPVAL                         R20 0
      135 GETTABLEKS                       R20 R20 K29 ["lastMaxTick"]
      137 OR                               R19 R20 R15
      138 GETUPVAL                         R21 0
      139 GETTABLEKS                       R21 R21 K30 ["lastMaxTrack"]
      141 OR                               R20 R21 R16
      142 GETUPVAL                         R21 3
      143 MOVE                             R22 R4
      144 CALL                             R21 1 1
      145 JUMPIF                           R21 ; [+11]
      146 JUMPIFLT                         R17 R13 ; [+7]
      148 JUMPIFLT                         R18 R14 ; [+5]
      150 JUMPIFLT                         R15 R19 ; [+3]
      152 JUMPIFNOTLT                      R16 R20 ; [+4]
      154 GETTABLEKS                       R21 R1 K31 ["DeselectAllKeyframes"]
      156 CALL                             R21 0 0
      157 GETIMPORT                        R21 K33 [ipairs]
      159 GETUPVAL                         R22 0
      160 GETTABLEKS                       R22 R22 K34 ["tracks"]
      162 CALL                             R21 1 3
      163 FORGPREP_INEXT                   R21
      164 JUMPIFNOT                        R5 ; [+21]
      165 NEWTABLE                         R26 0 0
      167 GETUPVAL                         R27 4
      168 GETTABLEKS                       R27 R27 K35 ["traverseTracks"]
      170 GETTABLEKS                       R28 R25 K36 ["Name"]
      172 MOVE                             R29 R25
      173 NEWCLOSURE                       R30 P0
      174 CAPTURE                          UPVAL U2
      175 CAPTURE                          VAL R26
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R16
      178 CAPTURE                          UPVAL U5
      179 CAPTURE                          VAL R24
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R25
      182 CAPTURE                          VAL R13
      183 CAPTURE                          VAL R15
      184 CALL                             R27 3 0
      185 JUMP                             ; [+18]
      186 JUMPIFNOTLE                      R14 R24 ; [+17]
      188 JUMPIFNOTLE                      R24 R16 ; [+15]
      190 GETTABLEKS                       R26 R1 K37 ["SelectKeyframeRange"]
      192 GETTABLEKS                       R27 R25 K38 ["Instance"]
      194 NEWTABLE                         R28 0 1
      196 GETTABLEKS                       R29 R25 K36 ["Name"]
      198 SETLIST                          R28 R29 1 [1]
      200 MOVE                             R29 R13
      201 MOVE                             R30 R15
      202 LOADB                            R31 1
      203 CALL                             R26 5 0
      204 FORGLOOP                         R21 2 [inext] ; [-41]
      206 JUMPIFNOTEQKN                    R14 K39 [0] ; [+23]
      208 GETUPVAL                         R21 4
      209 GETTABLEKS                       R21 R21 K40 ["getSummaryKeyframes"]
      211 GETUPVAL                         R22 0
      212 GETTABLEKS                       R22 R22 K34 ["tracks"]
      214 MOVE                             R23 R13
      215 MOVE                             R24 R15
      216 CALL                             R21 3 1
      217 LENGTH                           R22 R21
      218 LOADN                            R23 0
      219 JUMPIFNOTLT                      R23 R22 ; [+10]
      221 GETUPVAL                         R22 4
      222 GETTABLEKS                       R22 R22 K41 ["traverseKeyframeRange"]
      224 MOVE                             R23 R21
      225 MOVE                             R24 R13
      226 MOVE                             R25 R15
      227 NEWCLOSURE                       R26 P1
      228 CAPTURE                          VAL R1
      229 CALL                             R22 4 0
      230 GETUPVAL                         R21 0
      231 SETTABLEKS                       R13 R21 K27 ["lastMinTick"]
      233 GETUPVAL                         R21 0
      234 SETTABLEKS                       R14 R21 K28 ["lastMinTrack"]
      236 GETUPVAL                         R21 0
      237 SETTABLEKS                       R15 R21 K29 ["lastMaxTick"]
      239 GETUPVAL                         R21 0
      240 SETTABLEKS                       R16 R21 K30 ["lastMaxTrack"]
      242 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"draggingSelection"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["draggingSelection"]
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
       20 GETUPVAL                         R0 0
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K6 ["lastMinTick"]
       24 GETUPVAL                         R0 0
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K7 ["lastMinTrack"]
       28 GETUPVAL                         R0 0
       29 LOADNIL                          R1
       30 SETTABLEKS                       R1 R0 K8 ["lastMaxTick"]
       32 GETUPVAL                         R0 0
       33 LOADNIL                          R1
       34 SETTABLEKS                       R1 R0 K9 ["lastMaxTrack"]
       36 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["OnWheelTick"]
        5 GETIMPORT                        R4 K4 [Vector2.new]
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R4 2 1
       10 LOADK                            R5 K5 ["backward"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["OnWheelTick"]
        5 GETIMPORT                        R4 K4 [Vector2.new]
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R4 2 1
       10 LOADK                            R5 K5 ["forward"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"AbsoluteSize", "AbsolutePosition"}]
        2 GETTABLEKS                       R4 R0 K0 ["AbsoluteSize"]
        4 SETTABLEKS                       R4 R3 K0 ["AbsoluteSize"]
        6 GETTABLEKS                       R4 R0 K1 ["AbsolutePosition"]
        8 SETTABLEKS                       R4 R3 K1 ["AbsolutePosition"]
       10 NAMECALL                         R1 R1 K3 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R2 1 0
        2 SETTABLE                         R1 R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K1 ["SetSelectedKeyframeData"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R2 K2 [{"LeftSlope", "RightSlope"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K3 ["None"]
        4 SETTABLEKS                       R3 R2 K0 ["LeftSlope"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["None"]
        9 SETTABLEKS                       R3 R2 K1 ["RightSlope"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["props"]
       14 GETTABLEKS                       R3 R3 K5 ["SetSelectedKeyframeData"]
       16 MOVE                             R4 R2
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["SetPlayState"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["PLAY_STATE"]
        8 GETTABLEKS                       R1 R1 K3 ["Pause"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 DUPTABLE                         R2 K6 [{["showContextMenu"] = True}]
       13 NAMECALL                         R0 R0 K7 ["setState"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"renamingKeyframe"}]
        2 MOVE                             R4 R0
        3 JUMPIF                           R4 ; [+3]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["None"]
        7 SETTABLEKS                       R4 R3 K0 ["renamingKeyframe"]
        9 NAMECALL                         R1 R1 K3 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"changingDuration"}]
        2 MOVE                             R4 R0
        3 JUMPIF                           R4 ; [+3]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["None"]
        7 SETTABLEKS                       R4 R3 K0 ["changingDuration"]
        9 NAMECALL                         R1 R1 K3 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
        0 DUPTABLE                         R1 K12 [{[1], ["AbsolutePosition"], ["dragging"] = False, ["draggingScale"] = False, ["draggingSelection"] = False, ["dragTick"] = , ["showContextMenu"] = False, ["renamingKeyframe"] = , ["changingDuration"] = , ["hasDragWaypoint"] = False}]
        1 GETIMPORT                        R2 K15 [Vector2.new]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R1 K0 ["AbsoluteSize"]
        6 GETIMPORT                        R2 K15 [Vector2.new]
        8 CALL                             R2 0 1
        9 SETTABLEKS                       R2 R1 K1 ["AbsolutePosition"]
       11 SETTABLEKS                       R1 R0 K16 ["state"]
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K17 ["DragContext"]
       16 LOADB                            R1 0
       17 SETTABLEKS                       R1 R0 K18 ["isMultiSelecting"]
       19 LOADB                            R1 0
       20 SETTABLEKS                       R1 R0 K19 ["mouseDownOnKeyframe"]
       22 LOADB                            R1 0
       23 SETTABLEKS                       R1 R0 K20 ["mouseDownInTimeline"]
       25 NEWTABLE                         R1 0 0
       27 SETTABLEKS                       R1 R0 K21 ["tracks"]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K22 ["createBinding"]
       32 LOADNIL                          R2
       33 CALL                             R1 1 2
       34 SETTABLEKS                       R1 R0 K23 ["selectDragStart"]
       36 SETTABLEKS                       R2 R0 K24 ["updateSelectDragStart"]
       38 GETUPVAL                         R1 0
       39 GETTABLEKS                       R1 R1 K22 ["createBinding"]
       41 LOADNIL                          R2
       42 CALL                             R1 1 2
       43 SETTABLEKS                       R1 R0 K25 ["selectDragEnd"]
       45 SETTABLEKS                       R2 R0 K26 ["updateSelectDragEnd"]
       47 LOADNIL                          R1
       48 SETTABLEKS                       R1 R0 K27 ["lastMinTick"]
       50 LOADNIL                          R1
       51 SETTABLEKS                       R1 R0 K28 ["lastMinTrack"]
       53 LOADNIL                          R1
       54 SETTABLEKS                       R1 R0 K29 ["lastMaxTick"]
       56 LOADNIL                          R1
       57 SETTABLEKS                       R1 R0 K30 ["lastMaxTrack"]
       59 NEWCLOSURE                       R1 P0
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          UPVAL U3
       64 SETTABLEKS                       R1 R0 K31 ["getTickFromPosition"]
       66 GETUPVAL                         R1 4
       67 CALL                             R1 0 1
       68 JUMPIFNOT                        R1 ; [+6]
       69 NEWCLOSURE                       R1 P1
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U1
       72 SETTABLEKS                       R1 R0 K32 ["getTrackIndexFromPosition"]
       74 JUMP                             ; [+11]
       75 NEWCLOSURE                       R1 P2
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U1
       78 CAPTURE                          UPVAL U5
       79 SETTABLEKS                       R1 R0 K33 ["getTrackFromPosition"]
       81 NEWCLOSURE                       R1 P3
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U1
       84 SETTABLEKS                       R1 R0 K34 ["getTrackInfoFromPosition"]
       86 NEWCLOSURE                       R1 P4
       87 CAPTURE                          VAL R0
       88 SETTABLEKS                       R1 R0 K35 ["addDragWaypoint"]
       90 NEWCLOSURE                       R1 P5
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U6
       93 SETTABLEKS                       R1 R0 K36 ["onScaleHandleDragStarted"]
       95 NEWCLOSURE                       R1 P6
       96 CAPTURE                          VAL R0
       97 CAPTURE                          UPVAL U6
       98 SETTABLEKS                       R1 R0 K37 ["onKeyframeDragStarted"]
      100 NEWCLOSURE                       R1 P7
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R1 R0 K38 ["onScaleHandleDragMoved"]
      104 NEWCLOSURE                       R1 P8
      105 CAPTURE                          VAL R0
      106 SETTABLEKS                       R1 R0 K39 ["onKeyframeDragMoved"]
      108 NEWCLOSURE                       R1 P9
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U0
      111 SETTABLEKS                       R1 R0 K40 ["onKeyframeDragEnded"]
      113 NEWCLOSURE                       R1 P10
      114 CAPTURE                          VAL R0
      115 CAPTURE                          UPVAL U0
      116 SETTABLEKS                       R1 R0 K41 ["onScaleHandleDragEnded"]
      118 NEWCLOSURE                       R1 P11
      119 CAPTURE                          VAL R0
      120 SETTABLEKS                       R1 R0 K42 ["onSelectDragStarted"]
      122 NEWCLOSURE                       R1 P12
      123 CAPTURE                          VAL R0
      124 CAPTURE                          UPVAL U2
      125 CAPTURE                          UPVAL U4
      126 CAPTURE                          UPVAL U7
      127 CAPTURE                          UPVAL U1
      128 CAPTURE                          UPVAL U5
      129 SETTABLEKS                       R1 R0 K43 ["onSelectDragMoved"]
      131 NEWCLOSURE                       R1 P13
      132 CAPTURE                          VAL R0
      133 CAPTURE                          UPVAL U0
      134 SETTABLEKS                       R1 R0 K44 ["onSelectDragEnded"]
      136 NEWCLOSURE                       R1 P14
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R1 R0 K45 ["onWheelBackward"]
      140 NEWCLOSURE                       R1 P15
      141 CAPTURE                          VAL R0
      142 SETTABLEKS                       R1 R0 K46 ["onWheelForward"]
      144 NEWCLOSURE                       R1 P16
      145 CAPTURE                          VAL R0
      146 SETTABLEKS                       R1 R0 K47 ["recalculateExtents"]
      148 NEWCLOSURE                       R1 P17
      149 CAPTURE                          VAL R0
      150 SETTABLEKS                       R1 R0 K48 ["onEasingItemSelected"]
      152 NEWCLOSURE                       R1 P18
      153 CAPTURE                          UPVAL U8
      154 CAPTURE                          VAL R0
      155 SETTABLEKS                       R1 R0 K49 ["onClearTangentsSelected"]
      157 NEWCLOSURE                       R1 P19
      158 CAPTURE                          VAL R0
      159 CAPTURE                          UPVAL U2
      160 SETTABLEKS                       R1 R0 K50 ["showMenu"]
      162 NEWCLOSURE                       R1 P20
      163 CAPTURE                          VAL R0
      164 SETTABLEKS                       R1 R0 K51 ["hideMenu"]
      166 NEWCLOSURE                       R1 P21
      167 CAPTURE                          VAL R0
      168 CAPTURE                          UPVAL U0
      169 SETTABLEKS                       R1 R0 K52 ["setRenamingKeyframe"]
      171 NEWCLOSURE                       R1 P22
      172 CAPTURE                          VAL R0
      173 CAPTURE                          UPVAL U0
      174 SETTABLEKS                       R1 R0 K53 ["setChangingDuration"]
      176 NEWCLOSURE                       R1 P23
      177 CAPTURE                          VAL R0
      178 CAPTURE                          UPVAL U9
      179 CAPTURE                          UPVAL U10
      180 SETTABLEKS                       R1 R0 K54 ["setSelectedKeyframeDuration"]
      182 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R2 R0 K0 ["DragContext"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["DragContext"]
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

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["DragContext"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["DragContext"]
        5 GETTABLEKS                       R1 R1 K1 ["animationData"]
        7 JUMPIF                           R1 ; [+4]
        8 GETTABLEKS                       R1 R0 K2 ["props"]
       10 GETTABLEKS                       R1 R1 K3 ["AnimationData"]
       12 GETTABLEKS                       R3 R0 K0 ["DragContext"]
       14 JUMPIFNOT                        R3 ; [+5]
       15 GETTABLEKS                       R2 R0 K0 ["DragContext"]
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

PROTO_29:
        0 GETTABLEKS                       R3 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R4 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R3 R4 ; [+12]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K4 ["isMultiSelectKey"]
        9 GETTABLEKS                       R4 R1 K5 ["KeyCode"]
       11 CALL                             R3 1 1
       12 JUMPIFNOT                        R3 ; [+22]
       13 LOADB                            R3 1
       14 SETTABLEKS                       R3 R0 K6 ["isMultiSelecting"]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R1 K0 ["UserInputType"]
       19 GETIMPORT                        R4 K8 [Enum.UserInputType.MouseButton1]
       21 JUMPIFNOTEQ                      R3 R4 ; [+13]
       23 GETTABLEKS                       R3 R0 K9 ["props"]
       25 GETTABLEKS                       R3 R3 K10 ["DeselectAllKeyframes"]
       27 CALL                             R3 0 0
       28 LOADB                            R3 1
       29 SETTABLEKS                       R3 R0 K11 ["mouseDownInTimeline"]
       31 GETTABLEKS                       R3 R0 K12 ["onSelectDragStarted"]
       33 MOVE                             R4 R1
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R2 R3 ; [+12]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["isMultiSelectKey"]
        9 GETTABLEKS                       R3 R1 K5 ["KeyCode"]
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R2 ; [+234]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R0 K6 ["isMultiSelecting"]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       19 GETIMPORT                        R3 K8 [Enum.UserInputType.MouseButton1]
       21 JUMPIFNOTEQ                      R2 R3 ; [+5]
       23 LOADB                            R2 0
       24 SETTABLEKS                       R2 R0 K9 ["mouseDownInTimeline"]
       26 RETURN                           R0 0
       27 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       29 GETIMPORT                        R3 K11 [Enum.UserInputType.MouseButton2]
       31 JUMPIFNOTEQ                      R2 R3 ; [+215]
       33 GETUPVAL                         R2 1
       34 CALL                             R2 0 1
       35 JUMPIFNOT                        R2 ; [+66]
       36 GETTABLEKS                       R2 R0 K12 ["props"]
       38 GETTABLEKS                       R2 R2 K13 ["TopTrackIndex"]
       40 GETTABLEKS                       R4 R1 K14 ["Position"]
       42 GETTABLEKS                       R4 R4 K15 ["Y"]
       44 GETTABLEKS                       R5 R0 K16 ["state"]
       46 GETTABLEKS                       R5 R5 K17 ["AbsolutePosition"]
       48 GETTABLEKS                       R5 R5 K15 ["Y"]
       50 SUB                              R3 R4 R5
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R4 R4 K18 ["getTrackInfoFromPosition"]
       54 GETTABLEKS                       R5 R0 K19 ["tracks"]
       56 MOVE                             R6 R2
       57 MOVE                             R7 R3
       58 CALL                             R4 3 1
       59 GETTABLEKS                       R6 R0 K19 ["tracks"]
       61 GETTABLEKS                       R8 R4 K20 ["Index"]
       63 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       64 GETIMPORT                        R7 K23 [math.floor]
       66 CALL                             R7 1 1
       67 GETTABLE                         R5 R6 R7
       68 GETTABLEKS                       R6 R0 K12 ["props"]
       70 GETTABLEKS                       R6 R6 K24 ["SetRightClickContextInfo"]
       72 DUPTABLE                         R7 K30 [{"Tick", "Path", "TrackType", "RotationType", "InstanceName"}]
       73 GETTABLEKS                       R8 R0 K31 ["getTickFromPosition"]
       75 GETTABLEKS                       R9 R1 K14 ["Position"]
       77 LOADB                            R10 1
       78 CALL                             R8 2 1
       79 SETTABLEKS                       R8 R7 K25 ["Tick"]
       81 GETTABLEKS                       R8 R4 K26 ["Path"]
       83 SETTABLEKS                       R8 R7 K26 ["Path"]
       85 GETTABLEKS                       R8 R4 K32 ["ComponentType"]
       87 SETTABLEKS                       R8 R7 K27 ["TrackType"]
       89 GETTABLEKS                       R8 R4 K28 ["RotationType"]
       91 SETTABLEKS                       R8 R7 K28 ["RotationType"]
       93 JUMPIFNOT                        R5 ; [+3]
       94 GETTABLEKS                       R8 R5 K33 ["Instance"]
       96 JUMPIF                           R8 ; [+1]
       97 LOADNIL                          R8
       98 SETTABLEKS                       R8 R7 K29 ["InstanceName"]
      100 CALL                             R6 1 0
      101 JUMP                             ; [+142]
      102 LOADNIL                          R2
      103 LOADNIL                          R3
      104 LOADNIL                          R4
      105 LOADNIL                          R5
      106 LOADNIL                          R6
      107 LOADNIL                          R7
      108 GETTABLEKS                       R8 R0 K12 ["props"]
      110 GETTABLEKS                       R8 R8 K34 ["IsChannelAnimation"]
      112 JUMPIFNOT                        R8 ; [+48]
      113 GETUPVAL                         R9 1
      114 CALL                             R9 0 1
      115 JUMPIFNOT                        R9 ; [+32]
      116 GETTABLEKS                       R9 R0 K12 ["props"]
      118 GETTABLEKS                       R9 R9 K13 ["TopTrackIndex"]
      120 GETTABLEKS                       R11 R1 K14 ["Position"]
      122 GETTABLEKS                       R12 R0 K16 ["state"]
      124 GETTABLEKS                       R12 R12 K17 ["AbsolutePosition"]
      126 GETTABLEKS                       R12 R12 K15 ["Y"]
      128 SUB                              R10 R11 R12
      129 GETUPVAL                         R11 2
      130 GETTABLEKS                       R11 R11 K18 ["getTrackInfoFromPosition"]
      132 GETTABLEKS                       R12 R0 K19 ["tracks"]
      134 MOVE                             R13 R9
      135 MOVE                             R14 R10
      136 CALL                             R11 3 1
      137 MOVE                             R2 R11
      138 GETTABLEKS                       R11 R0 K19 ["tracks"]
      140 GETTABLEKS                       R13 R2 K20 ["Index"]
      142 FASTCALL1                        MATH_FLOOR R13 ; [+2]
      143 GETIMPORT                        R12 K23 [math.floor]
      145 CALL                             R12 1 1
      146 GETTABLE                         R4 R11 R12
      147 JUMP                             ; [+48]
      148 GETTABLEKS                       R9 R0 K18 ["getTrackInfoFromPosition"]
      150 GETTABLEKS                       R10 R1 K14 ["Position"]
      152 CALL                             R9 1 4
      153 MOVE                             R5 R9
      154 MOVE                             R3 R10
      155 MOVE                             R6 R11
      156 MOVE                             R7 R12
      157 GETTABLEKS                       R9 R0 K19 ["tracks"]
      159 GETTABLE                         R4 R9 R5
      160 JUMP                             ; [+35]
      161 GETUPVAL                         R9 1
      162 CALL                             R9 0 1
      163 JUMPIFNOT                        R9 ; [+7]
      164 GETTABLEKS                       R9 R0 K35 ["getTrackIndexFromPosition"]
      166 GETTABLEKS                       R10 R1 K14 ["Position"]
      168 CALL                             R9 1 1
      169 MOVE                             R5 R9
      170 JUMP                             ; [+6]
      171 GETTABLEKS                       R9 R0 K36 ["getTrackFromPosition"]
      173 GETTABLEKS                       R10 R1 K14 ["Position"]
      175 CALL                             R9 1 1
      176 MOVE                             R5 R9
      177 GETTABLEKS                       R9 R0 K19 ["tracks"]
      179 GETTABLE                         R4 R9 R5
      180 JUMPIFNOT                        R4 ; [+15]
      181 NEWTABLE                         R9 0 1
      183 GETTABLEKS                       R10 R4 K37 ["Name"]
      185 SETLIST                          R9 R10 1 [1]
      187 MOVE                             R3 R9
      188 GETTABLEKS                       R6 R4 K38 ["Type"]
      190 GETUPVAL                         R9 2
      191 GETTABLEKS                       R9 R9 K39 ["getRotationType"]
      193 MOVE                             R10 R4
      194 CALL                             R9 1 1
      195 MOVE                             R7 R9
      196 GETTABLEKS                       R9 R0 K12 ["props"]
      198 GETTABLEKS                       R9 R9 K24 ["SetRightClickContextInfo"]
      200 DUPTABLE                         R10 K30 [{"Tick", "Path", "TrackType", "RotationType", "InstanceName"}]
      201 GETTABLEKS                       R11 R0 K31 ["getTickFromPosition"]
      203 GETTABLEKS                       R12 R1 K14 ["Position"]
      205 LOADB                            R13 1
      206 CALL                             R11 2 1
      207 SETTABLEKS                       R11 R10 K25 ["Tick"]
      209 GETUPVAL                         R12 1
      210 CALL                             R12 0 1
      211 JUMPIFNOT                        R12 ; [+3]
      212 GETTABLEKS                       R11 R2 K26 ["Path"]
      214 JUMP                             ; [+1]
      215 MOVE                             R11 R3
      216 SETTABLEKS                       R11 R10 K26 ["Path"]
      218 GETUPVAL                         R12 1
      219 CALL                             R12 0 1
      220 JUMPIFNOT                        R12 ; [+3]
      221 GETTABLEKS                       R11 R2 K32 ["ComponentType"]
      223 JUMP                             ; [+1]
      224 MOVE                             R11 R6
      225 SETTABLEKS                       R11 R10 K27 ["TrackType"]
      227 GETUPVAL                         R12 1
      228 CALL                             R12 0 1
      229 JUMPIFNOT                        R12 ; [+3]
      230 GETTABLEKS                       R11 R2 K28 ["RotationType"]
      232 JUMP                             ; [+1]
      233 MOVE                             R11 R7
      234 SETTABLEKS                       R11 R10 K28 ["RotationType"]
      236 JUMPIFNOT                        R4 ; [+3]
      237 GETTABLEKS                       R11 R4 K33 ["Instance"]
      239 JUMPIF                           R11 ; [+1]
      240 LOADNIL                          R11
      241 SETTABLEKS                       R11 R10 K29 ["InstanceName"]
      243 CALL                             R9 1 0
      244 GETTABLEKS                       R2 R0 K40 ["showMenu"]
      246 CALL                             R2 0 0
      247 RETURN                           R0 0

PROTO_31:
        0 DUPTABLE                         R5 K3 [{[1], ["OnKeyframe"] = True}]
        1 SETTABLEKS                       R3 R5 K0 ["Tick"]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R7 R0 K4 ["props"]
        6 GETTABLEKS                       R7 R7 K5 ["SelectedKeyframes"]
        8 CALL                             R6 1 1
        9 JUMPIFNOT                        R6 ; [+19]
       10 JUMPIFNOTEQKNIL                  R1 ; [+8]
       12 GETTABLEKS                       R6 R0 K4 ["props"]
       14 GETTABLEKS                       R6 R6 K6 ["SelectKeyframesAtTick"]
       16 MOVE                             R7 R3
       17 CALL                             R6 1 0
       18 JUMP                             ; [+10]
       19 GETTABLEKS                       R6 R0 K4 ["props"]
       21 GETTABLEKS                       R6 R6 K7 ["SelectKeyframeRange"]
       23 MOVE                             R7 R1
       24 MOVE                             R8 R2
       25 MOVE                             R9 R3
       26 MOVE                             R10 R3
       27 LOADB                            R11 0
       28 CALL                             R6 5 0
       29 JUMPIFNOTEQKNIL                  R1 ; [+3]
       31 SETTABLEKS                       R3 R5 K8 ["SummaryKeyframe"]
       33 GETTABLEKS                       R6 R0 K4 ["props"]
       35 GETTABLEKS                       R6 R6 K9 ["SetRightClickContextInfo"]
       37 MOVE                             R7 R5
       38 CALL                             R6 1 0
       39 GETTABLEKS                       R6 R0 K10 ["showMenu"]
       41 CALL                             R6 0 0
       42 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R6 R0 K0 ["props"]
        2 GETTABLEKS                       R6 R6 K1 ["ReadOnly"]
        4 JUMPIF                           R6 ; [+53]
        5 GETTABLEKS                       R6 R5 K2 ["UserInputType"]
        7 GETIMPORT                        R7 K5 [Enum.UserInputType.MouseButton1]
        9 JUMPIFNOTEQ                      R6 R7 ; [+48]
       11 LOADB                            R6 1
       12 SETTABLEKS                       R6 R0 K6 ["mouseDownOnKeyframe"]
       14 JUMPIFNOT                        R4 ; [+22]
       15 GETTABLEKS                       R6 R0 K7 ["isMultiSelecting"]
       17 JUMPIFNOT                        R6 ; [+40]
       18 JUMPIFNOT                        R1 ; [+9]
       19 GETTABLEKS                       R6 R0 K0 ["props"]
       21 GETTABLEKS                       R6 R6 K8 ["DeselectKeyframe"]
       23 MOVE                             R7 R1
       24 MOVE                             R8 R2
       25 MOVE                             R9 R3
       26 CALL                             R6 3 0
       27 RETURN                           R0 0
       28 GETTABLEKS                       R6 R0 K0 ["props"]
       30 GETTABLEKS                       R6 R6 K9 ["DeselectKeyframesAtTick"]
       32 MOVE                             R7 R3
       33 GETTABLEKS                       R8 R0 K7 ["isMultiSelecting"]
       35 CALL                             R6 2 0
       36 RETURN                           R0 0
       37 JUMPIFNOT                        R1 ; [+12]
       38 GETTABLEKS                       R6 R0 K0 ["props"]
       40 GETTABLEKS                       R6 R6 K10 ["SelectKeyframeRange"]
       42 MOVE                             R7 R1
       43 MOVE                             R8 R2
       44 MOVE                             R9 R3
       45 MOVE                             R10 R3
       46 GETTABLEKS                       R11 R0 K7 ["isMultiSelecting"]
       48 CALL                             R6 5 0
       49 RETURN                           R0 0
       50 GETTABLEKS                       R6 R0 K0 ["props"]
       52 GETTABLEKS                       R6 R6 K11 ["SelectKeyframesAtTick"]
       54 MOVE                             R7 R3
       55 GETTABLEKS                       R8 R0 K7 ["isMultiSelecting"]
       57 CALL                             R6 2 0
       58 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R4 R3 K0 ["UserInputType"]
        2 GETIMPORT                        R5 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R4 R5 ; [+16]
        6 JUMPIFNOT                        R2 ; [+14]
        7 GETTABLEKS                       R4 R0 K4 ["mouseDownOnKeyframe"]
        9 JUMPIFNOT                        R4 ; [+11]
       10 GETTABLEKS                       R4 R0 K5 ["onKeyframeDragStarted"]
       12 MOVE                             R5 R1
       13 CALL                             R4 1 0
       14 GETTABLEKS                       R4 R0 K6 ["onKeyframeDragMoved"]
       16 MOVE                             R5 R3
       17 CALL                             R4 1 0
       18 LOADB                            R4 0
       19 SETTABLEKS                       R4 R0 K4 ["mouseDownOnKeyframe"]
       21 GETTABLEKS                       R4 R3 K0 ["UserInputType"]
       23 GETIMPORT                        R5 K8 [Enum.UserInputType.MouseButton1]
       25 JUMPIFNOTEQ                      R4 R5 ; [+4]
       27 LOADB                            R4 0
       28 SETTABLEKS                       R4 R0 K4 ["mouseDownOnKeyframe"]
       30 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R2 R1 K0 ["Keyframes"]
        2 SETTABLEKS                       R2 R0 K0 ["Keyframes"]
        4 GETTABLEKS                       R2 R1 K1 ["Data"]
        6 SETTABLEKS                       R2 R0 K1 ["Data"]
        8 GETTABLEKS                       R2 R1 K2 ["IsCurveTrack"]
       10 SETTABLEKS                       R2 R0 K2 ["IsCurveTrack"]
       12 GETTABLEKS                       R2 R1 K3 ["EulerAnglesOrder"]
       14 SETTABLEKS                       R2 R0 K3 ["EulerAnglesOrder"]
       16 GETIMPORT                        R2 K5 [pairs]
       18 GETTABLEKS                       R3 R1 K6 ["Components"]
       20 JUMPIF                           R3 ; [+2]
       21 NEWTABLE                         R3 0 0
       23 CALL                             R2 1 3
       24 FORGPREP_NEXT                    R2
       25 GETTABLEKS                       R7 R0 K6 ["Components"]
       27 JUMPIFNOT                        R7 ; [+8]
       28 GETTABLEKS                       R8 R0 K6 ["Components"]
       30 GETTABLE                         R7 R8 R5
       31 JUMPIFNOT                        R7 ; [+4]
       32 GETUPVAL                         R8 0
       33 MOVE                             R9 R7
       34 MOVE                             R10 R6
       35 CALL                             R8 2 0
       36 FORGLOOP                         R2 2 ; [-12]
       38 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        4 GETTABLEKS                       R3 R1 K2 ["Tracks"]
        6 NEWTABLE                         R4 0 0
        8 DUPCLOSURE                       R5 K3 [PROTO_34]
        9 CAPTURE                          VAL R5
       10 GETIMPORT                        R6 K5 [ipairs]
       12 MOVE                             R7 R3
       13 CALL                             R6 1 3
       14 FORGPREP_INEXT                   R6
       15 GETUPVAL                         R11 0
       16 MOVE                             R12 R10
       17 CALL                             R11 1 1
       18 SETTABLE                         R11 R4 R9
       19 JUMPIFNOT                        R2 ; [+24]
       20 GETIMPORT                        R11 K7 [pairs]
       22 GETTABLEKS                       R12 R2 K8 ["Instances"]
       24 CALL                             R11 1 3
       25 FORGPREP_NEXT                    R11
       26 GETIMPORT                        R16 K7 [pairs]
       28 GETTABLEKS                       R17 R15 K2 ["Tracks"]
       30 CALL                             R16 1 3
       31 FORGPREP_NEXT                    R16
       32 GETTABLEKS                       R21 R10 K9 ["Name"]
       34 JUMPIFNOTEQ                      R21 R19 ; [+5]
       36 MOVE                             R21 R5
       37 GETTABLE                         R22 R4 R9
       38 MOVE                             R23 R20
       39 CALL                             R21 2 0
       40 FORGLOOP                         R16 2 ; [-9]
       42 FORGLOOP                         R11 2 ; [-17]
       44 FORGLOOP                         R6 2 [inext] ; [-30]
       46 RETURN                           R4 1

PROTO_36:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 JUMPIFEQ                         R2 R3 ; [+3]
        4 LOADB                            R3 1
        5 RETURN                           R3 1
        6 GETIMPORT                        R3 K2 [pairs]
        8 MOVE                             R4 R1
        9 CALL                             R3 1 3
       10 FORGPREP_NEXT                    R3
       11 GETTABLE                         R8 R1 R6
       12 GETTABLEKS                       R10 R0 K3 ["props"]
       14 GETTABLE                         R9 R10 R6
       15 JUMPIFEQ                         R8 R9 ; [+3]
       17 LOADB                            R8 1
       18 RETURN                           R8 1
       19 FORGLOOP                         R3 2 ; [-9]
       21 LOADB                            R3 0
       22 RETURN                           R3 1

PROTO_37:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFEQ                         R2 R3 ; [+6]
        6 GETUPVAL                         R2 0
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K4 ["handleTimelineInputBegan"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFEQ                         R2 R3 ; [+6]
        6 GETUPVAL                         R2 0
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K4 ["handleTimelineInputEnded"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["handleTimelineInputBegan"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["handleTimelineInputEnded"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 NAMECALL                         R4 R4 K0 ["handleKeyframeRightClick"]
        7 CALL                             R4 5 0
        8 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R5 0
        1 MOVE                             R7 R0
        2 MOVE                             R8 R1
        3 MOVE                             R9 R2
        4 MOVE                             R10 R3
        5 MOVE                             R11 R4
        6 NAMECALL                         R5 R5 K0 ["handleKeyframeInputBegan"]
        8 CALL                             R5 6 0
        9 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["handleKeyframeInputEnded"]
        6 CALL                             R3 4 0
        7 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setRenamingKeyframe"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_45:
        0 GETIMPORT                        R1 K1 [spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setChangingDuration"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_47:
        0 GETIMPORT                        R0 K1 [spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_48:
        0 JUMPIFNOTEQKS                    R0 K0 ["Delete"] ; [+16]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["setRenamingKeyframe"]
        5 CALL                             R1 0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["RenameKeyframe"]
        9 GETUPVAL                         R2 2
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K3 ["DEFAULT_KEYFRAME_NAME"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K4 ["Analytics"]
       16 CALL                             R1 3 0
       17 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setRenamingKeyframe"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["RenameKeyframe"]
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["Analytics"]
       12 CALL                             R1 3 0
       13 RETURN                           R0 0

PROTO_50:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["dragging"]
        6 GETTABLEKS                       R4 R2 K3 ["draggingScale"]
        8 GETTABLEKS                       R5 R2 K4 ["draggingSelection"]
       10 GETTABLEKS                       R6 R2 K5 ["AbsoluteSize"]
       12 GETTABLEKS                       R7 R2 K6 ["AbsolutePosition"]
       14 GETTABLEKS                       R8 R2 K7 ["showContextMenu"]
       16 GETTABLEKS                       R9 R2 K8 ["renamingKeyframe"]
       18 GETTABLEKS                       R10 R2 K9 ["changingDuration"]
       20 GETTABLEKS                       R11 R1 K10 ["Active"]
       22 GETTABLEKS                       R12 R1 K11 ["AnimationData"]
       24 GETTABLEKS                       R13 R1 K12 ["SelectedKeyframes"]
       26 GETTABLEKS                       R14 R1 K13 ["StartTick"]
       28 GETTABLEKS                       R15 R1 K14 ["EndTick"]
       30 GETTABLEKS                       R16 R1 K15 ["TrackPadding"]
       32 GETTABLEKS                       R17 R1 K16 ["TopTrackIndex"]
       34 GETTABLEKS                       R18 R1 K17 ["ShowEvents"]
       36 GETTABLEKS                       R19 R1 K18 ["Localization"]
       38 GETTABLEKS                       R20 R1 K19 ["FrameRate"]
       40 GETTABLEKS                       R21 R1 K20 ["TimelineUnit"]
       42 GETTABLEKS                       R22 R1 K21 ["IsChannelAnimation"]
       44 GETTABLEKS                       R24 R1 K23 ["ColorsPosition"]
       46 ORK                              R23 R24 K22 [0]
       47 GETTABLEKS                       R24 R1 K24 ["Tracks"]
       49 JUMPIFNOT                        R12 ; [+8]
       50 GETTABLEKS                       R26 R12 K25 ["Events"]
       52 JUMPIFNOT                        R26 ; [+5]
       53 GETTABLEKS                       R25 R12 K25 ["Events"]
       55 GETTABLEKS                       R25 R25 K26 ["NamedKeyframes"]
       57 JUMPIF                           R25 ; [+2]
       58 NEWTABLE                         R25 0 0
       60 GETTABLEKS                       R26 R1 K27 ["Loaded"]
       62 GETTABLEKS                       R27 R1 K28 ["Saved"]
       64 GETTABLEKS                       R28 R1 K29 ["ClippedWarning"]
       66 GETTABLEKS                       R29 R1 K30 ["InvalidIdWarning"]
       68 NOT                              R30 R28
       69 GETTABLEKS                       R31 R1 K31 ["Size"]
       71 GETTABLEKS                       R32 R1 K32 ["Position"]
       73 NAMECALL                         R33 R0 K33 ["hasSelectedKeyframes"]
       75 CALL                             R33 1 1
       76 JUMPIFNOT                        R33 ; [+3]
       77 NAMECALL                         R33 R0 K34 ["multipleFramesSelected"]
       79 CALL                             R33 1 1
       80 LOADNIL                          R34
       81 JUMPIFNOT                        R10 ; [+20]
       82 GETUPVAL                         R35 0
       83 GETTABLEKS                       R35 R35 K35 ["getSelectionBounds"]
       85 GETTABLEKS                       R36 R0 K0 ["props"]
       87 GETTABLEKS                       R36 R36 K11 ["AnimationData"]
       89 GETTABLEKS                       R37 R0 K0 ["props"]
       91 GETTABLEKS                       R37 R37 K12 ["SelectedKeyframes"]
       93 CALL                             R35 2 2
       94 SUB                              R38 R36 R35
       95 GETTABLEKS                       R39 R1 K19 ["FrameRate"]
       97 MUL                              R37 R38 R39
       98 GETUPVAL                         R38 1
       99 GETTABLEKS                       R38 R38 K36 ["TICK_FREQUENCY"]
      101 DIV                              R34 R37 R38
      102 NAMECALL                         R35 R0 K37 ["makeTracks"]
      104 CALL                             R35 1 1
      105 SETTABLEKS                       R35 R0 K38 ["tracks"]
      107 JUMPIFNOT                        R12 ; [+662]
      108 GETTABLEKS                       R35 R12 K39 ["Instances"]
      110 GETTABLEKS                       R35 R35 K40 ["Root"]
      112 JUMPIFNOT                        R35 ; [+657]
      113 GETUPVAL                         R35 2
      114 GETTABLEKS                       R35 R35 K41 ["createElement"]
      116 LOADK                            R36 K42 ["Frame"]
      117 NEWTABLE                         R37 8 0
      119 SETTABLEKS                       R31 R37 K31 ["Size"]
      121 SETTABLEKS                       R32 R37 K32 ["Position"]
      123 LOADN                            R38 1
      124 SETTABLEKS                       R38 R37 K43 ["BackgroundTransparency"]
      126 GETTABLEKS                       R38 R1 K44 ["ZIndex"]
      128 SETTABLEKS                       R38 R37 K44 ["ZIndex"]
      130 GETUPVAL                         R38 2
      131 GETTABLEKS                       R38 R38 K45 ["Event"]
      133 GETTABLEKS                       R38 R38 K46 ["MouseWheelForward"]
      135 GETTABLEKS                       R39 R0 K47 ["onWheelForward"]
      137 SETTABLE                         R39 R37 R38
      138 GETUPVAL                         R38 2
      139 GETTABLEKS                       R38 R38 K45 ["Event"]
      141 GETTABLEKS                       R38 R38 K48 ["MouseWheelBackward"]
      143 GETTABLEKS                       R39 R0 K49 ["onWheelBackward"]
      145 SETTABLE                         R39 R37 R38
      146 DUPTABLE                         R38 K53 [{"Layout", "Events", "DopeSheetContainer", "IgnoreLayout"}]
      147 GETUPVAL                         R39 2
      148 GETTABLEKS                       R39 R39 K41 ["createElement"]
      150 LOADK                            R40 K54 ["UIListLayout"]
      151 DUPTABLE                         R41 K57 [{"FillDirection", "SortOrder"}]
      152 GETIMPORT                        R42 K60 [Enum.FillDirection.Vertical]
      154 SETTABLEKS                       R42 R41 K55 ["FillDirection"]
      156 GETIMPORT                        R42 K62 [Enum.SortOrder.LayoutOrder]
      158 SETTABLEKS                       R42 R41 K56 ["SortOrder"]
      160 CALL                             R39 2 1
      161 SETTABLEKS                       R39 R38 K50 ["Layout"]
      163 MOVE                             R39 R18
      164 JUMPIFNOT                        R39 ; [+34]
      165 GETUPVAL                         R39 2
      166 GETTABLEKS                       R39 R39 K41 ["createElement"]
      168 GETUPVAL                         R40 3
      169 DUPTABLE                         R41 K63 [{"AbsolutePosition", "AbsoluteSize", "AnimationData", "StartTick", "EndTick", "TrackPadding"}]
      170 GETIMPORT                        R43 K66 [Vector2.new]
      172 LOADN                            R44 0
      173 GETUPVAL                         R45 1
      174 GETTABLEKS                       R45 R45 K67 ["TRACK_HEIGHT"]
      176 CALL                             R43 2 1
      177 SUB                              R42 R7 R43
      178 SETTABLEKS                       R42 R41 K6 ["AbsolutePosition"]
      180 GETIMPORT                        R42 K66 [Vector2.new]
      182 GETTABLEKS                       R43 R6 K68 ["X"]
      184 GETUPVAL                         R44 1
      185 GETTABLEKS                       R44 R44 K67 ["TRACK_HEIGHT"]
      187 CALL                             R42 2 1
      188 SETTABLEKS                       R42 R41 K5 ["AbsoluteSize"]
      190 SETTABLEKS                       R12 R41 K11 ["AnimationData"]
      192 SETTABLEKS                       R14 R41 K13 ["StartTick"]
      194 SETTABLEKS                       R15 R41 K14 ["EndTick"]
      196 SETTABLEKS                       R16 R41 K15 ["TrackPadding"]
      198 CALL                             R39 2 1
      199 SETTABLEKS                       R39 R38 K25 ["Events"]
      201 GETUPVAL                         R39 2
      202 GETTABLEKS                       R39 R39 K41 ["createElement"]
      204 LOADK                            R40 K42 ["Frame"]
      205 NEWTABLE                         R41 8 0
      207 JUMPIFNOT                        R18 ; [+11]
      208 GETIMPORT                        R42 K70 [UDim2.new]
      210 LOADN                            R43 1
      211 LOADN                            R44 0
      212 LOADN                            R45 1
      213 GETUPVAL                         R47 1
      214 GETTABLEKS                       R47 R47 K67 ["TRACK_HEIGHT"]
      216 MINUS                            R46 R47
      217 CALL                             R42 4 1
      218 JUMPIF                           R42 ; [+7]
      219 GETIMPORT                        R42 K70 [UDim2.new]
      221 LOADN                            R43 1
      222 LOADN                            R44 0
      223 LOADN                            R45 1
      224 LOADN                            R46 0
      225 CALL                             R42 4 1
      226 SETTABLEKS                       R42 R41 K31 ["Size"]
      228 LOADN                            R42 1
      229 SETTABLEKS                       R42 R41 K43 ["BackgroundTransparency"]
      231 LOADN                            R42 1
      232 SETTABLEKS                       R42 R41 K61 ["LayoutOrder"]
      234 LOADB                            R42 1
      235 SETTABLEKS                       R42 R41 K71 ["ClipsDescendants"]
      237 GETUPVAL                         R42 2
      238 GETTABLEKS                       R42 R42 K72 ["Change"]
      240 GETTABLEKS                       R42 R42 K5 ["AbsoluteSize"]
      242 GETTABLEKS                       R43 R0 K73 ["recalculateExtents"]
      244 SETTABLE                         R43 R41 R42
      245 GETUPVAL                         R42 2
      246 GETTABLEKS                       R42 R42 K45 ["Event"]
      248 GETTABLEKS                       R42 R42 K74 ["InputBegan"]
      250 NEWCLOSURE                       R43 P0
      251 CAPTURE                          VAL R0
      252 SETTABLE                         R43 R41 R42
      253 GETUPVAL                         R42 2
      254 GETTABLEKS                       R42 R42 K45 ["Event"]
      256 GETTABLEKS                       R42 R42 K75 ["InputEnded"]
      258 NEWCLOSURE                       R43 P1
      259 CAPTURE                          VAL R0
      260 SETTABLE                         R43 R41 R42
      261 DUPTABLE                         R42 K88 [{"KeyboardListener", "DopeSheet", "DragTarget", "MultiSelectBox", "TimelineActions", "ScaleControls", "RenameKeyframePrompt", "ChangeDurationPrompt", "ClippedToast", "SavedToast", "LoadedToast", "InvalidId"}]
      262 GETUPVAL                         R43 2
      263 GETTABLEKS                       R43 R43 K41 ["createElement"]
      265 GETUPVAL                         R44 4
      266 DUPTABLE                         R45 K91 [{"OnKeyPressed", "OnKeyReleased"}]
      267 NEWCLOSURE                       R46 P2
      268 CAPTURE                          VAL R0
      269 SETTABLEKS                       R46 R45 K89 ["OnKeyPressed"]
      271 NEWCLOSURE                       R46 P3
      272 CAPTURE                          VAL R0
      273 SETTABLEKS                       R46 R45 K90 ["OnKeyReleased"]
      275 CALL                             R43 2 1
      276 SETTABLEKS                       R43 R42 K76 ["KeyboardListener"]
      278 GETUPVAL                         R43 2
      279 GETTABLEKS                       R43 R43 K41 ["createElement"]
      281 GETUPVAL                         R44 5
      282 DUPTABLE                         R45 K101 [{["Size"], ["ParentSize"], ["Padding"], ["StartTick"], ["EndTick"], ["TopTrackIndex"], ["SelectedKeyframes"], ["SelectedEvents"], ["Tracks"], ["IsChannelAnimation"], ["NamedKeyframes"], ["TrackHeight"], ["SummaryTrackHeight"], ["ZIndex"] = 1, ["OnKeyRightClick"], ["OnKeyInputBegan"], ["OnKeyInputEnded"]}]
      283 GETIMPORT                        R46 K70 [UDim2.new]
      285 LOADN                            R47 1
      286 LOADN                            R48 0
      287 LOADN                            R49 1
      288 LOADN                            R50 0
      289 CALL                             R46 4 1
      290 SETTABLEKS                       R46 R45 K31 ["Size"]
      292 SETTABLEKS                       R6 R45 K92 ["ParentSize"]
      294 GETTABLEKS                       R46 R1 K15 ["TrackPadding"]
      296 SETTABLEKS                       R46 R45 K93 ["Padding"]
      298 SETTABLEKS                       R14 R45 K13 ["StartTick"]
      300 SETTABLEKS                       R15 R45 K14 ["EndTick"]
      302 SETTABLEKS                       R17 R45 K16 ["TopTrackIndex"]
      304 GETTABLEKS                       R46 R1 K12 ["SelectedKeyframes"]
      306 SETTABLEKS                       R46 R45 K12 ["SelectedKeyframes"]
      308 GETTABLEKS                       R46 R1 K94 ["SelectedEvents"]
      310 SETTABLEKS                       R46 R45 K94 ["SelectedEvents"]
      312 GETTABLEKS                       R46 R0 K38 ["tracks"]
      314 SETTABLEKS                       R46 R45 K24 ["Tracks"]
      316 SETTABLEKS                       R22 R45 K21 ["IsChannelAnimation"]
      318 SETTABLEKS                       R25 R45 K26 ["NamedKeyframes"]
      320 GETUPVAL                         R46 1
      321 GETTABLEKS                       R46 R46 K67 ["TRACK_HEIGHT"]
      323 SETTABLEKS                       R46 R45 K95 ["TrackHeight"]
      325 GETUPVAL                         R46 1
      326 GETTABLEKS                       R46 R46 K102 ["SUMMARY_TRACK_HEIGHT"]
      328 SETTABLEKS                       R46 R45 K96 ["SummaryTrackHeight"]
      330 NEWCLOSURE                       R46 P4
      331 CAPTURE                          VAL R0
      332 SETTABLEKS                       R46 R45 K98 ["OnKeyRightClick"]
      334 NEWCLOSURE                       R46 P5
      335 CAPTURE                          VAL R0
      336 SETTABLEKS                       R46 R45 K99 ["OnKeyInputBegan"]
      338 NEWCLOSURE                       R46 P6
      339 CAPTURE                          VAL R0
      340 SETTABLEKS                       R46 R45 K100 ["OnKeyInputEnded"]
      342 CALL                             R43 2 1
      343 SETTABLEKS                       R43 R42 K77 ["DopeSheet"]
      345 MOVE                             R43 R3
      346 JUMPIFNOT                        R43 ; [+14]
      347 GETUPVAL                         R43 2
      348 GETTABLEKS                       R43 R43 K41 ["createElement"]
      350 GETUPVAL                         R44 6
      351 DUPTABLE                         R45 K105 [{"OnDragMoved", "OnDragEnded"}]
      352 GETTABLEKS                       R46 R0 K106 ["onKeyframeDragMoved"]
      354 SETTABLEKS                       R46 R45 K103 ["OnDragMoved"]
      356 GETTABLEKS                       R46 R0 K107 ["onKeyframeDragEnded"]
      358 SETTABLEKS                       R46 R45 K104 ["OnDragEnded"]
      360 CALL                             R43 2 1
      361 SETTABLEKS                       R43 R42 K78 ["DragTarget"]
      363 MOVE                             R43 R5
      364 JUMPIFNOT                        R43 ; [+29]
      365 GETUPVAL                         R43 2
      366 GETTABLEKS                       R43 R43 K41 ["createElement"]
      368 GETUPVAL                         R44 7
      369 DUPTABLE                         R45 K111 [{"OnDragMoved", "OnDragEnded", "SelectionStart", "SelectionEnd", "SourceExtents"}]
      370 GETTABLEKS                       R46 R0 K112 ["onSelectDragMoved"]
      372 SETTABLEKS                       R46 R45 K103 ["OnDragMoved"]
      374 GETTABLEKS                       R46 R0 K113 ["onSelectDragEnded"]
      376 SETTABLEKS                       R46 R45 K104 ["OnDragEnded"]
      378 GETTABLEKS                       R46 R0 K114 ["selectDragStart"]
      380 SETTABLEKS                       R46 R45 K108 ["SelectionStart"]
      382 GETTABLEKS                       R46 R0 K115 ["selectDragEnd"]
      384 SETTABLEKS                       R46 R45 K109 ["SelectionEnd"]
      386 GETIMPORT                        R46 K117 [Rect.new]
      388 MOVE                             R47 R7
      389 ADD                              R48 R7 R6
      390 CALL                             R46 2 1
      391 SETTABLEKS                       R46 R45 K110 ["SourceExtents"]
      393 CALL                             R43 2 1
      394 SETTABLEKS                       R43 R42 K79 ["MultiSelectBox"]
      396 MOVE                             R43 R11
      397 JUMPIFNOT                        R43 ; [+38]
      398 GETUPVAL                         R43 2
      399 GETTABLEKS                       R43 R43 K41 ["createElement"]
      401 GETUPVAL                         R44 8
      402 DUPTABLE                         R45 K126 [{"ShowMenu", "MultipleSelected", "IsChannelAnimation", "OnMenuOpened", "OnItemSelected", "OnClearTangentsSelected", "OnGenerateCurve", "OnRenameKeyframe", "OnChangeDuration"}]
      403 SETTABLEKS                       R8 R45 K118 ["ShowMenu"]
      405 SETTABLEKS                       R33 R45 K119 ["MultipleSelected"]
      407 SETTABLEKS                       R22 R45 K21 ["IsChannelAnimation"]
      409 GETTABLEKS                       R46 R0 K127 ["hideMenu"]
      411 SETTABLEKS                       R46 R45 K120 ["OnMenuOpened"]
      413 GETTABLEKS                       R46 R0 K128 ["onEasingItemSelected"]
      415 SETTABLEKS                       R46 R45 K121 ["OnItemSelected"]
      417 GETTABLEKS                       R46 R0 K129 ["onClearTangentsSelected"]
      419 SETTABLEKS                       R46 R45 K122 ["OnClearTangentsSelected"]
      421 GETTABLEKS                       R46 R0 K0 ["props"]
      423 GETTABLEKS                       R46 R46 K130 ["GenerateCurve"]
      425 SETTABLEKS                       R46 R45 K123 ["OnGenerateCurve"]
      427 NEWCLOSURE                       R46 P7
      428 CAPTURE                          VAL R0
      429 SETTABLEKS                       R46 R45 K124 ["OnRenameKeyframe"]
      431 NEWCLOSURE                       R46 P8
      432 CAPTURE                          VAL R0
      433 SETTABLEKS                       R46 R45 K125 ["OnChangeDuration"]
      435 CALL                             R43 2 1
      436 SETTABLEKS                       R43 R42 K80 ["TimelineActions"]
      438 MOVE                             R43 R33
      439 JUMPIFNOT                        R43 ; [+50]
      440 NOT                              R43 R5
      441 JUMPIFNOT                        R43 ; [+48]
      442 GETUPVAL                         R43 2
      443 GETTABLEKS                       R43 R43 K41 ["createElement"]
      445 GETUPVAL                         R44 9
      446 DUPTABLE                         R45 K139 [{["SelectedKeyframes"], ["StartTick"], ["EndTick"], ["TopTrackIndex"], ["Tracks"], ["TrackPadding"], ["Dragging"], ["TimelineUnit"], ["FrameRate"], ["DopeSheetWidth"], ["ZIndex"] = 2, ["ShowSelectionArea"] = True, ["IsChannelAnimation"], ["OnScaleHandleDragStart"], ["OnScaleHandleDragEnd"], ["OnScaleHandleDragMoved"]}]
      447 SETTABLEKS                       R13 R45 K12 ["SelectedKeyframes"]
      449 SETTABLEKS                       R14 R45 K13 ["StartTick"]
      451 SETTABLEKS                       R15 R45 K14 ["EndTick"]
      453 SETTABLEKS                       R17 R45 K16 ["TopTrackIndex"]
      455 GETTABLEKS                       R46 R0 K38 ["tracks"]
      457 SETTABLEKS                       R46 R45 K24 ["Tracks"]
      459 SETTABLEKS                       R16 R45 K15 ["TrackPadding"]
      461 OR                               R46 R4 R3
      462 SETTABLEKS                       R46 R45 K131 ["Dragging"]
      464 SETTABLEKS                       R21 R45 K20 ["TimelineUnit"]
      466 SETTABLEKS                       R20 R45 K19 ["FrameRate"]
      468 GETTABLEKS                       R47 R6 K68 ["X"]
      470 GETTABLEKS                       R48 R1 K15 ["TrackPadding"]
      472 SUB                              R46 R47 R48
      473 SETTABLEKS                       R46 R45 K132 ["DopeSheetWidth"]
      475 SETTABLEKS                       R22 R45 K21 ["IsChannelAnimation"]
      477 GETTABLEKS                       R46 R0 K140 ["onScaleHandleDragStarted"]
      479 SETTABLEKS                       R46 R45 K136 ["OnScaleHandleDragStart"]
      481 GETTABLEKS                       R46 R0 K141 ["onScaleHandleDragEnded"]
      483 SETTABLEKS                       R46 R45 K137 ["OnScaleHandleDragEnd"]
      485 GETTABLEKS                       R46 R0 K142 ["onScaleHandleDragMoved"]
      487 SETTABLEKS                       R46 R45 K138 ["OnScaleHandleDragMoved"]
      489 CALL                             R43 2 1
      490 SETTABLEKS                       R43 R42 K81 ["ScaleControls"]
      492 LOADB                            R43 0
      493 JUMPIFEQKNIL                     R9 ; [+75]
      495 GETUPVAL                         R43 2
      496 GETTABLEKS                       R43 R43 K41 ["createElement"]
      498 GETUPVAL                         R44 10
      499 DUPTABLE                         R45 K150 [{"PromptText", "InputText", "Text", "Buttons", "OnButtonClicked", "OnTextSubmitted", "OnClose"}]
      500 LOADK                            R48 K151 ["ContextMenu"]
      501 LOADK                            R49 K152 ["RenameKeyframe"]
      502 NAMECALL                         R46 R19 K153 ["getText"]
      504 CALL                             R46 3 1
      505 SETTABLEKS                       R46 R45 K143 ["PromptText"]
      507 LOADK                            R48 K154 ["Menu"]
      508 LOADK                            R49 K82 ["RenameKeyframePrompt"]
      509 NAMECALL                         R46 R19 K153 ["getText"]
      511 CALL                             R46 3 1
      512 SETTABLEKS                       R46 R45 K144 ["InputText"]
      514 GETTABLE                         R46 R25 R9
      515 JUMPIF                           R46 ; [+3]
      516 GETUPVAL                         R46 1
      517 GETTABLEKS                       R46 R46 K155 ["DEFAULT_KEYFRAME_NAME"]
      519 SETTABLEKS                       R46 R45 K145 ["Text"]
      521 NEWTABLE                         R46 0 3
      523 DUPTABLE                         R47 K160 [{["Key"] = "Delete", ["Text"], ["Style"] = "Round"}]
      524 LOADK                            R50 K161 ["Dialog"]
      525 LOADK                            R51 K157 ["Delete"]
      526 NAMECALL                         R48 R19 K153 ["getText"]
      528 CALL                             R48 3 1
      529 SETTABLEKS                       R48 R47 K145 ["Text"]
      531 DUPTABLE                         R48 K163 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
      532 LOADK                            R51 K161 ["Dialog"]
      533 LOADK                            R52 K164 ["Cancel"]
      534 NAMECALL                         R49 R19 K153 ["getText"]
      536 CALL                             R49 3 1
      537 SETTABLEKS                       R49 R48 K145 ["Text"]
      539 DUPTABLE                         R49 K166 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
      540 LOADK                            R52 K161 ["Dialog"]
      541 LOADK                            R53 K167 ["Save"]
      542 NAMECALL                         R50 R19 K153 ["getText"]
      544 CALL                             R50 3 1
      545 SETTABLEKS                       R50 R49 K145 ["Text"]
      547 SETLIST                          R46 R47 3 [1]
      549 SETTABLEKS                       R46 R45 K146 ["Buttons"]
      551 NEWCLOSURE                       R46 P9
      552 CAPTURE                          VAL R0
      553 CAPTURE                          VAL R1
      554 CAPTURE                          VAL R9
      555 CAPTURE                          UPVAL U1
      556 SETTABLEKS                       R46 R45 K147 ["OnButtonClicked"]
      558 NEWCLOSURE                       R46 P10
      559 CAPTURE                          VAL R0
      560 CAPTURE                          VAL R1
      561 CAPTURE                          VAL R9
      562 SETTABLEKS                       R46 R45 K148 ["OnTextSubmitted"]
      564 GETTABLEKS                       R46 R0 K168 ["setRenamingKeyframe"]
      566 SETTABLEKS                       R46 R45 K149 ["OnClose"]
      568 CALL                             R43 2 1
      569 SETTABLEKS                       R43 R42 K82 ["RenameKeyframePrompt"]
      571 MOVE                             R43 R34
      572 JUMPIFNOT                        R43 ; [+62]
      573 GETUPVAL                         R43 2
      574 GETTABLEKS                       R43 R43 K41 ["createElement"]
      576 GETUPVAL                         R44 10
      577 DUPTABLE                         R45 K170 [{"PromptText", "InputText", "NoticeText", "Text", "Buttons", "OnTextSubmitted", "OnClose"}]
      578 LOADK                            R48 K171 ["Title"]
      579 LOADK                            R49 K172 ["ChangeDuration"]
      580 NAMECALL                         R46 R19 K153 ["getText"]
      582 CALL                             R46 3 1
      583 SETTABLEKS                       R46 R45 K143 ["PromptText"]
      585 LOADK                            R48 K171 ["Title"]
      586 LOADK                            R49 K173 ["NewDuration"]
      587 NAMECALL                         R46 R19 K153 ["getText"]
      589 CALL                             R46 3 1
      590 SETTABLEKS                       R46 R45 K144 ["InputText"]
      592 LOADK                            R48 K171 ["Title"]
      593 LOADK                            R49 K174 ["CurrentDuration_Migrated"]
      594 DUPTABLE                         R50 K176 [{"currentDuration"}]
      595 SETTABLEKS                       R34 R50 K175 ["currentDuration"]
      597 NAMECALL                         R46 R19 K153 ["getText"]
      599 CALL                             R46 4 1
      600 SETTABLEKS                       R46 R45 K169 ["NoticeText"]
      602 SETTABLEKS                       R34 R45 K145 ["Text"]
      604 NEWTABLE                         R46 0 2
      606 DUPTABLE                         R47 K163 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
      607 LOADK                            R50 K161 ["Dialog"]
      608 LOADK                            R51 K164 ["Cancel"]
      609 NAMECALL                         R48 R19 K153 ["getText"]
      611 CALL                             R48 3 1
      612 SETTABLEKS                       R48 R47 K145 ["Text"]
      614 DUPTABLE                         R48 K166 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
      615 LOADK                            R51 K161 ["Dialog"]
      616 LOADK                            R52 K167 ["Save"]
      617 NAMECALL                         R49 R19 K153 ["getText"]
      619 CALL                             R49 3 1
      620 SETTABLEKS                       R49 R48 K145 ["Text"]
      622 SETLIST                          R46 R47 2 [1]
      624 SETTABLEKS                       R46 R45 K146 ["Buttons"]
      626 GETTABLEKS                       R46 R0 K177 ["setSelectedKeyframeDuration"]
      628 SETTABLEKS                       R46 R45 K148 ["OnTextSubmitted"]
      630 GETTABLEKS                       R46 R0 K178 ["setChangingDuration"]
      632 SETTABLEKS                       R46 R45 K149 ["OnClose"]
      634 CALL                             R43 2 1
      635 SETTABLEKS                       R43 R42 K83 ["ChangeDurationPrompt"]
      637 MOVE                             R43 R28
      638 JUMPIFNOT                        R43 ; [+17]
      639 GETUPVAL                         R43 2
      640 GETTABLEKS                       R43 R43 K41 ["createElement"]
      642 GETUPVAL                         R44 11
      643 DUPTABLE                         R45 K179 [{"Text", "OnClose"}]
      644 LOADK                            R48 K180 ["Toast"]
      645 LOADK                            R49 K29 ["ClippedWarning"]
      646 NAMECALL                         R46 R19 K153 ["getText"]
      648 CALL                             R46 3 1
      649 SETTABLEKS                       R46 R45 K145 ["Text"]
      651 GETTABLEKS                       R46 R1 K181 ["CloseClippedToast"]
      653 SETTABLEKS                       R46 R45 K149 ["OnClose"]
      655 CALL                             R43 2 1
      656 SETTABLEKS                       R43 R42 K84 ["ClippedToast"]
      658 MOVE                             R43 R27
      659 JUMPIFNOT                        R43 ; [+20]
      660 GETUPVAL                         R43 2
      661 GETTABLEKS                       R43 R43 K41 ["createElement"]
      663 GETUPVAL                         R44 11
      664 DUPTABLE                         R45 K179 [{"Text", "OnClose"}]
      665 LOADK                            R48 K180 ["Toast"]
      666 LOADK                            R49 K182 ["Saved_Migrated"]
      667 DUPTABLE                         R50 K184 [{"savedAnimName"}]
      668 SETTABLEKS                       R27 R50 K183 ["savedAnimName"]
      670 NAMECALL                         R46 R19 K153 ["getText"]
      672 CALL                             R46 4 1
      673 SETTABLEKS                       R46 R45 K145 ["Text"]
      675 GETTABLEKS                       R46 R1 K185 ["CloseSavedToast"]
      677 SETTABLEKS                       R46 R45 K149 ["OnClose"]
      679 CALL                             R43 2 1
      680 SETTABLEKS                       R43 R42 K85 ["SavedToast"]
      682 MOVE                             R43 R30
      683 JUMPIFNOT                        R43 ; [+22]
      684 MOVE                             R43 R26
      685 JUMPIFNOT                        R43 ; [+20]
      686 GETUPVAL                         R43 2
      687 GETTABLEKS                       R43 R43 K41 ["createElement"]
      689 GETUPVAL                         R44 11
      690 DUPTABLE                         R45 K179 [{"Text", "OnClose"}]
      691 LOADK                            R48 K180 ["Toast"]
      692 LOADK                            R49 K186 ["Loaded_Migrated"]
      693 DUPTABLE                         R50 K188 [{"loadedAnimName"}]
      694 SETTABLEKS                       R26 R50 K187 ["loadedAnimName"]
      696 NAMECALL                         R46 R19 K153 ["getText"]
      698 CALL                             R46 4 1
      699 SETTABLEKS                       R46 R45 K145 ["Text"]
      701 GETTABLEKS                       R46 R1 K189 ["CloseLoadedToast"]
      703 SETTABLEKS                       R46 R45 K149 ["OnClose"]
      705 CALL                             R43 2 1
      706 SETTABLEKS                       R43 R42 K86 ["LoadedToast"]
      708 MOVE                             R43 R29
      709 JUMPIFNOT                        R43 ; [+17]
      710 GETUPVAL                         R43 2
      711 GETTABLEKS                       R43 R43 K41 ["createElement"]
      713 GETUPVAL                         R44 11
      714 DUPTABLE                         R45 K179 [{"Text", "OnClose"}]
      715 LOADK                            R48 K180 ["Toast"]
      716 LOADK                            R49 K190 ["InvalidAnimation"]
      717 NAMECALL                         R46 R19 K153 ["getText"]
      719 CALL                             R46 3 1
      720 SETTABLEKS                       R46 R45 K145 ["Text"]
      722 GETTABLEKS                       R46 R1 K191 ["CloseInvalidAnimationToast"]
      724 SETTABLEKS                       R46 R45 K149 ["OnClose"]
      726 CALL                             R43 2 1
      727 SETTABLEKS                       R43 R42 K87 ["InvalidId"]
      729 CALL                             R39 3 1
      730 SETTABLEKS                       R39 R38 K51 ["DopeSheetContainer"]
      732 GETUPVAL                         R39 2
      733 GETTABLEKS                       R39 R39 K41 ["createElement"]
      735 LOADK                            R40 K192 ["Folder"]
      736 NEWTABLE                         R41 0 0
      738 DUPTABLE                         R42 K194 [{"TrackColors"}]
      739 GETUPVAL                         R43 2
      740 GETTABLEKS                       R43 R43 K41 ["createElement"]
      742 GETUPVAL                         R44 12
      743 DUPTABLE                         R45 K196 [{"Tracks", "TopTrackIndex", "Position", "MaxHeight"}]
      744 SETTABLEKS                       R24 R45 K24 ["Tracks"]
      746 SETTABLEKS                       R17 R45 K16 ["TopTrackIndex"]
      748 GETIMPORT                        R46 K70 [UDim2.new]
      750 LOADN                            R47 0
      751 LOADN                            R48 0
      752 LOADN                            R49 0
      753 MOVE                             R50 R23
      754 CALL                             R46 4 1
      755 SETTABLEKS                       R46 R45 K32 ["Position"]
      757 GETTABLEKS                       R47 R6 K197 ["Y"]
      759 SUB                              R46 R47 R23
      760 SETTABLEKS                       R46 R45 K195 ["MaxHeight"]
      762 CALL                             R43 2 1
      763 SETTABLEKS                       R43 R42 K193 ["TrackColors"]
      765 CALL                             R39 3 1
      766 SETTABLEKS                       R39 R38 K52 ["IgnoreLayout"]
      768 CALL                             R35 3 -1
      769 RETURN                           R35 -1
      770 GETUPVAL                         R35 2
      771 GETTABLEKS                       R35 R35 K41 ["createElement"]
      773 LOADK                            R36 K42 ["Frame"]
      774 NEWTABLE                         R37 4 0
      776 SETTABLEKS                       R31 R37 K31 ["Size"]
      778 SETTABLEKS                       R32 R37 K32 ["Position"]
      780 LOADN                            R38 1
      781 SETTABLEKS                       R38 R37 K43 ["BackgroundTransparency"]
      783 GETUPVAL                         R38 2
      784 GETTABLEKS                       R38 R38 K72 ["Change"]
      786 GETTABLEKS                       R38 R38 K5 ["AbsoluteSize"]
      788 GETTABLEKS                       R39 R0 K73 ["recalculateExtents"]
      790 SETTABLE                         R39 R37 R38
      791 CALL                             R35 2 -1
      792 RETURN                           R35 -1

PROTO_51:
        0 GETTABLEKS                       R2 R0 K0 ["Status"]
        2 DUPTABLE                         R3 K14 [{"Active", "SelectedKeyframes", "Clipboard", "AnimationData", "QuantizeWarning", "Saved", "Loaded", "ClippedWarning", "FrameRate", "SnapMode", "InvalidIdWarning", "Tracks", "ReadOnly"}]
        3 GETTABLEKS                       R4 R2 K1 ["Active"]
        5 SETTABLEKS                       R4 R3 K1 ["Active"]
        7 GETTABLEKS                       R4 R2 K2 ["SelectedKeyframes"]
        9 SETTABLEKS                       R4 R3 K2 ["SelectedKeyframes"]
       11 GETTABLEKS                       R4 R2 K3 ["Clipboard"]
       13 SETTABLEKS                       R4 R3 K3 ["Clipboard"]
       15 GETTABLEKS                       R4 R0 K4 ["AnimationData"]
       17 SETTABLEKS                       R4 R3 K4 ["AnimationData"]
       19 GETTABLEKS                       R4 R0 K15 ["Notifications"]
       21 GETTABLEKS                       R4 R4 K5 ["QuantizeWarning"]
       23 SETTABLEKS                       R4 R3 K5 ["QuantizeWarning"]
       25 GETTABLEKS                       R4 R0 K15 ["Notifications"]
       27 GETTABLEKS                       R4 R4 K6 ["Saved"]
       29 SETTABLEKS                       R4 R3 K6 ["Saved"]
       31 GETTABLEKS                       R4 R0 K15 ["Notifications"]
       33 GETTABLEKS                       R4 R4 K7 ["Loaded"]
       35 SETTABLEKS                       R4 R3 K7 ["Loaded"]
       37 GETTABLEKS                       R4 R0 K15 ["Notifications"]
       39 GETTABLEKS                       R4 R4 K8 ["ClippedWarning"]
       41 SETTABLEKS                       R4 R3 K8 ["ClippedWarning"]
       43 GETTABLEKS                       R4 R2 K9 ["FrameRate"]
       45 SETTABLEKS                       R4 R3 K9 ["FrameRate"]
       47 GETTABLEKS                       R4 R2 K10 ["SnapMode"]
       49 SETTABLEKS                       R4 R3 K10 ["SnapMode"]
       51 GETTABLEKS                       R4 R0 K15 ["Notifications"]
       53 GETTABLEKS                       R4 R4 K16 ["InvalidAnimation"]
       55 SETTABLEKS                       R4 R3 K11 ["InvalidIdWarning"]
       57 GETTABLEKS                       R4 R2 K12 ["Tracks"]
       59 SETTABLEKS                       R4 R3 K12 ["Tracks"]
       61 GETTABLEKS                       R4 R2 K13 ["ReadOnly"]
       63 SETTABLEKS                       R4 R3 K13 ["ReadOnly"]
       65 RETURN                           R3 1

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 LOADNIL                          R7
        5 LOADNIL                          R8
        6 MOVE                             R9 R2
        7 CALL                             R4 5 -1
        8 CALL                             R3 -1 0
        9 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_56:
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

PROTO_57:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 NEWTABLE                         R4 0 0
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 0
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 CALL                             R3 2 -1
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_59:
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

PROTO_60:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_61:
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

PROTO_62:
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
       11 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["Saved"]
        3 LOADB                            R3 0
        4 CALL                             R1 2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["Loaded"]
        3 LOADB                            R3 0
        4 CALL                             R1 2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["ClippedWarning"]
        3 LOADB                            R3 0
        4 CALL                             R1 2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["InvalidAnimation"]
        3 LOADB                            R3 0
        4 CALL                             R1 2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_67:
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

PROTO_68:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_69:
        0 DUPTABLE                         R1 K17 [{"AddWaypoint", "MoveSelectedKeyframes", "ScaleSelectedKeyframes", "DeselectKeyframe", "SelectKeyframeRange", "SelectKeyframesAtTick", "DeselectKeyframesAtTick", "DeselectAllKeyframes", "SetRightClickContextInfo", "SetSelectedKeyframeData", "RenameKeyframe", "CloseSavedToast", "CloseLoadedToast", "CloseClippedToast", "CloseInvalidAnimationToast", "GenerateCurve", "SetPlayState"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["AddWaypoint"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["MoveSelectedKeyframes"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["ScaleSelectedKeyframes"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["DeselectKeyframe"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 SETTABLEKS                       R2 R1 K4 ["SelectKeyframeRange"]
       27 NEWCLOSURE                       R2 P5
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U6
       31 SETTABLEKS                       R2 R1 K5 ["SelectKeyframesAtTick"]
       33 NEWCLOSURE                       R2 P6
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U7
       36 SETTABLEKS                       R2 R1 K6 ["DeselectKeyframesAtTick"]
       38 NEWCLOSURE                       R2 P7
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          UPVAL U4
       42 SETTABLEKS                       R2 R1 K7 ["DeselectAllKeyframes"]
       44 NEWCLOSURE                       R2 P8
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U9
       47 SETTABLEKS                       R2 R1 K8 ["SetRightClickContextInfo"]
       49 NEWCLOSURE                       R2 P9
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          UPVAL U10
       53 SETTABLEKS                       R2 R1 K9 ["SetSelectedKeyframeData"]
       55 NEWCLOSURE                       R2 P10
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          UPVAL U11
       59 SETTABLEKS                       R2 R1 K10 ["RenameKeyframe"]
       61 NEWCLOSURE                       R2 P11
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U12
       64 SETTABLEKS                       R2 R1 K11 ["CloseSavedToast"]
       66 NEWCLOSURE                       R2 P12
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U12
       69 SETTABLEKS                       R2 R1 K12 ["CloseLoadedToast"]
       71 NEWCLOSURE                       R2 P13
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U12
       74 SETTABLEKS                       R2 R1 K13 ["CloseClippedToast"]
       76 NEWCLOSURE                       R2 P14
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U12
       79 SETTABLEKS                       R2 R1 K14 ["CloseInvalidAnimationToast"]
       81 NEWCLOSURE                       R2 P15
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U0
       84 CAPTURE                          UPVAL U13
       85 SETTABLEKS                       R2 R1 K15 ["GenerateCurve"]
       87 NEWCLOSURE                       R2 P16
       88 CAPTURE                          VAL R0
       89 CAPTURE                          UPVAL U14
       90 SETTABLEKS                       R2 R1 K16 ["SetPlayState"]
       92 RETURN                           R1 1

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
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["deepCopy"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Util"]
       43 GETTABLEKS                       R6 R6 K13 ["AnimationData"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Packages"]
       50 GETTABLEKS                       R7 R7 K14 ["Framework"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R6 K15 ["UI"]
       55 GETTABLEKS                       R7 R7 K16 ["DragListener"]
       57 GETTABLEKS                       R8 R6 K17 ["ContextServices"]
       59 GETTABLEKS                       R9 R8 K18 ["withContext"]
       61 GETTABLEKS                       R10 R6 K15 ["UI"]
       63 GETTABLEKS                       R10 R10 K19 ["KeyboardListener"]
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R12 R0 K10 ["Src"]
       69 GETTABLEKS                       R12 R12 K20 ["Actions"]
       71 GETTABLEKS                       R12 R12 K21 ["SetNotification"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R13 R0 K10 ["Src"]
       78 GETTABLEKS                       R13 R13 K20 ["Actions"]
       80 GETTABLEKS                       R13 R13 K22 ["SetPlayState"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R14 R0 K10 ["Src"]
       87 GETTABLEKS                       R14 R14 K20 ["Actions"]
       89 GETTABLEKS                       R14 R14 K23 ["SetRightClickContextInfo"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETTABLEKS                       R15 R0 K10 ["Src"]
       96 GETTABLEKS                       R15 R15 K20 ["Actions"]
       98 GETTABLEKS                       R15 R15 K24 ["SetSelectedKeyframes"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R16 R0 K10 ["Src"]
      105 GETTABLEKS                       R16 R16 K20 ["Actions"]
      107 GETTABLEKS                       R16 R16 K25 ["SetSelectedEvents"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K10 ["Src"]
      114 GETTABLEKS                       R17 R17 K26 ["Components"]
      116 GETTABLEKS                       R17 R17 K27 ["DopeSheet"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R18 R0 K10 ["Src"]
      123 GETTABLEKS                       R18 R18 K26 ["Components"]
      125 GETTABLEKS                       R18 R18 K28 ["TrackList"]
      127 GETTABLEKS                       R18 R18 K29 ["TrackColors"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K10 ["Src"]
      134 GETTABLEKS                       R19 R19 K26 ["Components"]
      136 GETTABLEKS                       R19 R19 K30 ["EventsController"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K10 ["Src"]
      143 GETTABLEKS                       R20 R20 K26 ["Components"]
      145 GETTABLEKS                       R20 R20 K31 ["SelectionBox"]
      147 CALL                             R19 1 1
      148 GETIMPORT                        R20 K5 [require]
      150 GETTABLEKS                       R21 R0 K10 ["Src"]
      152 GETTABLEKS                       R21 R21 K26 ["Components"]
      154 GETTABLEKS                       R21 R21 K32 ["TimelineActions"]
      156 CALL                             R20 1 1
      157 GETIMPORT                        R21 K5 [require]
      159 GETTABLEKS                       R22 R0 K10 ["Src"]
      161 GETTABLEKS                       R22 R22 K26 ["Components"]
      163 GETTABLEKS                       R22 R22 K33 ["ScaleControls"]
      165 GETTABLEKS                       R22 R22 K33 ["ScaleControls"]
      167 CALL                             R21 1 1
      168 GETIMPORT                        R22 K5 [require]
      170 GETTABLEKS                       R23 R0 K10 ["Src"]
      172 GETTABLEKS                       R23 R23 K26 ["Components"]
      174 GETTABLEKS                       R23 R23 K34 ["TextEntryPrompt"]
      176 CALL                             R22 1 1
      177 GETIMPORT                        R23 K5 [require]
      179 GETTABLEKS                       R24 R0 K10 ["Src"]
      181 GETTABLEKS                       R24 R24 K26 ["Components"]
      183 GETTABLEKS                       R24 R24 K35 ["Toast"]
      185 GETTABLEKS                       R24 R24 K36 ["NoticeToast"]
      187 CALL                             R23 1 1
      188 GETIMPORT                        R24 K5 [require]
      190 GETTABLEKS                       R25 R0 K10 ["Src"]
      192 GETTABLEKS                       R25 R25 K37 ["Thunks"]
      194 GETTABLEKS                       R25 R25 K38 ["History"]
      196 GETTABLEKS                       R25 R25 K39 ["AddWaypoint"]
      198 CALL                             R24 1 1
      199 GETIMPORT                        R25 K5 [require]
      201 GETTABLEKS                       R26 R0 K10 ["Src"]
      203 GETTABLEKS                       R26 R26 K37 ["Thunks"]
      205 GETTABLEKS                       R26 R26 K40 ["Selection"]
      207 GETTABLEKS                       R26 R26 K41 ["SelectKeyframeRange"]
      209 CALL                             R25 1 1
      210 GETIMPORT                        R26 K5 [require]
      212 GETTABLEKS                       R27 R0 K10 ["Src"]
      214 GETTABLEKS                       R27 R27 K37 ["Thunks"]
      216 GETTABLEKS                       R27 R27 K40 ["Selection"]
      218 GETTABLEKS                       R27 R27 K42 ["DeselectKeyframe"]
      220 CALL                             R26 1 1
      221 GETIMPORT                        R27 K5 [require]
      223 GETTABLEKS                       R28 R0 K10 ["Src"]
      225 GETTABLEKS                       R28 R28 K37 ["Thunks"]
      227 GETTABLEKS                       R28 R28 K40 ["Selection"]
      229 GETTABLEKS                       R28 R28 K43 ["SelectKeyframesAtTick"]
      231 CALL                             R27 1 1
      232 GETIMPORT                        R28 K5 [require]
      234 GETTABLEKS                       R29 R0 K10 ["Src"]
      236 GETTABLEKS                       R29 R29 K37 ["Thunks"]
      238 GETTABLEKS                       R29 R29 K40 ["Selection"]
      240 GETTABLEKS                       R29 R29 K44 ["DeselectKeyframesAtTick"]
      242 CALL                             R28 1 1
      243 GETIMPORT                        R29 K5 [require]
      245 GETTABLEKS                       R30 R0 K10 ["Src"]
      247 GETTABLEKS                       R30 R30 K37 ["Thunks"]
      249 GETTABLEKS                       R30 R30 K40 ["Selection"]
      251 GETTABLEKS                       R30 R30 K45 ["MoveSelectedKeyframes"]
      253 CALL                             R29 1 1
      254 GETIMPORT                        R30 K5 [require]
      256 GETTABLEKS                       R31 R0 K10 ["Src"]
      258 GETTABLEKS                       R31 R31 K37 ["Thunks"]
      260 GETTABLEKS                       R31 R31 K40 ["Selection"]
      262 GETTABLEKS                       R31 R31 K46 ["ScaleSelectedKeyframes"]
      264 CALL                             R30 1 1
      265 GETIMPORT                        R31 K5 [require]
      267 GETTABLEKS                       R32 R0 K10 ["Src"]
      269 GETTABLEKS                       R32 R32 K37 ["Thunks"]
      271 GETTABLEKS                       R32 R32 K40 ["Selection"]
      273 GETTABLEKS                       R32 R32 K47 ["SetSelectedKeyframeData"]
      275 CALL                             R31 1 1
      276 GETIMPORT                        R32 K5 [require]
      278 GETTABLEKS                       R33 R0 K10 ["Src"]
      280 GETTABLEKS                       R33 R33 K37 ["Thunks"]
      282 GETTABLEKS                       R33 R33 K40 ["Selection"]
      284 GETTABLEKS                       R33 R33 K48 ["GenerateCurve"]
      286 CALL                             R32 1 1
      287 GETIMPORT                        R33 K5 [require]
      289 GETTABLEKS                       R34 R0 K10 ["Src"]
      291 GETTABLEKS                       R34 R34 K37 ["Thunks"]
      293 GETTABLEKS                       R34 R34 K49 ["RenameKeyframe"]
      295 CALL                             R33 1 1
      296 GETIMPORT                        R34 K5 [require]
      298 GETTABLEKS                       R35 R0 K10 ["Src"]
      300 GETTABLEKS                       R35 R35 K11 ["Util"]
      302 GETTABLEKS                       R35 R35 K50 ["Constants"]
      304 CALL                             R34 1 1
      305 GETIMPORT                        R35 K5 [require]
      307 GETTABLEKS                       R36 R0 K10 ["Src"]
      309 GETTABLEKS                       R36 R36 K11 ["Util"]
      311 GETTABLEKS                       R36 R36 K51 ["DragContext"]
      313 CALL                             R35 1 1
      314 GETIMPORT                        R36 K5 [require]
      316 GETTABLEKS                       R37 R0 K10 ["Src"]
      318 GETTABLEKS                       R37 R37 K11 ["Util"]
      320 GETTABLEKS                       R37 R37 K52 ["Input"]
      322 CALL                             R36 1 1
      323 GETIMPORT                        R37 K5 [require]
      325 GETTABLEKS                       R38 R0 K10 ["Src"]
      327 GETTABLEKS                       R38 R38 K11 ["Util"]
      329 GETTABLEKS                       R38 R38 K53 ["isEmpty"]
      331 CALL                             R37 1 1
      332 GETIMPORT                        R38 K5 [require]
      334 GETTABLEKS                       R39 R0 K10 ["Src"]
      336 GETTABLEKS                       R39 R39 K11 ["Util"]
      338 GETTABLEKS                       R39 R39 K54 ["KeyframeUtils"]
      340 CALL                             R38 1 1
      341 GETIMPORT                        R39 K5 [require]
      343 GETTABLEKS                       R40 R0 K10 ["Src"]
      345 GETTABLEKS                       R40 R40 K11 ["Util"]
      347 GETTABLEKS                       R40 R40 K55 ["PathUtils"]
      349 CALL                             R39 1 1
      350 GETIMPORT                        R40 K5 [require]
      352 GETTABLEKS                       R41 R0 K10 ["Src"]
      354 GETTABLEKS                       R41 R41 K11 ["Util"]
      356 GETTABLEKS                       R41 R41 K56 ["StringUtils"]
      358 CALL                             R40 1 1
      359 GETIMPORT                        R41 K5 [require]
      361 GETTABLEKS                       R42 R0 K10 ["Src"]
      363 GETTABLEKS                       R42 R42 K11 ["Util"]
      365 GETTABLEKS                       R42 R42 K57 ["TrackUtils"]
      367 CALL                             R41 1 1
      368 GETIMPORT                        R42 K5 [require]
      370 GETTABLEKS                       R43 R0 K58 ["LuaFlags"]
      372 GETTABLEKS                       R43 R43 K59 ["GetFFlagFixDynamicTrackSelection"]
      374 CALL                             R42 1 1
      375 GETTABLEKS                       R43 R1 K60 ["Component"]
      377 LOADK                            R45 K61 ["DopeSheetController"]
      378 NAMECALL                         R43 R43 K62 ["extend"]
      380 CALL                             R43 2 1
      381 DUPCLOSURE                       R44 K63 [PROTO_26]
      382 CAPTURE                          VAL R1
      383 CAPTURE                          VAL R41
      384 CAPTURE                          VAL R34
      385 CAPTURE                          VAL R38
      386 CAPTURE                          VAL R42
      387 CAPTURE                          VAL R39
      388 CAPTURE                          VAL R35
      389 CAPTURE                          VAL R37
      390 CAPTURE                          VAL R3
      391 CAPTURE                          VAL R40
      392 CAPTURE                          VAL R5
      393 SETTABLEKS                       R44 R43 K64 ["init"]
      395 DUPCLOSURE                       R44 K65 [PROTO_27]
      396 CAPTURE                          VAL R37
      397 SETTABLEKS                       R44 R43 K66 ["hasSelectedKeyframes"]
      399 DUPCLOSURE                       R44 K67 [PROTO_28]
      400 CAPTURE                          VAL R5
      401 SETTABLEKS                       R44 R43 K68 ["multipleFramesSelected"]
      403 DUPCLOSURE                       R44 K69 [PROTO_29]
      404 CAPTURE                          VAL R36
      405 SETTABLEKS                       R44 R43 K70 ["handleTimelineInputBegan"]
      407 DUPCLOSURE                       R44 K71 [PROTO_30]
      408 CAPTURE                          VAL R36
      409 CAPTURE                          VAL R42
      410 CAPTURE                          VAL R41
      411 SETTABLEKS                       R44 R43 K72 ["handleTimelineInputEnded"]
      413 DUPCLOSURE                       R44 K73 [PROTO_31]
      414 CAPTURE                          VAL R37
      415 SETTABLEKS                       R44 R43 K74 ["handleKeyframeRightClick"]
      417 DUPCLOSURE                       R44 K75 [PROTO_32]
      418 SETTABLEKS                       R44 R43 K76 ["handleKeyframeInputBegan"]
      420 DUPCLOSURE                       R44 K77 [PROTO_33]
      421 SETTABLEKS                       R44 R43 K78 ["handleKeyframeInputEnded"]
      423 DUPCLOSURE                       R44 K79 [PROTO_35]
      424 CAPTURE                          VAL R4
      425 SETTABLEKS                       R44 R43 K80 ["makeTracks"]
      427 DUPCLOSURE                       R44 K81 [PROTO_36]
      428 SETTABLEKS                       R44 R43 K82 ["shouldUpdate"]
      430 DUPCLOSURE                       R44 K83 [PROTO_50]
      431 CAPTURE                          VAL R5
      432 CAPTURE                          VAL R34
      433 CAPTURE                          VAL R1
      434 CAPTURE                          VAL R18
      435 CAPTURE                          VAL R10
      436 CAPTURE                          VAL R16
      437 CAPTURE                          VAL R7
      438 CAPTURE                          VAL R19
      439 CAPTURE                          VAL R20
      440 CAPTURE                          VAL R21
      441 CAPTURE                          VAL R22
      442 CAPTURE                          VAL R23
      443 CAPTURE                          VAL R17
      444 SETTABLEKS                       R44 R43 K84 ["render"]
      446 MOVE                             R44 R9
      447 DUPTABLE                         R45 K87 [{"Localization", "Analytics"}]
      448 GETTABLEKS                       R46 R8 K85 ["Localization"]
      450 SETTABLEKS                       R46 R45 K85 ["Localization"]
      452 GETTABLEKS                       R46 R8 K86 ["Analytics"]
      454 SETTABLEKS                       R46 R45 K86 ["Analytics"]
      456 CALL                             R44 1 1
      457 MOVE                             R45 R43
      458 CALL                             R44 1 1
      459 MOVE                             R43 R44
      460 DUPCLOSURE                       R44 K88 [PROTO_51]
      461 DUPCLOSURE                       R45 K89 [PROTO_69]
      462 CAPTURE                          VAL R24
      463 CAPTURE                          VAL R29
      464 CAPTURE                          VAL R30
      465 CAPTURE                          VAL R26
      466 CAPTURE                          VAL R15
      467 CAPTURE                          VAL R25
      468 CAPTURE                          VAL R27
      469 CAPTURE                          VAL R28
      470 CAPTURE                          VAL R14
      471 CAPTURE                          VAL R13
      472 CAPTURE                          VAL R31
      473 CAPTURE                          VAL R33
      474 CAPTURE                          VAL R11
      475 CAPTURE                          VAL R32
      476 CAPTURE                          VAL R12
      477 GETTABLEKS                       R46 R2 K90 ["connect"]
      479 MOVE                             R47 R44
      480 MOVE                             R48 R45
      481 CALL                             R46 2 1
      482 MOVE                             R47 R43
      483 CALL                             R46 1 -1
      484 RETURN                           R46 -1
