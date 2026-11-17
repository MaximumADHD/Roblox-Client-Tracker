PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["CurveHook"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["makePolarCurve"]
        5 GETTABLEKS                       R3 R1 K2 ["keypoints"]
        7 LOADB                            R4 0
        8 GETTABLEKS                       R5 R0 K3 ["PlotAbsoluteSize"]
       10 CALL                             R2 3 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K1 ["makePolarCurve"]
       14 GETTABLEKS                       R4 R1 K2 ["keypoints"]
       16 LOADB                            R5 1
       17 GETTABLEKS                       R6 R0 K3 ["PlotAbsoluteSize"]
       19 CALL                             R3 3 1
       20 NEWTABLE                         R4 0 0
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K4 ["createElement"]
       25 GETUPVAL                         R6 2
       26 DUPTABLE                         R7 K8 [{["ControlPoints"], ["Tag"] = "CurveLinePath2D"}]
       27 SETTABLEKS                       R2 R7 K5 ["ControlPoints"]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K9 ["CurveLeft"]
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K4 ["createElement"]
       35 GETUPVAL                         R6 2
       36 DUPTABLE                         R7 K8 [{["ControlPoints"], ["Tag"] = "CurveLinePath2D"}]
       37 SETTABLEKS                       R3 R7 K5 ["ControlPoints"]
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K10 ["CurveRight"]
       42 GETTABLEKS                       R6 R1 K2 ["keypoints"]
       44 LENGTH                           R5 R6
       45 LOADN                            R6 0
       46 JUMPIFNOTLT                      R6 R5 ; [+72]
       48 GETTABLEKS                       R6 R1 K2 ["keypoints"]
       50 GETTABLEN                        R5 R6 1
       51 GETIMPORT                        R6 K13 [Vector2.new]
       53 GETTABLEKS                       R8 R5 K14 ["X"]
       55 MINUS                            R7 R8
       56 GETTABLEKS                       R8 R5 K15 ["Y"]
       58 CALL                             R6 2 1
       59 GETTABLEKS                       R8 R1 K2 ["keypoints"]
       61 GETTABLEKS                       R10 R1 K2 ["keypoints"]
       63 LENGTH                           R9 R10
       64 GETTABLE                         R7 R8 R9
       65 GETIMPORT                        R8 K13 [Vector2.new]
       67 GETTABLEKS                       R10 R7 K14 ["X"]
       69 SUBRK                            R9 K16 [360] R10
       70 GETTABLEKS                       R10 R7 K15 ["Y"]
       72 CALL                             R8 2 1
       73 GETUPVAL                         R9 1
       74 GETTABLEKS                       R9 R9 K4 ["createElement"]
       76 GETUPVAL                         R10 2
       77 DUPTABLE                         R11 K18 [{["ControlPoints"], ["Tag"] = "EndLinePath2D"}]
       78 GETUPVAL                         R12 0
       79 GETTABLEKS                       R12 R12 K1 ["makePolarCurve"]
       81 NEWTABLE                         R13 0 2
       83 MOVE                             R14 R6
       84 MOVE                             R15 R5
       85 SETLIST                          R13 R14 2 [1]
       87 LOADB                            R14 1
       88 GETTABLEKS                       R15 R0 K3 ["PlotAbsoluteSize"]
       90 CALL                             R12 3 1
       91 SETTABLEKS                       R12 R11 K5 ["ControlPoints"]
       93 CALL                             R9 2 1
       94 SETTABLEKS                       R9 R4 K19 ["EndLine1"]
       96 GETUPVAL                         R9 1
       97 GETTABLEKS                       R9 R9 K4 ["createElement"]
       99 GETUPVAL                         R10 2
      100 DUPTABLE                         R11 K18 [{["ControlPoints"], ["Tag"] = "EndLinePath2D"}]
      101 GETUPVAL                         R12 0
      102 GETTABLEKS                       R12 R12 K1 ["makePolarCurve"]
      104 NEWTABLE                         R13 0 2
      106 MOVE                             R14 R7
      107 MOVE                             R15 R8
      108 SETLIST                          R13 R14 2 [1]
      110 LOADB                            R14 1
      111 GETTABLEKS                       R15 R0 K3 ["PlotAbsoluteSize"]
      113 CALL                             R12 3 1
      114 SETTABLEKS                       R12 R11 K5 ["ControlPoints"]
      116 CALL                             R9 2 1
      117 SETTABLEKS                       R9 R4 K20 ["EndLine2"]
      119 GETUPVAL                         R5 1
      120 GETTABLEKS                       R5 R5 K4 ["createElement"]
      122 GETUPVAL                         R6 3
      123 DUPTABLE                         R7 K24 [{["Size"], ["BackgroundTransparency"] = 1}]
      124 GETIMPORT                        R8 K27 [UDim2.fromScale]
      126 LOADN                            R9 1
      127 LOADN                            R10 1
      128 CALL                             R8 2 1
      129 SETTABLEKS                       R8 R7 K21 ["Size"]
      131 MOVE                             R8 R4
      132 CALL                             R5 3 -1
      133 RETURN                           R5 -1

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
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Packages"]
       22 GETTABLEKS                       R4 R4 K9 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K10 ["UI"]
       27 GETTABLEKS                       R4 R4 K11 ["Pane"]
       29 GETIMPORT                        R5 K6 [require]
       31 GETTABLEKS                       R6 R0 K12 ["PlotRectUtil"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K6 [require]
       36 GETTABLEKS                       R7 R0 K13 ["Path2DWrapper"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R1 K14 ["Src"]
       43 GETTABLEKS                       R8 R8 K15 ["Types"]
       45 CALL                             R7 1 1
       46 DUPCLOSURE                       R8 K16 [PROTO_0]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R4
       51 RETURN                           R8 1
