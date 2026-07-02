PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnScaleHandleDragStart"]
        5 JUMPIFNOT                        R0 ; [+13]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["getSelectionData"]
        9 CALL                             R0 0 1
       10 GETTABLEKS                       R0 R0 K3 ["latestKeyframe"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["props"]
       15 GETTABLEKS                       R1 R1 K1 ["OnScaleHandleDragStart"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnScaleHandleDragStart"]
        5 JUMPIFNOT                        R0 ; [+13]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["getSelectionData"]
        9 CALL                             R0 0 1
       10 GETTABLEKS                       R0 R0 K3 ["earliestKeyframe"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["props"]
       15 GETTABLEKS                       R1 R1 K1 ["OnScaleHandleDragStart"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+3]
        4 GETTABLEKS                       R2 R0 K0 ["Index"]
        6 JUMP                             ; [+7]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["getPathValue"]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 2
       13 ADD                              R2 R4 R3
       14 GETUPVAL                         R3 3
       15 JUMPIFNOTLE                      R3 R2 ; [+6]
       17 GETUPVAL                         R3 4
       18 JUMPIFNOTEQKNIL                  R3 ; [+3]
       20 GETUPVAL                         R3 5
       21 SETUPVAL                         R3 4
       22 GETUPVAL                         R3 6
       23 JUMPIFNOTLE                      R2 R3 ; [+3]
       25 GETUPVAL                         R3 5
       26 SETUPVAL                         R3 7
       27 GETTABLEKS                       R3 R0 K2 ["Expanded"]
       29 JUMPIFNOT                        R3 ; [+65]
       30 GETUPVAL                         R3 8
       31 GETTABLEKS                       R3 R3 K3 ["props"]
       33 GETTABLEKS                       R3 R3 K4 ["IsChannelAnimation"]
       35 JUMPIFNOT                        R3 ; [+50]
       36 GETUPVAL                         R4 5
       37 ADDK                             R3 R4 K5 [1]
       38 SETUPVAL                         R3 5
       39 GETUPVAL                         R4 9
       40 CALL                             R4 0 1
       41 JUMPIFNOT                        R4 ; [+6]
       42 GETUPVAL                         R3 10
       43 GETTABLEKS                       R3 R3 K6 ["getSortedComponents"]
       45 MOVE                             R4 R0
       46 CALL                             R3 1 1
       47 JUMP                             ; [+8]
       48 GETUPVAL                         R4 11
       49 GETTABLEKS                       R4 R4 K7 ["COMPONENT_TRACK_TYPES"]
       51 GETTABLEKS                       R5 R0 K8 ["Type"]
       53 GETTABLE                         R3 R4 R5
       54 GETTABLEKS                       R3 R3 K9 ["_Order"]
       56 GETIMPORT                        R4 K11 [ipairs]
       58 MOVE                             R5 R3
       59 CALL                             R4 1 3
       60 FORGPREP_INEXT                   R4
       61 GETTABLEKS                       R9 R0 K12 ["Components"]
       63 JUMPIFNOT                        R9 ; [+3]
       64 GETTABLEKS                       R10 R0 K12 ["Components"]
       66 GETTABLE                         R9 R10 R8
       67 JUMPIFNOT                        R9 ; [+15]
       68 GETUPVAL                         R10 12
       69 MOVE                             R11 R9
       70 GETUPVAL                         R12 13
       71 GETTABLEKS                       R12 R12 K13 ["List"]
       73 GETTABLEKS                       R12 R12 K14 ["join"]
       75 MOVE                             R13 R1
       76 NEWTABLE                         R14 0 1
       78 MOVE                             R15 R8
       79 SETLIST                          R14 R15 1 [1]
       81 CALL                             R12 2 -1
       82 CALL                             R10 -1 0
       83 FORGLOOP                         R4 2 [inext] ; [-23]
       85 RETURN                           R0 0
       86 GETUPVAL                         R4 5
       87 GETUPVAL                         R5 10
       88 GETTABLEKS                       R5 R5 K15 ["getExpandedSize"]
       90 MOVE                             R6 R0
       91 CALL                             R5 1 1
       92 ADD                              R3 R4 R5
       93 SETUPVAL                         R3 5
       94 RETURN                           R0 0
       95 GETUPVAL                         R4 5
       96 ADDK                             R3 R4 K5 [1]
       97 SETUPVAL                         R3 5
       98 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Tracks"]
        5 GETTABLEKS                       R3 R1 K2 ["TopTrackIndex"]
        7 LOADN                            R4 1
        8 GETTABLEKS                       R5 R0 K3 ["topSelectedChannelIndex"]
       10 GETTABLEKS                       R6 R0 K4 ["bottomSelectedChannelIndex"]
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 MOVE                             R9 R3
       15 LENGTH                           R10 R2
       16 JUMPIFNOTLE                      R9 R10 ; [+24]
       18 GETTABLE                         R10 R2 R9
       19 NEWCLOSURE                       R11 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          REF R9
       23 CAPTURE                          VAL R5
       24 CAPTURE                          REF R7
       25 CAPTURE                          REF R4
       26 CAPTURE                          VAL R6
       27 CAPTURE                          REF R8
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          VAL R11
       33 CAPTURE                          UPVAL U6
       34 MOVE                             R12 R11
       35 MOVE                             R13 R10
       36 NEWTABLE                         R14 0 0
       38 CALL                             R12 2 0
       39 ADDK                             R9 R9 K5 [1]
       40 JUMPBACK                         ; [-26]
       41 CLOSEUPVALS                      R4
       42 RETURN                           R7 2

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["StartTick"]
        5 GETTABLEKS                       R3 R1 K2 ["EndTick"]
        7 GETTABLEKS                       R4 R1 K3 ["DopeSheetWidth"]
        9 GETTABLEKS                       R5 R1 K4 ["UseFullHeight"]
       11 JUMPIFNOT                        R5 ; [+24]
       12 DUPTABLE                         R5 K7 [{"left", "right"}]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K8 ["getScaledKeyframePosition"]
       16 GETTABLEKS                       R7 R0 K9 ["earliestKeyframe"]
       18 MOVE                             R8 R2
       19 MOVE                             R9 R3
       20 MOVE                             R10 R4
       21 CALL                             R6 4 1
       22 SETTABLEKS                       R6 R5 K5 ["left"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K8 ["getScaledKeyframePosition"]
       27 GETTABLEKS                       R7 R0 K10 ["latestKeyframe"]
       29 MOVE                             R8 R2
       30 MOVE                             R9 R3
       31 MOVE                             R10 R4
       32 CALL                             R6 4 1
       33 SETTABLEKS                       R6 R5 K6 ["right"]
       35 RETURN                           R5 1
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K11 ["getSelectionChannelExtents"]
       39 MOVE                             R6 R0
       40 CALL                             R5 1 2
       41 JUMPIFNOT                        R5 ; [+46]
       42 JUMPIFNOT                        R6 ; [+45]
       43 DUPTABLE                         R7 K14 [{"top", "bottom", "left", "right"}]
       44 GETUPVAL                         R9 2
       45 GETTABLEKS                       R9 R9 K15 ["SUMMARY_TRACK_HEIGHT"]
       47 SUBK                             R11 R5 K16 [1]
       48 GETUPVAL                         R12 2
       49 GETTABLEKS                       R12 R12 K17 ["TRACK_HEIGHT"]
       51 MUL                              R10 R11 R12
       52 ADD                              R8 R9 R10
       53 SETTABLEKS                       R8 R7 K12 ["top"]
       55 GETUPVAL                         R9 2
       56 GETTABLEKS                       R9 R9 K15 ["SUMMARY_TRACK_HEIGHT"]
       58 GETUPVAL                         R11 2
       59 GETTABLEKS                       R11 R11 K17 ["TRACK_HEIGHT"]
       61 MUL                              R10 R6 R11
       62 ADD                              R8 R9 R10
       63 SETTABLEKS                       R8 R7 K13 ["bottom"]
       65 GETUPVAL                         R8 1
       66 GETTABLEKS                       R8 R8 K8 ["getScaledKeyframePosition"]
       68 GETTABLEKS                       R9 R0 K9 ["earliestKeyframe"]
       70 MOVE                             R10 R2
       71 MOVE                             R11 R3
       72 MOVE                             R12 R4
       73 CALL                             R8 4 1
       74 SETTABLEKS                       R8 R7 K5 ["left"]
       76 GETUPVAL                         R8 1
       77 GETTABLEKS                       R8 R8 K8 ["getScaledKeyframePosition"]
       79 GETTABLEKS                       R9 R0 K10 ["latestKeyframe"]
       81 MOVE                             R10 R2
       82 MOVE                             R11 R3
       83 MOVE                             R12 R4
       84 CALL                             R8 4 1
       85 SETTABLEKS                       R8 R7 K6 ["right"]
       87 RETURN                           R7 1
       88 LOADNIL                          R7
       89 RETURN                           R7 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+11]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["findTrackEntry"]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["props"]
        9 GETTABLEKS                       R4 R4 K2 ["Tracks"]
       11 MOVE                             R5 R2
       12 CALL                             R3 2 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R3
       15 GETTABLEKS                       R4 R0 K3 ["Selection"]
       17 JUMPIFNOT                        R4 ; [+83]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K1 ["props"]
       21 GETTABLEKS                       R4 R4 K4 ["UseFullHeight"]
       23 JUMPIF                           R4 ; [+50]
       24 GETUPVAL                         R4 0
       25 CALL                             R4 0 1
       26 JUMPIFNOT                        R4 ; [+19]
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R6 R3 K5 ["Index"]
       30 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       32 GETIMPORT                        R4 K8 [math.min]
       34 CALL                             R4 2 1
       35 SETUPVAL                         R4 3
       36 GETUPVAL                         R5 4
       37 GETTABLEKS                       R6 R3 K5 ["Index"]
       39 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       41 GETIMPORT                        R4 K10 [math.max]
       43 CALL                             R4 2 1
       44 SETUPVAL                         R4 4
       45 JUMP                             ; [+28]
       46 GETUPVAL                         R4 5
       47 GETTABLEKS                       R4 R4 K11 ["getPathValue"]
       49 MOVE                             R5 R2
       50 CALL                             R4 1 1
       51 ADD                              R5 R1 R4
       52 GETUPVAL                         R6 3
       53 JUMPIFNOTEQKNIL                  R6 ; [+4]
       55 SETUPVAL                         R5 3
       56 SETUPVAL                         R5 4
       57 JUMP                             ; [+16]
       58 GETUPVAL                         R7 3
       59 FASTCALL2                        MATH_MIN R7 R5 ; [+4]
       61 MOVE                             R8 R5
       62 GETIMPORT                        R6 K8 [math.min]
       64 CALL                             R6 2 1
       65 SETUPVAL                         R6 3
       66 GETUPVAL                         R7 4
       67 FASTCALL2                        MATH_MAX R7 R5 ; [+4]
       69 MOVE                             R8 R5
       70 GETIMPORT                        R6 K10 [math.max]
       72 CALL                             R6 2 1
       73 SETUPVAL                         R6 4
       74 GETIMPORT                        R4 K13 [pairs]
       76 GETTABLEKS                       R5 R0 K3 ["Selection"]
       78 JUMPIF                           R5 ; [+2]
       79 NEWTABLE                         R5 0 0
       81 CALL                             R4 1 3
       82 FORGPREP_NEXT                    R4
       83 GETUPVAL                         R10 6
       84 FASTCALL2                        MATH_MIN R10 R7 ; [+4]
       86 MOVE                             R11 R7
       87 GETIMPORT                        R9 K8 [math.min]
       89 CALL                             R9 2 1
       90 SETUPVAL                         R9 6
       91 GETUPVAL                         R10 7
       92 FASTCALL2                        MATH_MAX R10 R7 ; [+4]
       94 MOVE                             R11 R7
       95 GETIMPORT                        R9 K10 [math.max]
       97 CALL                             R9 2 1
       98 SETUPVAL                         R9 7
       99 FORGLOOP                         R4 2 ; [-17]
      101 GETIMPORT                        R4 K13 [pairs]
      103 GETTABLEKS                       R5 R0 K14 ["Components"]
      105 JUMPIF                           R5 ; [+2]
      106 NEWTABLE                         R5 0 0
      108 CALL                             R4 1 3
      109 FORGPREP_NEXT                    R4
      110 GETUPVAL                         R9 8
      111 GETTABLEKS                       R9 R9 K15 ["List"]
      113 GETTABLEKS                       R9 R9 K16 ["join"]
      115 MOVE                             R10 R2
      116 NEWTABLE                         R11 0 1
      118 MOVE                             R12 R7
      119 SETLIST                          R11 R12 1 [1]
      121 CALL                             R9 2 1
      122 GETUPVAL                         R10 9
      123 MOVE                             R11 R8
      124 MOVE                             R12 R1
      125 MOVE                             R13 R9
      126 CALL                             R10 3 0
      127 FORGLOOP                         R4 2 ; [-18]
      129 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K1 ["props"]
        3 GETTABLEKS                       R1 R1 K2 ["EndTick"]
        5 ADDK                             R0 R1 K0 [1]
        6 LOADN                            R1 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["props"]
       10 GETTABLEKS                       R2 R2 K3 ["SelectedKeyframes"]
       12 GETUPVAL                         R4 1
       13 CALL                             R4 0 1
       14 JUMPIFNOT                        R4 ; [+2]
       15 LOADK                            R3 K4 [∞]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 GETUPVAL                         R5 1
       19 CALL                             R5 0 1
       20 JUMPIFNOT                        R5 ; [+2]
       21 LOADK                            R4 K5 [-∞]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R4
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          REF R3
       29 CAPTURE                          REF R4
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          REF R0
       32 CAPTURE                          REF R1
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R5
       35 GETIMPORT                        R6 K7 [pairs]
       37 MOVE                             R7 R2
       38 CALL                             R6 1 3
       39 FORGPREP_NEXT                    R6
       40 GETIMPORT                        R11 K7 [pairs]
       42 MOVE                             R12 R10
       43 CALL                             R11 1 3
       44 FORGPREP_NEXT                    R11
       45 GETUPVAL                         R16 0
       46 GETTABLEKS                       R16 R16 K1 ["props"]
       48 GETTABLEKS                       R16 R16 K8 ["UseFullHeight"]
       50 JUMPIF                           R16 ; [+31]
       51 GETUPVAL                         R16 1
       52 CALL                             R16 0 1
       53 JUMPIFNOT                        R16 ; [+10]
       54 MOVE                             R16 R5
       55 MOVE                             R17 R15
       56 LOADNIL                          R18
       57 NEWTABLE                         R19 0 1
       59 MOVE                             R20 R14
       60 SETLIST                          R19 R20 1 [1]
       62 CALL                             R16 3 0
       63 JUMP                             ; [+37]
       64 GETUPVAL                         R16 2
       65 GETTABLEKS                       R16 R16 K9 ["getTrackIndex"]
       67 GETUPVAL                         R17 0
       68 GETTABLEKS                       R17 R17 K1 ["props"]
       70 GETTABLEKS                       R17 R17 K10 ["Tracks"]
       72 MOVE                             R18 R14
       73 CALL                             R16 2 1
       74 JUMPIFNOT                        R16 ; [+26]
       75 MOVE                             R17 R5
       76 MOVE                             R18 R15
       77 MOVE                             R19 R16
       78 NEWTABLE                         R20 0 0
       80 CALL                             R17 3 0
       81 JUMP                             ; [+19]
       82 GETUPVAL                         R16 1
       83 CALL                             R16 0 1
       84 JUMPIFNOT                        R16 ; [+10]
       85 MOVE                             R16 R5
       86 MOVE                             R17 R15
       87 LOADNIL                          R18
       88 NEWTABLE                         R19 0 1
       90 MOVE                             R20 R14
       91 SETLIST                          R19 R20 1 [1]
       93 CALL                             R16 3 0
       94 JUMP                             ; [+6]
       95 MOVE                             R16 R5
       96 MOVE                             R17 R15
       97 LOADNIL                          R18
       98 NEWTABLE                         R19 0 0
      100 CALL                             R16 3 0
      101 FORGLOOP                         R11 2 ; [-57]
      103 FORGLOOP                         R6 2 ; [-64]
      105 DUPTABLE                         R6 K15 [{"earliestKeyframe", "latestKeyframe", "topSelectedChannelIndex", "bottomSelectedChannelIndex"}]
      106 SETTABLEKS                       R0 R6 K11 ["earliestKeyframe"]
      108 SETTABLEKS                       R1 R6 K12 ["latestKeyframe"]
      110 JUMPIFEQKN                       R3 K4 [∞] ; [+3]
      112 MOVE                             R7 R3
      113 JUMP                             ; [+1]
      114 LOADNIL                          R7
      115 SETTABLEKS                       R7 R6 K13 ["topSelectedChannelIndex"]
      117 JUMPIFEQKN                       R4 K5 [-∞] ; [+3]
      119 MOVE                             R7 R4
      120 JUMP                             ; [+1]
      121 LOADNIL                          R7
      122 SETTABLEKS                       R7 R6 K14 ["bottomSelectedChannelIndex"]
      124 CLOSEUPVALS                      R0
      125 RETURN                           R6 1

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["leftScaleHandleDragStart"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["rightScaleHandleDragStart"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 SETTABLEKS                       R1 R0 K2 ["getSelectionChannelExtents"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 SETTABLEKS                       R1 R0 K3 ["calculateScaleHandleExtents"]
       24 NEWCLOSURE                       R1 P4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U5
       30 SETTABLEKS                       R1 R0 K4 ["getSelectionData"]
       32 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["ShowSelectionArea"]
        6 GETTABLEKS                       R4 R1 K3 ["TimelineUnit"]
        8 GETTABLEKS                       R5 R1 K4 ["Dragging"]
       10 GETTABLEKS                       R6 R1 K5 ["FrameRate"]
       12 GETTABLEKS                       R7 R1 K6 ["UseFullHeight"]
       14 GETTABLEKS                       R8 R1 K7 ["ZIndex"]
       16 GETTABLEKS                       R9 R1 K8 ["OnScaleHandleDragMoved"]
       18 GETTABLEKS                       R10 R1 K9 ["OnScaleHandleDragEnd"]
       20 GETTABLEKS                       R11 R0 K10 ["getSelectionData"]
       22 CALL                             R11 0 1
       23 GETTABLEKS                       R12 R0 K11 ["calculateScaleHandleExtents"]
       25 MOVE                             R13 R11
       26 CALL                             R12 1 1
       27 JUMPIF                           R12 ; [+1]
       28 RETURN                           R0 0
       29 GETTABLEKS                       R13 R11 K12 ["earliestKeyframe"]
       31 GETTABLEKS                       R14 R11 K13 ["latestKeyframe"]
       33 GETIMPORT                        R15 K16 [UDim.new]
       35 LOADN                            R16 0
       36 GETTABLEKS                       R19 R12 K18 ["right"]
       38 GETTABLEKS                       R20 R12 K19 ["left"]
       40 SUB                              R18 R19 R20
       41 ADDK                             R17 R18 K17 [24]
       42 CALL                             R15 2 1
       43 GETIMPORT                        R16 K16 [UDim.new]
       45 JUMPIFNOT                        R7 ; [+2]
       46 LOADN                            R17 1
       47 JUMP                             ; [+1]
       48 LOADN                            R17 0
       49 JUMPIFNOT                        R7 ; [+2]
       50 LOADN                            R18 0
       51 JUMP                             ; [+5]
       52 GETTABLEKS                       R19 R12 K20 ["bottom"]
       54 GETTABLEKS                       R20 R12 K21 ["top"]
       56 SUB                              R18 R19 R20
       57 CALL                             R16 2 1
       58 LOADNIL                          R17
       59 JUMPIFNOT                        R7 ; [+10]
       60 GETUPVAL                         R18 0
       61 GETTABLEKS                       R18 R18 K22 ["SUMMARY_TRACK_HEIGHT"]
       63 GETUPVAL                         R21 0
       64 GETTABLEKS                       R21 R21 K22 ["SUMMARY_TRACK_HEIGHT"]
       66 SUBK                             R20 R21 K24 [18]
       67 DIVK                             R19 R20 K23 [2]
       68 ADD                              R17 R18 R19
       69 JUMP                             ; [+12]
       70 GETUPVAL                         R19 0
       71 GETTABLEKS                       R19 R19 K22 ["SUMMARY_TRACK_HEIGHT"]
       73 GETTABLEKS                       R20 R12 K21 ["top"]
       75 SUB                              R18 R19 R20
       76 GETUPVAL                         R21 0
       77 GETTABLEKS                       R21 R21 K22 ["SUMMARY_TRACK_HEIGHT"]
       79 SUBK                             R20 R21 K24 [18]
       80 DIVK                             R19 R20 K23 [2]
       81 ADD                              R17 R18 R19
       82 GETUPVAL                         R18 1
       83 GETTABLEKS                       R18 R18 K25 ["createElement"]
       85 LOADK                            R19 K26 ["Frame"]
       86 DUPTABLE                         R20 K31 [{"BackgroundColor3", "BackgroundTransparency", "Position", "Size", "ZIndex"}]
       87 GETTABLEKS                       R21 R2 K32 ["selectionBox"]
       89 SETTABLEKS                       R21 R20 K27 ["BackgroundColor3"]
       91 JUMPIFNOT                        R3 ; [+2]
       92 LOADK                            R21 K33 [0.8]
       93 JUMP                             ; [+1]
       94 LOADN                            R21 1
       95 SETTABLEKS                       R21 R20 K28 ["BackgroundTransparency"]
       97 GETIMPORT                        R21 K35 [UDim2.new]
       99 LOADN                            R22 0
      100 GETTABLEKS                       R26 R1 K37 ["TrackPadding"]
      102 DIVK                             R25 R26 K23 [2]
      103 GETTABLEKS                       R26 R12 K19 ["left"]
      105 ADD                              R24 R25 R26
      106 SUBK                             R23 R24 K36 [12]
      107 LOADN                            R24 0
      108 JUMPIFNOT                        R7 ; [+2]
      109 LOADN                            R25 0
      110 JUMP                             ; [+2]
      111 GETTABLEKS                       R25 R12 K21 ["top"]
      113 CALL                             R21 4 1
      114 SETTABLEKS                       R21 R20 K29 ["Position"]
      116 GETIMPORT                        R21 K35 [UDim2.new]
      118 MOVE                             R22 R15
      119 MOVE                             R23 R16
      120 CALL                             R21 2 1
      121 SETTABLEKS                       R21 R20 K30 ["Size"]
      123 SETTABLEKS                       R8 R20 K7 ["ZIndex"]
      125 DUPTABLE                         R21 K42 [{"LeftHandle", "RightHandle", "LeftTimeTag", "RightTimeTag"}]
      126 GETUPVAL                         R22 1
      127 GETTABLEKS                       R22 R22 K25 ["createElement"]
      129 GETUPVAL                         R23 2
      130 DUPTABLE                         R24 K44 [{"Position", "Size", "ZIndex", "OnScaleHandleDragStart", "OnScaleHandleDragMoved", "OnScaleHandleDragEnd"}]
      131 GETIMPORT                        R25 K35 [UDim2.new]
      133 LOADN                            R26 0
      134 LOADN                            R27 -3
      135 LOADN                            R28 0
      136 LOADN                            R29 0
      137 CALL                             R25 4 1
      138 SETTABLEKS                       R25 R24 K29 ["Position"]
      140 GETIMPORT                        R25 K35 [UDim2.new]
      142 GETIMPORT                        R26 K16 [UDim.new]
      144 LOADN                            R27 0
      145 LOADN                            R28 6
      146 CALL                             R26 2 1
      147 MOVE                             R27 R16
      148 CALL                             R25 2 1
      149 SETTABLEKS                       R25 R24 K30 ["Size"]
      151 SETTABLEKS                       R8 R24 K7 ["ZIndex"]
      153 GETTABLEKS                       R25 R0 K45 ["leftScaleHandleDragStart"]
      155 SETTABLEKS                       R25 R24 K43 ["OnScaleHandleDragStart"]
      157 SETTABLEKS                       R9 R24 K8 ["OnScaleHandleDragMoved"]
      159 SETTABLEKS                       R10 R24 K9 ["OnScaleHandleDragEnd"]
      161 CALL                             R22 2 1
      162 SETTABLEKS                       R22 R21 K38 ["LeftHandle"]
      164 GETUPVAL                         R22 1
      165 GETTABLEKS                       R22 R22 K25 ["createElement"]
      167 GETUPVAL                         R23 2
      168 DUPTABLE                         R24 K44 [{"Position", "Size", "ZIndex", "OnScaleHandleDragStart", "OnScaleHandleDragMoved", "OnScaleHandleDragEnd"}]
      169 GETIMPORT                        R25 K35 [UDim2.new]
      171 LOADN                            R26 1
      172 LOADN                            R27 -3
      173 LOADN                            R28 0
      174 LOADN                            R29 0
      175 CALL                             R25 4 1
      176 SETTABLEKS                       R25 R24 K29 ["Position"]
      178 GETIMPORT                        R25 K35 [UDim2.new]
      180 GETIMPORT                        R26 K16 [UDim.new]
      182 LOADN                            R27 0
      183 LOADN                            R28 6
      184 CALL                             R26 2 1
      185 MOVE                             R27 R16
      186 CALL                             R25 2 1
      187 SETTABLEKS                       R25 R24 K30 ["Size"]
      189 SETTABLEKS                       R8 R24 K7 ["ZIndex"]
      191 GETTABLEKS                       R25 R0 K46 ["rightScaleHandleDragStart"]
      193 SETTABLEKS                       R25 R24 K43 ["OnScaleHandleDragStart"]
      195 SETTABLEKS                       R9 R24 K8 ["OnScaleHandleDragMoved"]
      197 SETTABLEKS                       R10 R24 K9 ["OnScaleHandleDragEnd"]
      199 CALL                             R22 2 1
      200 SETTABLEKS                       R22 R21 K39 ["RightHandle"]
      202 MOVE                             R22 R5
      203 JUMPIFNOT                        R22 ; [+36]
      204 GETUPVAL                         R22 1
      205 GETTABLEKS                       R22 R22 K25 ["createElement"]
      207 GETUPVAL                         R23 3
      208 DUPTABLE                         R24 K49 [{"Position", "Size", "AnchorPoint", "Time", "ZIndex"}]
      209 GETIMPORT                        R25 K35 [UDim2.new]
      211 LOADN                            R26 0
      212 LOADN                            R27 0
      213 LOADN                            R28 0
      214 MOVE                             R29 R17
      215 CALL                             R25 4 1
      216 SETTABLEKS                       R25 R24 K29 ["Position"]
      218 GETUPVAL                         R25 4
      219 SETTABLEKS                       R25 R24 K30 ["Size"]
      221 GETIMPORT                        R25 K51 [Vector2.new]
      223 LOADN                            R26 1
      224 LOADN                            R27 1
      225 CALL                             R25 2 1
      226 SETTABLEKS                       R25 R24 K47 ["AnchorPoint"]
      228 GETUPVAL                         R25 5
      229 GETTABLEKS                       R25 R25 K52 ["formatTime"]
      231 MOVE                             R26 R13
      232 MOVE                             R27 R6
      233 MOVE                             R28 R4
      234 CALL                             R25 3 1
      235 SETTABLEKS                       R25 R24 K48 ["Time"]
      237 SETTABLEKS                       R8 R24 K7 ["ZIndex"]
      239 CALL                             R22 2 1
      240 SETTABLEKS                       R22 R21 K40 ["LeftTimeTag"]
      242 MOVE                             R22 R5
      243 JUMPIFNOT                        R22 ; [+36]
      244 GETUPVAL                         R22 1
      245 GETTABLEKS                       R22 R22 K25 ["createElement"]
      247 GETUPVAL                         R23 3
      248 DUPTABLE                         R24 K49 [{"Position", "Size", "AnchorPoint", "Time", "ZIndex"}]
      249 GETIMPORT                        R25 K35 [UDim2.new]
      251 LOADN                            R26 1
      252 LOADN                            R27 0
      253 LOADN                            R28 0
      254 MOVE                             R29 R17
      255 CALL                             R25 4 1
      256 SETTABLEKS                       R25 R24 K29 ["Position"]
      258 GETUPVAL                         R25 4
      259 SETTABLEKS                       R25 R24 K30 ["Size"]
      261 GETIMPORT                        R25 K51 [Vector2.new]
      263 LOADN                            R26 0
      264 LOADN                            R27 1
      265 CALL                             R25 2 1
      266 SETTABLEKS                       R25 R24 K47 ["AnchorPoint"]
      268 GETUPVAL                         R25 5
      269 GETTABLEKS                       R25 R25 K52 ["formatTime"]
      271 MOVE                             R26 R14
      272 MOVE                             R27 R6
      273 MOVE                             R28 R4
      274 CALL                             R25 3 1
      275 SETTABLEKS                       R25 R24 K48 ["Time"]
      277 SETTABLEKS                       R8 R24 K7 ["ZIndex"]
      279 CALL                             R22 2 1
      280 SETTABLEKS                       R22 R21 K41 ["RightTimeTag"]
      282 CALL                             R18 3 -1
      283 RETURN                           R18 -1

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
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Util"]
       38 GETTABLEKS                       R7 R7 K14 ["TrackUtils"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K13 ["Util"]
       47 GETTABLEKS                       R8 R8 K15 ["PathUtils"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K12 ["Src"]
       54 GETTABLEKS                       R9 R9 K13 ["Util"]
       56 GETTABLEKS                       R9 R9 K16 ["Constants"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K12 ["Src"]
       63 GETTABLEKS                       R10 R10 K13 ["Util"]
       65 GETTABLEKS                       R10 R10 K17 ["StringUtils"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K12 ["Src"]
       72 GETTABLEKS                       R11 R11 K18 ["Components"]
       74 GETTABLEKS                       R11 R11 K19 ["ScaleControls"]
       76 GETTABLEKS                       R11 R11 K20 ["ScaleHandle"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K12 ["Src"]
       83 GETTABLEKS                       R12 R12 K18 ["Components"]
       85 GETTABLEKS                       R12 R12 K19 ["ScaleControls"]
       87 GETTABLEKS                       R12 R12 K21 ["TimeTag"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K12 ["Src"]
       94 GETTABLEKS                       R13 R13 K22 ["Types"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K23 ["LuaFlags"]
      101 GETTABLEKS                       R14 R14 K24 ["GetFFlagFixDynamicTrackSelection"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K23 ["LuaFlags"]
      108 GETTABLEKS                       R15 R15 K25 ["GetFFlagControlRig"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K28 [UDim2.new]
      113 LOADN                            R16 0
      114 LOADN                            R17 30
      115 LOADN                            R18 0
      116 LOADN                            R19 18
      117 CALL                             R15 4 1
      118 GETTABLEKS                       R16 R1 K29 ["PureComponent"]
      120 LOADK                            R18 K29 ["PureComponent"]
      121 NAMECALL                         R16 R16 K30 ["extend"]
      123 CALL                             R16 2 1
      124 DUPCLOSURE                       R17 K31 [PROTO_7]
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R2
      131 SETTABLEKS                       R17 R16 K32 ["init"]
      133 DUPCLOSURE                       R17 K33 [PROTO_8]
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R9
      140 SETTABLEKS                       R17 R16 K34 ["render"]
      142 MOVE                             R17 R5
      143 DUPTABLE                         R18 K36 [{"Stylizer"}]
      144 GETTABLEKS                       R19 R4 K35 ["Stylizer"]
      146 SETTABLEKS                       R19 R18 K35 ["Stylizer"]
      148 CALL                             R17 1 1
      149 MOVE                             R18 R16
      150 CALL                             R17 1 1
      151 MOVE                             R16 R17
      152 RETURN                           R16 1
