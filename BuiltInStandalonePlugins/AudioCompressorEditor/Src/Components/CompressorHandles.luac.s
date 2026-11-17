PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["plotToAbs"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 MOVE                             R5 R0
        7 GETIMPORT                        R6 K3 [Path2DControlPoint.new]
        9 GETIMPORT                        R7 K6 [UDim2.fromOffset]
       11 GETTABLEKS                       R8 R3 K7 ["X"]
       13 GETTABLEKS                       R9 R3 K8 ["Y"]
       15 CALL                             R7 2 -1
       16 CALL                             R6 -1 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R4 K11 [table.insert]
       20 CALL                             R4 -1 0
       21 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 1
        5 NEWTABLE                         R1 0 0
        7 GETIMPORT                        R2 K2 [Vector2.new]
        9 LOADN                            R3 -80
       10 LOADN                            R4 -80
       11 CALL                             R2 2 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["PlotAbsoluteSize"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K4 ["plotToAbs"]
       18 MOVE                             R5 R2
       19 MOVE                             R6 R3
       20 CALL                             R4 2 1
       21 MOVE                             R6 R1
       22 GETIMPORT                        R7 K6 [Path2DControlPoint.new]
       24 GETIMPORT                        R8 K9 [UDim2.fromOffset]
       26 GETTABLEKS                       R9 R4 K10 ["X"]
       28 GETTABLEKS                       R10 R4 K11 ["Y"]
       30 CALL                             R8 2 -1
       31 CALL                             R7 -1 -1
       32 FASTCALL                         TABLE_INSERT ; [+2]
       33 GETIMPORT                        R5 K14 [table.insert]
       35 CALL                             R5 -1 0
       36 GETIMPORT                        R2 K2 [Vector2.new]
       38 LOADN                            R3 30
       39 LOADN                            R4 30
       40 CALL                             R2 2 1
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R3 R3 K3 ["PlotAbsoluteSize"]
       44 GETUPVAL                         R4 2
       45 GETTABLEKS                       R4 R4 K4 ["plotToAbs"]
       47 MOVE                             R5 R2
       48 MOVE                             R6 R3
       49 CALL                             R4 2 1
       50 MOVE                             R6 R1
       51 GETIMPORT                        R7 K6 [Path2DControlPoint.new]
       53 GETIMPORT                        R8 K9 [UDim2.fromOffset]
       55 GETTABLEKS                       R9 R4 K10 ["X"]
       57 GETTABLEKS                       R10 R4 K11 ["Y"]
       59 CALL                             R8 2 -1
       60 CALL                             R7 -1 -1
       61 FASTCALL                         TABLE_INSERT ; [+2]
       62 GETIMPORT                        R5 K14 [table.insert]
       64 CALL                             R5 -1 0
       65 GETUPVAL                         R2 3
       66 GETTABLEKS                       R2 R2 K15 ["createElement"]
       68 GETUPVAL                         R3 4
       69 DUPTABLE                         R4 K19 [{["ControlPoints"], ["Tag"] = "GridCurve"}]
       70 SETTABLEKS                       R1 R4 K16 ["ControlPoints"]
       72 CALL                             R2 2 1
       73 SETTABLEKS                       R2 R0 K20 ["Diagonal"]
       75 GETUPVAL                         R2 1
       76 GETTABLEKS                       R2 R2 K21 ["ActiveControl"]
       78 JUMPIFNOTEQKS                    R2 K22 ["Threshold"] ; [+21]
       80 GETUPVAL                         R2 3
       81 GETTABLEKS                       R2 R2 K15 ["createElement"]
       83 GETUPVAL                         R3 5
       84 DUPTABLE                         R4 K29 [{["Orientation"] = "Horizontal", ["Position"], ["PlotAbsoluteSize"], ["Thickness"] = 1, ["Tag"] = "ControlLine"}]
       85 GETUPVAL                         R5 1
       86 GETTABLEKS                       R5 R5 K30 ["DataHook"]
       88 GETTABLEKS                       R5 R5 K31 ["threshold"]
       90 SETTABLEKS                       R5 R4 K25 ["Position"]
       92 GETUPVAL                         R5 1
       93 GETTABLEKS                       R5 R5 K3 ["PlotAbsoluteSize"]
       95 SETTABLEKS                       R5 R4 K3 ["PlotAbsoluteSize"]
       97 CALL                             R2 2 1
       98 SETTABLEKS                       R2 R0 K32 ["Control_Threshold"]
      100 GETUPVAL                         R2 1
      101 GETTABLEKS                       R2 R2 K21 ["ActiveControl"]
      103 JUMPIFNOTEQKS                    R2 K33 ["Ratio"] ; [+83]
      105 GETUPVAL                         R2 1
      106 GETTABLEKS                       R2 R2 K30 ["DataHook"]
      108 GETTABLEKS                       R2 R2 K31 ["threshold"]
      110 GETUPVAL                         R3 1
      111 GETTABLEKS                       R3 R3 K30 ["DataHook"]
      113 GETTABLEKS                       R3 R3 K34 ["ratio"]
      115 NEWTABLE                         R4 0 0
      117 GETIMPORT                        R5 K2 [Vector2.new]
      119 MOVE                             R6 R2
      120 MOVE                             R7 R2
      121 CALL                             R5 2 1
      122 GETUPVAL                         R6 1
      123 GETTABLEKS                       R6 R6 K3 ["PlotAbsoluteSize"]
      125 GETUPVAL                         R7 2
      126 GETTABLEKS                       R7 R7 K4 ["plotToAbs"]
      128 MOVE                             R8 R5
      129 MOVE                             R9 R6
      130 CALL                             R7 2 1
      131 MOVE                             R9 R4
      132 GETIMPORT                        R10 K6 [Path2DControlPoint.new]
      134 GETIMPORT                        R11 K9 [UDim2.fromOffset]
      136 GETTABLEKS                       R12 R7 K10 ["X"]
      138 GETTABLEKS                       R13 R7 K11 ["Y"]
      140 CALL                             R11 2 -1
      141 CALL                             R10 -1 -1
      142 FASTCALL                         TABLE_INSERT ; [+2]
      143 GETIMPORT                        R8 K14 [table.insert]
      145 CALL                             R8 -1 0
      146 GETIMPORT                        R5 K2 [Vector2.new]
      148 LOADN                            R6 30
      149 SUBRK                            R9 K35 [30] R2
      150 DIV                              R8 R9 R3
      151 ADD                              R7 R2 R8
      152 CALL                             R5 2 1
      153 GETUPVAL                         R6 1
      154 GETTABLEKS                       R6 R6 K3 ["PlotAbsoluteSize"]
      156 GETUPVAL                         R7 2
      157 GETTABLEKS                       R7 R7 K4 ["plotToAbs"]
      159 MOVE                             R8 R5
      160 MOVE                             R9 R6
      161 CALL                             R7 2 1
      162 MOVE                             R9 R4
      163 GETIMPORT                        R10 K6 [Path2DControlPoint.new]
      165 GETIMPORT                        R11 K9 [UDim2.fromOffset]
      167 GETTABLEKS                       R12 R7 K10 ["X"]
      169 GETTABLEKS                       R13 R7 K11 ["Y"]
      171 CALL                             R11 2 -1
      172 CALL                             R10 -1 -1
      173 FASTCALL                         TABLE_INSERT ; [+2]
      174 GETIMPORT                        R8 K14 [table.insert]
      176 CALL                             R8 -1 0
      177 GETUPVAL                         R5 3
      178 GETTABLEKS                       R5 R5 K15 ["createElement"]
      180 GETUPVAL                         R6 4
      181 DUPTABLE                         R7 K37 [{["ControlPoints"], ["Tag"] = "GuideCurve"}]
      182 SETTABLEKS                       R4 R7 K16 ["ControlPoints"]
      184 CALL                             R5 2 1
      185 SETTABLEKS                       R5 R0 K38 ["Control_Ratio"]
      187 GETUPVAL                         R2 1
      188 GETTABLEKS                       R2 R2 K21 ["ActiveControl"]
      190 JUMPIFNOTEQKS                    R2 K39 ["MakeupGain"] ; [+21]
      192 GETUPVAL                         R2 3
      193 GETTABLEKS                       R2 R2 K15 ["createElement"]
      195 GETUPVAL                         R3 5
      196 DUPTABLE                         R4 K29 [{["Orientation"] = "Horizontal", ["Position"], ["PlotAbsoluteSize"], ["Thickness"] = 1, ["Tag"] = "ControlLine"}]
      197 GETUPVAL                         R5 1
      198 GETTABLEKS                       R5 R5 K30 ["DataHook"]
      200 GETTABLEKS                       R5 R5 K40 ["makeupGain"]
      202 SETTABLEKS                       R5 R4 K25 ["Position"]
      204 GETUPVAL                         R5 1
      205 GETTABLEKS                       R5 R5 K3 ["PlotAbsoluteSize"]
      207 SETTABLEKS                       R5 R4 K3 ["PlotAbsoluteSize"]
      209 CALL                             R2 2 1
      210 SETTABLEKS                       R2 R0 K41 ["Control_MakeupGain"]
      212 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["DataHook"]
        2 GETTABLEKS                       R2 R2 K1 ["bypass"]
        4 NOT                              R1 R2
        5 GETUPVAL                         R2 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 NEWTABLE                         R4 0 3
       15 GETTABLEKS                       R5 R0 K0 ["DataHook"]
       17 GETTABLEKS                       R6 R0 K2 ["ActiveControl"]
       19 GETTABLEKS                       R7 R0 K3 ["PlotAbsoluteSize"]
       21 SETLIST                          R4 R5 3 [1]
       23 CALL                             R2 2 1
       24 MOVE                             R3 R1
       25 JUMPIFNOT                        R3 ; [+25]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K4 ["createElement"]
       29 GETUPVAL                         R4 5
       30 DUPTABLE                         R5 K13 [{["Active"] = True, ["ZIndex"] = 3, ["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
       31 GETIMPORT                        R6 K16 [UDim2.new]
       33 LOADN                            R7 0
       34 LOADN                            R8 0
       35 LOADN                            R9 0
       36 LOADN                            R10 0
       37 CALL                             R6 4 1
       38 SETTABLEKS                       R6 R5 K9 ["Position"]
       40 GETIMPORT                        R6 K16 [UDim2.new]
       42 LOADN                            R7 1
       43 LOADN                            R8 0
       44 LOADN                            R9 1
       45 LOADN                            R10 0
       46 CALL                             R6 4 1
       47 SETTABLEKS                       R6 R5 K10 ["Size"]
       49 MOVE                             R6 R2
       50 CALL                             R3 3 1
       51 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["AudioCompressorEditor"]
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
       33 GETTABLEKS                       R7 R1 K13 ["Src"]
       35 GETTABLEKS                       R7 R7 K14 ["Types"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K15 ["GridLine"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K16 ["Path2DWrapper"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K6 [require]
       50 GETTABLEKS                       R10 R1 K13 ["Src"]
       52 GETTABLEKS                       R10 R10 K17 ["Util"]
       54 GETTABLEKS                       R10 R10 K18 ["PlotUtil"]
       56 CALL                             R9 1 1
       57 DUPCLOSURE                       R10 K19 [PROTO_0]
       58 CAPTURE                          VAL R9
       59 DUPCLOSURE                       R11 K20 [PROTO_2]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R5
       66 RETURN                           R11 1
