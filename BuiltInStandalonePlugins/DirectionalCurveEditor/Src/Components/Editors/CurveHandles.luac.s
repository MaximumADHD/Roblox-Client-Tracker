PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["select"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["update"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectedKeypoint"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["update"]
        8 MOVE                             R2 R0
        9 LOADB                            R3 1
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 1
       12 LOADB                            R2 0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["UserInputType"]
        7 GETIMPORT                        R2 K4 [Enum.UserInputType.MouseButton1]
        9 JUMPIFNOTEQ                      R1 R2 ; [+30]
       11 GETIMPORT                        R1 K7 [Vector2.new]
       13 GETTABLEKS                       R2 R0 K8 ["Position"]
       15 GETTABLEKS                       R2 R2 K9 ["X"]
       17 GETTABLEKS                       R3 R0 K8 ["Position"]
       19 GETTABLEKS                       R3 R3 K10 ["Y"]
       21 CALL                             R1 2 1
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K11 ["mouseCoordsToPlotPosition"]
       25 MOVE                             R3 R1
       26 GETUPVAL                         R4 2
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K0 ["current"]
       30 CALL                             R2 3 1
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K12 ["add"]
       34 MOVE                             R4 R2
       35 CALL                             R3 1 1
       36 JUMPIFNOT                        R3 ; [+3]
       37 GETUPVAL                         R4 4
       38 LOADB                            R5 1
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["remove"]
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K1 ["select"]
       10 LOADN                            R1 -1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["keypoints"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 LOADK                            R7 K1 ["Keypoint_"]
        9 MOVE                             R8 R4
       10 CONCAT                           R6 R7 R8
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K2 ["selectedIndex"]
       14 JUMPIFEQ                         R4 R8 ; [+2]
       16 LOADB                            R7 0 +1
       17 LOADB                            R7 1
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K3 ["createElement"]
       21 GETUPVAL                         R9 2
       22 DUPTABLE                         R10 K14 [{"Position", "PlotRect", "PlotRef", "IsSelected", "IsDragging", "OnHoverStart", "OnDragStart", "OnMoved", "OnDragEnd", "OnRightClick"}]
       23 SETTABLEKS                       R5 R10 K4 ["Position"]
       25 GETUPVAL                         R11 3
       26 SETTABLEKS                       R11 R10 K5 ["PlotRect"]
       28 GETUPVAL                         R11 4
       29 SETTABLEKS                       R11 R10 K6 ["PlotRef"]
       31 SETTABLEKS                       R7 R10 K7 ["IsSelected"]
       33 GETUPVAL                         R12 5
       34 AND                              R11 R12 R7
       35 SETTABLEKS                       R11 R10 K8 ["IsDragging"]
       37 NEWCLOSURE                       R11 P0
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R11 R10 K9 ["OnHoverStart"]
       42 GETUPVAL                         R11 7
       43 SETTABLEKS                       R11 R10 K10 ["OnDragStart"]
       45 GETUPVAL                         R11 8
       46 SETTABLEKS                       R11 R10 K11 ["OnMoved"]
       48 GETUPVAL                         R11 9
       49 SETTABLEKS                       R11 R10 K12 ["OnDragEnd"]
       51 GETUPVAL                         R11 10
       52 SETTABLEKS                       R11 R10 K13 ["OnRightClick"]
       54 CALL                             R8 2 1
       55 SETTABLE                         R8 R0 R6
       56 FORGLOOP                         R1 2 ; [-49]
       58 RETURN                           R0 1

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+4]
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["CurveHook"]
        2 GETTABLEKS                       R2 R0 K1 ["PlotRef"]
        4 GETTABLEKS                       R3 R1 K2 ["plotRect"]
        6 FASTCALL1                        ASSERT R3 ; [+3]
        7 MOVE                             R5 R3
        8 GETIMPORT                        R4 K4 [assert]
       10 CALL                             R4 1 0
       11 GETUPVAL                         R4 0
       12 LOADB                            R5 0
       13 CALL                             R4 1 2
       14 GETUPVAL                         R6 1
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R8 0 2
       20 MOVE                             R9 R1
       21 MOVE                             R10 R4
       22 SETLIST                          R8 R9 2 [1]
       24 CALL                             R6 2 1
       25 GETUPVAL                         R7 1
       26 NEWCLOSURE                       R8 P1
       27 CAPTURE                          VAL R5
       28 NEWTABLE                         R9 0 1
       30 MOVE                             R10 R5
       31 SETLIST                          R9 R10 1 [1]
       33 CALL                             R7 2 1
       34 GETUPVAL                         R8 1
       35 NEWCLOSURE                       R9 P2
       36 CAPTURE                          VAL R1
       37 NEWTABLE                         R10 0 3
       39 MOVE                             R11 R2
       40 MOVE                             R12 R3
       41 MOVE                             R13 R1
       42 SETLIST                          R10 R11 3 [1]
       44 CALL                             R8 2 1
       45 GETUPVAL                         R9 1
       46 NEWCLOSURE                       R10 P3
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R5
       49 NEWTABLE                         R11 0 2
       51 MOVE                             R12 R0
       52 MOVE                             R13 R1
       53 SETLIST                          R11 R12 2 [1]
       55 CALL                             R9 2 1
       56 GETUPVAL                         R10 1
       57 NEWCLOSURE                       R11 P4
       58 CAPTURE                          VAL R2
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R5
       63 NEWTABLE                         R12 0 3
       65 MOVE                             R13 R2
       66 MOVE                             R14 R3
       67 MOVE                             R15 R1
       68 SETLIST                          R12 R13 3 [1]
       70 CALL                             R10 2 1
       71 GETUPVAL                         R11 1
       72 NEWCLOSURE                       R12 P5
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R1
       75 NEWTABLE                         R13 0 2
       77 MOVE                             R14 R0
       78 MOVE                             R15 R1
       79 SETLIST                          R13 R14 2 [1]
       81 CALL                             R11 2 1
       82 GETUPVAL                         R12 3
       83 NEWCLOSURE                       R13 P6
       84 CAPTURE                          VAL R1
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          UPVAL U5
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R11
       95 NEWTABLE                         R14 0 3
       97 MOVE                             R15 R1
       98 MOVE                             R16 R3
       99 MOVE                             R17 R4
      100 SETLIST                          R14 R15 3 [1]
      102 CALL                             R12 2 1
      103 GETUPVAL                         R13 4
      104 GETTABLEKS                       R13 R13 K5 ["createElement"]
      106 GETUPVAL                         R14 6
      107 NEWTABLE                         R15 4 0
      109 GETIMPORT                        R16 K8 [UDim2.fromScale]
      111 LOADN                            R17 1
      112 LOADN                            R18 1
      113 CALL                             R16 2 1
      114 SETTABLEKS                       R16 R15 K9 ["Size"]
      116 LOADN                            R16 10
      117 SETTABLEKS                       R16 R15 K10 ["ZIndex"]
      119 GETUPVAL                         R16 4
      120 GETTABLEKS                       R16 R16 K11 ["Event"]
      122 GETTABLEKS                       R16 R16 K12 ["InputBegan"]
      124 NEWCLOSURE                       R17 P7
      125 CAPTURE                          VAL R10
      126 SETTABLE                         R17 R15 R16
      127 MOVE                             R16 R12
      128 CALL                             R13 3 -1
      129 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["DirectionalCurveEditor"]
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
       37 GETTABLEKS                       R9 R0 K15 ["ControlPoint"]
       39 CALL                             R8 1 1
       40 GETIMPORT                        R9 K6 [require]
       42 GETTABLEKS                       R10 R1 K16 ["Src"]
       44 GETTABLEKS                       R10 R10 K17 ["Components"]
       46 GETTABLEKS                       R10 R10 K18 ["CurveRenderer"]
       48 GETTABLEKS                       R10 R10 K19 ["PlotRectUtil"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K6 [require]
       53 GETTABLEKS                       R11 R1 K16 ["Src"]
       55 GETTABLEKS                       R11 R11 K20 ["Types"]
       57 CALL                             R10 1 1
       58 DUPCLOSURE                       R11 K21 [PROTO_9]
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R7
       66 RETURN                           R11 1
