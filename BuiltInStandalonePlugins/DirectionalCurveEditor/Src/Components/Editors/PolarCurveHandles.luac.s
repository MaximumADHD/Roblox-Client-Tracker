PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["select"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["update"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSelectedKeypoint"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["update"]
        8 MOVE                             R2 R0
        9 LOADB                            R3 1
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 1
       12 LOADB                            R2 0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["UserInputType"]
        7 GETIMPORT                        R2 K4 [Enum.UserInputType.MouseButton1]
        9 JUMPIFNOTEQ                      R1 R2 ; [+35]
       11 GETIMPORT                        R1 K7 [Vector2.new]
       13 GETTABLEKS                       R3 R0 K8 ["Position"]
       15 GETTABLEKS                       R2 R3 K9 ["X"]
       17 GETTABLEKS                       R4 R0 K8 ["Position"]
       19 GETTABLEKS                       R3 R4 K10 ["Y"]
       21 CALL                             R1 2 1
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R2 R3 K11 ["mouseToPlotPolar"]
       25 MOVE                             R3 R1
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K0 ["current"]
       29 CALL                             R2 2 1
       30 GETTABLEKS                       R3 R2 K10 ["Y"]
       32 LOADN                            R4 1
       33 JUMPIFNOTLT                      R4 R3 ; [+2]
       35 RETURN                           R0 0
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R3 R4 K12 ["add"]
       39 MOVE                             R4 R2
       40 CALL                             R3 1 1
       41 JUMPIFNOT                        R3 ; [+3]
       42 GETUPVAL                         R4 3
       43 LOADB                            R5 1
       44 CALL                             R4 1 0
       45 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["remove"]
        6 CALL                             R0 0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K1 ["select"]
       10 LOADN                            R1 255
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["keypoints"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 LOADK                            R7 K1 ["Keypoint_"]
        9 MOVE                             R8 R4
       10 CONCAT                           R6 R7 R8
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R8 R9 K2 ["selectedIndex"]
       14 JUMPIFEQ                         R4 R8 ; [+2]
       16 LOADB                            R7 0 +1
       17 LOADB                            R7 1
       18 MOVE                             R9 R6
       19 LOADK                            R10 K3 ["_L"]
       20 CONCAT                           R8 R9 R10
       21 GETUPVAL                         R10 1
       22 GETTABLEKS                       R9 R10 K4 ["createElement"]
       24 GETUPVAL                         R10 2
       25 DUPTABLE                         R11 K16 [{"Position", "IsRight", "PlotAbsoluteSize", "PlotRef", "IsSelected", "IsDragging", "OnHoverStart", "OnDragStart", "OnMoved", "OnDragEnd", "OnRightClick"}]
       26 SETTABLEKS                       R5 R11 K5 ["Position"]
       28 LOADB                            R12 0
       29 SETTABLEKS                       R12 R11 K6 ["IsRight"]
       31 GETUPVAL                         R13 3
       32 GETTABLEKS                       R12 R13 K7 ["PlotAbsoluteSize"]
       34 SETTABLEKS                       R12 R11 K7 ["PlotAbsoluteSize"]
       36 GETUPVAL                         R12 4
       37 SETTABLEKS                       R12 R11 K8 ["PlotRef"]
       39 SETTABLEKS                       R7 R11 K9 ["IsSelected"]
       41 GETUPVAL                         R13 5
       42 AND                              R12 R13 R7
       43 SETTABLEKS                       R12 R11 K10 ["IsDragging"]
       45 NEWCLOSURE                       R12 P0
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          VAL R4
       48 SETTABLEKS                       R12 R11 K11 ["OnHoverStart"]
       50 GETUPVAL                         R12 7
       51 SETTABLEKS                       R12 R11 K12 ["OnDragStart"]
       53 GETUPVAL                         R12 8
       54 SETTABLEKS                       R12 R11 K13 ["OnMoved"]
       56 GETUPVAL                         R12 9
       57 SETTABLEKS                       R12 R11 K14 ["OnDragEnd"]
       59 GETUPVAL                         R12 10
       60 SETTABLEKS                       R12 R11 K15 ["OnRightClick"]
       62 CALL                             R9 2 1
       63 SETTABLE                         R9 R0 R8
       64 MOVE                             R9 R6
       65 LOADK                            R10 K17 ["_R"]
       66 CONCAT                           R8 R9 R10
       67 GETUPVAL                         R10 1
       68 GETTABLEKS                       R9 R10 K4 ["createElement"]
       70 GETUPVAL                         R10 2
       71 DUPTABLE                         R11 K16 [{"Position", "IsRight", "PlotAbsoluteSize", "PlotRef", "IsSelected", "IsDragging", "OnHoverStart", "OnDragStart", "OnMoved", "OnDragEnd", "OnRightClick"}]
       72 SETTABLEKS                       R5 R11 K5 ["Position"]
       74 LOADB                            R12 1
       75 SETTABLEKS                       R12 R11 K6 ["IsRight"]
       77 GETUPVAL                         R13 3
       78 GETTABLEKS                       R12 R13 K7 ["PlotAbsoluteSize"]
       80 SETTABLEKS                       R12 R11 K7 ["PlotAbsoluteSize"]
       82 GETUPVAL                         R12 4
       83 SETTABLEKS                       R12 R11 K8 ["PlotRef"]
       85 SETTABLEKS                       R7 R11 K9 ["IsSelected"]
       87 GETUPVAL                         R13 5
       88 AND                              R12 R13 R7
       89 SETTABLEKS                       R12 R11 K10 ["IsDragging"]
       91 NEWCLOSURE                       R12 P1
       92 CAPTURE                          UPVAL U6
       93 CAPTURE                          VAL R4
       94 SETTABLEKS                       R12 R11 K11 ["OnHoverStart"]
       96 GETUPVAL                         R12 7
       97 SETTABLEKS                       R12 R11 K12 ["OnDragStart"]
       99 GETUPVAL                         R12 8
      100 SETTABLEKS                       R12 R11 K13 ["OnMoved"]
      102 GETUPVAL                         R12 9
      103 SETTABLEKS                       R12 R11 K14 ["OnDragEnd"]
      105 GETUPVAL                         R12 10
      106 SETTABLEKS                       R12 R11 K15 ["OnRightClick"]
      108 CALL                             R9 2 1
      109 SETTABLE                         R9 R0 R8
      110 FORGLOOP                         R1 2 ; [-103]
      112 RETURN                           R0 1

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+4]
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["CurveHook"]
        2 GETTABLEKS                       R2 R0 K1 ["PlotRef"]
        4 GETTABLEKS                       R3 R1 K2 ["plotRect"]
        6 GETUPVAL                         R4 0
        7 LOADB                            R5 0
        8 CALL                             R4 1 2
        9 GETUPVAL                         R6 1
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          VAL R4
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R8 0 2
       15 MOVE                             R9 R1
       16 MOVE                             R10 R4
       17 SETLIST                          R8 R9 2 [1]
       19 CALL                             R6 2 1
       20 GETUPVAL                         R7 1
       21 NEWCLOSURE                       R8 P1
       22 CAPTURE                          VAL R5
       23 NEWTABLE                         R9 0 1
       25 MOVE                             R10 R5
       26 SETLIST                          R9 R10 1 [1]
       28 CALL                             R7 2 1
       29 GETUPVAL                         R8 1
       30 NEWCLOSURE                       R9 P2
       31 CAPTURE                          VAL R1
       32 NEWTABLE                         R10 0 3
       34 MOVE                             R11 R2
       35 MOVE                             R12 R3
       36 MOVE                             R13 R1
       37 SETLIST                          R10 R11 3 [1]
       39 CALL                             R8 2 1
       40 GETUPVAL                         R9 1
       41 NEWCLOSURE                       R10 P3
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R5
       44 NEWTABLE                         R11 0 2
       46 MOVE                             R12 R0
       47 MOVE                             R13 R1
       48 SETLIST                          R11 R12 2 [1]
       50 CALL                             R9 2 1
       51 GETUPVAL                         R10 1
       52 NEWCLOSURE                       R11 P4
       53 CAPTURE                          VAL R2
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R5
       57 NEWTABLE                         R12 0 3
       59 MOVE                             R13 R2
       60 MOVE                             R14 R3
       61 MOVE                             R15 R1
       62 SETLIST                          R12 R13 3 [1]
       64 CALL                             R10 2 1
       65 GETUPVAL                         R11 1
       66 NEWCLOSURE                       R12 P5
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R1
       69 NEWTABLE                         R13 0 2
       71 MOVE                             R14 R0
       72 MOVE                             R15 R1
       73 SETLIST                          R13 R14 2 [1]
       75 CALL                             R11 2 1
       76 GETUPVAL                         R12 3
       77 NEWCLOSURE                       R13 P6
       78 CAPTURE                          VAL R1
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          UPVAL U5
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R11
       89 NEWTABLE                         R14 0 3
       91 MOVE                             R15 R1
       92 MOVE                             R16 R3
       93 MOVE                             R17 R4
       94 SETLIST                          R14 R15 3 [1]
       96 CALL                             R12 2 1
       97 GETUPVAL                         R14 4
       98 GETTABLEKS                       R13 R14 K3 ["createElement"]
      100 GETUPVAL                         R14 6
      101 NEWTABLE                         R15 4 0
      103 GETIMPORT                        R16 K6 [UDim2.fromScale]
      105 LOADN                            R17 1
      106 LOADN                            R18 1
      107 CALL                             R16 2 1
      108 SETTABLEKS                       R16 R15 K7 ["Size"]
      110 LOADN                            R16 10
      111 SETTABLEKS                       R16 R15 K8 ["ZIndex"]
      113 GETUPVAL                         R18 4
      114 GETTABLEKS                       R17 R18 K9 ["Event"]
      116 GETTABLEKS                       R16 R17 K10 ["InputBegan"]
      118 NEWCLOSURE                       R17 P7
      119 CAPTURE                          VAL R10
      120 SETTABLE                         R17 R15 R16
      121 MOVE                             R16 R12
      122 CALL                             R13 3 -1
      123 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["DirectionalCurveEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R4 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R4 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       20 GETTABLEKS                       R4 R2 K10 ["useMemo"]
       22 GETTABLEKS                       R5 R2 K11 ["useState"]
       24 GETIMPORT                        R6 K6 [require]
       26 GETTABLEKS                       R8 R1 K7 ["Packages"]
       28 GETTABLEKS                       R7 R8 K12 ["Framework"]
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R8 R6 K13 ["UI"]
       33 GETTABLEKS                       R7 R8 K14 ["Pane"]
       35 GETIMPORT                        R8 K6 [require]
       37 GETTABLEKS                       R9 R0 K15 ["PolarControlPoint"]
       39 CALL                             R8 1 1
       40 GETIMPORT                        R9 K6 [require]
       42 GETTABLEKS                       R13 R1 K16 ["Src"]
       44 GETTABLEKS                       R12 R13 K17 ["Components"]
       46 GETTABLEKS                       R11 R12 K18 ["CurveRenderer"]
       48 GETTABLEKS                       R10 R11 K19 ["PlotRectUtil"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K6 [require]
       53 GETTABLEKS                       R12 R1 K16 ["Src"]
       55 GETTABLEKS                       R11 R12 K20 ["Types"]
       57 CALL                             R10 1 1
       58 DUPCLOSURE                       R11 K21 [PROTO_10]
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R7
       66 RETURN                           R11 1
