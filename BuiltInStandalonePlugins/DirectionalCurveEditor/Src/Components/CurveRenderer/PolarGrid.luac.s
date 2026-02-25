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
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R7 R8 K3 ["createElement"]
       18 GETUPVAL                         R8 1
       19 DUPTABLE                         R9 K7 [{"Position", "PlotAbsoluteSize", "Orientation"}]
       20 SETTABLEKS                       R5 R9 K4 ["Position"]
       22 SETTABLEKS                       R0 R9 K5 ["PlotAbsoluteSize"]
       24 LOADK                            R10 K8 ["Vertical"]
       25 SETTABLEKS                       R10 R9 K6 ["Orientation"]
       27 CALL                             R7 2 1
       28 SETTABLE                         R7 R1 R6
       29 LOADK                            R7 K9 ["GridLabel_V_"]
       30 MOVE                             R8 R4
       31 CONCAT                           R6 R7 R8
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K3 ["createElement"]
       35 GETUPVAL                         R8 2
       36 DUPTABLE                         R9 K13 [{"Position", "OffsetDirection", "PlotAbsoluteSize", "Value", "FormatString"}]
       37 GETIMPORT                        R10 K16 [Vector2.new]
       39 MOVE                             R11 R5
       40 LOADN                            R12 1
       41 CALL                             R10 2 1
       42 SETTABLEKS                       R10 R9 K4 ["Position"]
       44 GETIMPORT                        R10 K16 [Vector2.new]
       46 MULK                             R13 R5 K18 [3.14159265358979]
       47 DIVK                             R12 R13 K17 [180]
       48 FASTCALL1                        MATH_SIN R12 ; [+2]
       49 GETIMPORT                        R11 K21 [math.sin]
       51 CALL                             R11 1 1
       52 MULK                             R15 R5 K18 [3.14159265358979]
       53 DIVK                             R14 R15 K17 [180]
       54 FASTCALL1                        MATH_COS R14 ; [+2]
       55 GETIMPORT                        R13 K23 [math.cos]
       57 CALL                             R13 1 1
       58 MINUS                            R12 R13
       59 CALL                             R10 2 1
       60 SETTABLEKS                       R10 R9 K10 ["OffsetDirection"]
       62 SETTABLEKS                       R0 R9 K5 ["PlotAbsoluteSize"]
       64 SETTABLEKS                       R5 R9 K11 ["Value"]
       66 LOADK                            R10 K24 ["%.0f°"]
       67 SETTABLEKS                       R10 R9 K12 ["FormatString"]
       69 CALL                             R7 2 1
       70 SETTABLE                         R7 R1 R6
       71 FORNLOOP                         R2
       72 LOADN                            R4 0
       73 LOADN                            R2 5
       74 LOADN                            R3 1
       75 FORNPREP                         R2
       76 DIVK                             R5 R4 K25 [5]
       77 LOADK                            R7 K26 ["GridLine_H_"]
       78 MOVE                             R8 R4
       79 CONCAT                           R6 R7 R8
       80 GETUPVAL                         R8 0
       81 GETTABLEKS                       R7 R8 K3 ["createElement"]
       83 GETUPVAL                         R8 1
       84 DUPTABLE                         R9 K7 [{"Position", "PlotAbsoluteSize", "Orientation"}]
       85 SETTABLEKS                       R5 R9 K4 ["Position"]
       87 SETTABLEKS                       R0 R9 K5 ["PlotAbsoluteSize"]
       89 LOADK                            R10 K27 ["Horizontal"]
       90 SETTABLEKS                       R10 R9 K6 ["Orientation"]
       92 CALL                             R7 2 1
       93 SETTABLE                         R7 R1 R6
       94 LOADK                            R7 K28 ["GridLabel_H_"]
       95 MOVE                             R8 R4
       96 CONCAT                           R6 R7 R8
       97 GETUPVAL                         R8 0
       98 GETTABLEKS                       R7 R8 K3 ["createElement"]
      100 GETUPVAL                         R8 2
      101 DUPTABLE                         R9 K13 [{"Position", "OffsetDirection", "PlotAbsoluteSize", "Value", "FormatString"}]
      102 GETIMPORT                        R10 K16 [Vector2.new]
      104 LOADN                            R11 90
      105 MOVE                             R12 R5
      106 CALL                             R10 2 1
      107 SETTABLEKS                       R10 R9 K4 ["Position"]
      109 GETIMPORT                        R10 K16 [Vector2.new]
      111 LOADN                            R11 1
      112 LOADN                            R12 255
      113 CALL                             R10 2 1
      114 SETTABLEKS                       R10 R9 K10 ["OffsetDirection"]
      116 SETTABLEKS                       R0 R9 K5 ["PlotAbsoluteSize"]
      118 SETTABLEKS                       R5 R9 K11 ["Value"]
      120 MODK                             R11 R5 K29 [1]
      121 LOADN                            R12 0
      122 JUMPIFNOTLT                      R12 R11 ; [+3]
      124 LOADK                            R10 K30 ["%.1f"]
      125 JUMP                             ; [+1]
      126 LOADK                            R10 K31 ["%.0f"]
      127 SETTABLEKS                       R10 R9 K12 ["FormatString"]
      129 CALL                             R7 2 1
      130 SETTABLE                         R7 R1 R6
      131 FORNLOOP                         R2
      132 RETURN                           R1 1

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
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K1 ["createElement"]
       16 GETUPVAL                         R4 3
       17 NEWTABLE                         R5 4 0
       19 GETIMPORT                        R6 K4 [UDim2.fromScale]
       21 LOADN                            R7 1
       22 LOADN                            R8 1
       23 CALL                             R6 2 1
       24 SETTABLEKS                       R6 R5 K5 ["Size"]
       26 LOADN                            R6 1
       27 SETTABLEKS                       R6 R5 K6 ["BackgroundTransparency"]
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R6 R7 K7 ["Tag"]
       32 LOADK                            R7 K8 ["Contrast"]
       33 SETTABLE                         R7 R5 R6
       34 MOVE                             R6 R2
       35 CALL                             R3 3 -1
       36 RETURN                           R3 -1

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
       18 GETTABLEKS                       R3 R2 K9 ["useMemo"]
       20 GETIMPORT                        R4 K6 [require]
       22 GETTABLEKS                       R6 R1 K7 ["Packages"]
       24 GETTABLEKS                       R5 R6 K10 ["Framework"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R6 R4 K11 ["UI"]
       29 GETTABLEKS                       R5 R6 K12 ["Pane"]
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K13 ["PolarGridLabel"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K14 ["PolarGridLine"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R10 R1 K15 ["Src"]
       45 GETTABLEKS                       R9 R10 K16 ["Types"]
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
