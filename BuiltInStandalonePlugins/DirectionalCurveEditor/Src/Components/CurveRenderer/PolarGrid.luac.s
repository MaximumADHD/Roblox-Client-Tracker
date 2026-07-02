PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 LOADN                            R2 16
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 DIVK                             R6 R4 K1 [16]
        7 MULK                             R5 R6 K0 [360]
        8 LOADN                            R6 180
        9 JUMPIFNOTLT                      R6 R5 ; [+2]
       11 SUBK                             R5 R5 K0 [360]
       12 LOADK                            R7 K2 ["GridLine_V_"]
       13 MOVE                             R8 R4
       14 CONCAT                           R6 R7 R8
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K3 ["createElement"]
       18 GETUPVAL                         R8 1
       19 DUPTABLE                         R9 K8 [{["Position"], ["PlotAbsoluteSize"], ["Orientation"] = "Vertical"}]
       20 SETTABLEKS                       R5 R9 K4 ["Position"]
       22 SETTABLEKS                       R0 R9 K5 ["PlotAbsoluteSize"]
       24 CALL                             R7 2 1
       25 SETTABLE                         R7 R1 R6
       26 LOADK                            R7 K9 ["GridLabel_V_"]
       27 MOVE                             R8 R4
       28 CONCAT                           R6 R7 R8
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K3 ["createElement"]
       32 GETUPVAL                         R8 2
       33 DUPTABLE                         R9 K14 [{["Position"], ["OffsetDirection"], ["PlotAbsoluteSize"], ["Value"], ["FormatString"] = "%.0f°"}]
       34 GETIMPORT                        R10 K17 [Vector2.new]
       36 MOVE                             R11 R5
       37 LOADN                            R12 1
       38 CALL                             R10 2 1
       39 SETTABLEKS                       R10 R9 K4 ["Position"]
       41 GETIMPORT                        R10 K17 [Vector2.new]
       43 MULK                             R13 R5 K19 [3.14159265358979]
       44 DIVK                             R12 R13 K18 [180]
       45 FASTCALL1                        MATH_SIN R12 ; [+2]
       46 GETIMPORT                        R11 K22 [math.sin]
       48 CALL                             R11 1 1
       49 MULK                             R15 R5 K19 [3.14159265358979]
       50 DIVK                             R14 R15 K18 [180]
       51 FASTCALL1                        MATH_COS R14 ; [+2]
       52 GETIMPORT                        R13 K24 [math.cos]
       54 CALL                             R13 1 1
       55 MINUS                            R12 R13
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K10 ["OffsetDirection"]
       59 SETTABLEKS                       R0 R9 K5 ["PlotAbsoluteSize"]
       61 SETTABLEKS                       R5 R9 K11 ["Value"]
       63 CALL                             R7 2 1
       64 SETTABLE                         R7 R1 R6
       65 FORNLOOP                         R2
       66 LOADN                            R4 0
       67 LOADN                            R2 5
       68 LOADN                            R3 1
       69 FORNPREP                         R2
       70 DIVK                             R5 R4 K25 [5]
       71 LOADK                            R7 K26 ["GridLine_H_"]
       72 MOVE                             R8 R4
       73 CONCAT                           R6 R7 R8
       74 GETUPVAL                         R7 0
       75 GETTABLEKS                       R7 R7 K3 ["createElement"]
       77 GETUPVAL                         R8 1
       78 DUPTABLE                         R9 K28 [{["Position"], ["PlotAbsoluteSize"], ["Orientation"] = "Horizontal"}]
       79 SETTABLEKS                       R5 R9 K4 ["Position"]
       81 SETTABLEKS                       R0 R9 K5 ["PlotAbsoluteSize"]
       83 CALL                             R7 2 1
       84 SETTABLE                         R7 R1 R6
       85 LOADK                            R7 K29 ["GridLabel_H_"]
       86 MOVE                             R8 R4
       87 CONCAT                           R6 R7 R8
       88 GETUPVAL                         R7 0
       89 GETTABLEKS                       R7 R7 K3 ["createElement"]
       91 GETUPVAL                         R8 2
       92 DUPTABLE                         R9 K30 [{"Position", "OffsetDirection", "PlotAbsoluteSize", "Value", "FormatString"}]
       93 GETIMPORT                        R10 K17 [Vector2.new]
       95 LOADN                            R11 90
       96 MOVE                             R12 R5
       97 CALL                             R10 2 1
       98 SETTABLEKS                       R10 R9 K4 ["Position"]
      100 GETIMPORT                        R10 K17 [Vector2.new]
      102 LOADN                            R11 1
      103 LOADN                            R12 -1
      104 CALL                             R10 2 1
      105 SETTABLEKS                       R10 R9 K10 ["OffsetDirection"]
      107 SETTABLEKS                       R0 R9 K5 ["PlotAbsoluteSize"]
      109 SETTABLEKS                       R5 R9 K11 ["Value"]
      111 MODK                             R11 R5 K31 [1]
      112 LOADN                            R12 0
      113 JUMPIFNOTLT                      R12 R11 ; [+3]
      115 LOADK                            R10 K32 ["%.1f"]
      116 JUMP                             ; [+1]
      117 LOADK                            R10 K33 ["%.0f"]
      118 SETTABLEKS                       R10 R9 K12 ["FormatString"]
      120 CALL                             R7 2 1
      121 SETTABLE                         R7 R1 R6
      122 FORNLOOP                         R2
      123 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["PlotAbsoluteSize"]
        2 GETUPVAL                         R2 0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 NEWTABLE                         R4 0 1
        8 GETTABLEKS                       R5 R0 K0 ["PlotAbsoluteSize"]
       10 SETLIST                          R4 R5 1 [1]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K1 ["createElement"]
       16 GETUPVAL                         R4 3
       17 NEWTABLE                         R5 4 0
       19 GETIMPORT                        R6 K4 [UDim2.fromScale]
       21 LOADN                            R7 1
       22 LOADN                            R8 1
       23 CALL                             R6 2 1
       24 SETTABLEKS                       R6 R5 K5 ["Size"]
       26 LOADN                            R6 1
       27 SETTABLEKS                       R6 R5 K6 ["BackgroundTransparency"]
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K7 ["Tag"]
       32 LOADK                            R7 K8 ["Contrast"]
       33 SETTABLE                         R7 R5 R6
       34 MOVE                             R6 R2
       35 CALL                             R3 3 -1
       36 RETURN                           R3 -1

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
       18 GETTABLEKS                       R3 R2 K9 ["useMemo"]
       20 GETIMPORT                        R4 K6 [require]
       22 GETTABLEKS                       R5 R1 K7 ["Packages"]
       24 GETTABLEKS                       R5 R5 K10 ["Framework"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R4 K11 ["UI"]
       29 GETTABLEKS                       R5 R5 K12 ["Pane"]
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K13 ["PolarGridLabel"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K14 ["PolarGridLine"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R1 K15 ["Src"]
       45 GETTABLEKS                       R9 R9 K16 ["Types"]
       47 CALL                             R8 1 1
       48 DUPCLOSURE                       R9 K17 [PROTO_0]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R6
       52 DUPCLOSURE                       R10 K18 [PROTO_2]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R5
       57 RETURN                           R10 1
