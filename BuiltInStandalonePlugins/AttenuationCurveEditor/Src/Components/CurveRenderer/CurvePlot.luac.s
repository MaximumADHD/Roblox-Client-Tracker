PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R5 R0 K1 ["Width"]
        4 FASTCALL1                        MATH_LOG10 R5 ; [+2]
        5 GETIMPORT                        R4 K4 [math.log10]
        7 CALL                             R4 1 1
        8 SUBK                             R3 R4 K0 [0.176091259055681]
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
       37 DIVK                             R8 R4 K11 [2]
       38 ADD                              R7 R7 R8
       39 MOVE                             R10 R6
       40 MOVE                             R8 R7
       41 MOVE                             R9 R4
       42 FORNPREP                         R8
       43 LOADK                            R12 K12 ["GridLine_V_"]
       44 MOVE                             R13 R10
       45 CONCAT                           R11 R12 R13
       46 GETUPVAL                         R12 0
       47 GETTABLEKS                       R12 R12 K13 ["createElement"]
       49 GETUPVAL                         R13 1
       50 DUPTABLE                         R14 K21 [{["Position"], ["PlotRect"], ["PlotAbsoluteSize"], ["PlotFramePadding"] = 35, ["Orientation"] = "Vertical"}]
       51 SETTABLEKS                       R10 R14 K14 ["Position"]
       53 SETTABLEKS                       R0 R14 K15 ["PlotRect"]
       55 SETTABLEKS                       R1 R14 K16 ["PlotAbsoluteSize"]
       57 CALL                             R12 2 1
       58 SETTABLE                         R12 R2 R11
       59 FASTCALL1                        MATH_FLOOR R3 ; [+3]
       60 MOVE                             R15 R3
       61 GETIMPORT                        R14 K6 [math.floor]
       63 CALL                             R14 1 1
       64 SUB                              R13 R3 R14
       65 DIVK                             R12 R13 K22 [0.522878745280338]
       66 SUBRK                            R14 K23 [1] R12
       67 LOADN                            R15 0
       68 LOADN                            R16 1
       69 FASTCALL                         MATH_CLAMP ; [+2]
       70 GETIMPORT                        R13 K25 [math.clamp]
       72 CALL                             R13 3 1
       73 MOVE                             R12 R13
       74 LOADN                            R13 0
       75 JUMPIFNOTLT                      R13 R12 ; [+26]
       77 LOADN                            R15 1
       78 LOADN                            R13 9
       79 LOADN                            R14 1
       80 FORNPREP                         R13
       81 MUL                              R17 R5 R15
       82 ADD                              R16 R10 R17
       83 LOADK                            R18 K26 ["GridLine_Inner_V_"]
       84 MOVE                             R19 R16
       85 CONCAT                           R17 R18 R19
       86 GETUPVAL                         R18 0
       87 GETTABLEKS                       R18 R18 K13 ["createElement"]
       89 GETUPVAL                         R19 1
       90 DUPTABLE                         R20 K28 [{["Position"], ["PlotRect"], ["PlotAbsoluteSize"], ["PlotFramePadding"] = 35, ["Orientation"] = "Vertical", ["InnerAlpha"]}]
       91 SETTABLEKS                       R16 R20 K14 ["Position"]
       93 SETTABLEKS                       R0 R20 K15 ["PlotRect"]
       95 SETTABLEKS                       R1 R20 K16 ["PlotAbsoluteSize"]
       97 SETTABLEKS                       R12 R20 K27 ["InnerAlpha"]
       99 CALL                             R18 2 1
      100 SETTABLE                         R18 R2 R17
      101 FORNLOOP                         R13
      102 FORNLOOP                         R8
      103 GETTABLEKS                       R10 R0 K8 ["Min"]
      105 GETTABLEKS                       R10 R10 K29 ["Y"]
      107 GETTABLEKS                       R8 R0 K10 ["Max"]
      109 GETTABLEKS                       R8 R8 K29 ["Y"]
      111 GETTABLEKS                       R11 R0 K31 ["Height"]
      113 DIVK                             R9 R11 K30 [5]
      114 FORNPREP                         R8
      115 LOADK                            R12 K32 ["GridLine_H_"]
      116 MOVE                             R13 R10
      117 CONCAT                           R11 R12 R13
      118 GETUPVAL                         R12 0
      119 GETTABLEKS                       R12 R12 K13 ["createElement"]
      121 GETUPVAL                         R13 1
      122 DUPTABLE                         R14 K34 [{["Position"], ["PlotRect"], ["PlotAbsoluteSize"], ["PlotFramePadding"] = 35, ["Orientation"] = "Horizontal"}]
      123 SETTABLEKS                       R10 R14 K14 ["Position"]
      125 SETTABLEKS                       R0 R14 K15 ["PlotRect"]
      127 SETTABLEKS                       R1 R14 K16 ["PlotAbsoluteSize"]
      129 CALL                             R12 2 1
      130 SETTABLE                         R12 R2 R11
      131 FORNLOOP                         R8
      132 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R4 0
        3 GETTABLEKS                       R5 R0 K0 ["keypoints"]
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 GETUPVAL                         R10 0
        9 GETTABLEKS                       R10 R10 K1 ["plotToAbsolutePosition"]
       11 MOVE                             R11 R9
       12 MOVE                             R12 R1
       13 MOVE                             R13 R2
       14 CALL                             R10 3 1
       15 MOVE                             R12 R3
       16 GETIMPORT                        R13 K4 [Path2DControlPoint.new]
       18 GETIMPORT                        R14 K7 [UDim2.fromOffset]
       20 GETTABLEKS                       R15 R10 K8 ["X"]
       22 GETTABLEKS                       R16 R10 K9 ["Y"]
       24 CALL                             R14 2 -1
       25 CALL                             R13 -1 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R11 K12 [table.insert]
       29 CALL                             R11 -1 0
       30 ADDK                             R4 R4 K13 [1]
       31 GETTABLEKS                       R11 R9 K8 ["X"]
       33 GETTABLEKS                       R12 R1 K14 ["Max"]
       35 GETTABLEKS                       R12 R12 K8 ["X"]
       37 JUMPIFLT                         R12 R11 ; [+3]
       39 FORGLOOP                         R5 2 ; [-32]
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K15 ["createElement"]
       44 GETUPVAL                         R6 2
       45 DUPTABLE                         R7 K19 [{["ControlPoints"], ["Tag"] = "CurveLinePath2D"}]
       46 SETTABLEKS                       R3 R7 K16 ["ControlPoints"]
       48 CALL                             R5 2 -1
       49 RETURN                           R5 -1

