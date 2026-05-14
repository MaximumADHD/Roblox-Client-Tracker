PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["Orientation"]
        4 JUMPIFNOTEQKS                    R2 K1 ["Horizontal"] ; [+45]
        6 NEWTABLE                         R2 0 5
        8 GETIMPORT                        R3 K4 [Vector2.new]
       10 LOADN                            R4 0
       11 GETTABLEKS                       R5 R0 K5 ["Position"]
       13 CALL                             R3 2 1
       14 GETIMPORT                        R4 K4 [Vector2.new]
       16 LOADN                            R5 90
       17 GETTABLEKS                       R6 R0 K5 ["Position"]
       19 CALL                             R4 2 1
       20 GETIMPORT                        R5 K4 [Vector2.new]
       22 LOADN                            R6 180
       23 GETTABLEKS                       R7 R0 K5 ["Position"]
       25 CALL                             R5 2 1
       26 GETIMPORT                        R6 K4 [Vector2.new]
       28 LOADN                            R7 14
       29 GETTABLEKS                       R8 R0 K5 ["Position"]
       31 CALL                             R6 2 1
       32 GETIMPORT                        R7 K4 [Vector2.new]
       34 LOADN                            R8 104
       35 GETTABLEKS                       R9 R0 K5 ["Position"]
       37 CALL                             R7 2 -1
       38 SETLIST                          R2 R3 -1 [1]
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R3 R3 K6 ["makePolarCurve"]
       43 MOVE                             R4 R2
       44 LOADB                            R5 1
       45 GETTABLEKS                       R6 R0 K7 ["PlotAbsoluteSize"]
       47 CALL                             R3 3 1
       48 MOVE                             R1 R3
       49 JUMP                             ; [+29]
       50 GETTABLEKS                       R2 R0 K0 ["Orientation"]
       52 JUMPIFNOTEQKS                    R2 K8 ["Vertical"] ; [+26]
       54 NEWTABLE                         R2 0 2
       56 GETIMPORT                        R3 K4 [Vector2.new]
       58 GETTABLEKS                       R4 R0 K5 ["Position"]
       60 LOADN                            R5 0
       61 CALL                             R3 2 1
       62 GETIMPORT                        R4 K4 [Vector2.new]
       64 GETTABLEKS                       R5 R0 K5 ["Position"]
       66 LOADN                            R6 1
       67 CALL                             R4 2 -1
       68 SETLIST                          R2 R3 -1 [1]
       70 GETUPVAL                         R3 0
       71 GETTABLEKS                       R3 R3 K6 ["makePolarCurve"]
       73 MOVE                             R4 R2
       74 LOADB                            R5 1
       75 GETTABLEKS                       R6 R0 K7 ["PlotAbsoluteSize"]
       77 CALL                             R3 3 1
       78 MOVE                             R1 R3
       79 GETUPVAL                         R2 1
       80 GETTABLEKS                       R2 R2 K9 ["createElement"]
       82 GETUPVAL                         R3 2
       83 DUPTABLE                         R4 K11 [{"Size"}]
       84 GETIMPORT                        R5 K14 [UDim2.fromScale]
       86 LOADN                            R6 1
       87 LOADN                            R7 1
       88 CALL                             R5 2 1
       89 SETTABLEKS                       R5 R4 K10 ["Size"]
       91 DUPTABLE                         R5 K16 [{"Path"}]
       92 GETUPVAL                         R6 1
       93 GETTABLEKS                       R6 R6 K9 ["createElement"]
       95 GETUPVAL                         R7 3
       96 DUPTABLE                         R8 K19 [{"ControlPoints", "Tag"}]
       97 SETTABLEKS                       R1 R8 K17 ["ControlPoints"]
       99 LOADK                            R9 K20 ["GridLinePath2D"]
      100 SETTABLEKS                       R9 R8 K18 ["Tag"]
      102 CALL                             R6 2 1
      103 SETTABLEKS                       R6 R5 K15 ["Path"]
      105 CALL                             R2 3 -1
      106 RETURN                           R2 -1

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
       31 GETTABLEKS                       R6 R0 K12 ["Path2DWrapper"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K6 [require]
       36 GETTABLEKS                       R7 R0 K13 ["PlotRectUtil"]
       38 CALL                             R6 1 1
       39 DUPCLOSURE                       R7 K14 [PROTO_0]
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R5
       44 RETURN                           R7 1
