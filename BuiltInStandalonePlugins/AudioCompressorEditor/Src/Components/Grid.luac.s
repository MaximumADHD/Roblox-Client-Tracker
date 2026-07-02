PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R3 -80
        3 LOADN                            R1 30
        4 LOADN                            R2 10
        5 FORNPREP                         R1
        6 MODK                             R5 R3 K0 [30]
        7 JUMPIFEQKN                       R5 K1 [0] ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 LOADK                            R6 K2 ["GridLine_V_"]
       12 MOVE                             R7 R3
       13 CONCAT                           R5 R6 R7
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K3 ["createElement"]
       17 GETUPVAL                         R7 1
       18 DUPTABLE                         R8 K12 [{["Position"], ["PlotAbsoluteSize"], ["Orientation"] = "Vertical", ["Thickness"], ["Alpha"], ["Tag"] = "Grid"}]
       19 SETTABLEKS                       R3 R8 K4 ["Position"]
       21 GETUPVAL                         R9 2
       22 GETTABLEKS                       R9 R9 K5 ["PlotAbsoluteSize"]
       24 SETTABLEKS                       R9 R8 K5 ["PlotAbsoluteSize"]
       26 JUMPIFNOT                        R4 ; [+2]
       27 LOADN                            R9 2
       28 JUMP                             ; [+1]
       29 LOADN                            R9 1
       30 SETTABLEKS                       R9 R8 K8 ["Thickness"]
       32 JUMPIFNOT                        R4 ; [+2]
       33 LOADK                            R9 K13 [0.75]
       34 JUMP                             ; [+1]
       35 LOADK                            R9 K14 [0.5]
       36 SETTABLEKS                       R9 R8 K9 ["Alpha"]
       38 CALL                             R6 2 1
       39 SETTABLE                         R6 R0 R5
       40 JUMPIFNOT                        R4 ; [+39]
       41 LOADK                            R6 K15 ["GridLabel_V_"]
       42 MOVE                             R7 R3
       43 CONCAT                           R5 R6 R7
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K3 ["createElement"]
       47 GETUPVAL                         R7 3
       48 DUPTABLE                         R8 K20 [{["Position"], ["AnchorPoint"], ["Offset"] = 5, ["Label"], ["PlotAbsoluteSize"], ["Tag"] = "Grid"}]
       49 GETIMPORT                        R9 K23 [Vector2.new]
       51 MOVE                             R10 R3
       52 GETUPVAL                         R11 4
       53 GETTABLEKS                       R11 R11 K24 ["getYMin"]
       55 CALL                             R11 0 -1
       56 CALL                             R9 -1 1
       57 SETTABLEKS                       R9 R8 K4 ["Position"]
       59 GETIMPORT                        R9 K23 [Vector2.new]
       61 LOADK                            R10 K14 [0.5]
       62 LOADN                            R11 0
       63 CALL                             R9 2 1
       64 SETTABLEKS                       R9 R8 K16 ["AnchorPoint"]
       66 GETIMPORT                        R9 K27 [string.format]
       68 LOADK                            R10 K28 ["%.0f"]
       69 MOVE                             R11 R3
       70 CALL                             R9 2 1
       71 SETTABLEKS                       R9 R8 K19 ["Label"]
       73 GETUPVAL                         R9 2
       74 GETTABLEKS                       R9 R9 K5 ["PlotAbsoluteSize"]
       76 SETTABLEKS                       R9 R8 K5 ["PlotAbsoluteSize"]
       78 CALL                             R6 2 1
       79 SETTABLE                         R6 R0 R5
       80 FORNLOOP                         R1
       81 LOADN                            R3 -80
       82 LOADN                            R1 30
       83 LOADN                            R2 10
       84 FORNPREP                         R1
       85 MODK                             R5 R3 K0 [30]
       86 JUMPIFEQKN                       R5 K1 [0] ; [+2]
       88 LOADB                            R4 0 +1
       89 LOADB                            R4 1
       90 LOADK                            R6 K29 ["GridLine_H_"]
       91 MOVE                             R7 R3
       92 CONCAT                           R5 R6 R7
       93 GETUPVAL                         R6 0
       94 GETTABLEKS                       R6 R6 K3 ["createElement"]
       96 GETUPVAL                         R7 1
       97 DUPTABLE                         R8 K31 [{["Position"], ["PlotAbsoluteSize"], ["Orientation"] = "Horizontal", ["Thickness"], ["Alpha"], ["Tag"] = "Grid"}]
       98 SETTABLEKS                       R3 R8 K4 ["Position"]
      100 GETUPVAL                         R9 2
      101 GETTABLEKS                       R9 R9 K5 ["PlotAbsoluteSize"]
      103 SETTABLEKS                       R9 R8 K5 ["PlotAbsoluteSize"]
      105 JUMPIFNOT                        R4 ; [+2]
      106 LOADN                            R9 2
      107 JUMP                             ; [+1]
      108 LOADN                            R9 1
      109 SETTABLEKS                       R9 R8 K8 ["Thickness"]
      111 JUMPIFNOT                        R4 ; [+2]
      112 LOADK                            R9 K13 [0.75]
      113 JUMP                             ; [+1]
      114 LOADK                            R9 K14 [0.5]
      115 SETTABLEKS                       R9 R8 K9 ["Alpha"]
      117 CALL                             R6 2 1
      118 SETTABLE                         R6 R0 R5
      119 JUMPIFNOT                        R4 ; [+39]
      120 LOADK                            R6 K32 ["GridLabel_H_"]
      121 MOVE                             R7 R3
      122 CONCAT                           R5 R6 R7
      123 GETUPVAL                         R6 0
      124 GETTABLEKS                       R6 R6 K3 ["createElement"]
      126 GETUPVAL                         R7 3
      127 DUPTABLE                         R8 K20 [{["Position"], ["AnchorPoint"], ["Offset"] = 5, ["Label"], ["PlotAbsoluteSize"], ["Tag"] = "Grid"}]
      128 GETIMPORT                        R9 K23 [Vector2.new]
      130 GETUPVAL                         R10 4
      131 GETTABLEKS                       R10 R10 K33 ["getXMin"]
      133 CALL                             R10 0 1
      134 MOVE                             R11 R3
      135 CALL                             R9 2 1
      136 SETTABLEKS                       R9 R8 K4 ["Position"]
      138 GETIMPORT                        R9 K23 [Vector2.new]
      140 LOADN                            R10 1
      141 LOADK                            R11 K14 [0.5]
      142 CALL                             R9 2 1
      143 SETTABLEKS                       R9 R8 K16 ["AnchorPoint"]
      145 GETIMPORT                        R9 K27 [string.format]
      147 LOADK                            R10 K28 ["%.0f"]
      148 MOVE                             R11 R3
      149 CALL                             R9 2 1
      150 SETTABLEKS                       R9 R8 K19 ["Label"]
      152 GETUPVAL                         R9 2
      153 GETTABLEKS                       R9 R9 K5 ["PlotAbsoluteSize"]
      155 SETTABLEKS                       R9 R8 K5 ["PlotAbsoluteSize"]
      157 CALL                             R6 2 1
      158 SETTABLE                         R6 R0 R5
      159 FORNLOOP                         R1
      160 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 NEWTABLE                         R3 0 1
        9 GETTABLEKS                       R4 R0 K0 ["PlotAbsoluteSize"]
       11 SETLIST                          R3 R4 1 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K1 ["createElement"]
       17 GETUPVAL                         R3 5
       18 DUPTABLE                         R4 K9 [{["Active"] = True, ["ZIndex"] = 1, ["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
       19 GETIMPORT                        R5 K12 [UDim2.new]
       21 LOADN                            R6 0
       22 LOADN                            R7 0
       23 LOADN                            R8 0
       24 LOADN                            R9 0
       25 CALL                             R5 4 1
       26 SETTABLEKS                       R5 R4 K6 ["Position"]
       28 GETIMPORT                        R5 K12 [UDim2.new]
       30 LOADN                            R6 1
       31 LOADN                            R7 0
       32 LOADN                            R8 1
       33 LOADN                            R9 0
       34 CALL                             R5 4 1
       35 SETTABLEKS                       R5 R4 K7 ["Size"]
       37 MOVE                             R5 R1
       38 CALL                             R2 3 -1
       39 RETURN                           R2 -1

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
       33 GETTABLEKS                       R7 R0 K13 ["GridLabel"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K14 ["GridLine"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R1 K15 ["Src"]
       45 GETTABLEKS                       R9 R9 K16 ["Util"]
       47 GETTABLEKS                       R9 R9 K17 ["PlotUtil"]
       49 CALL                             R8 1 1
       50 DUPCLOSURE                       R9 K18 [PROTO_1]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R5
       57 RETURN                           R9 1