PROTO_2:
        0 NEWTABLE                         R4 4 0
        2 GETTABLEKS                       R6 R0 K0 ["keypoints"]
        4 LENGTH                           R5 R6
        5 JUMPIFNOT                        R3 ; [+107]
        6 NEWTABLE                         R6 0 0
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R7 R7 K1 ["absoluteToPlotPosition"]
       11 MOVE                             R8 R3
       12 MOVE                             R9 R1
       13 MOVE                             R10 R2
       14 CALL                             R7 3 1
       15 GETTABLEKS                       R8 R0 K2 ["getIndexForPoint"]
       17 MOVE                             R9 R7
       18 CALL                             R8 1 1
       19 GETIMPORT                        R9 K5 [Vector2.new]
       21 LOADN                            R10 0
       22 GETTABLEKS                       R11 R3 K6 ["Y"]
       24 CALL                             R9 2 1
       25 LOADN                            R10 1
       26 JUMPIFNOTLT                      R10 R8 ; [+12]
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R10 R10 K7 ["plotToAbsolutePosition"]
       31 GETTABLEKS                       R12 R0 K0 ["keypoints"]
       33 SUBK                             R13 R8 K8 [1]
       34 GETTABLE                         R11 R12 R13
       35 MOVE                             R12 R1
       36 MOVE                             R13 R2
       37 CALL                             R10 3 1
       38 MOVE                             R9 R10
       39 GETIMPORT                        R10 K5 [Vector2.new]
       41 GETTABLEKS                       R11 R2 K9 ["X"]
       43 GETTABLEKS                       R12 R3 K6 ["Y"]
       45 CALL                             R10 2 1
       46 JUMPIFNOTLE                      R8 R5 ; [+11]
       48 GETUPVAL                         R11 0
       49 GETTABLEKS                       R11 R11 K7 ["plotToAbsolutePosition"]
       51 GETTABLEKS                       R13 R0 K0 ["keypoints"]
       53 GETTABLE                         R12 R13 R8
       54 MOVE                             R13 R1
       55 MOVE                             R14 R2
       56 CALL                             R11 3 1
       57 MOVE                             R10 R11
       58 MOVE                             R12 R6
       59 GETIMPORT                        R13 K11 [Path2DControlPoint.new]
       61 GETIMPORT                        R14 K14 [UDim2.fromOffset]
       63 GETTABLEKS                       R15 R9 K9 ["X"]
       65 GETTABLEKS                       R16 R9 K6 ["Y"]
       67 CALL                             R14 2 -1
       68 CALL                             R13 -1 -1
       69 FASTCALL                         TABLE_INSERT ; [+2]
       70 GETIMPORT                        R11 K17 [table.insert]
       72 CALL                             R11 -1 0
       73 MOVE                             R12 R6
       74 GETIMPORT                        R13 K11 [Path2DControlPoint.new]
       76 GETIMPORT                        R14 K14 [UDim2.fromOffset]
       78 GETTABLEKS                       R15 R3 K9 ["X"]
       80 GETTABLEKS                       R16 R3 K6 ["Y"]
       82 CALL                             R14 2 -1
       83 CALL                             R13 -1 -1
       84 FASTCALL                         TABLE_INSERT ; [+2]
       85 GETIMPORT                        R11 K17 [table.insert]
       87 CALL                             R11 -1 0
       88 MOVE                             R12 R6
       89 GETIMPORT                        R13 K11 [Path2DControlPoint.new]
       91 GETIMPORT                        R14 K14 [UDim2.fromOffset]
       93 GETTABLEKS                       R15 R10 K9 ["X"]
       95 GETTABLEKS                       R16 R10 K6 ["Y"]
       97 CALL                             R14 2 -1
       98 CALL                             R13 -1 -1
       99 FASTCALL                         TABLE_INSERT ; [+2]
      100 GETIMPORT                        R11 K17 [table.insert]
      102 CALL                             R11 -1 0
      103 GETUPVAL                         R11 1
      104 GETTABLEKS                       R11 R11 K18 ["createElement"]
      106 GETUPVAL                         R12 2
      107 DUPTABLE                         R13 K22 [{["ControlPoints"], ["Tag"] = "GhostLinePath2D"}]
      108 SETTABLEKS                       R6 R13 K19 ["ControlPoints"]
      110 CALL                             R11 2 1
      111 SETTABLEKS                       R11 R4 K23 ["GhostCurve"]
      113 LOADN                            R6 0
      114 JUMPIFNOTLT                      R6 R5 ; [+43]
      116 GETUPVAL                         R6 0
      117 GETTABLEKS                       R6 R6 K7 ["plotToAbsolutePosition"]
      119 GETTABLEKS                       R8 R0 K0 ["keypoints"]
      121 GETTABLEN                        R7 R8 1
      122 MOVE                             R8 R1
      123 MOVE                             R9 R2
      124 CALL                             R6 3 1
      125 GETUPVAL                         R7 1
      126 GETTABLEKS                       R7 R7 K18 ["createElement"]
      128 GETUPVAL                         R8 2
      129 DUPTABLE                         R9 K22 [{["ControlPoints"], ["Tag"] = "GhostLinePath2D"}]
      130 NEWTABLE                         R10 0 2
      132 GETIMPORT                        R11 K11 [Path2DControlPoint.new]
      134 GETIMPORT                        R12 K14 [UDim2.fromOffset]
      136 LOADN                            R13 0
      137 GETTABLEKS                       R14 R6 K6 ["Y"]
      139 CALL                             R12 2 -1
      140 CALL                             R11 -1 1
      141 GETIMPORT                        R12 K11 [Path2DControlPoint.new]
      143 GETIMPORT                        R13 K14 [UDim2.fromOffset]
      145 GETTABLEKS                       R14 R6 K9 ["X"]
      147 GETTABLEKS                       R15 R6 K6 ["Y"]
      149 CALL                             R13 2 -1
      150 CALL                             R12 -1 -1
      151 SETLIST                          R10 R11 -1 [1]
      153 SETTABLEKS                       R10 R9 K19 ["ControlPoints"]
      155 CALL                             R7 2 1
      156 SETTABLEKS                       R7 R4 K24 ["EndLineLeft"]
      158 LOADN                            R6 0
      159 JUMPIFNOTLT                      R6 R5 ; [+51]
      161 GETUPVAL                         R6 0
      162 GETTABLEKS                       R6 R6 K7 ["plotToAbsolutePosition"]
      164 GETTABLEKS                       R8 R0 K0 ["keypoints"]
      166 GETTABLE                         R7 R8 R5
      167 MOVE                             R8 R1
      168 MOVE                             R9 R2
      169 CALL                             R6 3 1
      170 LOADN                            R8 0
      171 GETTABLEKS                       R9 R6 K9 ["X"]
      173 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
      175 GETIMPORT                        R7 K27 [math.max]
      177 CALL                             R7 2 1
      178 GETUPVAL                         R8 1
      179 GETTABLEKS                       R8 R8 K18 ["createElement"]
      181 GETUPVAL                         R9 2
      182 DUPTABLE                         R10 K22 [{["ControlPoints"], ["Tag"] = "GhostLinePath2D"}]
      183 NEWTABLE                         R11 0 2
      185 GETIMPORT                        R12 K11 [Path2DControlPoint.new]
      187 GETIMPORT                        R13 K14 [UDim2.fromOffset]
      189 MOVE                             R14 R7
      190 GETTABLEKS                       R15 R6 K6 ["Y"]
      192 CALL                             R13 2 -1
      193 CALL                             R12 -1 1
      194 GETIMPORT                        R13 K11 [Path2DControlPoint.new]
      196 GETIMPORT                        R14 K14 [UDim2.fromOffset]
      198 GETTABLEKS                       R15 R2 K9 ["X"]
      200 GETTABLEKS                       R16 R6 K6 ["Y"]
      202 CALL                             R14 2 -1
      203 CALL                             R13 -1 -1
      204 SETLIST                          R11 R12 -1 [1]
      206 SETTABLEKS                       R11 R10 K19 ["ControlPoints"]
      208 CALL                             R8 2 1
      209 SETTABLEKS                       R8 R4 K28 ["EndLineRight"]
      211 RETURN                           R4 1

