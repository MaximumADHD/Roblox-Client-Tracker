PROTO_0:
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

PROTO_1:
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
       15 GETTABLEKS                       R7 R7 K1 ["props"]
       17 GETTABLEKS                       R7 R7 K4 ["AbsolutePosition"]
       19 GETTABLEKS                       R7 R7 K5 ["X"]
       21 GETUPVAL                         R9 1
       22 GETTABLEKS                       R9 R9 K1 ["props"]
       24 GETTABLEKS                       R9 R9 K7 ["TrackPadding"]
       26 DIVK                             R8 R9 K6 [2]
       27 ADD                              R6 R7 R8
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K1 ["props"]
       31 GETTABLEKS                       R8 R8 K8 ["AbsoluteSize"]
       33 GETTABLEKS                       R8 R8 K5 ["X"]
       35 GETUPVAL                         R9 1
       36 GETTABLEKS                       R9 R9 K1 ["props"]
       38 GETTABLEKS                       R9 R9 K7 ["TrackPadding"]
       40 SUB                              R7 R8 R9
       41 CALL                             R2 5 1
       42 JUMPIFNOT                        R1 ; [+23]
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K1 ["props"]
       46 GETTABLEKS                       R3 R3 K9 ["SnapMode"]
       48 GETUPVAL                         R4 2
       49 GETTABLEKS                       R4 R4 K10 ["SNAP_MODES"]
       51 GETTABLEKS                       R4 R4 K11 ["None"]
       53 JUMPIFEQ                         R3 R4 ; [+12]
       55 GETUPVAL                         R3 3
       56 GETTABLEKS                       R3 R3 K12 ["getNearestFrame"]
       58 MOVE                             R4 R2
       59 GETUPVAL                         R5 1
       60 GETTABLEKS                       R5 R5 K1 ["props"]
       62 GETTABLEKS                       R5 R5 K13 ["FrameRate"]
       64 CALL                             R3 2 1
       65 MOVE                             R2 R3
       66 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["SelectedEvents"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K2 ["AnimationData"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["state"]
       13 GETTABLEKS                       R3 R3 K4 ["eventFilters"]
       15 GETUPVAL                         R4 0
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K5 ["newEvents"]
       19 MOVE                             R6 R2
       20 MOVE                             R7 R1
       21 MOVE                             R8 R3
       22 MOVE                             R9 R0
       23 CALL                             R5 4 1
       24 SETTABLEKS                       R5 R4 K6 ["DragContext"]
       26 GETUPVAL                         R4 0
       27 DUPTABLE                         R6 K12 [{["dragging"] = True, ["dragTick"], ["hasDragWaypoint"] = False}]
       28 SETTABLEKS                       R0 R6 K9 ["dragTick"]
       30 NAMECALL                         R4 R4 K13 ["setState"]
       32 CALL                             R4 2 0
       33 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getTickFromPosition"]
        3 GETTABLEKS                       R2 R0 K1 ["Position"]
        5 LOADB                            R3 1
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["state"]
       10 GETTABLEKS                       R2 R2 K3 ["dragTick"]
       12 JUMPIFEQ                         R2 R1 ; [+32]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K4 ["DragContext"]
       17 JUMPIFNOT                        R2 ; [+27]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K5 ["addDragWaypoint"]
       21 CALL                             R2 0 0
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K4 ["DragContext"]
       25 MOVE                             R4 R1
       26 NAMECALL                         R2 R2 K6 ["moveEvents"]
       28 CALL                             R2 2 0
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K7 ["props"]
       32 GETTABLEKS                       R2 R2 K8 ["MoveSelectedEvents"]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K4 ["DragContext"]
       37 CALL                             R2 1 0
       38 GETUPVAL                         R2 0
       39 DUPTABLE                         R4 K9 [{"dragTick"}]
       40 SETTABLEKS                       R1 R4 K3 ["dragTick"]
       42 NAMECALL                         R2 R2 K10 ["setState"]
       44 CALL                             R2 2 0
       45 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K4 [{[1] = False, ["dragTick"], ["hasDragWaypoint"] = False}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K5 ["None"]
        5 SETTABLEKS                       R3 R2 K2 ["dragTick"]
        7 NAMECALL                         R0 R0 K6 ["setState"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K7 ["DragContext"]
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["showContextMenu"]
        5 JUMPIF                           R1 ; [+33]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["updateSelectDragStart"]
        9 GETIMPORT                        R2 K5 [Vector2.new]
       11 GETTABLEKS                       R3 R0 K6 ["Position"]
       13 GETTABLEKS                       R3 R3 K7 ["X"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K8 ["TRACK_HEIGHT"]
       18 CALL                             R2 2 -1
       19 CALL                             R1 -1 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K9 ["updateSelectDragEnd"]
       23 GETIMPORT                        R2 K5 [Vector2.new]
       25 GETTABLEKS                       R3 R0 K6 ["Position"]
       27 GETTABLEKS                       R3 R3 K7 ["X"]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K8 ["TRACK_HEIGHT"]
       32 CALL                             R2 2 -1
       33 CALL                             R1 -1 0
       34 GETUPVAL                         R1 0
       35 DUPTABLE                         R3 K12 [{["draggingSelection"] = True}]
       36 NAMECALL                         R1 R1 K13 ["setState"]
       38 CALL                             R1 2 0
       39 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["DeselectAllEvents"]
        5 CALL                             R1 0 0
        6 GETTABLEKS                       R1 R0 K2 ["Position"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["selectDragStart"]
       11 NAMECALL                         R2 R2 K4 ["getValue"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K7 [Vector2.new]
       16 GETTABLEKS                       R5 R1 K8 ["X"]
       18 GETTABLEKS                       R6 R2 K8 ["X"]
       20 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       22 GETIMPORT                        R4 K11 [math.min]
       24 CALL                             R4 2 1
       25 LOADN                            R5 0
       26 CALL                             R3 2 1
       27 GETIMPORT                        R4 K7 [Vector2.new]
       29 GETTABLEKS                       R6 R1 K8 ["X"]
       31 GETTABLEKS                       R7 R2 K8 ["X"]
       33 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       35 GETIMPORT                        R5 K13 [math.max]
       37 CALL                             R5 2 1
       38 LOADN                            R6 0
       39 CALL                             R4 2 1
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K0 ["props"]
       43 GETTABLEKS                       R5 R5 K14 ["StartTick"]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K0 ["props"]
       48 GETTABLEKS                       R6 R6 K15 ["EndTick"]
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R8 R8 K0 ["props"]
       53 GETTABLEKS                       R8 R8 K16 ["AbsoluteSize"]
       55 GETTABLEKS                       R8 R8 K8 ["X"]
       57 GETUPVAL                         R9 0
       58 GETTABLEKS                       R9 R9 K0 ["props"]
       60 GETTABLEKS                       R9 R9 K17 ["TrackPadding"]
       62 SUB                              R7 R8 R9
       63 SUB                              R9 R6 R5
       64 DIV                              R8 R7 R9
       65 GETIMPORT                        R9 K7 [Vector2.new]
       67 DIVK                             R10 R8 K18 [2]
       68 LOADN                            R11 0
       69 CALL                             R9 2 1
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R10 R10 K19 ["getTickFromPosition"]
       73 ADD                              R11 R3 R9
       74 LOADB                            R12 0
       75 CALL                             R10 2 1
       76 GETUPVAL                         R11 0
       77 GETTABLEKS                       R11 R11 K19 ["getTickFromPosition"]
       79 SUB                              R12 R4 R9
       80 LOADB                            R13 0
       81 CALL                             R11 2 1
       82 GETIMPORT                        R12 K21 [ipairs]
       84 GETUPVAL                         R13 0
       85 GETTABLEKS                       R13 R13 K0 ["props"]
       87 GETTABLEKS                       R13 R13 K22 ["AnimationData"]
       89 GETTABLEKS                       R13 R13 K23 ["Events"]
       91 GETTABLEKS                       R13 R13 K24 ["Keyframes"]
       93 CALL                             R12 1 3
       94 FORGPREP_INEXT                   R12
       95 JUMPIFNOTLE                      R10 R16 ; [+11]
       97 JUMPIFNOTLE                      R16 R11 ; [+9]
       99 GETUPVAL                         R17 0
      100 GETTABLEKS                       R17 R17 K0 ["props"]
      102 GETTABLEKS                       R17 R17 K25 ["SelectEvent"]
      104 MOVE                             R18 R16
      105 LOADB                            R19 1
      106 CALL                             R17 2 0
      107 FORGLOOP                         R12 2 [inext] ; [-13]
      109 GETUPVAL                         R12 0
      110 GETTABLEKS                       R12 R12 K26 ["updateSelectDragEnd"]
      112 GETIMPORT                        R13 K7 [Vector2.new]
      114 GETTABLEKS                       R14 R1 K8 ["X"]
      116 GETUPVAL                         R16 1
      117 GETTABLEKS                       R16 R16 K27 ["TRACK_HEIGHT"]
      119 MULK                             R15 R16 K18 [2]
      120 CALL                             R13 2 -1
      121 CALL                             R12 -1 0
      122 RETURN                           R0 0

PROTO_7:
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
       20 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"eventEditingTick"}]
        2 MOVE                             R4 R0
        3 JUMPIF                           R4 ; [+3]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["None"]
        7 SETTABLEKS                       R4 R3 K0 ["eventEditingTick"]
        9 NAMECALL                         R1 R1 K3 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Analytics"]
        5 JUMPIFNOT                        R1 ; [+12]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K2 ["SetEvents"]
       11 MOVE                             R2 R0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["props"]
       15 GETTABLEKS                       R3 R3 K1 ["Analytics"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_12:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["state"]
        5 GETTABLEKS                       R3 R3 K1 ["eventFilters"]
        7 CALL                             R2 1 1
        8 MOVE                             R1 R2
        9 GETTABLE                         R3 R1 R0
       10 JUMPIF                           R3 ; [+2]
       11 LOADB                            R2 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 SETTABLE                         R2 R1 R0
       15 GETUPVAL                         R2 1
       16 DUPTABLE                         R4 K2 [{"eventFilters"}]
       17 SETTABLEKS                       R1 R4 K1 ["eventFilters"]
       19 NAMECALL                         R2 R2 K3 ["setState"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"eventFilters"}]
        2 NEWTABLE                         R3 0 0
        4 SETTABLEKS                       R3 R2 K0 ["eventFilters"]
        6 NAMECALL                         R0 R0 K2 ["setState"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_14:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["state"]
        5 GETTABLEKS                       R1 R1 K1 ["availableEvents"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 LOADB                            R6 1
       11 SETTABLE                         R6 R0 R5
       12 FORGLOOP                         R1 2 ; [-3]
       14 GETUPVAL                         R1 0
       15 DUPTABLE                         R3 K3 [{"eventFilters"}]
       16 SETTABLEKS                       R0 R3 K2 ["eventFilters"]
       18 NAMECALL                         R1 R1 K4 ["setState"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K10 [{[1] = False, ["draggingSelection"] = , ["dragTick"] = , ["showContextMenu"] = False, ["eventEditingTick"] = , ["hasDragWaypoint"] = False, ["availableEvents"], ["eventFilters"]}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K8 ["availableEvents"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K9 ["eventFilters"]
        9 SETTABLEKS                       R1 R0 K11 ["state"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K12 ["createBinding"]
       14 LOADNIL                          R2
       15 CALL                             R1 1 2
       16 SETTABLEKS                       R1 R0 K13 ["selectDragStart"]
       18 SETTABLEKS                       R2 R0 K14 ["updateSelectDragStart"]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K12 ["createBinding"]
       23 LOADNIL                          R2
       24 CALL                             R1 1 2
       25 SETTABLEKS                       R1 R0 K15 ["selectDragEnd"]
       27 SETTABLEKS                       R2 R0 K16 ["updateSelectDragEnd"]
       29 LOADNIL                          R1
       30 SETTABLEKS                       R1 R0 K17 ["DragContext"]
       32 LOADB                            R1 0
       33 SETTABLEKS                       R1 R0 K18 ["isMultiSelecting"]
       35 LOADB                            R1 0
       36 SETTABLEKS                       R1 R0 K19 ["mouseDownOnEvent"]
       38 LOADB                            R1 0
       39 SETTABLEKS                       R1 R0 K20 ["mouseDownInTimeline"]
       41 GETUPVAL                         R1 1
       42 GETTABLEKS                       R1 R1 K21 ["new"]
       44 CALL                             R1 0 1
       45 SETTABLEKS                       R1 R0 K22 ["doubleClickDetector"]
       47 NEWCLOSURE                       R1 P0
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R1 R0 K23 ["addDragWaypoint"]
       51 NEWCLOSURE                       R1 P1
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U4
       56 SETTABLEKS                       R1 R0 K24 ["getTickFromPosition"]
       58 NEWCLOSURE                       R1 P2
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U5
       61 SETTABLEKS                       R1 R0 K25 ["onEventDragStarted"]
       63 NEWCLOSURE                       R1 P3
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R1 R0 K26 ["onEventDragMoved"]
       67 NEWCLOSURE                       R1 P4
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U0
       70 SETTABLEKS                       R1 R0 K27 ["onEventDragEnded"]
       72 NEWCLOSURE                       R1 P5
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U3
       75 SETTABLEKS                       R1 R0 K28 ["onSelectDragStarted"]
       77 NEWCLOSURE                       R1 P6
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U3
       80 SETTABLEKS                       R1 R0 K29 ["onSelectDragMoved"]
       82 NEWCLOSURE                       R1 P7
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U0
       85 SETTABLEKS                       R1 R0 K30 ["onSelectDragEnded"]
       87 NEWCLOSURE                       R1 P8
       88 CAPTURE                          VAL R0
       89 CAPTURE                          UPVAL U3
       90 SETTABLEKS                       R1 R0 K31 ["showMenu"]
       92 NEWCLOSURE                       R1 P9
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R1 R0 K32 ["hideMenu"]
       96 NEWCLOSURE                       R1 P10
       97 CAPTURE                          VAL R0
       98 CAPTURE                          UPVAL U0
       99 SETTABLEKS                       R1 R0 K33 ["setEventEditingTick"]
      101 NEWCLOSURE                       R1 P11
      102 CAPTURE                          VAL R0
      103 SETTABLEKS                       R1 R0 K34 ["setEventsHandler"]
      105 NEWCLOSURE                       R1 P12
      106 CAPTURE                          UPVAL U6
      107 CAPTURE                          VAL R0
      108 SETTABLEKS                       R1 R0 K35 ["toggleEventFilter"]
      110 NEWCLOSURE                       R1 P13
      111 CAPTURE                          VAL R0
      112 SETTABLEKS                       R1 R0 K36 ["clearEventFilters"]
      114 NEWCLOSURE                       R1 P14
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R1 R0 K37 ["setAllEventFilters"]
      118 RETURN                           R0 0

PROTO_16:
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
       25 GETTABLEKS                       R3 R3 K10 ["DeselectAllEvents"]
       27 CALL                             R3 0 0
       28 LOADB                            R3 1
       29 SETTABLEKS                       R3 R0 K11 ["mouseDownInTimeline"]
       31 GETTABLEKS                       R3 R0 K12 ["onSelectDragStarted"]
       33 MOVE                             R4 R1
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R4 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R3 R4 ; [+12]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K4 ["isMultiSelectKey"]
        9 GETTABLEKS                       R4 R1 K5 ["KeyCode"]
       11 CALL                             R3 1 1
       12 JUMPIFNOT                        R3 ; [+71]
       13 LOADB                            R3 0
       14 SETTABLEKS                       R3 R0 K6 ["isMultiSelecting"]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R1 K0 ["UserInputType"]
       19 GETIMPORT                        R4 K8 [Enum.UserInputType.MouseButton2]
       21 JUMPIFNOTEQ                      R3 R4 ; [+26]
       23 GETTABLEKS                       R3 R0 K9 ["getTickFromPosition"]
       25 GETTABLEKS                       R4 R1 K10 ["Position"]
       27 LOADB                            R5 1
       28 CALL                             R3 2 1
       29 GETTABLEKS                       R4 R0 K11 ["props"]
       31 GETTABLEKS                       R4 R4 K12 ["SetRightClickContextInfo"]
       33 DUPTABLE                         R5 K14 [{"Tick"}]
       34 SETTABLEKS                       R3 R5 K13 ["Tick"]
       36 CALL                             R4 1 0
       37 GETTABLEKS                       R4 R0 K11 ["props"]
       39 GETTABLEKS                       R4 R4 K15 ["SelectEvent"]
       41 MOVE                             R5 R3
       42 LOADB                            R6 0
       43 CALL                             R4 2 0
       44 GETTABLEKS                       R4 R0 K16 ["showMenu"]
       46 CALL                             R4 0 0
       47 RETURN                           R0 0
       48 GETTABLEKS                       R3 R1 K0 ["UserInputType"]
       50 GETIMPORT                        R4 K18 [Enum.UserInputType.MouseButton1]
       52 JUMPIFNOTEQ                      R3 R4 ; [+31]
       54 GETTABLEKS                       R3 R0 K9 ["getTickFromPosition"]
       56 GETTABLEKS                       R4 R1 K10 ["Position"]
       58 LOADB                            R5 1
       59 CALL                             R3 2 1
       60 GETTABLEKS                       R4 R0 K19 ["doubleClickDetector"]
       62 NAMECALL                         R4 R4 K20 ["isDoubleClick"]
       64 CALL                             R4 1 1
       65 JUMPIFNOT                        R4 ; [+18]
       66 GETTABLEKS                       R4 R0 K11 ["props"]
       68 GETTABLEKS                       R4 R4 K21 ["DeselectAllEvents"]
       70 CALL                             R4 0 0
       71 GETTABLEKS                       R4 R0 K11 ["props"]
       73 GETTABLEKS                       R4 R4 K15 ["SelectEvent"]
       75 MOVE                             R5 R3
       76 LOADB                            R6 0
       77 CALL                             R4 2 0
       78 GETTABLEKS                       R4 R0 K11 ["props"]
       80 GETTABLEKS                       R4 R4 K22 ["SetEventEditingTick"]
       82 MOVE                             R5 R3
       83 CALL                             R4 1 0
       84 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["SelectEvent"]
        4 MOVE                             R3 R1
        5 LOADB                            R4 0
        6 CALL                             R2 2 0
        7 GETTABLEKS                       R2 R0 K0 ["props"]
        9 GETTABLEKS                       R2 R2 K2 ["SetRightClickContextInfo"]
       11 DUPTABLE                         R3 K6 [{["OnEvent"] = True, ["Tick"]}]
       12 SETTABLEKS                       R1 R3 K5 ["Tick"]
       14 CALL                             R2 1 0
       15 GETTABLEKS                       R2 R0 K7 ["showMenu"]
       17 CALL                             R2 0 0
       18 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R4 R3 K0 ["UserInputType"]
        2 GETIMPORT                        R5 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R4 R5 ; [+23]
        6 LOADB                            R4 1
        7 SETTABLEKS                       R4 R0 K4 ["mouseDownOnEvent"]
        9 JUMPIFNOT                        R2 ; [+10]
       10 GETTABLEKS                       R4 R0 K5 ["isMultiSelecting"]
       12 JUMPIFNOT                        R4 ; [+15]
       13 GETTABLEKS                       R4 R0 K6 ["props"]
       15 GETTABLEKS                       R4 R4 K7 ["DeselectEvent"]
       17 MOVE                             R5 R1
       18 CALL                             R4 1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R4 R0 K6 ["props"]
       22 GETTABLEKS                       R4 R4 K8 ["SelectEvent"]
       24 MOVE                             R5 R1
       25 GETTABLEKS                       R6 R0 K5 ["isMultiSelecting"]
       27 CALL                             R4 2 0
       28 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R4 R3 K0 ["UserInputType"]
        2 GETIMPORT                        R5 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R4 R5 ; [+12]
        6 JUMPIFNOT                        R2 ; [+10]
        7 GETTABLEKS                       R4 R0 K4 ["mouseDownOnEvent"]
        9 JUMPIFNOT                        R4 ; [+7]
       10 GETTABLEKS                       R4 R0 K5 ["onEventDragStarted"]
       12 MOVE                             R5 R1
       13 CALL                             R4 1 0
       14 LOADB                            R4 0
       15 SETTABLEKS                       R4 R0 K4 ["mouseDownOnEvent"]
       17 GETTABLEKS                       R4 R3 K0 ["UserInputType"]
       19 GETIMPORT                        R5 K7 [Enum.UserInputType.MouseButton1]
       21 JUMPIFNOTEQ                      R4 R5 ; [+29]
       23 LOADB                            R4 0
       24 SETTABLEKS                       R4 R0 K4 ["mouseDownOnEvent"]
       26 JUMPIFNOT                        R2 ; [+24]
       27 GETTABLEKS                       R4 R0 K8 ["doubleClickDetector"]
       29 NAMECALL                         R4 R4 K9 ["isDoubleClick"]
       31 CALL                             R4 1 1
       32 JUMPIFNOT                        R4 ; [+18]
       33 GETTABLEKS                       R4 R0 K10 ["props"]
       35 GETTABLEKS                       R4 R4 K11 ["DeselectAllEvents"]
       37 CALL                             R4 0 0
       38 GETTABLEKS                       R4 R0 K10 ["props"]
       40 GETTABLEKS                       R4 R4 K12 ["SelectEvent"]
       42 MOVE                             R5 R1
       43 LOADB                            R6 0
       44 CALL                             R4 2 0
       45 GETTABLEKS                       R4 R0 K10 ["props"]
       47 GETTABLEKS                       R4 R4 K13 ["SetEventEditingTick"]
       49 MOVE                             R5 R1
       50 CALL                             R4 1 0
       51 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R1 K2 ["AnimationData"]
        6 JUMPIFNOT                        R4 ; [+5]
        7 GETTABLEKS                       R3 R1 K2 ["AnimationData"]
        9 GETTABLEKS                       R3 R3 K3 ["Events"]
       11 JUMPIF                           R3 ; [+1]
       12 LOADNIL                          R3
       13 NEWTABLE                         R4 0 0
       15 JUMPIFNOT                        R3 ; [+15]
       16 GETTABLEKS                       R5 R3 K4 ["Data"]
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 MOVE                             R10 R9
       22 LOADNIL                          R11
       23 LOADNIL                          R12
       24 FORGPREP                         R10
       25 LOADB                            R15 1
       26 SETTABLE                         R15 R4 R13
       27 FORGLOOP                         R10 2 ; [-3]
       29 FORGLOOP                         R5 2 ; [-9]
       31 GETUPVAL                         R5 0
       32 MOVE                             R6 R4
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K7 [table.sort]
       36 MOVE                             R7 R5
       37 CALL                             R6 1 0
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R7 R2 K8 ["availableEvents"]
       41 MOVE                             R8 R5
       42 CALL                             R6 2 2
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R9 R2 K9 ["eventFilters"]
       46 CALL                             R8 1 1
       47 MOVE                             R9 R6
       48 LOADNIL                          R10
       49 LOADNIL                          R11
       50 FORGPREP                         R9
       51 LOADB                            R14 1
       52 SETTABLE                         R14 R8 R13
       53 FORGLOOP                         R9 2 ; [-3]
       55 MOVE                             R9 R7
       56 LOADNIL                          R10
       57 LOADNIL                          R11
       58 FORGPREP                         R9
       59 LOADNIL                          R14
       60 SETTABLE                         R14 R8 R13
       61 FORGLOOP                         R9 2 ; [-3]
       63 DUPTABLE                         R11 K10 [{"availableEvents", "eventFilters"}]
       64 SETTABLEKS                       R5 R11 K8 ["availableEvents"]
       66 SETTABLEKS                       R8 R11 K9 ["eventFilters"]
       68 NAMECALL                         R9 R0 K11 ["setState"]
       70 CALL                             R9 2 0
       71 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setEventEditingTick"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["EventEditingTick"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R2 K2 ["EventEditingTick"]
        6 GETTABLEKS                       R5 R3 K3 ["eventEditingTick"]
        8 JUMPIFEQ                         R4 R5 ; [+17]
       10 GETTABLEKS                       R4 R2 K2 ["EventEditingTick"]
       12 JUMPIFEQKNIL                     R4 ; [+8]
       14 GETIMPORT                        R4 K5 [spawn]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CALL                             R4 1 0
       20 JUMP                             ; [+5]
       21 GETTABLEKS                       R4 R0 K6 ["setEventEditingTick"]
       23 GETTABLEKS                       R5 R2 K2 ["EventEditingTick"]
       25 CALL                             R4 1 0
       26 GETTABLEKS                       R5 R2 K7 ["AnimationData"]
       28 JUMPIFNOT                        R5 ; [+5]
       29 GETTABLEKS                       R4 R2 K7 ["AnimationData"]
       31 GETTABLEKS                       R4 R4 K8 ["Events"]
       33 JUMPIF                           R4 ; [+1]
       34 LOADNIL                          R4
       35 GETTABLEKS                       R6 R1 K7 ["AnimationData"]
       37 JUMPIFNOT                        R6 ; [+5]
       38 GETTABLEKS                       R5 R1 K7 ["AnimationData"]
       40 GETTABLEKS                       R5 R5 K8 ["Events"]
       42 JUMPIF                           R5 ; [+1]
       43 LOADNIL                          R5
       44 JUMPIFEQ                         R4 R5 ; [+5]
       46 MOVE                             R8 R5
       47 NAMECALL                         R6 R0 K9 ["refreshEventNames"]
       49 CALL                             R6 2 0
       50 RETURN                           R0 0

PROTO_24:
        0 NAMECALL                         R1 R0 K0 ["refreshEventNames"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFEQ                         R2 R3 ; [+6]
        6 GETUPVAL                         R2 0
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K4 ["handleTimelineInputBegan"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFEQ                         R2 R3 ; [+6]
        6 GETUPVAL                         R2 0
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K4 ["handleTimelineInputEnded"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["handleEventRightClick"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["handleEventInputBegan"]
        6 CALL                             R3 4 0
        7 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["handleEventInputEnded"]
        6 CALL                             R3 4 0
        7 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["handleTimelineInputBegan"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["handleTimelineInputEnded"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Active"]
        6 GETTABLEKS                       R4 R1 K3 ["AbsolutePosition"]
        8 GETTABLEKS                       R5 R1 K4 ["AbsoluteSize"]
       10 GETTABLEKS                       R6 R1 K5 ["AnimationData"]
       12 GETTABLEKS                       R7 R1 K6 ["StartTick"]
       14 GETTABLEKS                       R8 R1 K7 ["EndTick"]
       16 GETTABLEKS                       R9 R2 K8 ["dragging"]
       18 GETTABLEKS                       R10 R2 K9 ["draggingSelection"]
       20 GETTABLEKS                       R11 R2 K10 ["showContextMenu"]
       22 GETTABLEKS                       R12 R2 K11 ["eventEditingTick"]
       24 GETUPVAL                         R13 0
       25 GETTABLEKS                       R13 R13 K12 ["createElement"]
       27 LOADK                            R14 K13 ["Frame"]
       28 NEWTABLE                         R15 8 0
       30 LOADN                            R16 0
       31 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
       33 GETIMPORT                        R16 K17 [UDim2.new]
       35 LOADN                            R17 1
       36 LOADN                            R18 0
       37 LOADN                            R19 0
       38 GETUPVAL                         R20 1
       39 GETTABLEKS                       R20 R20 K18 ["TRACK_HEIGHT"]
       41 CALL                             R16 4 1
       42 SETTABLEKS                       R16 R15 K19 ["Size"]
       44 LOADN                            R16 1
       45 SETTABLEKS                       R16 R15 K20 ["BackgroundTransparency"]
       47 GETUPVAL                         R16 0
       48 GETTABLEKS                       R16 R16 K21 ["Event"]
       50 GETTABLEKS                       R16 R16 K22 ["InputBegan"]
       52 NEWCLOSURE                       R17 P0
       53 CAPTURE                          VAL R0
       54 SETTABLE                         R17 R15 R16
       55 GETUPVAL                         R16 0
       56 GETTABLEKS                       R16 R16 K21 ["Event"]
       58 GETTABLEKS                       R16 R16 K23 ["InputEnded"]
       60 NEWCLOSURE                       R17 P1
       61 CAPTURE                          VAL R0
       62 SETTABLE                         R17 R15 R16
       63 DUPTABLE                         R16 K30 [{"Track", "KeyboardListener", "DragTarget", "MultiSelectBox", "EventActions", "EditEventsDialog"}]
       64 GETUPVAL                         R17 0
       65 GETTABLEKS                       R17 R17 K12 ["createElement"]
       67 GETUPVAL                         R18 2
       68 DUPTABLE                         R19 K48 [{["Events"], ["SelectedEvents"], ["EditingTick"], ["Size"], ["Width"], ["TrackPadding"], ["StartTick"], ["EndTick"], ["ShowBackground"] = True, ["ZIndex"] = 1, ["AvailableEvents"], ["EventFilters"], ["ToggleEventFilter"], ["ClearEventFilters"], ["SetAllEventFilters"], ["OnEventRightClick"], ["OnEventInputBegan"], ["OnEventInputEnded"]}]
       69 JUMPIFNOT                        R6 ; [+3]
       70 GETTABLEKS                       R20 R6 K31 ["Events"]
       72 JUMPIF                           R20 ; [+1]
       73 LOADNIL                          R20
       74 SETTABLEKS                       R20 R19 K31 ["Events"]
       76 GETTABLEKS                       R20 R1 K32 ["SelectedEvents"]
       78 SETTABLEKS                       R20 R19 K32 ["SelectedEvents"]
       80 SETTABLEKS                       R12 R19 K33 ["EditingTick"]
       82 GETIMPORT                        R20 K17 [UDim2.new]
       84 LOADN                            R21 1
       85 LOADN                            R22 0
       86 LOADN                            R23 0
       87 GETUPVAL                         R24 1
       88 GETTABLEKS                       R24 R24 K18 ["TRACK_HEIGHT"]
       90 CALL                             R20 4 1
       91 SETTABLEKS                       R20 R19 K19 ["Size"]
       93 GETTABLEKS                       R21 R5 K49 ["X"]
       95 GETTABLEKS                       R22 R0 K0 ["props"]
       97 GETTABLEKS                       R22 R22 K35 ["TrackPadding"]
       99 SUB                              R20 R21 R22
      100 SETTABLEKS                       R20 R19 K34 ["Width"]
      102 GETTABLEKS                       R20 R0 K0 ["props"]
      104 GETTABLEKS                       R20 R20 K35 ["TrackPadding"]
      106 SETTABLEKS                       R20 R19 K35 ["TrackPadding"]
      108 SETTABLEKS                       R7 R19 K6 ["StartTick"]
      110 SETTABLEKS                       R8 R19 K7 ["EndTick"]
      112 GETTABLEKS                       R20 R0 K1 ["state"]
      114 GETTABLEKS                       R20 R20 K50 ["availableEvents"]
      116 SETTABLEKS                       R20 R19 K40 ["AvailableEvents"]
      118 GETTABLEKS                       R20 R0 K1 ["state"]
      120 GETTABLEKS                       R20 R20 K51 ["eventFilters"]
      122 SETTABLEKS                       R20 R19 K41 ["EventFilters"]
      124 GETTABLEKS                       R20 R0 K52 ["toggleEventFilter"]
      126 SETTABLEKS                       R20 R19 K42 ["ToggleEventFilter"]
      128 GETTABLEKS                       R20 R0 K53 ["clearEventFilters"]
      130 SETTABLEKS                       R20 R19 K43 ["ClearEventFilters"]
      132 GETTABLEKS                       R20 R0 K54 ["setAllEventFilters"]
      134 SETTABLEKS                       R20 R19 K44 ["SetAllEventFilters"]
      136 NEWCLOSURE                       R20 P2
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R20 R19 K45 ["OnEventRightClick"]
      140 NEWCLOSURE                       R20 P3
      141 CAPTURE                          VAL R0
      142 SETTABLEKS                       R20 R19 K46 ["OnEventInputBegan"]
      144 NEWCLOSURE                       R20 P4
      145 CAPTURE                          VAL R0
      146 SETTABLEKS                       R20 R19 K47 ["OnEventInputEnded"]
      148 CALL                             R17 2 1
      149 SETTABLEKS                       R17 R16 K24 ["Track"]
      151 GETUPVAL                         R17 0
      152 GETTABLEKS                       R17 R17 K12 ["createElement"]
      154 GETUPVAL                         R18 3
      155 DUPTABLE                         R19 K57 [{"OnKeyPressed", "OnKeyReleased"}]
      156 NEWCLOSURE                       R20 P5
      157 CAPTURE                          VAL R0
      158 SETTABLEKS                       R20 R19 K55 ["OnKeyPressed"]
      160 NEWCLOSURE                       R20 P6
      161 CAPTURE                          VAL R0
      162 SETTABLEKS                       R20 R19 K56 ["OnKeyReleased"]
      164 CALL                             R17 2 1
      165 SETTABLEKS                       R17 R16 K25 ["KeyboardListener"]
      167 MOVE                             R17 R9
      168 JUMPIFNOT                        R17 ; [+14]
      169 GETUPVAL                         R17 0
      170 GETTABLEKS                       R17 R17 K12 ["createElement"]
      172 GETUPVAL                         R18 4
      173 DUPTABLE                         R19 K60 [{"OnDragMoved", "OnDragEnded"}]
      174 GETTABLEKS                       R20 R0 K61 ["onEventDragMoved"]
      176 SETTABLEKS                       R20 R19 K58 ["OnDragMoved"]
      178 GETTABLEKS                       R20 R0 K62 ["onEventDragEnded"]
      180 SETTABLEKS                       R20 R19 K59 ["OnDragEnded"]
      182 CALL                             R17 2 1
      183 SETTABLEKS                       R17 R16 K26 ["DragTarget"]
      185 MOVE                             R17 R10
      186 JUMPIFNOT                        R17 ; [+29]
      187 GETUPVAL                         R17 0
      188 GETTABLEKS                       R17 R17 K12 ["createElement"]
      190 GETUPVAL                         R18 5
      191 DUPTABLE                         R19 K66 [{"OnDragMoved", "OnDragEnded", "SelectionStart", "SelectionEnd", "SourceExtents"}]
      192 GETTABLEKS                       R20 R0 K67 ["onSelectDragMoved"]
      194 SETTABLEKS                       R20 R19 K58 ["OnDragMoved"]
      196 GETTABLEKS                       R20 R0 K68 ["onSelectDragEnded"]
      198 SETTABLEKS                       R20 R19 K59 ["OnDragEnded"]
      200 GETTABLEKS                       R20 R0 K69 ["selectDragStart"]
      202 SETTABLEKS                       R20 R19 K63 ["SelectionStart"]
      204 GETTABLEKS                       R20 R0 K70 ["selectDragEnd"]
      206 SETTABLEKS                       R20 R19 K64 ["SelectionEnd"]
      208 GETIMPORT                        R20 K72 [Rect.new]
      210 MOVE                             R21 R4
      211 ADD                              R22 R4 R5
      212 CALL                             R20 2 1
      213 SETTABLEKS                       R20 R19 K65 ["SourceExtents"]
      215 CALL                             R17 2 1
      216 SETTABLEKS                       R17 R16 K27 ["MultiSelectBox"]
      218 MOVE                             R17 R3
      219 JUMPIFNOT                        R17 ; [+24]
      220 MOVE                             R17 R6
      221 JUMPIFNOT                        R17 ; [+22]
      222 GETUPVAL                         R17 0
      223 GETTABLEKS                       R17 R17 K12 ["createElement"]
      225 GETUPVAL                         R18 6
      226 DUPTABLE                         R19 K76 [{"ShowMenu", "EventFilters", "OnMenuOpened", "OnEditEvents"}]
      227 SETTABLEKS                       R11 R19 K73 ["ShowMenu"]
      229 GETTABLEKS                       R20 R0 K1 ["state"]
      231 GETTABLEKS                       R20 R20 K51 ["eventFilters"]
      233 SETTABLEKS                       R20 R19 K41 ["EventFilters"]
      235 GETTABLEKS                       R20 R0 K77 ["hideMenu"]
      237 SETTABLEKS                       R20 R19 K74 ["OnMenuOpened"]
      239 GETTABLEKS                       R20 R1 K78 ["SetEventEditingTick"]
      241 SETTABLEKS                       R20 R19 K75 ["OnEditEvents"]
      243 CALL                             R17 2 1
      244 SETTABLEKS                       R17 R16 K28 ["EventActions"]
      246 MOVE                             R17 R6
      247 JUMPIFNOT                        R17 ; [+22]
      248 MOVE                             R17 R12
      249 JUMPIFNOT                        R17 ; [+20]
      250 GETUPVAL                         R17 0
      251 GETTABLEKS                       R17 R17 K12 ["createElement"]
      253 GETUPVAL                         R18 7
      254 DUPTABLE                         R19 K82 [{"Events", "Tick", "OnSaved", "OnClose"}]
      255 GETTABLEKS                       R20 R6 K31 ["Events"]
      257 SETTABLEKS                       R20 R19 K31 ["Events"]
      259 SETTABLEKS                       R12 R19 K79 ["Tick"]
      261 GETTABLEKS                       R20 R0 K83 ["setEventsHandler"]
      263 SETTABLEKS                       R20 R19 K80 ["OnSaved"]
      265 GETTABLEKS                       R20 R1 K78 ["SetEventEditingTick"]
      267 SETTABLEKS                       R20 R19 K81 ["OnClose"]
      269 CALL                             R17 2 1
      270 SETTABLEKS                       R17 R16 K29 ["EditEventsDialog"]
      272 CALL                             R13 3 -1
      273 RETURN                           R13 -1

PROTO_33:
        0 DUPTABLE                         R2 K6 [{"AnimationData", "Active", "SelectedEvents", "EventEditingTick", "FrameRate", "SnapMode"}]
        1 GETTABLEKS                       R3 R0 K0 ["AnimationData"]
        3 SETTABLEKS                       R3 R2 K0 ["AnimationData"]
        5 GETTABLEKS                       R3 R0 K7 ["Status"]
        7 GETTABLEKS                       R3 R3 K1 ["Active"]
        9 SETTABLEKS                       R3 R2 K1 ["Active"]
       11 GETTABLEKS                       R3 R0 K7 ["Status"]
       13 GETTABLEKS                       R3 R3 K2 ["SelectedEvents"]
       15 SETTABLEKS                       R3 R2 K2 ["SelectedEvents"]
       17 GETTABLEKS                       R3 R0 K7 ["Status"]
       19 GETTABLEKS                       R3 R3 K3 ["EventEditingTick"]
       21 SETTABLEKS                       R3 R2 K3 ["EventEditingTick"]
       23 GETTABLEKS                       R3 R0 K7 ["Status"]
       25 GETTABLEKS                       R3 R3 K4 ["FrameRate"]
       27 SETTABLEKS                       R3 R2 K4 ["FrameRate"]
       29 GETTABLEKS                       R3 R0 K7 ["Status"]
       31 GETTABLEKS                       R3 R3 K5 ["SnapMode"]
       33 SETTABLEKS                       R3 R2 K5 ["SnapMode"]
       35 RETURN                           R2 1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
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

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_39:
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

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_43:
        0 DUPTABLE                         R1 K9 [{"AddWaypoint", "SetEvents", "SelectEvent", "DeselectEvent", "MoveSelectedEvents", "DeselectAllEvents", "SetRightClickContextInfo", "SetEventEditingTick", "SetPlayState"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["AddWaypoint"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 SETTABLEKS                       R2 R1 K1 ["SetEvents"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 SETTABLEKS                       R2 R1 K2 ["SelectEvent"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U4
       21 SETTABLEKS                       R2 R1 K3 ["DeselectEvent"]
       23 NEWCLOSURE                       R2 P4
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U5
       26 SETTABLEKS                       R2 R1 K4 ["MoveSelectedEvents"]
       28 NEWCLOSURE                       R2 P5
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U6
       32 SETTABLEKS                       R2 R1 K5 ["DeselectAllEvents"]
       34 NEWCLOSURE                       R2 P6
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U7
       37 SETTABLEKS                       R2 R1 K6 ["SetRightClickContextInfo"]
       39 NEWCLOSURE                       R3 P7
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U8
       42 ORK                              R2 R3 K10 []
       43 SETTABLEKS                       R2 R1 K7 ["SetEventEditingTick"]
       45 NEWCLOSURE                       R2 P8
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U9
       48 SETTABLEKS                       R2 R1 K8 ["SetPlayState"]
       50 RETURN                           R1 1

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
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["UI"]
       30 GETTABLEKS                       R4 R4 K11 ["DragListener"]
       32 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       34 GETTABLEKS                       R6 R5 K13 ["withContext"]
       36 GETTABLEKS                       R7 R3 K10 ["UI"]
       38 GETTABLEKS                       R7 R7 K14 ["KeyboardListener"]
       40 GETTABLEKS                       R8 R3 K15 ["Dash"]
       42 GETTABLEKS                       R9 R8 K16 ["copy"]
       44 GETTABLEKS                       R10 R8 K17 ["keys"]
       46 GETIMPORT                        R11 K5 [require]
       48 GETTABLEKS                       R12 R0 K18 ["Src"]
       50 GETTABLEKS                       R12 R12 K19 ["Util"]
       52 GETTABLEKS                       R12 R12 K20 ["Constants"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K5 [require]
       57 GETTABLEKS                       R13 R0 K18 ["Src"]
       59 GETTABLEKS                       R13 R13 K19 ["Util"]
       61 GETTABLEKS                       R13 R13 K21 ["TrackUtils"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K5 [require]
       66 GETTABLEKS                       R14 R0 K18 ["Src"]
       68 GETTABLEKS                       R14 R14 K19 ["Util"]
       70 GETTABLEKS                       R14 R14 K22 ["KeyframeUtils"]
       72 CALL                             R13 1 1
       73 GETIMPORT                        R14 K5 [require]
       75 GETTABLEKS                       R15 R0 K18 ["Src"]
       77 GETTABLEKS                       R15 R15 K19 ["Util"]
       79 GETTABLEKS                       R15 R15 K23 ["Input"]
       81 CALL                             R14 1 1
       82 GETIMPORT                        R15 K5 [require]
       84 GETTABLEKS                       R16 R0 K18 ["Src"]
       86 GETTABLEKS                       R16 R16 K19 ["Util"]
       88 GETTABLEKS                       R16 R16 K24 ["DoubleClickDetector"]
       90 CALL                             R15 1 1
       91 GETIMPORT                        R16 K5 [require]
       93 GETTABLEKS                       R17 R0 K18 ["Src"]
       95 GETTABLEKS                       R17 R17 K19 ["Util"]
       97 GETTABLEKS                       R17 R17 K25 ["compare"]
       99 CALL                             R16 1 1
      100 GETIMPORT                        R17 K5 [require]
      102 GETTABLEKS                       R18 R0 K18 ["Src"]
      104 GETTABLEKS                       R18 R18 K19 ["Util"]
      106 GETTABLEKS                       R18 R18 K26 ["DragContext"]
      108 CALL                             R17 1 1
      109 GETIMPORT                        R18 K5 [require]
      111 GETTABLEKS                       R19 R0 K18 ["Src"]
      113 GETTABLEKS                       R19 R19 K27 ["Components"]
      115 GETTABLEKS                       R19 R19 K28 ["EventTrack"]
      117 CALL                             R18 1 1
      118 GETIMPORT                        R19 K5 [require]
      120 GETTABLEKS                       R20 R0 K18 ["Src"]
      122 GETTABLEKS                       R20 R20 K27 ["Components"]
      124 GETTABLEKS                       R20 R20 K29 ["SelectionBox"]
      126 CALL                             R19 1 1
      127 GETIMPORT                        R20 K5 [require]
      129 GETTABLEKS                       R21 R0 K18 ["Src"]
      131 GETTABLEKS                       R21 R21 K27 ["Components"]
      133 GETTABLEKS                       R21 R21 K30 ["EventActions"]
      135 CALL                             R20 1 1
      136 GETIMPORT                        R21 K5 [require]
      138 GETTABLEKS                       R22 R0 K18 ["Src"]
      140 GETTABLEKS                       R22 R22 K31 ["Thunks"]
      142 GETTABLEKS                       R22 R22 K32 ["History"]
      144 GETTABLEKS                       R22 R22 K33 ["AddWaypoint"]
      146 CALL                             R21 1 1
      147 GETIMPORT                        R22 K5 [require]
      149 GETTABLEKS                       R23 R0 K18 ["Src"]
      151 GETTABLEKS                       R23 R23 K31 ["Thunks"]
      153 GETTABLEKS                       R23 R23 K34 ["Events"]
      155 GETTABLEKS                       R23 R23 K35 ["SetEvents"]
      157 CALL                             R22 1 1
      158 GETIMPORT                        R23 K5 [require]
      160 GETTABLEKS                       R24 R0 K18 ["Src"]
      162 GETTABLEKS                       R24 R24 K31 ["Thunks"]
      164 GETTABLEKS                       R24 R24 K34 ["Events"]
      166 GETTABLEKS                       R24 R24 K36 ["SelectEvent"]
      168 CALL                             R23 1 1
      169 GETIMPORT                        R24 K5 [require]
      171 GETTABLEKS                       R25 R0 K18 ["Src"]
      173 GETTABLEKS                       R25 R25 K31 ["Thunks"]
      175 GETTABLEKS                       R25 R25 K34 ["Events"]
      177 GETTABLEKS                       R25 R25 K37 ["DeselectEvent"]
      179 CALL                             R24 1 1
      180 GETIMPORT                        R25 K5 [require]
      182 GETTABLEKS                       R26 R0 K18 ["Src"]
      184 GETTABLEKS                       R26 R26 K31 ["Thunks"]
      186 GETTABLEKS                       R26 R26 K34 ["Events"]
      188 GETTABLEKS                       R26 R26 K38 ["MoveSelectedEvents"]
      190 CALL                             R25 1 1
      191 GETIMPORT                        R26 K5 [require]
      193 GETTABLEKS                       R27 R0 K18 ["Src"]
      195 GETTABLEKS                       R27 R27 K39 ["Actions"]
      197 GETTABLEKS                       R27 R27 K40 ["SetEventEditingTick"]
      199 CALL                             R26 1 1
      200 GETIMPORT                        R27 K5 [require]
      202 GETTABLEKS                       R28 R0 K18 ["Src"]
      204 GETTABLEKS                       R28 R28 K39 ["Actions"]
      206 GETTABLEKS                       R28 R28 K41 ["SetPlayState"]
      208 CALL                             R27 1 1
      209 GETIMPORT                        R28 K5 [require]
      211 GETTABLEKS                       R29 R0 K18 ["Src"]
      213 GETTABLEKS                       R29 R29 K39 ["Actions"]
      215 GETTABLEKS                       R29 R29 K42 ["SetRightClickContextInfo"]
      217 CALL                             R28 1 1
      218 GETIMPORT                        R29 K5 [require]
      220 GETTABLEKS                       R30 R0 K18 ["Src"]
      222 GETTABLEKS                       R30 R30 K39 ["Actions"]
      224 GETTABLEKS                       R30 R30 K43 ["SetSelectedEvents"]
      226 CALL                             R29 1 1
      227 GETIMPORT                        R30 K5 [require]
      229 GETTABLEKS                       R31 R0 K18 ["Src"]
      231 GETTABLEKS                       R31 R31 K39 ["Actions"]
      233 GETTABLEKS                       R31 R31 K44 ["SetSelectedKeyframes"]
      235 CALL                             R30 1 1
      236 GETIMPORT                        R31 K5 [require]
      238 GETTABLEKS                       R32 R0 K18 ["Src"]
      240 GETTABLEKS                       R32 R32 K27 ["Components"]
      242 GETTABLEKS                       R32 R32 K45 ["EditEventsDialog"]
      244 GETTABLEKS                       R32 R32 K45 ["EditEventsDialog"]
      246 CALL                             R31 1 1
      247 GETTABLEKS                       R32 R1 K46 ["PureComponent"]
      249 LOADK                            R34 K47 ["EventsController"]
      250 NAMECALL                         R32 R32 K48 ["extend"]
      252 CALL                             R32 2 1
      253 DUPCLOSURE                       R33 K49 [PROTO_15]
      254 CAPTURE                          VAL R1
      255 CAPTURE                          VAL R15
      256 CAPTURE                          VAL R12
      257 CAPTURE                          VAL R11
      258 CAPTURE                          VAL R13
      259 CAPTURE                          VAL R17
      260 CAPTURE                          VAL R9
      261 SETTABLEKS                       R33 R32 K50 ["init"]
      263 DUPCLOSURE                       R33 K51 [PROTO_16]
      264 CAPTURE                          VAL R14
      265 SETTABLEKS                       R33 R32 K52 ["handleTimelineInputBegan"]
      267 DUPCLOSURE                       R33 K53 [PROTO_17]
      268 CAPTURE                          VAL R14
      269 SETTABLEKS                       R33 R32 K54 ["handleTimelineInputEnded"]
      271 DUPCLOSURE                       R33 K55 [PROTO_18]
      272 SETTABLEKS                       R33 R32 K56 ["handleEventRightClick"]
      274 DUPCLOSURE                       R33 K57 [PROTO_19]
      275 SETTABLEKS                       R33 R32 K58 ["handleEventInputBegan"]
      277 DUPCLOSURE                       R33 K59 [PROTO_20]
      278 SETTABLEKS                       R33 R32 K60 ["handleEventInputEnded"]
      280 DUPCLOSURE                       R33 K61 [PROTO_21]
      281 CAPTURE                          VAL R10
      282 CAPTURE                          VAL R16
      283 CAPTURE                          VAL R9
      284 SETTABLEKS                       R33 R32 K62 ["refreshEventNames"]
      286 DUPCLOSURE                       R33 K63 [PROTO_23]
      287 SETTABLEKS                       R33 R32 K64 ["didUpdate"]
      289 DUPCLOSURE                       R33 K65 [PROTO_24]
      290 SETTABLEKS                       R33 R32 K66 ["didMount"]
      292 DUPCLOSURE                       R33 K67 [PROTO_32]
      293 CAPTURE                          VAL R1
      294 CAPTURE                          VAL R11
      295 CAPTURE                          VAL R18
      296 CAPTURE                          VAL R7
      297 CAPTURE                          VAL R4
      298 CAPTURE                          VAL R19
      299 CAPTURE                          VAL R20
      300 CAPTURE                          VAL R31
      301 SETTABLEKS                       R33 R32 K68 ["render"]
      303 DUPCLOSURE                       R33 K69 [PROTO_33]
      304 DUPCLOSURE                       R34 K70 [PROTO_43]
      305 CAPTURE                          VAL R21
      306 CAPTURE                          VAL R22
      307 CAPTURE                          VAL R30
      308 CAPTURE                          VAL R23
      309 CAPTURE                          VAL R24
      310 CAPTURE                          VAL R25
      311 CAPTURE                          VAL R29
      312 CAPTURE                          VAL R28
      313 CAPTURE                          VAL R26
      314 CAPTURE                          VAL R27
      315 MOVE                             R35 R6
      316 DUPTABLE                         R36 K72 [{"Analytics"}]
      317 GETTABLEKS                       R37 R5 K71 ["Analytics"]
      319 SETTABLEKS                       R37 R36 K71 ["Analytics"]
      321 CALL                             R35 1 1
      322 MOVE                             R36 R32
      323 CALL                             R35 1 1
      324 MOVE                             R32 R35
      325 GETTABLEKS                       R35 R2 K73 ["connect"]
      327 MOVE                             R36 R33
      328 MOVE                             R37 R34
      329 CALL                             R35 2 1
      330 MOVE                             R36 R32
      331 CALL                             R35 1 1
      332 MOVE                             R32 R35
      333 RETURN                           R32 1
