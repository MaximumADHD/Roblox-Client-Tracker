PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PlotRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["mouseToPlot"]
       10 MOVE                             R2 R0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["PlotRef"]
       14 GETTABLEKS                       R3 R3 K1 ["current"]
       16 CALL                             R1 2 1
       17 MOVE                             R0 R1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K3 ["EqHook"]
       21 GETTABLEKS                       R1 R1 K4 ["setLowGain"]
       23 GETTABLEKS                       R2 R0 K5 ["Y"]
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K3 ["EqHook"]
       29 GETTABLEKS                       R1 R1 K6 ["setLowThreshold"]
       31 GETTABLEKS                       R2 R0 K7 ["X"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["EqHook"]
        4 GETTABLEKS                       R4 R4 K1 ["highThreshold"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K0 ["EqHook"]
        9 GETTABLEKS                       R5 R5 K2 ["lowThreshold"]
       11 DIV                              R3 R4 R5
       12 FASTCALL1                        MATH_SQRT R3 ; [+2]
       13 GETIMPORT                        R2 K5 [math.sqrt]
       15 CALL                             R2 1 1
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 2
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PlotRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["mouseToPlot"]
       10 MOVE                             R2 R0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["PlotRef"]
       14 GETTABLEKS                       R3 R3 K1 ["current"]
       16 CALL                             R1 2 1
       17 MOVE                             R0 R1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K3 ["EqHook"]
       21 GETTABLEKS                       R1 R1 K4 ["setMidGain"]
       23 GETTABLEKS                       R2 R0 K5 ["Y"]
       25 CALL                             R1 1 0
       26 GETTABLEKS                       R2 R0 K6 ["X"]
       28 GETUPVAL                         R3 2
       29 DIV                              R1 R2 R3
       30 GETTABLEKS                       R3 R0 K6 ["X"]
       32 GETUPVAL                         R4 2
       33 MUL                              R2 R3 R4
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K3 ["EqHook"]
       37 GETTABLEKS                       R3 R3 K7 ["setLowThreshold"]
       39 MOVE                             R4 R1
       40 CALL                             R3 1 0
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K3 ["EqHook"]
       44 GETTABLEKS                       R3 R3 K8 ["setHighThreshold"]
       46 MOVE                             R4 R2
       47 CALL                             R3 1 0
       48 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PlotRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["mouseToPlot"]
       10 MOVE                             R2 R0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["PlotRef"]
       14 GETTABLEKS                       R3 R3 K1 ["current"]
       16 CALL                             R1 2 1
       17 MOVE                             R0 R1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K3 ["EqHook"]
       21 GETTABLEKS                       R1 R1 K4 ["setHighGain"]
       23 GETTABLEKS                       R2 R0 K5 ["Y"]
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K3 ["EqHook"]
       29 GETTABLEKS                       R1 R1 K6 ["setHighThreshold"]
       31 GETTABLEKS                       R2 R0 K7 ["X"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["createElement"]
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K8 [{["Position"], ["Label"] = "L", ["DragTarget"], ["OnDragStart"], ["OnMoved"], ["OnDragEnd"]}]
       10 GETIMPORT                        R4 K11 [Vector2.new]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K12 ["EqHook"]
       15 GETTABLEKS                       R5 R5 K13 ["lowThreshold"]
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R6 R6 K12 ["EqHook"]
       20 GETTABLEKS                       R6 R6 K14 ["lowGain"]
       22 CALL                             R4 2 1
       23 SETTABLEKS                       R4 R3 K1 ["Position"]
       25 GETUPVAL                         R4 4
       26 SETTABLEKS                       R4 R3 K4 ["DragTarget"]
       28 GETUPVAL                         R4 5
       29 SETTABLEKS                       R4 R3 K5 ["OnDragStart"]
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U6
       34 SETTABLEKS                       R4 R3 K6 ["OnMoved"]
       36 GETUPVAL                         R4 7
       37 SETTABLEKS                       R4 R3 K7 ["OnDragEnd"]
       39 CALL                             R1 2 1
       40 SETTABLEKS                       R1 R0 K15 ["Control_L"]
       42 GETUPVAL                         R1 1
       43 GETTABLEKS                       R1 R1 K0 ["createElement"]
       45 GETUPVAL                         R2 2
       46 DUPTABLE                         R3 K17 [{["Position"], ["Label"] = "M", ["DragTarget"], ["OnDragStart"], ["OnMoved"], ["OnDragEnd"]}]
       47 GETIMPORT                        R4 K11 [Vector2.new]
       49 GETUPVAL                         R7 3
       50 GETTABLEKS                       R7 R7 K12 ["EqHook"]
       52 GETTABLEKS                       R7 R7 K13 ["lowThreshold"]
       54 GETUPVAL                         R8 3
       55 GETTABLEKS                       R8 R8 K12 ["EqHook"]
       57 GETTABLEKS                       R8 R8 K18 ["highThreshold"]
       59 MUL                              R6 R7 R8
       60 FASTCALL1                        MATH_SQRT R6 ; [+2]
       61 GETIMPORT                        R5 K21 [math.sqrt]
       63 CALL                             R5 1 1
       64 GETUPVAL                         R6 3
       65 GETTABLEKS                       R6 R6 K12 ["EqHook"]
       67 GETTABLEKS                       R6 R6 K22 ["midGain"]
       69 CALL                             R4 2 1
       70 SETTABLEKS                       R4 R3 K1 ["Position"]
       72 GETUPVAL                         R4 4
       73 SETTABLEKS                       R4 R3 K4 ["DragTarget"]
       75 NEWCLOSURE                       R4 P1
       76 CAPTURE                          UPVAL U8
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          UPVAL U5
       79 SETTABLEKS                       R4 R3 K5 ["OnDragStart"]
       81 NEWCLOSURE                       R4 P2
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          UPVAL U6
       84 CAPTURE                          UPVAL U9
       85 SETTABLEKS                       R4 R3 K6 ["OnMoved"]
       87 GETUPVAL                         R4 7
       88 SETTABLEKS                       R4 R3 K7 ["OnDragEnd"]
       90 CALL                             R1 2 1
       91 SETTABLEKS                       R1 R0 K23 ["Control_M"]
       93 GETUPVAL                         R1 1
       94 GETTABLEKS                       R1 R1 K0 ["createElement"]
       96 GETUPVAL                         R2 2
       97 DUPTABLE                         R3 K25 [{["Position"], ["Label"] = "H", ["DragTarget"], ["OnDragStart"], ["OnMoved"], ["OnDragEnd"]}]
       98 GETIMPORT                        R4 K11 [Vector2.new]
      100 GETUPVAL                         R5 3
      101 GETTABLEKS                       R5 R5 K12 ["EqHook"]
      103 GETTABLEKS                       R5 R5 K18 ["highThreshold"]
      105 GETUPVAL                         R6 3
      106 GETTABLEKS                       R6 R6 K12 ["EqHook"]
      108 GETTABLEKS                       R6 R6 K26 ["highGain"]
      110 CALL                             R4 2 1
      111 SETTABLEKS                       R4 R3 K1 ["Position"]
      113 GETUPVAL                         R4 4
      114 SETTABLEKS                       R4 R3 K4 ["DragTarget"]
      116 GETUPVAL                         R4 5
      117 SETTABLEKS                       R4 R3 K5 ["OnDragStart"]
      119 NEWCLOSURE                       R4 P3
      120 CAPTURE                          UPVAL U3
      121 CAPTURE                          UPVAL U6
      122 SETTABLEKS                       R4 R3 K6 ["OnMoved"]
      124 GETUPVAL                         R4 7
      125 SETTABLEKS                       R4 R3 K7 ["OnDragEnd"]
      127 CALL                             R1 2 1
      128 SETTABLEKS                       R1 R0 K27 ["Control_H"]
      130 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["EqHook"]
        2 GETTABLEKS                       R2 R2 K1 ["bypass"]
        4 NOT                              R1 R2
        5 GETUPVAL                         R2 0
        6 LOADN                            R3 0
        7 CALL                             R2 1 2
        8 GETUPVAL                         R4 0
        9 LOADK                            R5 K2 [""]
       10 CALL                             R4 1 2
       11 GETUPVAL                         R6 1
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          VAL R5
       14 NEWTABLE                         R8 0 0
       16 CALL                             R6 2 1
       17 GETUPVAL                         R7 1
       18 NEWCLOSURE                       R8 P1
       19 CAPTURE                          VAL R5
       20 NEWTABLE                         R9 0 0
       22 CALL                             R7 2 1
       23 GETUPVAL                         R8 2
       24 NEWCLOSURE                       R9 P2
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R6
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          VAL R7
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 NEWTABLE                         R10 0 6
       37 GETTABLEKS                       R11 R0 K0 ["EqHook"]
       39 GETTABLEKS                       R12 R0 K3 ["PlotAbsoluteSize"]
       41 GETTABLEKS                       R13 R0 K4 ["PlotRef"]
       43 MOVE                             R14 R4
       44 MOVE                             R15 R6
       45 MOVE                             R16 R7
       46 SETLIST                          R10 R11 6 [1]
       48 CALL                             R8 2 1
       49 MOVE                             R9 R1
       50 JUMPIFNOT                        R9 ; [+25]
       51 GETUPVAL                         R9 3
       52 GETTABLEKS                       R9 R9 K5 ["createElement"]
       54 GETUPVAL                         R10 6
       55 DUPTABLE                         R11 K13 [{["Active"] = True, ["LayoutOrder"] = 1, ["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
       56 GETIMPORT                        R12 K16 [UDim2.new]
       58 LOADN                            R13 0
       59 LOADN                            R14 0
       60 LOADN                            R15 0
       61 LOADN                            R16 0
       62 CALL                             R12 4 1
       63 SETTABLEKS                       R12 R11 K10 ["Position"]
       65 GETIMPORT                        R12 K16 [UDim2.new]
       67 LOADN                            R13 1
       68 LOADN                            R14 0
       69 LOADN                            R15 1
       70 LOADN                            R16 0
       71 CALL                             R12 4 1
       72 SETTABLEKS                       R12 R11 K11 ["Size"]
       74 MOVE                             R12 R8
       75 CALL                             R9 3 1
       76 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["AudioEqualizerEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R3 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       20 GETTABLEKS                       R4 R2 K10 ["useMemo"]
       22 GETTABLEKS                       R5 R2 K11 ["useState"]
       24 GETIMPORT                        R6 K6 [require]
       26 GETTABLEKS                       R7 R1 K7 ["Packages"]
       28 GETTABLEKS                       R7 R7 K12 ["Framework"]
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R7 R6 K13 ["UI"]
       33 GETTABLEKS                       R7 R7 K14 ["Pane"]
       35 GETIMPORT                        R8 K6 [require]
       37 GETTABLEKS                       R9 R1 K15 ["Src"]
       39 GETTABLEKS                       R9 R9 K16 ["Types"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K6 [require]
       44 GETTABLEKS                       R10 R0 K17 ["ControlPoint"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K6 [require]
       49 GETTABLEKS                       R11 R1 K15 ["Src"]
       51 GETTABLEKS                       R11 R11 K18 ["Util"]
       53 GETTABLEKS                       R11 R11 K19 ["PlotUtil"]
       55 CALL                             R10 1 1
       56 DUPCLOSURE                       R11 K20 [PROTO_7]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R7
       64 RETURN                           R11 1
