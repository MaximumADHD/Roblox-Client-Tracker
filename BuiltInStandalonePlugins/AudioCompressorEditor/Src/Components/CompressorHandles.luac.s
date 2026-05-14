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
        9 LOADN                            R3 176
       10 LOADN                            R4 176
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
       69 DUPTABLE                         R4 K18 [{"ControlPoints", "Tag"}]
       70 SETTABLEKS                       R1 R4 K16 ["ControlPoints"]
       72 LOADK                            R5 K19 ["GridCurve"]
       73 SETTABLEKS                       R5 R4 K17 ["Tag"]
       75 CALL                             R2 2 1
       76 SETTABLEKS                       R2 R0 K20 ["Diagonal"]
       78 GETUPVAL                         R2 1
       79 GETTABLEKS                       R2 R2 K21 ["ActiveControl"]
       81 JUMPIFNOTEQKS                    R2 K22 ["Threshold"] ; [+30]
       83 GETUPVAL                         R2 3
       84 GETTABLEKS                       R2 R2 K15 ["createElement"]
       86 GETUPVAL                         R3 5
       87 DUPTABLE                         R4 K26 [{"Orientation", "Position", "PlotAbsoluteSize", "Thickness", "Tag"}]
       88 LOADK                            R5 K27 ["Horizontal"]
       89 SETTABLEKS                       R5 R4 K23 ["Orientation"]
       91 GETUPVAL                         R5 1
       92 GETTABLEKS                       R5 R5 K28 ["DataHook"]
       94 GETTABLEKS                       R5 R5 K29 ["threshold"]
       96 SETTABLEKS                       R5 R4 K24 ["Position"]
       98 GETUPVAL                         R5 1
       99 GETTABLEKS                       R5 R5 K3 ["PlotAbsoluteSize"]
      101 SETTABLEKS                       R5 R4 K3 ["PlotAbsoluteSize"]
      103 LOADN                            R5 1
      104 SETTABLEKS                       R5 R4 K25 ["Thickness"]
      106 LOADK                            R5 K30 ["ControlLine"]
      107 SETTABLEKS                       R5 R4 K17 ["Tag"]
      109 CALL                             R2 2 1
      110 SETTABLEKS                       R2 R0 K31 ["Control_Threshold"]
      112 GETUPVAL                         R2 1
      113 GETTABLEKS                       R2 R2 K21 ["ActiveControl"]
      115 JUMPIFNOTEQKS                    R2 K32 ["Ratio"] ; [+86]
      117 GETUPVAL                         R2 1
      118 GETTABLEKS                       R2 R2 K28 ["DataHook"]
      120 GETTABLEKS                       R2 R2 K29 ["threshold"]
      122 GETUPVAL                         R3 1
      123 GETTABLEKS                       R3 R3 K28 ["DataHook"]
      125 GETTABLEKS                       R3 R3 K33 ["ratio"]
      127 NEWTABLE                         R4 0 0
      129 GETIMPORT                        R5 K2 [Vector2.new]
      131 MOVE                             R6 R2
      132 MOVE                             R7 R2
      133 CALL                             R5 2 1
      134 GETUPVAL                         R6 1
      135 GETTABLEKS                       R6 R6 K3 ["PlotAbsoluteSize"]
      137 GETUPVAL                         R7 2
      138 GETTABLEKS                       R7 R7 K4 ["plotToAbs"]
      140 MOVE                             R8 R5
      141 MOVE                             R9 R6
      142 CALL                             R7 2 1
      143 MOVE                             R9 R4
      144 GETIMPORT                        R10 K6 [Path2DControlPoint.new]
      146 GETIMPORT                        R11 K9 [UDim2.fromOffset]
      148 GETTABLEKS                       R12 R7 K10 ["X"]
      150 GETTABLEKS                       R13 R7 K11 ["Y"]
      152 CALL                             R11 2 -1
      153 CALL                             R10 -1 -1
      154 FASTCALL                         TABLE_INSERT ; [+2]
      155 GETIMPORT                        R8 K14 [table.insert]
      157 CALL                             R8 -1 0
      158 GETIMPORT                        R5 K2 [Vector2.new]
      160 LOADN                            R6 30
      161 SUBRK                            R9 R34 K2 [Vector2.new]
      162 DIV                              R8 R9 R3
      163 ADD                              R7 R2 R8
      164 CALL                             R5 2 1
      165 GETUPVAL                         R6 1
      166 GETTABLEKS                       R6 R6 K3 ["PlotAbsoluteSize"]
      168 GETUPVAL                         R7 2
      169 GETTABLEKS                       R7 R7 K4 ["plotToAbs"]
      171 MOVE                             R8 R5
      172 MOVE                             R9 R6
      173 CALL                             R7 2 1
      174 MOVE                             R9 R4
      175 GETIMPORT                        R10 K6 [Path2DControlPoint.new]
      177 GETIMPORT                        R11 K9 [UDim2.fromOffset]
      179 GETTABLEKS                       R12 R7 K10 ["X"]
      181 GETTABLEKS                       R13 R7 K11 ["Y"]
      183 CALL                             R11 2 -1
      184 CALL                             R10 -1 -1
      185 FASTCALL                         TABLE_INSERT ; [+2]
      186 GETIMPORT                        R8 K14 [table.insert]
      188 CALL                             R8 -1 0
      189 GETUPVAL                         R5 3
      190 GETTABLEKS                       R5 R5 K15 ["createElement"]
      192 GETUPVAL                         R6 4
      193 DUPTABLE                         R7 K18 [{"ControlPoints", "Tag"}]
      194 SETTABLEKS                       R4 R7 K16 ["ControlPoints"]
      196 LOADK                            R8 K35 ["GuideCurve"]
      197 SETTABLEKS                       R8 R7 K17 ["Tag"]
      199 CALL                             R5 2 1
      200 SETTABLEKS                       R5 R0 K36 ["Control_Ratio"]
      202 GETUPVAL                         R2 1
      203 GETTABLEKS                       R2 R2 K21 ["ActiveControl"]
      205 JUMPIFNOTEQKS                    R2 K37 ["MakeupGain"] ; [+30]
      207 GETUPVAL                         R2 3
      208 GETTABLEKS                       R2 R2 K15 ["createElement"]
      210 GETUPVAL                         R3 5
      211 DUPTABLE                         R4 K26 [{"Orientation", "Position", "PlotAbsoluteSize", "Thickness", "Tag"}]
      212 LOADK                            R5 K27 ["Horizontal"]
      213 SETTABLEKS                       R5 R4 K23 ["Orientation"]
      215 GETUPVAL                         R5 1
      216 GETTABLEKS                       R5 R5 K28 ["DataHook"]
      218 GETTABLEKS                       R5 R5 K38 ["makeupGain"]
      220 SETTABLEKS                       R5 R4 K24 ["Position"]
      222 GETUPVAL                         R5 1
      223 GETTABLEKS                       R5 R5 K3 ["PlotAbsoluteSize"]
      225 SETTABLEKS                       R5 R4 K3 ["PlotAbsoluteSize"]
      227 LOADN                            R5 1
      228 SETTABLEKS                       R5 R4 K25 ["Thickness"]
      230 LOADK                            R5 K30 ["ControlLine"]
      231 SETTABLEKS                       R5 R4 K17 ["Tag"]
      233 CALL                             R2 2 1
      234 SETTABLEKS                       R2 R0 K39 ["Control_MakeupGain"]
      236 RETURN                           R0 1

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
       25 JUMPIFNOT                        R3 ; [+34]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K4 ["createElement"]
       29 GETUPVAL                         R4 5
       30 DUPTABLE                         R5 K10 [{"Active", "ZIndex", "Position", "Size", "BackgroundTransparency"}]
       31 LOADB                            R6 1
       32 SETTABLEKS                       R6 R5 K5 ["Active"]
       34 LOADN                            R6 3
       35 SETTABLEKS                       R6 R5 K6 ["ZIndex"]
       37 GETIMPORT                        R6 K13 [UDim2.new]
       39 LOADN                            R7 0
       40 LOADN                            R8 0
       41 LOADN                            R9 0
       42 LOADN                            R10 0
       43 CALL                             R6 4 1
       44 SETTABLEKS                       R6 R5 K7 ["Position"]
       46 GETIMPORT                        R6 K13 [UDim2.new]
       48 LOADN                            R7 1
       49 LOADN                            R8 0
       50 LOADN                            R9 1
       51 LOADN                            R10 0
       52 CALL                             R6 4 1
       53 SETTABLEKS                       R6 R5 K8 ["Size"]
       55 LOADN                            R6 1
       56 SETTABLEKS                       R6 R5 K9 ["BackgroundTransparency"]
       58 MOVE                             R6 R2
       59 CALL                             R3 3 1
       60 RETURN                           R3 1

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
