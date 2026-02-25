PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["CurveHook"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["makePolarCurve"]
        5 GETTABLEKS                       R3 R1 K2 ["keypoints"]
        7 LOADB                            R4 0
        8 GETTABLEKS                       R5 R0 K3 ["PlotAbsoluteSize"]
       10 CALL                             R2 3 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K1 ["makePolarCurve"]
       14 GETTABLEKS                       R4 R1 K2 ["keypoints"]
       16 LOADB                            R5 1
       17 GETTABLEKS                       R6 R0 K3 ["PlotAbsoluteSize"]
       19 CALL                             R3 3 1
       20 NEWTABLE                         R4 0 0
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R5 R6 K4 ["createElement"]
       25 GETUPVAL                         R6 2
       26 DUPTABLE                         R7 K7 [{"ControlPoints", "Tag"}]
       27 SETTABLEKS                       R2 R7 K5 ["ControlPoints"]
       29 LOADK                            R8 K8 ["CurveLinePath2D"]
       30 SETTABLEKS                       R8 R7 K6 ["Tag"]
       32 CALL                             R5 2 1
       33 SETTABLEKS                       R5 R4 K9 ["CurveLeft"]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R5 R6 K4 ["createElement"]
       38 GETUPVAL                         R6 2
       39 DUPTABLE                         R7 K7 [{"ControlPoints", "Tag"}]
       40 SETTABLEKS                       R3 R7 K5 ["ControlPoints"]
       42 LOADK                            R8 K8 ["CurveLinePath2D"]
       43 SETTABLEKS                       R8 R7 K6 ["Tag"]
       45 CALL                             R5 2 1
       46 SETTABLEKS                       R5 R4 K10 ["CurveRight"]
       48 GETTABLEKS                       R6 R1 K2 ["keypoints"]
       50 LENGTH                           R5 R6
       51 LOADN                            R6 0
       52 JUMPIFNOTLT                      R6 R5 ; [+78]
       54 GETTABLEKS                       R6 R1 K2 ["keypoints"]
       56 GETTABLEN                        R5 R6 1
       57 GETIMPORT                        R6 K13 [Vector2.new]
       59 GETTABLEKS                       R8 R5 K14 ["X"]
       61 MINUS                            R7 R8
       62 GETTABLEKS                       R8 R5 K15 ["Y"]
       64 CALL                             R6 2 1
       65 GETTABLEKS                       R8 R1 K2 ["keypoints"]
       67 GETTABLEKS                       R10 R1 K2 ["keypoints"]
       69 LENGTH                           R9 R10
       70 GETTABLE                         R7 R8 R9
       71 GETIMPORT                        R8 K13 [Vector2.new]
       73 GETTABLEKS                       R10 R7 K14 ["X"]
       75 SUBRK                            R9 R16 K10 ["CurveRight"]
       76 GETTABLEKS                       R10 R7 K15 ["Y"]
       78 CALL                             R8 2 1
       79 GETUPVAL                         R10 1
       80 GETTABLEKS                       R9 R10 K4 ["createElement"]
       82 GETUPVAL                         R10 2
       83 DUPTABLE                         R11 K7 [{"ControlPoints", "Tag"}]
       84 GETUPVAL                         R13 0
       85 GETTABLEKS                       R12 R13 K1 ["makePolarCurve"]
       87 NEWTABLE                         R13 0 2
       89 MOVE                             R14 R6
       90 MOVE                             R15 R5
       91 SETLIST                          R13 R14 2 [1]
       93 LOADB                            R14 1
       94 GETTABLEKS                       R15 R0 K3 ["PlotAbsoluteSize"]
       96 CALL                             R12 3 1
       97 SETTABLEKS                       R12 R11 K5 ["ControlPoints"]
       99 LOADK                            R12 K17 ["EndLinePath2D"]
      100 SETTABLEKS                       R12 R11 K6 ["Tag"]
      102 CALL                             R9 2 1
      103 SETTABLEKS                       R9 R4 K18 ["EndLine1"]
      105 GETUPVAL                         R10 1
      106 GETTABLEKS                       R9 R10 K4 ["createElement"]
      108 GETUPVAL                         R10 2
      109 DUPTABLE                         R11 K7 [{"ControlPoints", "Tag"}]
      110 GETUPVAL                         R13 0
      111 GETTABLEKS                       R12 R13 K1 ["makePolarCurve"]
      113 NEWTABLE                         R13 0 2
      115 MOVE                             R14 R7
      116 MOVE                             R15 R8
      117 SETLIST                          R13 R14 2 [1]
      119 LOADB                            R14 1
      120 GETTABLEKS                       R15 R0 K3 ["PlotAbsoluteSize"]
      122 CALL                             R12 3 1
      123 SETTABLEKS                       R12 R11 K5 ["ControlPoints"]
      125 LOADK                            R12 K17 ["EndLinePath2D"]
      126 SETTABLEKS                       R12 R11 K6 ["Tag"]
      128 CALL                             R9 2 1
      129 SETTABLEKS                       R9 R4 K19 ["EndLine2"]
      131 GETUPVAL                         R6 1
      132 GETTABLEKS                       R5 R6 K4 ["createElement"]
      134 GETUPVAL                         R6 3
      135 DUPTABLE                         R7 K22 [{"Size", "BackgroundTransparency"}]
      136 GETIMPORT                        R8 K25 [UDim2.fromScale]
      138 LOADN                            R9 1
      139 LOADN                            R10 1
      140 CALL                             R8 2 1
      141 SETTABLEKS                       R8 R7 K20 ["Size"]
      143 LOADN                            R8 1
      144 SETTABLEKS                       R8 R7 K21 ["BackgroundTransparency"]
      146 MOVE                             R8 R4
      147 CALL                             R5 3 -1
      148 RETURN                           R5 -1

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
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R5 R1 K7 ["Packages"]
       22 GETTABLEKS                       R4 R5 K9 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R5 R3 K10 ["UI"]
       27 GETTABLEKS                       R4 R5 K11 ["Pane"]
       29 GETIMPORT                        R5 K6 [require]
       31 GETTABLEKS                       R6 R0 K12 ["PlotRectUtil"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K6 [require]
       36 GETTABLEKS                       R7 R0 K13 ["Path2DWrapper"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R9 R1 K14 ["Src"]
       43 GETTABLEKS                       R8 R9 K15 ["Types"]
       45 CALL                             R7 1 1
       46 DUPCLOSURE                       R8 K16 [PROTO_0]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R4
       51 RETURN                           R8 1