PROTO_3:
        0 GETIMPORT                        R0 K2 [Rect.new]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["XRange"]
        5 GETTABLEKS                       R1 R1 K4 ["Min"]
        7 LOADN                            R2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["XRange"]
       11 GETTABLEKS                       R3 R3 K5 ["Max"]
       13 LOADN                            R4 1
       14 CALL                             R0 4 -1
       15 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["select"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 LOADB                            R2 1
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["mouseCoordsToPlotPosition"]
        8 MOVE                             R2 R0
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["current"]
       13 CALL                             R1 3 1
       14 GETIMPORT                        R2 K4 [Vector2.new]
       16 GETTABLEKS                       R4 R1 K5 ["X"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K6 ["Min"]
       21 GETTABLEKS                       R5 R5 K5 ["X"]
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K7 ["Max"]
       26 GETTABLEKS                       R6 R6 K5 ["X"]
       28 FASTCALL                         MATH_CLAMP ; [+2]
       29 GETIMPORT                        R3 K10 [math.clamp]
       31 CALL                             R3 3 1
       32 GETTABLEKS                       R5 R1 K11 ["Y"]
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K6 ["Min"]
       37 GETTABLEKS                       R6 R6 K11 ["Y"]
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R7 R7 K7 ["Max"]
       42 GETTABLEKS                       R7 R7 K11 ["Y"]
       44 FASTCALL                         MATH_CLAMP ; [+2]
       45 GETIMPORT                        R4 K10 [math.clamp]
       47 CALL                             R4 3 1
       48 CALL                             R2 2 1
       49 MOVE                             R1 R2
       50 GETUPVAL                         R2 3
       51 GETTABLEKS                       R2 R2 K12 ["update"]
       53 MOVE                             R3 R1
       54 LOADB                            R4 0
       55 CALL                             R2 2 0
       56 RETURN                           R0 0

PROTO_8:
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
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K2 ["OnChanged"]
       17 JUMPIFNOT                        R1 ; [+4]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K2 ["OnChanged"]
       21 CALL                             R1 0 0
       22 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       10 LOADK                            R3 K1 ["plotRef.current was nil"]
       11 GETIMPORT                        R1 K3 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K6 [Vector2.new]
       16 GETTABLEKS                       R2 R0 K7 ["Position"]
       18 GETTABLEKS                       R2 R2 K8 ["X"]
       20 GETTABLEKS                       R3 R0 K7 ["Position"]
       22 GETTABLEKS                       R3 R3 K9 ["Y"]
       24 CALL                             R1 2 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K0 ["current"]
       28 GETTABLEKS                       R3 R3 K10 ["AbsolutePosition"]
       30 SUB                              R2 R1 R3
       31 GETUPVAL                         R3 1
       32 MOVE                             R4 R2
       33 CALL                             R3 1 0
       34 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R1 K3 [Vector2.new]
        7 GETTABLEKS                       R2 R0 K4 ["Position"]
        9 GETTABLEKS                       R2 R2 K5 ["X"]
       11 GETTABLEKS                       R3 R0 K4 ["Position"]
       13 GETTABLEKS                       R3 R3 K6 ["Y"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K7 ["mouseCoordsToPlotPosition"]
       19 MOVE                             R3 R1
       20 GETUPVAL                         R4 2
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K0 ["current"]
       24 CALL                             R2 3 1
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K8 ["add"]
       28 MOVE                             R4 R2
       29 CALL                             R3 1 1
       30 JUMPIFNOT                        R3 ; [+3]
       31 GETUPVAL                         R4 4
       32 LOADB                            R5 1
       33 CALL                             R4 1 0
       34 RETURN                           R0 0

PROTO_13:
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
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K2 ["OnChanged"]
       15 JUMPIFNOT                        R0 ; [+4]
       16 GETUPVAL                         R0 2
       17 GETTABLEKS                       R0 R0 K2 ["OnChanged"]
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["XRange"]
        3 GETTABLEKS                       R2 R2 K1 ["Max"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["XRange"]
        8 GETTABLEKS                       R3 R3 K2 ["Min"]
       10 SUB                              R1 R2 R3
       11 LOADK                            R4 K3 [1.15]
       12 POW                              R3 R4 R0
       13 MUL                              R2 R1 R3
       14 GETUPVAL                         R5 1
       15 GETUPVAL                         R6 2
       16 FASTCALL3                        MATH_CLAMP R2 R5 R6
       18 MOVE                             R4 R2
       19 GETIMPORT                        R3 K6 [math.clamp]
       21 CALL                             R3 3 1
       22 MOVE                             R2 R3
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K7 ["X"]
       26 GETUPVAL                         R5 4
       27 GETTABLEKS                       R5 R5 K7 ["X"]
       29 DIV                              R3 R4 R5
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K0 ["XRange"]
       33 GETTABLEKS                       R5 R5 K2 ["Min"]
       35 MUL                              R6 R3 R1
       36 ADD                              R4 R5 R6
       37 MUL                              R6 R2 R3
       38 SUB                              R5 R4 R6
       39 SUBRK                            R8 K8 [1] R3
       40 MUL                              R7 R2 R8
       41 ADD                              R6 R4 R7
       42 LOADN                            R7 0
       43 JUMPIFNOTLT                      R5 R7 ; [+5]
       45 SUBRK                            R7 K9 [0] R5
       46 ADD                              R6 R6 R7
       47 LOADN                            R5 0
       48 JUMP                             ; [+7]
       49 GETUPVAL                         R7 2
       50 JUMPIFNOTLT                      R7 R6 ; [+5]
       52 GETUPVAL                         R8 2
       53 SUB                              R7 R6 R8
       54 SUB                              R5 R5 R7
       55 GETUPVAL                         R6 2
       56 LOADN                            R9 0
       57 GETUPVAL                         R10 2
       58 FASTCALL3                        MATH_CLAMP R5 R9 R10
       60 MOVE                             R8 R5
       61 GETIMPORT                        R7 K6 [math.clamp]
       63 CALL                             R7 3 1
       64 MOVE                             R5 R7
       65 LOADN                            R9 0
       66 GETUPVAL                         R10 2
       67 FASTCALL3                        MATH_CLAMP R6 R9 R10
       69 MOVE                             R8 R6
       70 GETIMPORT                        R7 K6 [math.clamp]
       72 CALL                             R7 3 1
       73 MOVE                             R6 R7
       74 GETUPVAL                         R7 0
       75 GETTABLEKS                       R7 R7 K10 ["SetXRange"]
       77 GETIMPORT                        R8 K13 [NumberRange.new]
       79 MOVE                             R9 R5
       80 MOVE                             R10 R6
       81 CALL                             R8 2 -1
       82 CALL                             R7 -1 0
       83 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 NEWTABLE                         R0 2 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 1
        5 NOT                              R1 R2
        6 JUMPIFNOT                        R1 ; [+2]
        7 GETUPVAL                         R2 2
        8 NOT                              R1 R2
        9 GETUPVAL                         R2 3
       10 GETUPVAL                         R3 4
       11 GETUPVAL                         R4 5
       12 GETUPVAL                         R5 6
       13 JUMPIFNOT                        R1 ; [+2]
       14 GETUPVAL                         R6 7
       15 JUMP                             ; [+1]
       16 LOADNIL                          R6
       17 CALL                             R2 4 1
       18 GETUPVAL                         R3 8
       19 GETUPVAL                         R4 4
       20 GETUPVAL                         R5 5
       21 GETUPVAL                         R6 6
       22 CALL                             R3 3 1
       23 SETTABLEKS                       R3 R2 K0 ["Curve"]
       25 GETUPVAL                         R3 9
       26 GETTABLEKS                       R3 R3 K1 ["createElement"]
       28 LOADK                            R4 K2 ["CanvasGroup"]
       29 DUPTABLE                         R5 K6 [{["BackgroundTransparency"] = 1, ["Size"]}]
       30 GETIMPORT                        R6 K9 [UDim2.fromScale]
       32 LOADN                            R7 1
       33 LOADN                            R8 1
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K5 ["Size"]
       37 MOVE                             R6 R2
       38 CALL                             R3 3 1
       39 SETTABLEKS                       R3 R0 K10 ["Curves"]
       41 JUMPIFNOT                        R1 ; [+25]
       42 GETUPVAL                         R3 9
       43 GETTABLEKS                       R3 R3 K1 ["createElement"]
       45 LOADK                            R4 K11 ["ImageLabel"]
       46 NEWTABLE                         R5 2 0
       48 GETIMPORT                        R6 K13 [UDim2.fromOffset]
       50 GETUPVAL                         R7 7
       51 GETTABLEKS                       R7 R7 K14 ["X"]
       53 GETUPVAL                         R8 7
       54 GETTABLEKS                       R8 R8 K15 ["Y"]
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K16 ["Position"]
       59 GETUPVAL                         R6 9
       60 GETTABLEKS                       R6 R6 K17 ["Tag"]
       62 LOADK                            R7 K18 ["GhostPoint"]
       63 SETTABLE                         R7 R5 R6
       64 CALL                             R3 2 1
       65 SETTABLEKS                       R3 R0 K18 ["GhostPoint"]
       67 GETUPVAL                         R3 4
       68 GETTABLEKS                       R3 R3 K19 ["keypoints"]
       70 LOADNIL                          R4
       71 LOADNIL                          R5
       72 FORGPREP                         R3
       73 LOADK                            R9 K20 ["Keypoint_"]
       74 MOVE                             R10 R6
       75 CONCAT                           R8 R9 R10
       76 GETUPVAL                         R10 4
       77 GETTABLEKS                       R10 R10 K21 ["selectedIndex"]
       79 JUMPIFEQ                         R6 R10 ; [+2]
       81 LOADB                            R9 0 +1
       82 LOADB                            R9 1
       83 GETUPVAL                         R10 9
       84 GETTABLEKS                       R10 R10 K1 ["createElement"]
       86 GETUPVAL                         R11 10
       87 DUPTABLE                         R12 K31 [{"Position", "PlotRect", "Selected", "IsDragging", "OnHoverStart", "OnHoverEnd", "OnDragStart", "OnMoved", "OnDragEnd", "OnRightClick"}]
       88 SETTABLEKS                       R7 R12 K16 ["Position"]
       90 GETUPVAL                         R13 5
       91 SETTABLEKS                       R13 R12 K22 ["PlotRect"]
       93 SETTABLEKS                       R9 R12 K23 ["Selected"]
       95 GETUPVAL                         R14 2
       96 AND                              R13 R14 R9
       97 SETTABLEKS                       R13 R12 K24 ["IsDragging"]
       99 NEWCLOSURE                       R13 P0
      100 CAPTURE                          UPVAL U11
      101 CAPTURE                          VAL R6
      102 SETTABLEKS                       R13 R12 K25 ["OnHoverStart"]
      104 NEWCLOSURE                       R13 P1
      105 CAPTURE                          UPVAL U12
      106 CAPTURE                          VAL R6
      107 SETTABLEKS                       R13 R12 K26 ["OnHoverEnd"]
      109 GETUPVAL                         R13 13
      110 SETTABLEKS                       R13 R12 K27 ["OnDragStart"]
      112 GETUPVAL                         R13 14
      113 SETTABLEKS                       R13 R12 K28 ["OnMoved"]
      115 GETUPVAL                         R13 15
      116 SETTABLEKS                       R13 R12 K29 ["OnDragEnd"]
      118 GETUPVAL                         R13 16
      119 SETTABLEKS                       R13 R12 K30 ["OnRightClick"]
      121 CALL                             R10 2 1
      122 SETTABLE                         R10 R0 R8
      123 FORGLOOP                         R3 2 ; [-51]
      125 RETURN                           R0 1

PROTO_19:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseWheel]
        4 JUMPIFNOTEQ                      R2 R3 ; [+7]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R1 K4 ["Position"]
        9 GETTABLEKS                       R3 R3 K5 ["Z"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+4]
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       11 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseMovement]
       13 JUMPIFNOTEQ                      R2 R3 ; [+3]
       15 GETUPVAL                         R2 1
       16 CALL                             R2 0 0
       17 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+4]
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+3]
        6 GETUPVAL                         R2 0
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R0 K0 ["PlotAbsoluteSize"]
        5 GETTABLEKS                       R3 R0 K1 ["CurveHook"]
        7 GETUPVAL                         R4 1
        8 GETIMPORT                        R5 K4 [Vector2.new]
       10 LOADN                            R6 -1
       11 LOADN                            R7 -1
       12 CALL                             R5 2 -1
       13 CALL                             R4 -1 2
       14 GETUPVAL                         R6 1
       15 LOADB                            R7 0
       16 CALL                             R6 1 2
       17 GETUPVAL                         R8 1
       18 LOADB                            R9 0
       19 CALL                             R8 1 2
       20 GETUPVAL                         R10 1
       21 LOADB                            R11 0
       22 CALL                             R10 1 2
       23 GETUPVAL                         R12 2
       24 NEWCLOSURE                       R13 P0
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R14 0 1
       28 GETTABLEKS                       R15 R0 K5 ["XRange"]
       30 SETLIST                          R14 R15 1 [1]
       32 CALL                             R12 2 1
       33 GETUPVAL                         R13 3
       34 NEWCLOSURE                       R14 P1
       35 CAPTURE                          VAL R10
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R9
       38 NEWTABLE                         R15 0 3
       40 MOVE                             R16 R3
       41 MOVE                             R17 R10
       42 MOVE                             R18 R9
       43 SETLIST                          R15 R16 3 [1]
       45 CALL                             R13 2 1
       46 GETUPVAL                         R14 3
       47 NEWCLOSURE                       R15 P2
       48 CAPTURE                          VAL R9
       49 NEWTABLE                         R16 0 1
       51 MOVE                             R17 R9
       52 SETLIST                          R16 R17 1 [1]
       54 CALL                             R14 2 1
       55 GETUPVAL                         R15 3
       56 NEWCLOSURE                       R16 P3
       57 CAPTURE                          VAL R11
       58 NEWTABLE                         R17 0 0
       60 CALL                             R15 2 1
       61 GETUPVAL                         R16 3
       62 NEWCLOSURE                       R17 P4
       63 CAPTURE                          VAL R1
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R3
       67 NEWTABLE                         R18 0 3
       69 MOVE                             R19 R1
       70 MOVE                             R20 R12
       71 MOVE                             R21 R3
       72 SETLIST                          R18 R19 3 [1]
       74 CALL                             R16 2 1
       75 GETUPVAL                         R17 3
       76 NEWCLOSURE                       R18 P5
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R0
       80 NEWTABLE                         R19 0 2
       82 MOVE                             R20 R0
       83 MOVE                             R21 R3
       84 SETLIST                          R19 R20 2 [1]
       86 CALL                             R17 2 1
       87 GETUPVAL                         R18 3
       88 NEWCLOSURE                       R19 P6
       89 CAPTURE                          VAL R7
       90 NEWTABLE                         R20 0 1
       92 MOVE                             R21 R7
       93 SETLIST                          R20 R21 1 [1]
       95 CALL                             R18 2 1
       96 GETUPVAL                         R19 3
       97 NEWCLOSURE                       R20 P7
       98 CAPTURE                          VAL R7
       99 NEWTABLE                         R21 0 1
      101 MOVE                             R22 R7
      102 SETLIST                          R21 R22 1 [1]
      104 CALL                             R19 2 1
      105 GETUPVAL                         R20 3
      106 NEWCLOSURE                       R21 P8
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R5
      109 NEWTABLE                         R22 0 3
      111 MOVE                             R23 R1
      112 MOVE                             R24 R12
      113 MOVE                             R25 R5
      114 SETLIST                          R22 R23 3 [1]
      116 CALL                             R20 2 1
      117 GETUPVAL                         R21 3
      118 NEWCLOSURE                       R22 P9
      119 CAPTURE                          VAL R1
      120 CAPTURE                          UPVAL U4
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R11
      124 NEWTABLE                         R23 0 3
      126 MOVE                             R24 R1
      127 MOVE                             R25 R12
      128 MOVE                             R26 R3
      129 SETLIST                          R23 R24 3 [1]
      131 CALL                             R21 2 1
      132 GETUPVAL                         R22 3
      133 NEWCLOSURE                       R23 P10
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R0
      137 NEWTABLE                         R24 0 2
      139 MOVE                             R25 R0
      140 MOVE                             R26 R3
      141 SETLIST                          R24 R25 2 [1]
      143 CALL                             R22 2 1
      144 GETUPVAL                         R23 3
      145 NEWCLOSURE                       R24 P11
      146 CAPTURE                          VAL R0
      147 CAPTURE                          UPVAL U5
      148 CAPTURE                          UPVAL U6
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R2
      151 NEWTABLE                         R25 0 5
      153 MOVE                             R26 R12
      154 GETTABLEKS                       R27 R0 K0 ["PlotAbsoluteSize"]
      156 MOVE                             R28 R4
      157 GETTABLEKS                       R29 R0 K5 ["XRange"]
      159 GETTABLEKS                       R30 R0 K6 ["SetXRange"]
      161 SETLIST                          R25 R26 5 [1]
      163 CALL                             R23 2 1
      164 GETUPVAL                         R24 2
      165 NEWCLOSURE                       R25 P12
      166 CAPTURE                          UPVAL U7
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R2
      169 NEWTABLE                         R26 0 2
      171 GETTABLEKS                       R27 R0 K0 ["PlotAbsoluteSize"]
      173 MOVE                             R28 R12
      174 SETLIST                          R26 R27 2 [1]
      176 CALL                             R24 2 1
      177 GETUPVAL                         R25 2
      178 NEWCLOSURE                       R26 P13
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R10
      182 CAPTURE                          UPVAL U8
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R12
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R4
      187 CAPTURE                          UPVAL U9
      188 CAPTURE                          UPVAL U10
      189 CAPTURE                          UPVAL U11
      190 CAPTURE                          VAL R13
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R15
      193 CAPTURE                          VAL R16
      194 CAPTURE                          VAL R17
      195 CAPTURE                          VAL R22
      196 NEWTABLE                         R27 0 7
      198 MOVE                             R28 R3
      199 MOVE                             R29 R12
      200 GETTABLEKS                       R30 R0 K0 ["PlotAbsoluteSize"]
      202 MOVE                             R31 R10
      203 MOVE                             R32 R4
      204 MOVE                             R33 R6
      205 MOVE                             R34 R8
      206 SETLIST                          R27 R28 7 [1]
      208 CALL                             R25 2 1
      209 GETUPVAL                         R26 10
      210 GETTABLEKS                       R26 R26 K7 ["createElement"]
      212 GETUPVAL                         R27 12
      213 NEWTABLE                         R28 8 0
      215 LOADB                            R29 1
      216 SETTABLEKS                       R29 R28 K8 ["Active"]
      218 LOADN                            R29 1
      219 SETTABLEKS                       R29 R28 K9 ["LayoutOrder"]
      221 GETIMPORT                        R29 K11 [UDim2.new]
      223 LOADN                            R30 1
      224 LOADN                            R31 0
      225 LOADN                            R32 1
      226 LOADK                            R33 K12 [0]
      227 CALL                             R29 4 1
      228 SETTABLEKS                       R29 R28 K13 ["Size"]
      230 GETUPVAL                         R29 10
      231 GETTABLEKS                       R29 R29 K14 ["Tag"]
      233 LOADK                            R30 K15 ["Contrast X-Clip"]
      234 SETTABLE                         R30 R28 R29
      235 GETUPVAL                         R29 10
      236 GETTABLEKS                       R29 R29 K16 ["Event"]
      238 GETTABLEKS                       R29 R29 K17 ["InputChanged"]
      240 NEWCLOSURE                       R30 P14
      241 CAPTURE                          VAL R23
      242 SETTABLE                         R30 R28 R29
      243 DUPTABLE                         R29 K20 [{"CurveContainer", "GridLineContainer"}]
      244 GETUPVAL                         R30 10
      245 GETTABLEKS                       R30 R30 K7 ["createElement"]
      247 GETUPVAL                         R31 12
      248 NEWTABLE                         R32 16 0
      250 LOADB                            R33 1
      251 SETTABLEKS                       R33 R32 K8 ["Active"]
      253 LOADN                            R33 2
      254 SETTABLEKS                       R33 R32 K9 ["LayoutOrder"]
      256 GETIMPORT                        R33 K11 [UDim2.new]
      258 LOADN                            R34 0
      259 LOADN                            R36 35
      260 GETUPVAL                         R37 13
      261 GETTABLEKS                       R37 R37 K21 ["X"]
      263 ADD                              R35 R36 R37
      264 LOADN                            R36 0
      265 LOADN                            R38 35
      266 GETUPVAL                         R39 13
      267 GETTABLEKS                       R39 R39 K22 ["Y"]
      269 ADD                              R37 R38 R39
      270 CALL                             R33 4 1
      271 SETTABLEKS                       R33 R32 K23 ["Position"]
      273 GETIMPORT                        R33 K11 [UDim2.new]
      275 LOADN                            R34 1
      276 LOADN                            R35 -70
      277 LOADN                            R36 1
      278 LOADN                            R37 -70
      279 CALL                             R33 4 1
      280 SETTABLEKS                       R33 R32 K13 ["Size"]
      282 LOADN                            R33 1
      283 SETTABLEKS                       R33 R32 K24 ["BackgroundTransparency"]
      285 SETTABLEKS                       R1 R32 K25 ["ForwardRef"]
      287 GETUPVAL                         R33 10
      288 GETTABLEKS                       R33 R33 K26 ["Change"]
      290 GETTABLEKS                       R33 R33 K27 ["AbsoluteSize"]
      292 GETTABLEKS                       R34 R0 K28 ["OnSizeChanged"]
      294 SETTABLE                         R34 R32 R33
      295 GETUPVAL                         R33 10
      296 GETTABLEKS                       R33 R33 K16 ["Event"]
      298 GETTABLEKS                       R33 R33 K29 ["InputBegan"]
      300 NEWCLOSURE                       R34 P15
      301 CAPTURE                          VAL R21
      302 CAPTURE                          VAL R18
      303 SETTABLE                         R34 R32 R33
      304 GETUPVAL                         R33 10
      305 GETTABLEKS                       R33 R33 K16 ["Event"]
      307 GETTABLEKS                       R33 R33 K17 ["InputChanged"]
      309 NEWCLOSURE                       R34 P16
      310 CAPTURE                          VAL R20
      311 SETTABLE                         R34 R32 R33
      312 GETUPVAL                         R33 10
      313 GETTABLEKS                       R33 R33 K16 ["Event"]
      315 GETTABLEKS                       R33 R33 K30 ["InputEnded"]
      317 NEWCLOSURE                       R34 P17
      318 CAPTURE                          VAL R19
      319 SETTABLE                         R34 R32 R33
      320 MOVE                             R33 R25
      321 CALL                             R30 3 1
      322 SETTABLEKS                       R30 R29 K18 ["CurveContainer"]
      324 GETUPVAL                         R30 10
      325 GETTABLEKS                       R30 R30 K7 ["createElement"]
      327 GETUPVAL                         R31 12
      328 DUPTABLE                         R32 K33 [{["Active"] = True, ["LayoutOrder"] = 1, ["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
      329 GETIMPORT                        R33 K11 [UDim2.new]
      331 LOADN                            R34 0
      332 GETUPVAL                         R35 13
      333 GETTABLEKS                       R35 R35 K21 ["X"]
      335 LOADN                            R36 0
      336 GETUPVAL                         R37 13
      337 GETTABLEKS                       R37 R37 K22 ["Y"]
      339 CALL                             R33 4 1
      340 SETTABLEKS                       R33 R32 K23 ["Position"]
      342 GETIMPORT                        R33 K11 [UDim2.new]
      344 LOADN                            R34 1
      345 LOADN                            R35 0
      346 LOADN                            R36 1
      347 LOADN                            R37 0
      348 CALL                             R33 4 1
      349 SETTABLEKS                       R33 R32 K13 ["Size"]
      351 MOVE                             R33 R24
      352 CALL                             R30 3 1
      353 SETTABLEKS                       R30 R29 K19 ["GridLineContainer"]
      355 CALL                             R26 3 -1
      356 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["AttenuationCurveEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R3 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       20 GETTABLEKS                       R4 R2 K10 ["useMemo"]
       22 GETTABLEKS                       R5 R2 K11 ["useState"]
       24 GETTABLEKS                       R6 R2 K12 ["useRef"]
       26 GETIMPORT                        R7 K6 [require]
       28 GETTABLEKS                       R8 R1 K7 ["Packages"]
       30 GETTABLEKS                       R8 R8 K13 ["Framework"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R8 R7 K14 ["UI"]
       35 GETTABLEKS                       R8 R8 K15 ["Pane"]
       37 GETIMPORT                        R9 K6 [require]
       39 GETTABLEKS                       R10 R0 K16 ["GridLine"]
       41 CALL                             R9 1 1
       42 GETIMPORT                        R10 K6 [require]
       44 GETTABLEKS                       R11 R0 K17 ["Keypoint"]
       46 CALL                             R10 1 1
       47 GETIMPORT                        R11 K6 [require]
       49 GETTABLEKS                       R12 R0 K18 ["Path2DWrapper"]
       51 CALL                             R11 1 1
       52 GETIMPORT                        R12 K6 [require]
       54 GETTABLEKS                       R13 R0 K19 ["PlotRectUtil"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K6 [require]
       59 GETTABLEKS                       R14 R1 K20 ["Src"]
       61 GETTABLEKS                       R14 R14 K21 ["Types"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K24 [Vector2.new]
       66 LOADN                            R15 5
       67 LOADN                            R16 -15
       68 CALL                             R14 2 1
       69 GETTABLEKS                       R15 R12 K25 ["MIN_ZOOM"]
       71 GETTABLEKS                       R16 R12 K26 ["MAX_ZOOM"]
       73 DUPCLOSURE                       R17 K27 [PROTO_0]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R9
       76 DUPCLOSURE                       R18 K28 [PROTO_1]
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R11
       80 DUPCLOSURE                       R19 K29 [PROTO_2]
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R11
       84 DUPCLOSURE                       R20 K30 [PROTO_23]
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R15
       91 CAPTURE                          VAL R16
       92 CAPTURE                          VAL R17
       93 CAPTURE                          VAL R19
       94 CAPTURE                          VAL R18
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R14
       99 RETURN                           R20 1
