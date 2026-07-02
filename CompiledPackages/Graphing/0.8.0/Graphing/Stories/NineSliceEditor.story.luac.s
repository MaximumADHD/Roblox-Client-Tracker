PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["Axis"]
        6 JUMPIFNOTEQKS                    R2 K1 ["X"] ; [+4]
        8 GETTABLEKS                       R1 R0 K1 ["X"]
       10 JUMP                             ; [+2]
       11 GETTABLEKS                       R1 R0 K2 ["Y"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["OnPositionChanged"]
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R2
       12 NEWCLOSURE                       R6 P1
       13 CAPTURE                          VAL R2
       14 NEWCLOSURE                       R7 P2
       15 CAPTURE                          VAL R2
       16 NEWCLOSURE                       R8 P3
       17 CAPTURE                          VAL R4
       18 NEWCLOSURE                       R9 P4
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R0
       21 NEWCLOSURE                       R10 P5
       22 CAPTURE                          VAL R4
       23 GETUPVAL                         R11 0
       24 GETTABLEKS                       R11 R11 K1 ["createElement"]
       26 GETUPVAL                         R12 0
       27 GETTABLEKS                       R12 R12 K2 ["Fragment"]
       29 NEWTABLE                         R13 0 0
       31 DUPTABLE                         R14 K6 [{"Line", "Arrow1", "Arrow2"}]
       32 GETUPVAL                         R15 0
       33 GETTABLEKS                       R15 R15 K1 ["createElement"]
       35 GETUPVAL                         R16 1
       36 DUPTABLE                         R17 K11 [{"Orientation", "Position", "Color3", "Thickness"}]
       37 GETTABLEKS                       R19 R0 K12 ["Axis"]
       39 JUMPIFNOTEQKS                    R19 K13 ["X"] ; [+3]
       41 LOADK                            R18 K14 ["Vertical"]
       42 JUMP                             ; [+1]
       43 LOADK                            R18 K15 ["Horizontal"]
       44 SETTABLEKS                       R18 R17 K7 ["Orientation"]
       46 GETTABLEKS                       R18 R0 K8 ["Position"]
       48 SETTABLEKS                       R18 R17 K8 ["Position"]
       50 GETIMPORT                        R18 K17 [Color3.fromRGB]
       52 LOADN                            R19 255
       53 LOADN                            R20 100
       54 LOADN                            R21 100
       55 CALL                             R18 3 1
       56 SETTABLEKS                       R18 R17 K9 ["Color3"]
       58 JUMPIFNOT                        R1 ; [+2]
       59 LOADN                            R18 2
       60 JUMP                             ; [+1]
       61 LOADN                            R18 1
       62 SETTABLEKS                       R18 R17 K10 ["Thickness"]
       64 DUPTABLE                         R18 K19 [{"Input"}]
       65 GETUPVAL                         R19 0
       66 GETTABLEKS                       R19 R19 K1 ["createElement"]
       68 GETUPVAL                         R20 2
       69 DUPTABLE                         R21 K31 [{["Inflate"] = 5, ["XSnap"] = 1, ["YSnap"] = 1, ["OnHoverStart"], ["OnHoverMoved"], ["OnHoverEnded"], ["OnDragStart"], ["OnDragMoved"], ["OnDragEnded"]}]
       70 SETTABLEKS                       R5 R21 K25 ["OnHoverStart"]
       72 SETTABLEKS                       R6 R21 K26 ["OnHoverMoved"]
       74 SETTABLEKS                       R7 R21 K27 ["OnHoverEnded"]
       76 SETTABLEKS                       R8 R21 K28 ["OnDragStart"]
       78 SETTABLEKS                       R9 R21 K29 ["OnDragMoved"]
       80 SETTABLEKS                       R10 R21 K30 ["OnDragEnded"]
       82 CALL                             R19 2 1
       83 SETTABLEKS                       R19 R18 K18 ["Input"]
       85 CALL                             R15 3 1
       86 SETTABLEKS                       R15 R14 K3 ["Line"]
       88 GETUPVAL                         R15 0
       89 GETTABLEKS                       R15 R15 K1 ["createElement"]
       91 GETUPVAL                         R16 3
       92 DUPTABLE                         R17 K33 [{"Side", "Position"}]
       93 GETTABLEKS                       R19 R0 K12 ["Axis"]
       95 JUMPIFNOTEQKS                    R19 K13 ["X"] ; [+3]
       97 LOADK                            R18 K34 ["Top"]
       98 JUMP                             ; [+1]
       99 LOADK                            R18 K35 ["Left"]
      100 SETTABLEKS                       R18 R17 K32 ["Side"]
      102 GETTABLEKS                       R18 R0 K8 ["Position"]
      104 SETTABLEKS                       R18 R17 K8 ["Position"]
      106 DUPTABLE                         R18 K37 [{"TriangleVisual"}]
      107 GETUPVAL                         R19 0
      108 GETTABLEKS                       R19 R19 K1 ["createElement"]
      110 LOADK                            R20 K38 ["ImageButton"]
      111 DUPTABLE                         R21 K48 [{["AnchorPoint"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ImageColor3"], ["Image"] = "rbxasset://textures/smallTriangle.png", ["Rotation"]}]
      112 GETTABLEKS                       R23 R0 K12 ["Axis"]
      114 JUMPIFNOTEQKS                    R23 K13 ["X"] ; [+7]
      116 GETIMPORT                        R22 K51 [Vector2.new]
      118 LOADK                            R23 K52 [0.5]
      119 LOADN                            R24 1
      120 CALL                             R22 2 1
      121 JUMP                             ; [+5]
      122 GETIMPORT                        R22 K51 [Vector2.new]
      124 LOADN                            R23 1
      125 LOADK                            R24 K52 [0.5]
      126 CALL                             R22 2 1
      127 SETTABLEKS                       R22 R21 K39 ["AnchorPoint"]
      129 JUMPIFNOT                        R1 ; [+6]
      130 GETIMPORT                        R22 K55 [UDim2.fromOffset]
      132 LOADN                            R23 12
      133 LOADN                            R24 12
      134 CALL                             R22 2 1
      135 JUMP                             ; [+5]
      136 GETIMPORT                        R22 K55 [UDim2.fromOffset]
      138 LOADN                            R23 10
      139 LOADN                            R24 10
      140 CALL                             R22 2 1
      141 SETTABLEKS                       R22 R21 K40 ["Size"]
      143 JUMPIFNOT                        R1 ; [+7]
      144 GETIMPORT                        R22 K17 [Color3.fromRGB]
      146 LOADN                            R23 255
      147 LOADN                            R24 255
      148 LOADN                            R25 100
      149 CALL                             R22 3 1
      150 JUMP                             ; [+6]
      151 GETIMPORT                        R22 K17 [Color3.fromRGB]
      153 LOADN                            R23 255
      154 LOADN                            R24 255
      155 LOADN                            R25 255
      156 CALL                             R22 3 1
      157 SETTABLEKS                       R22 R21 K44 ["ImageColor3"]
      159 GETTABLEKS                       R23 R0 K12 ["Axis"]
      161 JUMPIFNOTEQKS                    R23 K13 ["X"] ; [+3]
      163 LOADN                            R22 180
      164 JUMP                             ; [+1]
      165 LOADN                            R22 90
      166 SETTABLEKS                       R22 R21 K47 ["Rotation"]
      168 DUPTABLE                         R22 K19 [{"Input"}]
      169 GETUPVAL                         R23 0
      170 GETTABLEKS                       R23 R23 K1 ["createElement"]
      172 GETUPVAL                         R24 2
      173 DUPTABLE                         R25 K57 [{["Inflate"] = 2, ["XSnap"] = 1, ["YSnap"] = 1, ["OnHoverStart"], ["OnHoverMoved"], ["OnHoverEnded"], ["OnDragStart"], ["OnDragMoved"], ["OnDragEnded"]}]
      174 SETTABLEKS                       R5 R25 K25 ["OnHoverStart"]
      176 SETTABLEKS                       R6 R25 K26 ["OnHoverMoved"]
      178 SETTABLEKS                       R7 R25 K27 ["OnHoverEnded"]
      180 SETTABLEKS                       R8 R25 K28 ["OnDragStart"]
      182 SETTABLEKS                       R9 R25 K29 ["OnDragMoved"]
      184 SETTABLEKS                       R10 R25 K30 ["OnDragEnded"]
      186 CALL                             R23 2 1
      187 SETTABLEKS                       R23 R22 K18 ["Input"]
      189 CALL                             R19 3 1
      190 SETTABLEKS                       R19 R18 K36 ["TriangleVisual"]
      192 CALL                             R15 3 1
      193 SETTABLEKS                       R15 R14 K4 ["Arrow1"]
      195 GETUPVAL                         R15 0
      196 GETTABLEKS                       R15 R15 K1 ["createElement"]
      198 GETUPVAL                         R16 3
      199 DUPTABLE                         R17 K33 [{"Side", "Position"}]
      200 GETTABLEKS                       R19 R0 K12 ["Axis"]
      202 JUMPIFNOTEQKS                    R19 K13 ["X"] ; [+3]
      204 LOADK                            R18 K58 ["Bottom"]
      205 JUMP                             ; [+1]
      206 LOADK                            R18 K59 ["Right"]
      207 SETTABLEKS                       R18 R17 K32 ["Side"]
      209 GETTABLEKS                       R18 R0 K8 ["Position"]
      211 SETTABLEKS                       R18 R17 K8 ["Position"]
      213 DUPTABLE                         R18 K37 [{"TriangleVisual"}]
      214 GETUPVAL                         R19 0
      215 GETTABLEKS                       R19 R19 K1 ["createElement"]
      217 LOADK                            R20 K38 ["ImageButton"]
      218 DUPTABLE                         R21 K48 [{["AnchorPoint"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ImageColor3"], ["Image"] = "rbxasset://textures/smallTriangle.png", ["Rotation"]}]
      219 GETTABLEKS                       R23 R0 K12 ["Axis"]
      221 JUMPIFNOTEQKS                    R23 K13 ["X"] ; [+7]
      223 GETIMPORT                        R22 K51 [Vector2.new]
      225 LOADK                            R23 K52 [0.5]
      226 LOADN                            R24 0
      227 CALL                             R22 2 1
      228 JUMP                             ; [+5]
      229 GETIMPORT                        R22 K51 [Vector2.new]
      231 LOADN                            R23 0
      232 LOADK                            R24 K52 [0.5]
      233 CALL                             R22 2 1
      234 SETTABLEKS                       R22 R21 K39 ["AnchorPoint"]
      236 GETIMPORT                        R22 K55 [UDim2.fromOffset]
      238 LOADN                            R23 10
      239 LOADN                            R24 10
      240 CALL                             R22 2 1
      241 SETTABLEKS                       R22 R21 K40 ["Size"]
      243 JUMPIFNOT                        R1 ; [+7]
      244 GETIMPORT                        R22 K17 [Color3.fromRGB]
      246 LOADN                            R23 255
      247 LOADN                            R24 255
      248 LOADN                            R25 100
      249 CALL                             R22 3 1
      250 JUMP                             ; [+6]
      251 GETIMPORT                        R22 K17 [Color3.fromRGB]
      253 LOADN                            R23 255
      254 LOADN                            R24 255
      255 LOADN                            R25 255
      256 CALL                             R22 3 1
      257 SETTABLEKS                       R22 R21 K44 ["ImageColor3"]
      259 GETTABLEKS                       R23 R0 K12 ["Axis"]
      261 JUMPIFNOTEQKS                    R23 K13 ["X"] ; [+3]
      263 LOADN                            R22 0
      264 JUMP                             ; [+1]
      265 LOADN                            R22 -90
      266 SETTABLEKS                       R22 R21 K47 ["Rotation"]
      268 DUPTABLE                         R22 K19 [{"Input"}]
      269 GETUPVAL                         R23 0
      270 GETTABLEKS                       R23 R23 K1 ["createElement"]
      272 GETUPVAL                         R24 2
      273 DUPTABLE                         R25 K57 [{["Inflate"] = 2, ["XSnap"] = 1, ["YSnap"] = 1, ["OnHoverStart"], ["OnHoverMoved"], ["OnHoverEnded"], ["OnDragStart"], ["OnDragMoved"], ["OnDragEnded"]}]
      274 SETTABLEKS                       R5 R25 K25 ["OnHoverStart"]
      276 SETTABLEKS                       R6 R25 K26 ["OnHoverMoved"]
      278 SETTABLEKS                       R7 R25 K27 ["OnHoverEnded"]
      280 SETTABLEKS                       R8 R25 K28 ["OnDragStart"]
      282 SETTABLEKS                       R9 R25 K29 ["OnDragMoved"]
      284 SETTABLEKS                       R10 R25 K30 ["OnDragEnded"]
      286 CALL                             R23 2 1
      287 SETTABLEKS                       R23 R22 K18 ["Input"]
      289 CALL                             R19 3 1
      290 SETTABLEKS                       R19 R18 K36 ["TriangleVisual"]
      292 CALL                             R15 3 1
      293 SETTABLEKS                       R15 R14 K5 ["Arrow2"]
      295 CALL                             R11 3 -1
      296 RETURN                           R11 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [Rect.new]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K3 ["Min"]
        7 GETTABLEKS                       R4 R4 K4 ["Y"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K5 ["Max"]
       12 GETTABLEKS                       R5 R5 K6 ["X"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K5 ["Max"]
       17 GETTABLEKS                       R6 R6 K4 ["Y"]
       19 CALL                             R2 4 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [Rect.new]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K3 ["Min"]
        6 GETTABLEKS                       R3 R3 K4 ["X"]
        8 MOVE                             R4 R0
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K5 ["Max"]
       12 GETTABLEKS                       R5 R5 K4 ["X"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K5 ["Max"]
       17 GETTABLEKS                       R6 R6 K6 ["Y"]
       19 CALL                             R2 4 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [Rect.new]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K3 ["Min"]
        6 GETTABLEKS                       R3 R3 K4 ["X"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["Min"]
       11 GETTABLEKS                       R4 R4 K5 ["Y"]
       13 MOVE                             R5 R0
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K6 ["Max"]
       17 GETTABLEKS                       R6 R6 K5 ["Y"]
       19 CALL                             R2 4 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [Rect.new]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K3 ["Min"]
        6 GETTABLEKS                       R3 R3 K4 ["X"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["Min"]
       11 GETTABLEKS                       R4 R4 K5 ["Y"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K6 ["Max"]
       16 GETTABLEKS                       R5 R5 K4 ["X"]
       18 MOVE                             R6 R0
       19 CALL                             R2 4 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 LOADN                            R2 256
        3 LOADN                            R3 256
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K3 ["useState"]
        8 GETIMPORT                        R3 K5 [Rect.new]
       10 LOADN                            R4 60
       11 LOADN                            R5 54
       12 LOADN                            R6 196
       13 LOADN                            R7 190
       14 CALL                             R3 4 -1
       15 CALL                             R2 -1 2
       16 DUPTABLE                         R4 K7 [{"Image"}]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K8 ["createElement"]
       20 LOADK                            R6 K9 ["ImageLabel"]
       21 DUPTABLE                         R7 K12 [{["Size"], ["Image"] = "rbxasset://textures/particles/SquareParticle.png"}]
       22 GETIMPORT                        R8 K15 [UDim2.fromScale]
       24 LOADN                            R9 1
       25 LOADN                            R10 1
       26 CALL                             R8 2 1
       27 SETTABLEKS                       R8 R7 K10 ["Size"]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K6 ["Image"]
       32 DUPTABLE                         R5 K20 [{"LineXMin", "LineYMin", "LineXMax", "LineYMax"}]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K8 ["createElement"]
       36 GETUPVAL                         R7 1
       37 DUPTABLE                         R8 K25 [{["Axis"] = "X", ["Position"], ["OnPositionChanged"]}]
       38 GETTABLEKS                       R9 R2 K26 ["Min"]
       40 GETTABLEKS                       R9 R9 K22 ["X"]
       42 SETTABLEKS                       R9 R8 K23 ["Position"]
       44 NEWCLOSURE                       R9 P0
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R9 R8 K24 ["OnPositionChanged"]
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K16 ["LineXMin"]
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R6 R6 K8 ["createElement"]
       55 GETUPVAL                         R7 1
       56 DUPTABLE                         R8 K28 [{["Axis"] = "Y", ["Position"], ["OnPositionChanged"]}]
       57 GETTABLEKS                       R9 R2 K26 ["Min"]
       59 GETTABLEKS                       R9 R9 K27 ["Y"]
       61 SETTABLEKS                       R9 R8 K23 ["Position"]
       63 NEWCLOSURE                       R9 P1
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R2
       66 SETTABLEKS                       R9 R8 K24 ["OnPositionChanged"]
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K17 ["LineYMin"]
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R6 R6 K8 ["createElement"]
       74 GETUPVAL                         R7 1
       75 DUPTABLE                         R8 K25 [{["Axis"] = "X", ["Position"], ["OnPositionChanged"]}]
       76 GETTABLEKS                       R9 R2 K29 ["Max"]
       78 GETTABLEKS                       R9 R9 K22 ["X"]
       80 SETTABLEKS                       R9 R8 K23 ["Position"]
       82 NEWCLOSURE                       R9 P2
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R2
       85 SETTABLEKS                       R9 R8 K24 ["OnPositionChanged"]
       87 CALL                             R6 2 1
       88 SETTABLEKS                       R6 R5 K18 ["LineXMax"]
       90 GETUPVAL                         R6 0
       91 GETTABLEKS                       R6 R6 K8 ["createElement"]
       93 GETUPVAL                         R7 1
       94 DUPTABLE                         R8 K28 [{["Axis"] = "Y", ["Position"], ["OnPositionChanged"]}]
       95 GETTABLEKS                       R9 R2 K29 ["Max"]
       97 GETTABLEKS                       R9 R9 K27 ["Y"]
       99 SETTABLEKS                       R9 R8 K23 ["Position"]
      101 NEWCLOSURE                       R9 P3
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R2
      104 SETTABLEKS                       R9 R8 K24 ["OnPositionChanged"]
      106 CALL                             R6 2 1
      107 SETTABLEKS                       R6 R5 K19 ["LineYMax"]
      109 GETUPVAL                         R6 0
      110 GETTABLEKS                       R6 R6 K8 ["createElement"]
      112 GETUPVAL                         R7 2
      113 DUPTABLE                         R8 K34 [{"GraphRect", "YAxisScaling", "children", "childrenUnclipped"}]
      114 GETIMPORT                        R9 K5 [Rect.new]
      116 LOADN                            R10 0
      117 LOADN                            R11 0
      118 GETTABLEKS                       R12 R1 K22 ["X"]
      120 GETTABLEKS                       R13 R1 K27 ["Y"]
      122 CALL                             R9 4 1
      123 SETTABLEKS                       R9 R8 K30 ["GraphRect"]
      125 DUPTABLE                         R9 K39 [{["Type"] = "Linear", ["Direction"] = "Reversed"}]
      126 SETTABLEKS                       R9 R8 K31 ["YAxisScaling"]
      128 SETTABLEKS                       R4 R8 K32 ["children"]
      130 SETTABLEKS                       R5 R8 K33 ["childrenUnclipped"]
      132 CALL                             R6 2 -1
      133 RETURN                           R6 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K5 [{["Size"], ["BackgroundTransparency"] = 1}]
        5 GETIMPORT                        R4 K8 [UDim2.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 200
        9 LOADN                            R7 0
       10 LOADN                            R8 200
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K2 ["Size"]
       14 DUPTABLE                         R4 K10 [{"Editor"}]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K0 ["createElement"]
       18 GETUPVAL                         R6 1
       19 MOVE                             R7 R0
       20 CALL                             R5 2 1
       21 SETTABLEKS                       R5 R4 K9 ["Editor"]
       23 CALL                             R1 3 -1
       24 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Canvas"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["GridLine"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["InputDetector"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K12 ["SidePositioner"]
       41 CALL                             R6 1 1
       42 DUPCLOSURE                       R7 K13 [PROTO_6]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R6
       47 DUPCLOSURE                       R8 K14 [PROTO_11]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R3
       51 DUPTABLE                         R9 K19 [{["summary"] = "An editor for a Rect representing a 9-slice center, such as the property ImageLabel.SliceCenter.", ["story"], ["controls"]}]
       52 DUPCLOSURE                       R10 K20 [PROTO_12]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R8
       55 SETTABLEKS                       R10 R9 K17 ["story"]
       57 NEWTABLE                         R10 0 0
       59 SETTABLEKS                       R10 R9 K18 ["controls"]
       61 RETURN                           R9 1
