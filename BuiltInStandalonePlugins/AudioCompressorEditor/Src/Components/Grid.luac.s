PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R3 176
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
       18 DUPTABLE                         R8 K10 [{"Position", "PlotAbsoluteSize", "Orientation", "Thickness", "Alpha", "Tag"}]
       19 SETTABLEKS                       R3 R8 K4 ["Position"]
       21 GETUPVAL                         R9 2
       22 GETTABLEKS                       R9 R9 K5 ["PlotAbsoluteSize"]
       24 SETTABLEKS                       R9 R8 K5 ["PlotAbsoluteSize"]
       26 LOADK                            R9 K11 ["Vertical"]
       27 SETTABLEKS                       R9 R8 K6 ["Orientation"]
       29 JUMPIFNOT                        R4 ; [+2]
       30 LOADN                            R9 2
       31 JUMP                             ; [+1]
       32 LOADN                            R9 1
       33 SETTABLEKS                       R9 R8 K7 ["Thickness"]
       35 JUMPIFNOT                        R4 ; [+2]
       36 LOADK                            R9 K12 [0.75]
       37 JUMP                             ; [+1]
       38 LOADK                            R9 K13 [0.5]
       39 SETTABLEKS                       R9 R8 K8 ["Alpha"]
       41 LOADK                            R9 K14 ["Grid"]
       42 SETTABLEKS                       R9 R8 K9 ["Tag"]
       44 CALL                             R6 2 1
       45 SETTABLE                         R6 R0 R5
       46 JUMPIFNOT                        R4 ; [+45]
       47 LOADK                            R6 K15 ["GridLabel_V_"]
       48 MOVE                             R7 R3
       49 CONCAT                           R5 R6 R7
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K3 ["createElement"]
       53 GETUPVAL                         R7 3
       54 DUPTABLE                         R8 K19 [{"Position", "AnchorPoint", "Offset", "Label", "PlotAbsoluteSize", "Tag"}]
       55 GETIMPORT                        R9 K22 [Vector2.new]
       57 MOVE                             R10 R3
       58 GETUPVAL                         R11 4
       59 GETTABLEKS                       R11 R11 K23 ["getYMin"]
       61 CALL                             R11 0 -1
       62 CALL                             R9 -1 1
       63 SETTABLEKS                       R9 R8 K4 ["Position"]
       65 GETIMPORT                        R9 K22 [Vector2.new]
       67 LOADK                            R10 K13 [0.5]
       68 LOADN                            R11 0
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K16 ["AnchorPoint"]
       72 LOADN                            R9 5
       73 SETTABLEKS                       R9 R8 K17 ["Offset"]
       75 GETIMPORT                        R9 K26 [string.format]
       77 LOADK                            R10 K27 ["%.0f"]
       78 MOVE                             R11 R3
       79 CALL                             R9 2 1
       80 SETTABLEKS                       R9 R8 K18 ["Label"]
       82 GETUPVAL                         R9 2
       83 GETTABLEKS                       R9 R9 K5 ["PlotAbsoluteSize"]
       85 SETTABLEKS                       R9 R8 K5 ["PlotAbsoluteSize"]
       87 LOADK                            R9 K14 ["Grid"]
       88 SETTABLEKS                       R9 R8 K9 ["Tag"]
       90 CALL                             R6 2 1
       91 SETTABLE                         R6 R0 R5
       92 FORNLOOP                         R1
       93 LOADN                            R3 176
       94 LOADN                            R1 30
       95 LOADN                            R2 10
       96 FORNPREP                         R1
       97 MODK                             R5 R3 K0 [30]
       98 JUMPIFEQKN                       R5 K1 [0] ; [+2]
      100 LOADB                            R4 0 +1
      101 LOADB                            R4 1
      102 LOADK                            R6 K28 ["GridLine_H_"]
      103 MOVE                             R7 R3
      104 CONCAT                           R5 R6 R7
      105 GETUPVAL                         R6 0
      106 GETTABLEKS                       R6 R6 K3 ["createElement"]
      108 GETUPVAL                         R7 1
      109 DUPTABLE                         R8 K10 [{"Position", "PlotAbsoluteSize", "Orientation", "Thickness", "Alpha", "Tag"}]
      110 SETTABLEKS                       R3 R8 K4 ["Position"]
      112 GETUPVAL                         R9 2
      113 GETTABLEKS                       R9 R9 K5 ["PlotAbsoluteSize"]
      115 SETTABLEKS                       R9 R8 K5 ["PlotAbsoluteSize"]
      117 LOADK                            R9 K29 ["Horizontal"]
      118 SETTABLEKS                       R9 R8 K6 ["Orientation"]
      120 JUMPIFNOT                        R4 ; [+2]
      121 LOADN                            R9 2
      122 JUMP                             ; [+1]
      123 LOADN                            R9 1
      124 SETTABLEKS                       R9 R8 K7 ["Thickness"]
      126 JUMPIFNOT                        R4 ; [+2]
      127 LOADK                            R9 K12 [0.75]
      128 JUMP                             ; [+1]
      129 LOADK                            R9 K13 [0.5]
      130 SETTABLEKS                       R9 R8 K8 ["Alpha"]
      132 LOADK                            R9 K14 ["Grid"]
      133 SETTABLEKS                       R9 R8 K9 ["Tag"]
      135 CALL                             R6 2 1
      136 SETTABLE                         R6 R0 R5
      137 JUMPIFNOT                        R4 ; [+45]
      138 LOADK                            R6 K30 ["GridLabel_H_"]
      139 MOVE                             R7 R3
      140 CONCAT                           R5 R6 R7
      141 GETUPVAL                         R6 0
      142 GETTABLEKS                       R6 R6 K3 ["createElement"]
      144 GETUPVAL                         R7 3
      145 DUPTABLE                         R8 K19 [{"Position", "AnchorPoint", "Offset", "Label", "PlotAbsoluteSize", "Tag"}]
      146 GETIMPORT                        R9 K22 [Vector2.new]
      148 GETUPVAL                         R10 4
      149 GETTABLEKS                       R10 R10 K31 ["getXMin"]
      151 CALL                             R10 0 1
      152 MOVE                             R11 R3
      153 CALL                             R9 2 1
      154 SETTABLEKS                       R9 R8 K4 ["Position"]
      156 GETIMPORT                        R9 K22 [Vector2.new]
      158 LOADN                            R10 1
      159 LOADK                            R11 K13 [0.5]
      160 CALL                             R9 2 1
      161 SETTABLEKS                       R9 R8 K16 ["AnchorPoint"]
      163 LOADN                            R9 5
      164 SETTABLEKS                       R9 R8 K17 ["Offset"]
      166 GETIMPORT                        R9 K26 [string.format]
      168 LOADK                            R10 K27 ["%.0f"]
      169 MOVE                             R11 R3
      170 CALL                             R9 2 1
      171 SETTABLEKS                       R9 R8 K18 ["Label"]
      173 GETUPVAL                         R9 2
      174 GETTABLEKS                       R9 R9 K5 ["PlotAbsoluteSize"]
      176 SETTABLEKS                       R9 R8 K5 ["PlotAbsoluteSize"]
      178 LOADK                            R9 K14 ["Grid"]
      179 SETTABLEKS                       R9 R8 K9 ["Tag"]
      181 CALL                             R6 2 1
      182 SETTABLE                         R6 R0 R5
      183 FORNLOOP                         R1
      184 RETURN                           R0 1

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
       18 DUPTABLE                         R4 K7 [{"Active", "ZIndex", "Position", "Size", "BackgroundTransparency"}]
       19 LOADB                            R5 1
       20 SETTABLEKS                       R5 R4 K2 ["Active"]
       22 LOADN                            R5 1
       23 SETTABLEKS                       R5 R4 K3 ["ZIndex"]
       25 GETIMPORT                        R5 K10 [UDim2.new]
       27 LOADN                            R6 0
       28 LOADN                            R7 0
       29 LOADN                            R8 0
       30 LOADN                            R9 0
       31 CALL                             R5 4 1
       32 SETTABLEKS                       R5 R4 K4 ["Position"]
       34 GETIMPORT                        R5 K10 [UDim2.new]
       36 LOADN                            R6 1
       37 LOADN                            R7 0
       38 LOADN                            R8 1
       39 LOADN                            R9 0
       40 CALL                             R5 4 1
       41 SETTABLEKS                       R5 R4 K5 ["Size"]
       43 LOADN                            R5 1
       44 SETTABLEKS                       R5 R4 K6 ["BackgroundTransparency"]
       46 MOVE                             R5 R1
       47 CALL                             R2 3 -1
       48 RETURN                           R2 -1

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
