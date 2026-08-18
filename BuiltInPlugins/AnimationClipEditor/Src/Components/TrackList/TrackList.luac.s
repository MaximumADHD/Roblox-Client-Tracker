PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["trackCount"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K1 ["trackCount"]
        4 ADDK                             R1 R2 K0 [1]
        5 SETTABLEKS                       R1 R0 K1 ["trackCount"]
        7 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["font"]
        2 GETTABLEKS                       R3 R1 K1 ["trackTheme"]
        4 GETTABLEKS                       R3 R3 K2 ["textSize"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["getTextWidth"]
        9 MOVE                             R5 R0
       10 MOVE                             R6 R3
       11 MOVE                             R7 R2
       12 CALL                             R4 3 -1
       13 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"AbsoluteSize"}]
        2 GETTABLEKS                       R4 R0 K0 ["AbsoluteSize"]
        4 SETTABLEKS                       R4 R3 K0 ["AbsoluteSize"]
        6 NAMECALL                         R1 R1 K2 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["OnWheelTick"]
        5 JUMPIFNOT                        R3 ; [+12]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K1 ["OnWheelTick"]
       11 GETIMPORT                        R4 K4 [Vector2.new]
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 CALL                             R4 2 1
       16 LOADK                            R5 K5 ["forward"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["OnWheelTick"]
        5 JUMPIFNOT                        R3 ; [+12]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K1 ["OnWheelTick"]
       11 GETIMPORT                        R4 K4 [Vector2.new]
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 CALL                             R4 2 1
       16 LOADK                            R5 K5 ["backward"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["OnWheelTick"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["ToggleTrackExpanded"]
        5 JUMPIFNOT                        R2 ; [+12]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["props"]
        9 GETTABLEKS                       R2 R2 K1 ["ToggleTrackExpanded"]
       11 NEWTABLE                         R3 0 1
       13 MOVE                             R4 R0
       14 SETLIST                          R3 R4 1 [1]
       16 MOVE                             R4 R1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETTABLEKS                       R4 R4 K1 ["OpenContextMenu"]
        5 JUMPIFNOT                        R4 ; [+10]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["props"]
        9 GETTABLEKS                       R4 R4 K1 ["OpenContextMenu"]
       11 MOVE                             R5 R0
       12 MOVE                             R6 R1
       13 MOVE                             R7 R2
       14 MOVE                             R8 R3
       15 CALL                             R4 4 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["OnTrackAdded"]
        5 JUMPIFNOT                        R3 ; [+9]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K1 ["OnTrackAdded"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 CALL                             R3 3 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnTrackSelected"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["OnTrackSelected"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["props"]
        3 GETTABLEKS                       R6 R6 K1 ["OnValueChanged"]
        5 JUMPIFNOT                        R6 ; [+12]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K0 ["props"]
        9 GETTABLEKS                       R6 R6 K1 ["OnValueChanged"]
       11 MOVE                             R7 R0
       12 MOVE                             R8 R1
       13 MOVE                             R9 R2
       14 MOVE                             R10 R3
       15 MOVE                             R11 R4
       16 MOVE                             R12 R5
       17 CALL                             R6 6 0
       18 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["INDENT_PADDING"]
        3 MUL                              R4 R5 R0
        4 ADD                              R3 R4 R1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["TRACKLIST_RIGHT_PADDING"]
        8 ADD                              R2 R3 R4
        9 RETURN                           R2 1

PROTO_13:
        0 LOADN                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["maxTrackWidth"]
        3 LOADN                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["trackCount"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K2 ["resetTrackCount"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K3 ["incrementTrackCount"]
       14 DUPTABLE                         R1 K5 [{"AbsoluteSize"}]
       15 GETIMPORT                        R2 K8 [Vector2.new]
       17 CALL                             R2 0 1
       18 SETTABLEKS                       R2 R1 K4 ["AbsoluteSize"]
       20 SETTABLEKS                       R1 R0 K9 ["state"]
       22 DUPCLOSURE                       R1 K10 [PROTO_2]
       23 CAPTURE                          UPVAL U0
       24 SETTABLEKS                       R1 R0 K11 ["getTextWidth"]
       26 NEWCLOSURE                       R1 P3
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K12 ["sizeChanged"]
       30 NEWCLOSURE                       R1 P4
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K13 ["wheelForward"]
       34 NEWCLOSURE                       R1 P5
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K14 ["wheelBackward"]
       38 NEWCLOSURE                       R1 P6
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K15 ["wheelTick"]
       42 NEWCLOSURE                       R1 P7
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K16 ["onTrackExpandToggled"]
       46 NEWCLOSURE                       R1 P8
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R1 R0 K17 ["onContextButtonClick"]
       50 NEWCLOSURE                       R1 P9
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R1 R0 K18 ["onTrackAdded"]
       54 NEWCLOSURE                       R1 P10
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R1 R0 K19 ["onTrackSelected"]
       58 NEWCLOSURE                       R1 P11
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R1 R0 K20 ["onValueChanged"]
       62 DUPCLOSURE                       R1 K21 [PROTO_12]
       63 CAPTURE                          UPVAL U1
       64 SETTABLEKS                       R1 R0 K22 ["getTrackWidth"]
       66 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R4 R0 K0 ["getTextWidth"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R3
        4 CALL                             R4 2 1
        5 GETTABLEKS                       R5 R0 K1 ["getTrackWidth"]
        7 LOADN                            R6 1
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R8 R8 K2 ["TRACKLIST_BUTTON_SIZE"]
       11 ADD                              R7 R4 R8
       12 CALL                             R5 2 1
       13 GETTABLEKS                       R7 R0 K3 ["maxTrackWidth"]
       15 FASTCALL2                        MATH_MAX R7 R5 ; [+4]
       17 MOVE                             R8 R5
       18 GETIMPORT                        R6 K6 [math.max]
       20 CALL                             R6 2 1
       21 SETTABLEKS                       R6 R0 K3 ["maxTrackWidth"]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K7 ["createElement"]
       26 GETUPVAL                         R7 2
       27 DUPTABLE                         R8 K14 [{"LayoutOrder", "Name", "UnusedTracks", "OnTrackAdded", "UnusedFacs", "OnFacsAdded"}]
       28 GETTABLEKS                       R9 R0 K15 ["trackCount"]
       30 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       32 SETTABLEKS                       R1 R8 K9 ["Name"]
       34 GETTABLEKS                       R9 R0 K16 ["props"]
       36 GETTABLEKS                       R9 R9 K10 ["UnusedTracks"]
       38 SETTABLEKS                       R9 R8 K10 ["UnusedTracks"]
       40 GETTABLEKS                       R9 R0 K17 ["onTrackAdded"]
       42 SETTABLEKS                       R9 R8 K11 ["OnTrackAdded"]
       44 GETTABLEKS                       R9 R0 K16 ["props"]
       46 GETTABLEKS                       R9 R9 K12 ["UnusedFacs"]
       48 SETTABLEKS                       R9 R8 K12 ["UnusedFacs"]
       50 GETTABLEKS                       R9 R0 K18 ["onFacsAdded"]
       52 SETTABLEKS                       R9 R8 K13 ["OnFacsAdded"]
       54 CALL                             R6 2 1
       55 SETTABLEKS                       R6 R2 K19 ["SummaryTrack"]
       57 GETTABLEKS                       R6 R0 K20 ["incrementTrackCount"]
       59 CALL                             R6 0 0
       60 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Type"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["TRACK_TYPES"]
        6 GETTABLEKS                       R3 R3 K2 ["Facs"]
        8 JUMPIFNOTEQ                      R2 R3 ; [+16]
       10 LOADK                            R6 K4 [0.5]
       11 MULK                             R7 R1 K3 [100]
       12 ADD                              R5 R6 R7
       13 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       14 GETIMPORT                        R4 K7 [math.floor]
       16 CALL                             R4 1 1
       17 DIVK                             R3 R4 K3 [100]
       18 LOADN                            R4 0
       19 LOADN                            R5 1
       20 FASTCALL                         MATH_CLAMP ; [+2]
       21 GETIMPORT                        R2 K9 [math.clamp]
       23 CALL                             R2 3 1
       24 MOVE                             R1 R2
       25 GETIMPORT                        R2 K11 [ipairs]
       27 GETUPVAL                         R5 2
       28 GETUPVAL                         R6 3
       29 GETTABLE                         R3 R5 R6
       30 CALL                             R2 1 3
       31 FORGPREP_INEXT                   R2
       32 GETTABLEKS                       R7 R6 K12 ["Key"]
       34 JUMPIFNOTEQ                      R7 R0 ; [+3]
       36 SETTABLEKS                       R1 R6 K13 ["Value"]
       38 FORGLOOP                         R2 2 [inext] ; [-7]
       40 GETUPVAL                         R2 4
       41 GETTABLEKS                       R2 R2 K14 ["getPropertyForItems"]
       43 GETUPVAL                         R3 0
       44 GETUPVAL                         R4 2
       45 GETUPVAL                         R5 5
       46 GETTABLEKS                       R5 R5 K15 ["DefaultEulerAnglesOrder"]
       48 CALL                             R2 3 1
       49 GETUPVAL                         R3 6
       50 GETTABLEKS                       R3 R3 K16 ["onValueChanged"]
       52 GETUPVAL                         R4 7
       53 NEWTABLE                         R5 0 1
       55 GETUPVAL                         R6 8
       56 SETLIST                          R5 R6 1 [1]
       58 GETUPVAL                         R6 0
       59 GETTABLEKS                       R6 R6 K0 ["Type"]
       61 LOADNIL                          R7
       62 GETUPVAL                         R8 9
       63 MOVE                             R9 R2
       64 CALL                             R3 6 0
       65 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 LOADK                            R5 K0 ["_"]
        3 MOVE                             R6 R1
        4 CONCAT                           R3 R4 R6
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["createElement"]
        8 GETUPVAL                         R5 2
        9 DUPTABLE                         R6 K12 [{"LayoutOrder", "Name", "NameWidth", "Items", "Height", "Indent", "ReadOnly", "DragMultiplier", "OnItemChanged", "OnChangeBegan"}]
       10 GETUPVAL                         R7 3
       11 GETTABLEKS                       R7 R7 K13 ["trackCount"]
       13 SETTABLEKS                       R7 R6 K2 ["LayoutOrder"]
       15 SETTABLEKS                       R1 R6 K3 ["Name"]
       17 GETUPVAL                         R7 4
       18 SETTABLEKS                       R7 R6 K4 ["NameWidth"]
       20 GETUPVAL                         R8 5
       21 GETTABLE                         R7 R8 R1
       22 SETTABLEKS                       R7 R6 K5 ["Items"]
       24 GETUPVAL                         R7 6
       25 GETTABLEKS                       R7 R7 K14 ["TRACK_HEIGHT"]
       27 SETTABLEKS                       R7 R6 K6 ["Height"]
       29 GETUPVAL                         R7 7
       30 SETTABLEKS                       R7 R6 K7 ["Indent"]
       32 GETUPVAL                         R7 8
       33 SETTABLEKS                       R7 R6 K8 ["ReadOnly"]
       35 GETUPVAL                         R7 9
       36 SETTABLEKS                       R7 R6 K9 ["DragMultiplier"]
       38 NEWCLOSURE                       R7 P0
       39 CAPTURE                          UPVAL U10
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U11
       44 CAPTURE                          UPVAL U12
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U13
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U14
       49 SETTABLEKS                       R7 R6 K10 ["OnItemChanged"]
       51 GETUPVAL                         R7 12
       52 GETTABLEKS                       R7 R7 K11 ["OnChangeBegan"]
       54 SETTABLEKS                       R7 R6 K11 ["OnChangeBegan"]
       56 CALL                             R4 2 1
       57 SETTABLE                         R4 R2 R3
       58 GETUPVAL                         R2 3
       59 GETTABLEKS                       R2 R2 K15 ["incrementTrackCount"]
       61 CALL                             R2 0 0
       62 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R1 K1 ["Depth"]
        4 GETTABLEKS                       R6 R1 K2 ["Instance"]
        6 GETTABLEKS                       R7 R1 K3 ["Name"]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R8 R8 K4 ["PROPERTY_KEYS"]
       11 GETTABLEKS                       R9 R4 K5 ["AnimationData"]
       13 GETTABLEKS                       R10 R4 K6 ["Playhead"]
       15 GETTABLEKS                       R12 R0 K0 ["props"]
       17 GETTABLEKS                       R12 R12 K7 ["PlayState"]
       19 GETUPVAL                         R13 0
       20 GETTABLEKS                       R13 R13 K8 ["PLAY_STATE"]
       22 GETTABLEKS                       R13 R13 K9 ["Pause"]
       24 JUMPIFNOTEQ                      R12 R13 ; [+2]
       26 LOADB                            R11 0 +1
       27 LOADB                            R11 1
       28 GETTABLEKS                       R13 R0 K10 ["getTextWidth"]
       30 GETTABLEKS                       R14 R8 K11 ["Position"]
       32 MOVE                             R15 R3
       33 CALL                             R13 2 1
       34 GETTABLEKS                       R14 R0 K10 ["getTextWidth"]
       36 GETTABLEKS                       R15 R8 K12 ["Rotation"]
       38 MOVE                             R16 R3
       39 CALL                             R14 2 -1
       40 FASTCALL                         MATH_MAX ; [+2]
       41 GETIMPORT                        R12 K15 [math.max]
       43 CALL                             R12 -1 1
       44 GETTABLEKS                       R13 R0 K16 ["getTrackWidth"]
       46 MOVE                             R14 R5
       47 MOVE                             R15 R12
       48 CALL                             R13 2 1
       49 GETUPVAL                         R14 1
       50 GETTABLEKS                       R14 R14 K17 ["getCurrentValue"]
       52 MOVE                             R15 R1
       53 MOVE                             R16 R10
       54 MOVE                             R17 R9
       55 GETTABLEKS                       R18 R4 K18 ["DefaultEulerAnglesOrder"]
       57 CALL                             R14 4 1
       58 GETUPVAL                         R15 1
       59 GETTABLEKS                       R15 R15 K19 ["getItemsForProperty"]
       61 MOVE                             R16 R1
       62 MOVE                             R17 R14
       63 LOADNIL                          R18
       64 GETTABLEKS                       R19 R4 K18 ["DefaultEulerAnglesOrder"]
       66 CALL                             R15 4 1
       67 GETTABLEKS                       R18 R15 K11 ["Position"]
       69 LENGTH                           R17 R18
       70 GETUPVAL                         R19 0
       71 GETTABLEKS                       R19 R19 K20 ["NUMBERBOX_WIDTH"]
       73 GETUPVAL                         R21 0
       74 GETTABLEKS                       R21 R21 K22 ["NUMBERTRACK_PADDING"]
       76 MULK                             R20 R21 K21 [2]
       77 ADD                              R18 R19 R20
       78 MUL                              R16 R17 R18
       79 ADD                              R13 R13 R16
       80 GETTABLEKS                       R17 R0 K23 ["maxTrackWidth"]
       82 FASTCALL2                        MATH_MAX R17 R13 ; [+4]
       84 MOVE                             R18 R13
       85 GETIMPORT                        R16 K15 [math.max]
       87 CALL                             R16 2 1
       88 SETTABLEKS                       R16 R0 K23 ["maxTrackWidth"]
       90 GETTABLEKS                       R17 R1 K24 ["Type"]
       92 GETUPVAL                         R18 0
       93 GETTABLEKS                       R18 R18 K25 ["TRACK_TYPES"]
       95 GETTABLEKS                       R18 R18 K26 ["Facs"]
       97 JUMPIFNOTEQ                      R17 R18 ; [+5]
       99 GETUPVAL                         R16 0
      100 GETTABLEKS                       R16 R16 K27 ["NUMBERBOX_FACS_DRAG_MULTIPLIER"]
      102 JUMP                             ; [+3]
      103 GETUPVAL                         R16 0
      104 GETTABLEKS                       R16 R16 K28 ["NUMBERBOX_DRAG_MULTIPLIER"]
      106 NEWCLOSURE                       R17 P0
      107 CAPTURE                          VAL R2
      108 CAPTURE                          UPVAL U2
      109 CAPTURE                          UPVAL U3
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R15
      113 CAPTURE                          UPVAL U0
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R1
      118 CAPTURE                          UPVAL U1
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R10
      122 MOVE                             R18 R17
      123 MOVE                             R19 R7
      124 GETTABLEKS                       R20 R8 K11 ["Position"]
      126 CALL                             R18 2 0
      127 MOVE                             R18 R17
      128 MOVE                             R19 R7
      129 GETTABLEKS                       R20 R8 K12 ["Rotation"]
      131 CALL                             R18 2 0
      132 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R4 R1 K0 ["Depth"]
        2 GETTABLEKS                       R5 R1 K1 ["Name"]
        4 LOADK                            R7 K2 ["Expanded_"]
        5 MOVE                             R8 R5
        6 CONCAT                           R6 R7 R8
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R7 R7 K3 ["createElement"]
       10 GETUPVAL                         R8 1
       11 DUPTABLE                         R9 K7 [{"LayoutOrder", "Height", "Indent"}]
       12 GETTABLEKS                       R10 R0 K8 ["trackCount"]
       14 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       16 GETUPVAL                         R10 2
       17 GETTABLEKS                       R10 R10 K9 ["TRACK_HEIGHT"]
       19 SETTABLEKS                       R10 R9 K5 ["Height"]
       21 SETTABLEKS                       R4 R9 K6 ["Indent"]
       23 CALL                             R7 2 1
       24 SETTABLE                         R7 R2 R6
       25 GETTABLEKS                       R6 R0 K10 ["incrementTrackCount"]
       27 CALL                             R6 0 0
       28 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R4 R1 K0 ["Type"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["TRACK_TYPES"]
        5 GETTABLEKS                       R5 R5 K2 ["CFrame"]
        7 JUMPIFNOTEQ                      R4 R5 ; [+8]
        9 MOVE                             R7 R1
       10 MOVE                             R8 R2
       11 MOVE                             R9 R3
       12 NAMECALL                         R5 R0 K3 ["renderExpandedCFrameTrack"]
       14 CALL                             R5 4 0
       15 RETURN                           R0 0
       16 MOVE                             R7 R1
       17 MOVE                             R8 R2
       18 MOVE                             R9 R3
       19 NAMECALL                         R5 R0 K4 ["renderExpandedGenericTrack"]
       21 CALL                             R5 4 0
       22 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["SelectedTracks"]
        4 JUMPIFNOT                        R2 ; [+14]
        5 GETIMPORT                        R2 K3 [ipairs]
        7 GETTABLEKS                       R3 R0 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K1 ["SelectedTracks"]
       11 CALL                             R2 1 3
       12 FORGPREP_INEXT                   R2
       13 JUMPIFNOTEQ                      R1 R6 ; [+3]
       15 LOADB                            R7 1
       16 RETURN                           R7 1
       17 FORGLOOP                         R2 2 [inext] ; [-5]
       19 LOADB                            R2 0
       20 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Type"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["TRACK_TYPES"]
        6 GETTABLEKS                       R3 R3 K2 ["Facs"]
        8 JUMPIFNOTEQ                      R2 R3 ; [+10]
       10 LOADN                            R4 0
       11 LOADN                            R5 1
       12 FASTCALL3                        MATH_CLAMP R1 R4 R5
       14 MOVE                             R3 R1
       15 GETIMPORT                        R2 K5 [math.clamp]
       17 CALL                             R2 3 1
       18 MOVE                             R1 R2
       19 GETIMPORT                        R2 K7 [ipairs]
       21 GETUPVAL                         R3 2
       22 CALL                             R2 1 3
       23 FORGPREP_INEXT                   R2
       24 GETTABLEKS                       R7 R6 K8 ["Key"]
       26 JUMPIFNOTEQ                      R7 R0 ; [+3]
       28 SETTABLEKS                       R1 R6 K9 ["Value"]
       30 FORGLOOP                         R2 2 [inext] ; [-7]
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R2 R2 K10 ["getPropertyForItems"]
       35 GETUPVAL                         R3 0
       36 GETUPVAL                         R4 2
       37 GETUPVAL                         R5 4
       38 GETTABLEKS                       R5 R5 K11 ["DefaultEulerAnglesOrder"]
       40 CALL                             R2 3 1
       41 GETUPVAL                         R3 5
       42 GETTABLEKS                       R3 R3 K12 ["onValueChanged"]
       44 GETUPVAL                         R4 6
       45 GETUPVAL                         R5 7
       46 GETUPVAL                         R6 8
       47 GETUPVAL                         R7 9
       48 GETUPVAL                         R8 10
       49 MOVE                             R9 R2
       50 CALL                             R3 6 0
       51 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onTrackExpandToggled"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onContextButtonClick"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 CALL                             R0 4 0
        8 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onTrackSelected"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R7 R0 K0 ["props"]
        2 GETTABLEKS                       R8 R7 K1 ["SelectedTracks"]
        4 GETTABLEKS                       R9 R1 K2 ["Name"]
        6 GETTABLEKS                       R10 R1 K3 ["Instance"]
        8 GETTABLEKS                       R11 R1 K4 ["Depth"]
       10 GETTABLEKS                       R12 R1 K5 ["Type"]
       12 GETUPVAL                         R13 0
       13 CALL                             R13 0 1
       14 JUMPIFNOT                        R13 ; [+21]
       15 GETTABLEKS                       R13 R1 K2 ["Name"]
       17 GETUPVAL                         R14 1
       18 GETTABLEKS                       R14 R14 K6 ["PROPERTY_KEYS"]
       20 GETTABLEKS                       R14 R14 K7 ["Rotation"]
       22 JUMPIFEQ                         R13 R14 ; [+10]
       24 GETTABLEKS                       R13 R1 K2 ["Name"]
       26 GETUPVAL                         R14 1
       27 GETTABLEKS                       R14 R14 K6 ["PROPERTY_KEYS"]
       29 GETTABLEKS                       R14 R14 K8 ["OffsetRot"]
       31 JUMPIFNOTEQ                      R13 R14 ; [+12]
       33 GETTABLEKS                       R6 R1 K5 ["Type"]
       35 JUMP                             ; [+8]
       36 MOVE                             R13 R6
       37 JUMPIF                           R13 ; [+5]
       38 GETUPVAL                         R13 2
       39 GETTABLEKS                       R13 R13 K9 ["getRotationType"]
       41 MOVE                             R14 R1
       42 CALL                             R13 1 1
       43 MOVE                             R6 R13
       44 GETTABLEKS                       R13 R1 K10 ["Expanded"]
       46 GETTABLEKS                       R14 R7 K11 ["Playhead"]
       48 GETTABLEKS                       R15 R7 K12 ["AnimationData"]
       50 GETTABLEKS                       R17 R7 K13 ["PlayState"]
       52 GETUPVAL                         R18 1
       53 GETTABLEKS                       R18 R18 K14 ["PLAY_STATE"]
       55 GETTABLEKS                       R18 R18 K15 ["Pause"]
       57 JUMPIFNOTEQ                      R17 R18 ; [+2]
       59 LOADB                            R16 0 +1
       60 LOADB                            R16 1
       61 GETTABLEKS                       R17 R7 K16 ["ReadOnly"]
       63 MOVE                             R18 R15
       64 JUMPIFNOT                        R18 ; [+7]
       65 GETTABLEKS                       R18 R15 K17 ["Metadata"]
       67 JUMPIFNOT                        R18 ; [+4]
       68 GETTABLEKS                       R18 R15 K17 ["Metadata"]
       70 GETTABLEKS                       R18 R18 K18 ["IsChannelAnimation"]
       72 LOADNIL                          R19
       73 JUMPIFNOT                        R18 ; [+10]
       74 GETTABLEKS                       R20 R1 K19 ["Components"]
       76 JUMPIFNOT                        R20 ; [+5]
       77 GETUPVAL                         R21 3
       78 GETTABLEKS                       R22 R1 K19 ["Components"]
       80 CALL                             R21 1 1
       81 NOT                              R20 R21
       82 MOVE                             R19 R20
       83 JUMP                             ; [+9]
       84 GETUPVAL                         R20 1
       85 GETTABLEKS                       R20 R20 K20 ["TRACK_TYPES"]
       87 GETTABLEKS                       R20 R20 K21 ["CFrame"]
       89 JUMPIFEQ                         R12 R20 ; [+2]
       91 LOADB                            R19 0 +1
       92 LOADB                            R19 1
       93 GETTABLEKS                       R20 R0 K22 ["getTextWidth"]
       95 MOVE                             R21 R9
       96 MOVE                             R22 R3
       97 CALL                             R20 2 1
       98 GETTABLEKS                       R22 R0 K23 ["getTrackWidth"]
      100 LOADN                            R23 0
      101 MOVE                             R24 R20
      102 CALL                             R22 2 1
      103 GETUPVAL                         R24 1
      104 GETTABLEKS                       R24 R24 K24 ["NUMBERBOX_WIDTH"]
      106 GETUPVAL                         R26 1
      107 GETTABLEKS                       R26 R26 K26 ["NUMBERTRACK_PADDING"]
      109 MULK                             R25 R26 K25 [2]
      110 ADD                              R23 R24 R25
      111 ADD                              R21 R22 R23
      112 GETUPVAL                         R22 4
      113 GETTABLEKS                       R22 R22 K27 ["List"]
      115 GETTABLEKS                       R22 R22 K28 ["join"]
      117 MOVE                             R23 R4
      118 JUMPIF                           R23 ; [+2]
      119 NEWTABLE                         R23 0 0
      121 NEWTABLE                         R24 0 1
      123 MOVE                             R25 R9
      124 SETLIST                          R24 R25 1 [1]
      126 CALL                             R22 2 1
      127 GETIMPORT                        R23 K31 [table.concat]
      129 MOVE                             R24 R22
      130 LOADK                            R25 K32 ["_"]
      131 CALL                             R23 2 1
      132 LOADNIL                          R24
      133 GETUPVAL                         R25 1
      134 GETTABLEKS                       R25 R25 K20 ["TRACK_TYPES"]
      136 GETTABLEKS                       R25 R25 K21 ["CFrame"]
      138 JUMPIFEQ                         R12 R25 ; [+45]
      140 GETUPVAL                         R25 0
      141 CALL                             R25 0 1
      142 JUMPIFNOT                        R25 ; [+14]
      143 GETUPVAL                         R25 1
      144 GETTABLEKS                       R25 R25 K20 ["TRACK_TYPES"]
      146 GETTABLEKS                       R25 R25 K33 ["IkTarget"]
      148 JUMPIFEQ                         R12 R25 ; [+35]
      150 GETUPVAL                         R25 1
      151 GETTABLEKS                       R25 R25 K20 ["TRACK_TYPES"]
      153 GETTABLEKS                       R25 R25 K34 ["IkData"]
      155 JUMPIFEQ                         R12 R25 ; [+28]
      157 GETUPVAL                         R25 2
      158 GETTABLEKS                       R25 R25 K35 ["getCurrentValueForPath"]
      160 MOVE                             R26 R22
      161 MOVE                             R27 R10
      162 MOVE                             R28 R14
      163 MOVE                             R29 R15
      164 MOVE                             R30 R12
      165 GETTABLEKS                       R31 R7 K36 ["DefaultEulerAnglesOrder"]
      167 CALL                             R25 6 1
      168 JUMPIFNOT                        R18 ; [+4]
      169 JUMPIFNOT                        R13 ; [+3]
      170 NEWTABLE                         R26 0 0
      172 JUMPIF                           R26 ; [+9]
      173 GETUPVAL                         R26 2
      174 GETTABLEKS                       R26 R26 K37 ["getItemsForProperty"]
      176 MOVE                             R27 R1
      177 MOVE                             R28 R25
      178 MOVE                             R29 R9
      179 GETTABLEKS                       R30 R7 K36 ["DefaultEulerAnglesOrder"]
      181 CALL                             R26 4 1
      182 MOVE                             R24 R26
      183 JUMP                             ; [+2]
      184 NEWTABLE                         R24 0 0
      186 LOADNIL                          R25
      187 GETUPVAL                         R26 0
      188 CALL                             R26 0 1
      189 JUMPIFNOT                        R26 ; [+24]
      190 GETUPVAL                         R26 1
      191 GETTABLEKS                       R26 R26 K20 ["TRACK_TYPES"]
      193 GETTABLEKS                       R26 R26 K33 ["IkTarget"]
      195 JUMPIFNOTEQ                      R12 R26 ; [+18]
      197 GETUPVAL                         R26 5
      198 GETTABLEKS                       R26 R26 K38 ["hasIkTarget"]
      200 MOVE                             R27 R15
      201 MOVE                             R28 R9
      202 CALL                             R26 2 1
      203 JUMPIF                           R26 ; [+10]
      204 GETTABLEKS                       R26 R0 K0 ["props"]
      206 GETTABLEKS                       R26 R26 K39 ["Localization"]
      208 LOADK                            R28 K40 ["Tooltip"]
      209 LOADK                            R29 K41 ["NoTargetInstance"]
      210 NAMECALL                         R26 R26 K42 ["getText"]
      212 CALL                             R26 3 1
      213 MOVE                             R25 R26
      214 GETUPVAL                         R27 6
      215 GETTABLEKS                       R27 R27 K43 ["findPath"]
      217 MOVE                             R28 R8
      218 MOVE                             R29 R22
      219 CALL                             R27 2 1
      220 JUMPIFNOTEQKNIL                  R27 ; [+2]
      222 LOADB                            R26 0 +1
      223 LOADB                            R26 1
      224 GETTABLEKS                       R28 R0 K44 ["maxTrackWidth"]
      226 FASTCALL2                        MATH_MAX R28 R21 ; [+4]
      228 MOVE                             R29 R21
      229 GETIMPORT                        R27 K47 [math.max]
      231 CALL                             R27 2 1
      232 SETTABLEKS                       R27 R0 K44 ["maxTrackWidth"]
      234 GETTABLEKS                       R28 R1 K5 ["Type"]
      236 GETUPVAL                         R29 1
      237 GETTABLEKS                       R29 R29 K20 ["TRACK_TYPES"]
      239 GETTABLEKS                       R29 R29 K48 ["Facs"]
      241 JUMPIFNOTEQ                      R28 R29 ; [+5]
      243 GETUPVAL                         R27 1
      244 GETTABLEKS                       R27 R27 K49 ["NUMBERBOX_FACS_DRAG_MULTIPLIER"]
      246 JUMP                             ; [+3]
      247 GETUPVAL                         R27 1
      248 GETTABLEKS                       R27 R27 K50 ["NUMBERBOX_DRAG_MULTIPLIER"]
      250 LOADK                            R29 K51 ["Track_"]
      251 MOVE                             R30 R23
      252 CONCAT                           R28 R29 R30
      253 GETUPVAL                         R29 7
      254 GETTABLEKS                       R29 R29 K52 ["createElement"]
      256 GETUPVAL                         R30 8
      257 DUPTABLE                         R31 K66 [{"LayoutOrder", "Name", "NameWidth", "Items", "Height", "Indent", "ReadOnly", "Expanded", "Selected", "DragMultiplier", "ErrorMessage", "OnItemChanged", "OnExpandToggled", "OnChangeBegan", "OnContextButtonClick", "OnTrackSelected"}]
      258 GETTABLEKS                       R32 R0 K67 ["trackCount"]
      260 SETTABLEKS                       R32 R31 K53 ["LayoutOrder"]
      262 SETTABLEKS                       R9 R31 K2 ["Name"]
      264 SETTABLEKS                       R20 R31 K54 ["NameWidth"]
      266 SETTABLEKS                       R24 R31 K55 ["Items"]
      268 GETUPVAL                         R32 1
      269 GETTABLEKS                       R32 R32 K68 ["TRACK_HEIGHT"]
      271 SETTABLEKS                       R32 R31 K56 ["Height"]
      273 SETTABLEKS                       R11 R31 K57 ["Indent"]
      275 OR                               R32 R16 R17
      276 SETTABLEKS                       R32 R31 K16 ["ReadOnly"]
      278 SETTABLEKS                       R13 R31 K10 ["Expanded"]
      280 SETTABLEKS                       R26 R31 K58 ["Selected"]
      282 SETTABLEKS                       R27 R31 K59 ["DragMultiplier"]
      284 SETTABLEKS                       R25 R31 K60 ["ErrorMessage"]
      286 NEWCLOSURE                       R32 P0
      287 CAPTURE                          VAL R1
      288 CAPTURE                          UPVAL U1
      289 CAPTURE                          REF R24
      290 CAPTURE                          UPVAL U2
      291 CAPTURE                          VAL R7
      292 CAPTURE                          VAL R0
      293 CAPTURE                          VAL R10
      294 CAPTURE                          VAL R22
      295 CAPTURE                          VAL R12
      296 CAPTURE                          REF R6
      297 CAPTURE                          VAL R14
      298 SETTABLEKS                       R32 R31 K61 ["OnItemChanged"]
      300 JUMPIFNOT                        R19 ; [+4]
      301 NEWCLOSURE                       R32 P1
      302 CAPTURE                          VAL R0
      303 CAPTURE                          VAL R22
      304 JUMPIF                           R32 ; [+1]
      305 LOADNIL                          R32
      306 SETTABLEKS                       R32 R31 K62 ["OnExpandToggled"]
      308 GETTABLEKS                       R32 R7 K63 ["OnChangeBegan"]
      310 SETTABLEKS                       R32 R31 K63 ["OnChangeBegan"]
      312 NEWCLOSURE                       R32 P2
      313 CAPTURE                          VAL R0
      314 CAPTURE                          VAL R10
      315 CAPTURE                          VAL R22
      316 CAPTURE                          VAL R12
      317 CAPTURE                          REF R6
      318 SETTABLEKS                       R32 R31 K64 ["OnContextButtonClick"]
      320 NEWCLOSURE                       R32 P3
      321 CAPTURE                          VAL R0
      322 CAPTURE                          VAL R22
      323 SETTABLEKS                       R32 R31 K65 ["OnTrackSelected"]
      325 CALL                             R29 2 1
      326 SETTABLE                         R29 R2 R28
      327 GETTABLEKS                       R28 R0 K69 ["incrementTrackCount"]
      329 CALL                             R28 0 0
      330 JUMPIFNOT                        R13 ; [+44]
      331 JUMPIFNOT                        R18 ; [+37]
      332 GETUPVAL                         R29 0
      333 CALL                             R29 0 1
      334 JUMPIFNOT                        R29 ; [+6]
      335 GETUPVAL                         R28 2
      336 GETTABLEKS                       R28 R28 K70 ["getSortedComponents"]
      338 MOVE                             R29 R1
      339 CALL                             R28 1 1
      340 JUMP                             ; [+8]
      341 GETUPVAL                         R29 1
      342 GETTABLEKS                       R29 R29 K71 ["COMPONENT_TRACK_TYPES"]
      344 GETTABLEKS                       R30 R1 K5 ["Type"]
      346 GETTABLE                         R28 R29 R30
      347 GETTABLEKS                       R28 R28 K72 ["_Order"]
      349 GETIMPORT                        R29 K74 [ipairs]
      351 MOVE                             R30 R28
      352 CALL                             R29 1 3
      353 FORGPREP_INEXT                   R29
      354 GETTABLEKS                       R37 R1 K19 ["Components"]
      356 GETTABLE                         R36 R37 R33
      357 MOVE                             R37 R2
      358 MOVE                             R38 R3
      359 MOVE                             R39 R22
      360 GETTABLEKS                       R40 R1 K5 ["Type"]
      362 MOVE                             R41 R6
      363 NAMECALL                         R34 R0 K75 ["renderTrack"]
      365 CALL                             R34 7 0
      366 FORGLOOP                         R29 2 [inext] ; [-13]
      368 JUMP                             ; [+6]
      369 MOVE                             R30 R1
      370 MOVE                             R31 R2
      371 MOVE                             R32 R3
      372 NAMECALL                         R28 R0 K76 ["renderExpandedTracks"]
      374 CALL                             R28 4 0
      375 CLOSEUPVALS                      R6
      376 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R4 K1 ["Tracks"]
        4 GETTABLEKS                       R6 R4 K2 ["RootName"]
        6 DUPTABLE                         R7 K4 [{"Layout"}]
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K5 ["createElement"]
       10 LOADK                            R9 K6 ["UIListLayout"]
       11 DUPTABLE                         R10 K9 [{"FillDirection", "SortOrder"}]
       12 GETIMPORT                        R11 K12 [Enum.FillDirection.Vertical]
       14 SETTABLEKS                       R11 R10 K7 ["FillDirection"]
       16 GETIMPORT                        R11 K14 [Enum.SortOrder.LayoutOrder]
       18 SETTABLEKS                       R11 R10 K8 ["SortOrder"]
       20 CALL                             R8 2 1
       21 SETTABLEKS                       R8 R7 K3 ["Layout"]
       23 MOVE                             R10 R6
       24 MOVE                             R11 R7
       25 MOVE                             R12 R3
       26 NAMECALL                         R8 R0 K15 ["renderSummaryTrack"]
       28 CALL                             R8 4 0
       29 GETIMPORT                        R8 K17 [ipairs]
       31 MOVE                             R9 R5
       32 CALL                             R8 1 3
       33 FORGPREP_INEXT                   R8
       34 JUMPIFNOTLE                      R1 R11 ; [+11]
       36 GETTABLEKS                       R13 R0 K18 ["trackCount"]
       38 JUMPIFNOTLE                      R13 R2 ; [+7]
       40 MOVE                             R15 R12
       41 MOVE                             R16 R7
       42 MOVE                             R17 R3
       43 NAMECALL                         R13 R0 K19 ["renderTrack"]
       45 CALL                             R13 4 0
       46 FORGLOOP                         R8 2 [inext] ; [-13]
       48 RETURN                           R7 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["resetTrackCount"]
        2 CALL                             R1 0 0
        3 LOADN                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["maxTrackWidth"]
        6 GETTABLEKS                       R1 R0 K2 ["props"]
        8 GETTABLEKS                       R2 R1 K3 ["Stylizer"]
       10 GETTABLEKS                       R3 R0 K4 ["state"]
       12 GETTABLEKS                       R4 R1 K5 ["Size"]
       14 GETTABLEKS                       R5 R1 K6 ["TopTrackIndex"]
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 GETUPVAL                         R8 0
       19 CALL                             R8 0 1
       20 JUMPIFNOT                        R8 ; [+33]
       21 GETTABLEKS                       R8 R3 K7 ["AbsoluteSize"]
       23 GETTABLEKS                       R8 R8 K8 ["Y"]
       25 LOADN                            R9 0
       26 JUMPIFNOTLT                      R9 R8 ; [+6]
       28 GETTABLEKS                       R8 R3 K7 ["AbsoluteSize"]
       30 GETTABLEKS                       R6 R8 K8 ["Y"]
       32 JUMP                             ; [+4]
       33 GETTABLEKS                       R8 R4 K8 ["Y"]
       35 GETTABLEKS                       R6 R8 K9 ["Offset"]
       37 GETTABLEKS                       R8 R3 K7 ["AbsoluteSize"]
       39 GETTABLEKS                       R8 R8 K10 ["X"]
       41 LOADN                            R9 0
       42 JUMPIFNOTLT                      R9 R8 ; [+6]
       44 GETTABLEKS                       R8 R3 K7 ["AbsoluteSize"]
       46 GETTABLEKS                       R7 R8 K10 ["X"]
       48 JUMP                             ; [+13]
       49 GETTABLEKS                       R8 R4 K10 ["X"]
       51 GETTABLEKS                       R7 R8 K9 ["Offset"]
       53 JUMP                             ; [+8]
       54 GETTABLEKS                       R8 R3 K7 ["AbsoluteSize"]
       56 GETTABLEKS                       R6 R8 K8 ["Y"]
       58 GETTABLEKS                       R8 R3 K7 ["AbsoluteSize"]
       60 GETTABLEKS                       R7 R8 K10 ["X"]
       62 GETTABLEKS                       R8 R1 K11 ["LayoutOrder"]
       64 LOADNIL                          R9
       65 GETUPVAL                         R10 0
       66 CALL                             R10 0 1
       67 JUMPIFNOT                        R10 ; [+5]
       68 LOADN                            R10 0
       69 JUMPIFNOTLE                      R6 R10 ; [+3]
       71 LOADK                            R9 K12 [∞]
       72 JUMP                             ; [+26]
       73 JUMPIFNOTEQKN                    R5 K13 [0] ; [+15]
       75 GETUPVAL                         R13 1
       76 GETTABLEKS                       R13 R13 K15 ["SUMMARY_TRACK_HEIGHT"]
       78 SUB                              R12 R6 R13
       79 GETUPVAL                         R13 1
       80 GETTABLEKS                       R13 R13 K16 ["TRACK_HEIGHT"]
       82 DIV                              R11 R12 R13
       83 FASTCALL1                        MATH_CEIL R11 ; [+2]
       84 GETIMPORT                        R10 K19 [math.ceil]
       86 CALL                             R10 1 1
       87 ADDK                             R9 R10 K14 [1]
       88 JUMP                             ; [+10]
       89 GETUPVAL                         R13 1
       90 GETTABLEKS                       R13 R13 K16 ["TRACK_HEIGHT"]
       92 DIV                              R12 R6 R13
       93 FASTCALL1                        MATH_CEIL R12 ; [+2]
       94 GETIMPORT                        R11 K19 [math.ceil]
       96 CALL                             R11 1 1
       97 ADD                              R10 R5 R11
       98 SUBK                             R9 R10 K14 [1]
       99 MOVE                             R12 R5
      100 MOVE                             R13 R9
      101 MOVE                             R14 R2
      102 NAMECALL                         R10 R0 K20 ["renderTracks"]
      104 CALL                             R10 4 1
      105 GETUPVAL                         R11 2
      106 GETTABLEKS                       R11 R11 K21 ["createElement"]
      108 GETUPVAL                         R12 3
      109 DUPTABLE                         R13 K29 [{["Size"], ["Width"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["CanvasSize"], ["ZIndex"] = 2, ["OnWheelTick"], ["OnSizeChanged"]}]
      110 SETTABLEKS                       R4 R13 K5 ["Size"]
      112 SETTABLEKS                       R7 R13 K22 ["Width"]
      114 SETTABLEKS                       R8 R13 K11 ["LayoutOrder"]
      116 GETIMPORT                        R14 K32 [UDim2.new]
      118 LOADN                            R15 0
      119 GETTABLEKS                       R17 R0 K1 ["maxTrackWidth"]
      121 GETUPVAL                         R18 1
      122 GETTABLEKS                       R18 R18 K33 ["TRACKLIST_RIGHT_PADDING"]
      124 ADD                              R16 R17 R18
      125 LOADN                            R17 0
      126 LOADN                            R18 0
      127 CALL                             R14 4 1
      128 SETTABLEKS                       R14 R13 K24 ["CanvasSize"]
      130 GETTABLEKS                       R14 R0 K34 ["wheelTick"]
      132 SETTABLEKS                       R14 R13 K27 ["OnWheelTick"]
      134 GETTABLEKS                       R14 R0 K35 ["sizeChanged"]
      136 SETTABLEKS                       R14 R13 K28 ["OnSizeChanged"]
      138 MOVE                             R14 R10
      139 CALL                             R11 3 -1
      140 RETURN                           R11 -1

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["Status"]
        2 DUPTABLE                         R3 K5 [{"DefaultEulerAnglesOrder", "IsPlaying", "PlayState", "ReadOnly"}]
        3 GETTABLEKS                       R4 R2 K1 ["DefaultEulerAnglesOrder"]
        5 SETTABLEKS                       R4 R3 K1 ["DefaultEulerAnglesOrder"]
        7 GETTABLEKS                       R4 R2 K2 ["IsPlaying"]
        9 SETTABLEKS                       R4 R3 K2 ["IsPlaying"]
       11 GETTABLEKS                       R4 R2 K3 ["PlayState"]
       13 SETTABLEKS                       R4 R3 K3 ["PlayState"]
       15 GETTABLEKS                       R4 R2 K4 ["ReadOnly"]
       17 SETTABLEKS                       R4 R3 K4 ["ReadOnly"]
       19 RETURN                           R3 1

PROTO_29:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

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
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["TrackUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Util"]
       43 GETTABLEKS                       R6 R6 K13 ["StringUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K14 ["Context"]
       52 GETTABLEKS                       R7 R7 K15 ["Signals"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Packages"]
       59 GETTABLEKS                       R8 R8 K16 ["Framework"]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R8 R7 K17 ["ContextServices"]
       64 GETTABLEKS                       R9 R8 K18 ["withContext"]
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K10 ["Src"]
       70 GETTABLEKS                       R11 R11 K11 ["Util"]
       72 GETTABLEKS                       R11 R11 K19 ["AnimationData"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K10 ["Src"]
       79 GETTABLEKS                       R12 R12 K11 ["Util"]
       81 GETTABLEKS                       R12 R12 K20 ["Constants"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K10 ["Src"]
       88 GETTABLEKS                       R13 R13 K11 ["Util"]
       90 GETTABLEKS                       R13 R13 K21 ["isEmpty"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K10 ["Src"]
       97 GETTABLEKS                       R14 R14 K11 ["Util"]
       99 GETTABLEKS                       R14 R14 K22 ["PathUtils"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K10 ["Src"]
      106 GETTABLEKS                       R15 R15 K23 ["Components"]
      108 GETTABLEKS                       R15 R15 K24 ["TrackList"]
      110 GETTABLEKS                       R15 R15 K25 ["SummaryTrack"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K5 [require]
      115 GETTABLEKS                       R16 R0 K10 ["Src"]
      117 GETTABLEKS                       R16 R16 K23 ["Components"]
      119 GETTABLEKS                       R16 R16 K24 ["TrackList"]
      121 GETTABLEKS                       R16 R16 K26 ["TrackListEntry"]
      123 CALL                             R15 1 1
      124 GETIMPORT                        R16 K5 [require]
      126 GETTABLEKS                       R17 R0 K10 ["Src"]
      128 GETTABLEKS                       R17 R17 K23 ["Components"]
      130 GETTABLEKS                       R17 R17 K24 ["TrackList"]
      132 GETTABLEKS                       R17 R17 K27 ["Track"]
      134 CALL                             R16 1 1
      135 GETIMPORT                        R17 K5 [require]
      137 GETTABLEKS                       R18 R0 K10 ["Src"]
      139 GETTABLEKS                       R18 R18 K23 ["Components"]
      141 GETTABLEKS                       R18 R18 K24 ["TrackList"]
      143 GETTABLEKS                       R18 R18 K28 ["WideScrollingFrame"]
      145 CALL                             R17 1 1
      146 GETIMPORT                        R18 K5 [require]
      148 GETTABLEKS                       R19 R0 K29 ["LuaFlags"]
      150 GETTABLEKS                       R19 R19 K30 ["GetFFlagControlRig"]
      152 CALL                             R18 1 1
      153 GETIMPORT                        R19 K5 [require]
      155 GETTABLEKS                       R20 R0 K29 ["LuaFlags"]
      157 GETTABLEKS                       R20 R20 K31 ["GetFFlagACETrackListUnknownHeightFix"]
      159 CALL                             R19 1 1
      160 GETTABLEKS                       R20 R1 K32 ["PureComponent"]
      162 LOADK                            R22 K24 ["TrackList"]
      163 NAMECALL                         R20 R20 K33 ["extend"]
      165 CALL                             R20 2 1
      166 DUPCLOSURE                       R21 K34 [PROTO_13]
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R11
      169 SETTABLEKS                       R21 R20 K35 ["init"]
      171 DUPCLOSURE                       R21 K36 [PROTO_14]
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R14
      175 SETTABLEKS                       R21 R20 K37 ["renderSummaryTrack"]
      177 DUPCLOSURE                       R21 K38 [PROTO_17]
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R16
      182 SETTABLEKS                       R21 R20 K39 ["renderExpandedCFrameTrack"]
      184 DUPCLOSURE                       R21 K40 [PROTO_18]
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R15
      187 CAPTURE                          VAL R11
      188 SETTABLEKS                       R21 R20 K41 ["renderExpandedGenericTrack"]
      190 DUPCLOSURE                       R21 K42 [PROTO_19]
      191 CAPTURE                          VAL R11
      192 SETTABLEKS                       R21 R20 K43 ["renderExpandedTracks"]
      194 DUPCLOSURE                       R21 K44 [PROTO_20]
      195 SETTABLEKS                       R21 R20 K45 ["isSelected"]
      197 DUPCLOSURE                       R21 K46 [PROTO_25]
      198 CAPTURE                          VAL R18
      199 CAPTURE                          VAL R11
      200 CAPTURE                          VAL R4
      201 CAPTURE                          VAL R12
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R10
      204 CAPTURE                          VAL R13
      205 CAPTURE                          VAL R1
      206 CAPTURE                          VAL R16
      207 SETTABLEKS                       R21 R20 K47 ["renderTrack"]
      209 DUPCLOSURE                       R21 K48 [PROTO_26]
      210 CAPTURE                          VAL R1
      211 SETTABLEKS                       R21 R20 K49 ["renderTracks"]
      213 DUPCLOSURE                       R21 K50 [PROTO_27]
      214 CAPTURE                          VAL R19
      215 CAPTURE                          VAL R11
      216 CAPTURE                          VAL R1
      217 CAPTURE                          VAL R17
      218 SETTABLEKS                       R21 R20 K51 ["render"]
      220 MOVE                             R21 R9
      221 DUPTABLE                         R22 K55 [{"Stylizer", "Analytics", "Localization", "Signals"}]
      222 GETTABLEKS                       R23 R8 K52 ["Stylizer"]
      224 SETTABLEKS                       R23 R22 K52 ["Stylizer"]
      226 GETTABLEKS                       R23 R8 K53 ["Analytics"]
      228 SETTABLEKS                       R23 R22 K53 ["Analytics"]
      230 GETTABLEKS                       R23 R8 K54 ["Localization"]
      232 SETTABLEKS                       R23 R22 K54 ["Localization"]
      234 SETTABLEKS                       R6 R22 K15 ["Signals"]
      236 CALL                             R21 1 1
      237 MOVE                             R22 R20
      238 CALL                             R21 1 1
      239 MOVE                             R20 R21
      240 DUPCLOSURE                       R21 K56 [PROTO_28]
      241 DUPCLOSURE                       R22 K57 [PROTO_29]
      242 GETTABLEKS                       R23 R3 K58 ["connect"]
      244 MOVE                             R24 R21
      245 MOVE                             R25 R22
      246 CALL                             R23 2 1
      247 MOVE                             R24 R20
      248 CALL                             R23 1 -1
      249 RETURN                           R23 -1
