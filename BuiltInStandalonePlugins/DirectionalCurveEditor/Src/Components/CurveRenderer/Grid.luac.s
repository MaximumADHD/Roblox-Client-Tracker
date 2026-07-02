PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R5 R0 K1 ["Width"]
        4 FASTCALL1                        MATH_LOG10 R5 ; [+2]
        5 GETIMPORT                        R4 K4 [math.log10]
        7 CALL                             R4 1 1
        8 SUBK                             R3 R4 K0 [0.301029995663981]
        9 LOADN                            R5 10
       10 FASTCALL1                        MATH_FLOOR R3 ; [+3]
       11 MOVE                             R7 R3
       12 GETIMPORT                        R6 K6 [math.floor]
       14 CALL                             R6 1 1
       15 POW                              R4 R5 R6
       16 DIVK                             R5 R4 K7 [10]
       17 GETTABLEKS                       R7 R0 K8 ["Min"]
       19 GETTABLEKS                       R7 R7 K9 ["X"]
       21 GETTABLEKS                       R9 R0 K8 ["Min"]
       23 GETTABLEKS                       R9 R9 K9 ["X"]
       25 MOD                              R8 R9 R4
       26 SUB                              R6 R7 R8
       27 GETTABLEKS                       R8 R0 K10 ["Max"]
       29 GETTABLEKS                       R8 R8 K9 ["X"]
       31 GETTABLEKS                       R10 R0 K10 ["Max"]
       33 GETTABLEKS                       R10 R10 K9 ["X"]
       35 MOD                              R9 R10 R4
       36 SUB                              R7 R8 R9
       37 MOVE                             R10 R6
       38 MOVE                             R8 R7
       39 MOVE                             R9 R4
       40 FORNPREP                         R8
       41 LOADK                            R12 K11 ["GridLine_V_"]
       42 MOVE                             R13 R10
       43 CONCAT                           R11 R12 R13
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R12 R12 K12 ["createElement"]
       47 GETUPVAL                         R13 1
       48 DUPTABLE                         R14 K20 [{["Position"], ["PlotRect"], ["PlotAbsoluteSize"], ["PlotFramePadding"] = 0, ["Orientation"] = "Vertical"}]
       49 SETTABLEKS                       R10 R14 K13 ["Position"]
       51 SETTABLEKS                       R0 R14 K14 ["PlotRect"]
       53 SETTABLEKS                       R1 R14 K15 ["PlotAbsoluteSize"]
       55 CALL                             R12 2 1
       56 SETTABLE                         R12 R2 R11
       57 LOADK                            R12 K21 ["GridLabel_V_"]
       58 MOVE                             R13 R10
       59 CONCAT                           R11 R12 R13
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R12 R12 K12 ["createElement"]
       63 GETUPVAL                         R13 2
       64 DUPTABLE                         R14 K25 [{"Position", "OffsetDirection", "PlotRect", "PlotAbsoluteSize", "Value", "FormatString"}]
       65 GETIMPORT                        R15 K28 [Vector2.new]
       67 MOVE                             R16 R10
       68 GETTABLEKS                       R17 R0 K8 ["Min"]
       70 GETTABLEKS                       R17 R17 K29 ["Y"]
       72 CALL                             R15 2 1
       73 SETTABLEKS                       R15 R14 K13 ["Position"]
       75 GETIMPORT                        R15 K28 [Vector2.new]
       77 LOADN                            R16 0
       78 LOADN                            R17 1
       79 CALL                             R15 2 1
       80 SETTABLEKS                       R15 R14 K22 ["OffsetDirection"]
       82 SETTABLEKS                       R0 R14 K14 ["PlotRect"]
       84 SETTABLEKS                       R1 R14 K15 ["PlotAbsoluteSize"]
       86 SETTABLEKS                       R10 R14 K23 ["Value"]
       88 MODK                             R16 R10 K30 [1]
       89 LOADN                            R17 0
       90 JUMPIFNOTLT                      R17 R16 ; [+3]
       92 LOADK                            R15 K31 ["%.1f"]
       93 JUMP                             ; [+1]
       94 LOADK                            R15 K32 ["%.0f"]
       95 SETTABLEKS                       R15 R14 K24 ["FormatString"]
       97 CALL                             R12 2 1
       98 SETTABLE                         R12 R2 R11
       99 FASTCALL1                        MATH_FLOOR R3 ; [+3]
      100 MOVE                             R14 R3
      101 GETIMPORT                        R13 K6 [math.floor]
      103 CALL                             R13 1 1
      104 SUB                              R12 R3 R13
      105 DIVK                             R11 R12 K33 [0.397940008672038]
      106 SUBRK                            R13 K30 [1] R11
      107 LOADN                            R14 0
      108 LOADN                            R15 1
      109 FASTCALL                         MATH_CLAMP ; [+2]
      110 GETIMPORT                        R12 K35 [math.clamp]
      112 CALL                             R12 3 1
      113 MOVE                             R11 R12
      114 LOADN                            R12 0
      115 JUMPIFNOTLT                      R12 R11 ; [+26]
      117 LOADN                            R14 1
      118 LOADN                            R12 9
      119 LOADN                            R13 1
      120 FORNPREP                         R12
      121 MUL                              R16 R5 R14
      122 ADD                              R15 R10 R16
      123 LOADK                            R17 K36 ["GridLine_Inner_V_"]
      124 MOVE                             R18 R15
      125 CONCAT                           R16 R17 R18
      126 GETUPVAL                         R17 0
      127 GETTABLEKS                       R17 R17 K12 ["createElement"]
      129 GETUPVAL                         R18 1
      130 DUPTABLE                         R19 K38 [{["Position"], ["PlotRect"], ["PlotAbsoluteSize"], ["PlotFramePadding"] = 0, ["Orientation"] = "Vertical", ["InnerAlpha"]}]
      131 SETTABLEKS                       R15 R19 K13 ["Position"]
      133 SETTABLEKS                       R0 R19 K14 ["PlotRect"]
      135 SETTABLEKS                       R1 R19 K15 ["PlotAbsoluteSize"]
      137 SETTABLEKS                       R11 R19 K37 ["InnerAlpha"]
      139 CALL                             R17 2 1
      140 SETTABLE                         R17 R2 R16
      141 FORNLOOP                         R12
      142 FORNLOOP                         R8
      143 GETTABLEKS                       R10 R0 K8 ["Min"]
      145 GETTABLEKS                       R10 R10 K29 ["Y"]
      147 GETTABLEKS                       R8 R0 K10 ["Max"]
      149 GETTABLEKS                       R8 R8 K29 ["Y"]
      151 GETTABLEKS                       R11 R0 K40 ["Height"]
      153 DIVK                             R9 R11 K39 [5]
      154 FORNPREP                         R8
      155 LOADK                            R12 K41 ["GridLine_H_"]
      156 MOVE                             R13 R10
      157 CONCAT                           R11 R12 R13
      158 GETUPVAL                         R12 0
      159 GETTABLEKS                       R12 R12 K12 ["createElement"]
      161 GETUPVAL                         R13 1
      162 DUPTABLE                         R14 K43 [{["Position"], ["PlotRect"], ["PlotAbsoluteSize"], ["PlotFramePadding"] = 0, ["Orientation"] = "Horizontal"}]
      163 SETTABLEKS                       R10 R14 K13 ["Position"]
      165 SETTABLEKS                       R0 R14 K14 ["PlotRect"]
      167 SETTABLEKS                       R1 R14 K15 ["PlotAbsoluteSize"]
      169 CALL                             R12 2 1
      170 SETTABLE                         R12 R2 R11
      171 LOADK                            R12 K44 ["GridLabel_H_"]
      172 MOVE                             R13 R10
      173 CONCAT                           R11 R12 R13
      174 GETUPVAL                         R12 0
      175 GETTABLEKS                       R12 R12 K12 ["createElement"]
      177 GETUPVAL                         R13 2
      178 DUPTABLE                         R14 K25 [{"Position", "OffsetDirection", "PlotRect", "PlotAbsoluteSize", "Value", "FormatString"}]
      179 GETIMPORT                        R15 K28 [Vector2.new]
      181 GETTABLEKS                       R16 R0 K8 ["Min"]
      183 GETTABLEKS                       R16 R16 K9 ["X"]
      185 MOVE                             R17 R10
      186 CALL                             R15 2 1
      187 SETTABLEKS                       R15 R14 K13 ["Position"]
      189 GETIMPORT                        R15 K28 [Vector2.new]
      191 LOADN                            R16 -1
      192 LOADN                            R17 0
      193 CALL                             R15 2 1
      194 SETTABLEKS                       R15 R14 K22 ["OffsetDirection"]
      196 SETTABLEKS                       R0 R14 K14 ["PlotRect"]
      198 SETTABLEKS                       R1 R14 K15 ["PlotAbsoluteSize"]
      200 SETTABLEKS                       R10 R14 K23 ["Value"]
      202 MODK                             R16 R10 K30 [1]
      203 LOADN                            R17 0
      204 JUMPIFNOTLT                      R17 R16 ; [+3]
      206 LOADK                            R15 K31 ["%.1f"]
      207 JUMP                             ; [+1]
      208 LOADK                            R15 K32 ["%.0f"]
      209 SETTABLEKS                       R15 R14 K24 ["FormatString"]
      211 CALL                             R12 2 1
      212 SETTABLE                         R12 R2 R11
      213 FORNLOOP                         R8
      214 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PropertyType"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["DISTANCE"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+44]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K2 ["Max"]
       11 GETTABLEKS                       R1 R1 K3 ["X"]
       13 LOADK                            R4 K4 [1.15]
       14 POW                              R3 R4 R0
       15 MUL                              R2 R1 R3
       16 LOADN                            R5 1
       17 LOADN                            R6 180
       18 FASTCALL3                        MATH_CLAMP R2 R5 R6
       20 MOVE                             R4 R2
       21 GETIMPORT                        R3 K7 [math.clamp]
       23 CALL                             R3 3 1
       24 MOVE                             R2 R3
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K8 ["setPlotRect"]
       28 FASTCALL1                        ASSERT R4 ; [+2]
       29 GETIMPORT                        R3 K10 [assert]
       31 CALL                             R3 1 0
       32 GETUPVAL                         R3 3
       33 GETTABLEKS                       R3 R3 K8 ["setPlotRect"]
       35 GETIMPORT                        R4 K13 [Rect.new]
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R5 R5 K14 ["Min"]
       40 GETIMPORT                        R6 K16 [Vector2.new]
       42 MOVE                             R7 R2
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R8 R8 K2 ["Max"]
       46 GETTABLEKS                       R8 R8 K17 ["Y"]
       48 CALL                             R6 2 -1
       49 CALL                             R4 -1 -1
       50 CALL                             R3 -1 0
       51 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseWheel]
        4 JUMPIFNOTEQ                      R2 R3 ; [+7]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R1 K4 ["Position"]
        9 GETTABLEKS                       R3 R3 K5 ["Z"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["PlotAbsoluteSize"]
        2 GETTABLEKS                       R2 R0 K1 ["CurveHook"]
        4 GETTABLEKS                       R3 R2 K2 ["plotRect"]
        6 FASTCALL1                        ASSERT R3 ; [+3]
        7 MOVE                             R5 R3
        8 GETIMPORT                        R4 K4 [assert]
       10 CALL                             R4 1 0
       11 GETUPVAL                         R4 0
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R2
       17 NEWTABLE                         R6 0 1
       19 MOVE                             R7 R3
       20 SETLIST                          R6 R7 1 [1]
       22 CALL                             R4 2 1
       23 GETUPVAL                         R5 2
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R1
       28 NEWTABLE                         R7 0 2
       30 GETTABLEKS                       R8 R0 K0 ["PlotAbsoluteSize"]
       32 MOVE                             R9 R3
       33 SETLIST                          R7 R8 2 [1]
       35 CALL                             R5 2 1
       36 GETUPVAL                         R6 4
       37 GETTABLEKS                       R6 R6 K5 ["createElement"]
       39 GETUPVAL                         R7 5
       40 NEWTABLE                         R8 4 0
       42 GETIMPORT                        R9 K8 [UDim2.fromScale]
       44 LOADN                            R10 1
       45 LOADN                            R11 1
       46 CALL                             R9 2 1
       47 SETTABLEKS                       R9 R8 K9 ["Size"]
       49 LOADN                            R9 1
       50 SETTABLEKS                       R9 R8 K10 ["BackgroundTransparency"]
       52 GETUPVAL                         R9 4
       53 GETTABLEKS                       R9 R9 K11 ["Tag"]
       55 LOADK                            R10 K12 ["Contrast"]
       56 SETTABLE                         R10 R8 R9
       57 GETUPVAL                         R9 4
       58 GETTABLEKS                       R9 R9 K13 ["Event"]
       60 GETTABLEKS                       R9 R9 K14 ["InputChanged"]
       62 NEWCLOSURE                       R10 P2
       63 CAPTURE                          VAL R4
       64 SETTABLE                         R10 R8 R9
       65 MOVE                             R9 R5
       66 CALL                             R6 3 -1
       67 RETURN                           R6 -1

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
       22 GETIMPORT                        R5 K6 [require]
       24 GETTABLEKS                       R6 R1 K7 ["Packages"]
       26 GETTABLEKS                       R6 R6 K11 ["Framework"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R5 K12 ["UI"]
       31 GETTABLEKS                       R6 R6 K13 ["Pane"]
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R0 K14 ["GridLabel"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K6 [require]
       40 GETTABLEKS                       R9 R0 K15 ["GridLine"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R1 K16 ["Src"]
       47 GETTABLEKS                       R10 R10 K17 ["Types"]
       49 CALL                             R9 1 1
       50 DUPCLOSURE                       R10 K18 [PROTO_0]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R7
       54 DUPCLOSURE                       R11 K19 [PROTO_4]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R6
       61 RETURN                           R11 1
