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
       69 DUPTABLE                         R21 K29 [{"Inflate", "XSnap", "YSnap", "OnHoverStart", "OnHoverMoved", "OnHoverEnded", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
       70 LOADN                            R22 5
       71 SETTABLEKS                       R22 R21 K20 ["Inflate"]
       73 LOADN                            R22 1
       74 SETTABLEKS                       R22 R21 K21 ["XSnap"]
       76 LOADN                            R22 1
       77 SETTABLEKS                       R22 R21 K22 ["YSnap"]
       79 SETTABLEKS                       R5 R21 K23 ["OnHoverStart"]
       81 SETTABLEKS                       R6 R21 K24 ["OnHoverMoved"]
       83 SETTABLEKS                       R7 R21 K25 ["OnHoverEnded"]
       85 SETTABLEKS                       R8 R21 K26 ["OnDragStart"]
       87 SETTABLEKS                       R9 R21 K27 ["OnDragMoved"]
       89 SETTABLEKS                       R10 R21 K28 ["OnDragEnded"]
       91 CALL                             R19 2 1
       92 SETTABLEKS                       R19 R18 K18 ["Input"]
       94 CALL                             R15 3 1
       95 SETTABLEKS                       R15 R14 K3 ["Line"]
       97 GETUPVAL                         R15 0
       98 GETTABLEKS                       R15 R15 K1 ["createElement"]
      100 GETUPVAL                         R16 3
      101 DUPTABLE                         R17 K31 [{"Side", "Position"}]
      102 GETTABLEKS                       R19 R0 K12 ["Axis"]
      104 JUMPIFNOTEQKS                    R19 K13 ["X"] ; [+3]
      106 LOADK                            R18 K32 ["Top"]
      107 JUMP                             ; [+1]
      108 LOADK                            R18 K33 ["Left"]
      109 SETTABLEKS                       R18 R17 K30 ["Side"]
      111 GETTABLEKS                       R18 R0 K8 ["Position"]
      113 SETTABLEKS                       R18 R17 K8 ["Position"]
      115 DUPTABLE                         R18 K35 [{"TriangleVisual"}]
      116 GETUPVAL                         R19 0
      117 GETTABLEKS                       R19 R19 K1 ["createElement"]
      119 LOADK                            R20 K36 ["ImageButton"]
      120 DUPTABLE                         R21 K44 [{"AnchorPoint", "Size", "BackgroundTransparency", "BorderSizePixel", "ImageColor3", "Image", "Rotation"}]
      121 GETTABLEKS                       R23 R0 K12 ["Axis"]
      123 JUMPIFNOTEQKS                    R23 K13 ["X"] ; [+7]
      125 GETIMPORT                        R22 K47 [Vector2.new]
      127 LOADK                            R23 K48 [0.5]
      128 LOADN                            R24 1
      129 CALL                             R22 2 1
      130 JUMP                             ; [+5]
      131 GETIMPORT                        R22 K47 [Vector2.new]
      133 LOADN                            R23 1
      134 LOADK                            R24 K48 [0.5]
      135 CALL                             R22 2 1
      136 SETTABLEKS                       R22 R21 K37 ["AnchorPoint"]
      138 JUMPIFNOT                        R1 ; [+6]
      139 GETIMPORT                        R22 K51 [UDim2.fromOffset]
      141 LOADN                            R23 12
      142 LOADN                            R24 12
      143 CALL                             R22 2 1
      144 JUMP                             ; [+5]
      145 GETIMPORT                        R22 K51 [UDim2.fromOffset]
      147 LOADN                            R23 10
      148 LOADN                            R24 10
      149 CALL                             R22 2 1
      150 SETTABLEKS                       R22 R21 K38 ["Size"]
      152 LOADN                            R22 1
      153 SETTABLEKS                       R22 R21 K39 ["BackgroundTransparency"]
      155 LOADN                            R22 0
      156 SETTABLEKS                       R22 R21 K40 ["BorderSizePixel"]
      158 JUMPIFNOT                        R1 ; [+7]
      159 GETIMPORT                        R22 K17 [Color3.fromRGB]
      161 LOADN                            R23 255
      162 LOADN                            R24 255
      163 LOADN                            R25 100
      164 CALL                             R22 3 1
      165 JUMP                             ; [+6]
      166 GETIMPORT                        R22 K17 [Color3.fromRGB]
      168 LOADN                            R23 255
      169 LOADN                            R24 255
      170 LOADN                            R25 255
      171 CALL                             R22 3 1
      172 SETTABLEKS                       R22 R21 K41 ["ImageColor3"]
      174 LOADK                            R22 K52 ["rbxasset://textures/smallTriangle.png"]
      175 SETTABLEKS                       R22 R21 K42 ["Image"]
      177 GETTABLEKS                       R23 R0 K12 ["Axis"]
      179 JUMPIFNOTEQKS                    R23 K13 ["X"] ; [+3]
      181 LOADN                            R22 180
      182 JUMP                             ; [+1]
      183 LOADN                            R22 90
      184 SETTABLEKS                       R22 R21 K43 ["Rotation"]
      186 DUPTABLE                         R22 K19 [{"Input"}]
      187 GETUPVAL                         R23 0
      188 GETTABLEKS                       R23 R23 K1 ["createElement"]
      190 GETUPVAL                         R24 2
      191 DUPTABLE                         R25 K29 [{"Inflate", "XSnap", "YSnap", "OnHoverStart", "OnHoverMoved", "OnHoverEnded", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
      192 LOADN                            R26 2
      193 SETTABLEKS                       R26 R25 K20 ["Inflate"]
      195 LOADN                            R26 1
      196 SETTABLEKS                       R26 R25 K21 ["XSnap"]
      198 LOADN                            R26 1
      199 SETTABLEKS                       R26 R25 K22 ["YSnap"]
      201 SETTABLEKS                       R5 R25 K23 ["OnHoverStart"]
      203 SETTABLEKS                       R6 R25 K24 ["OnHoverMoved"]
      205 SETTABLEKS                       R7 R25 K25 ["OnHoverEnded"]
      207 SETTABLEKS                       R8 R25 K26 ["OnDragStart"]
      209 SETTABLEKS                       R9 R25 K27 ["OnDragMoved"]
      211 SETTABLEKS                       R10 R25 K28 ["OnDragEnded"]
      213 CALL                             R23 2 1
      214 SETTABLEKS                       R23 R22 K18 ["Input"]
      216 CALL                             R19 3 1
      217 SETTABLEKS                       R19 R18 K34 ["TriangleVisual"]
      219 CALL                             R15 3 1
      220 SETTABLEKS                       R15 R14 K4 ["Arrow1"]
      222 GETUPVAL                         R15 0
      223 GETTABLEKS                       R15 R15 K1 ["createElement"]
      225 GETUPVAL                         R16 3
      226 DUPTABLE                         R17 K31 [{"Side", "Position"}]
      227 GETTABLEKS                       R19 R0 K12 ["Axis"]
      229 JUMPIFNOTEQKS                    R19 K13 ["X"] ; [+3]
      231 LOADK                            R18 K53 ["Bottom"]
      232 JUMP                             ; [+1]
      233 LOADK                            R18 K54 ["Right"]
      234 SETTABLEKS                       R18 R17 K30 ["Side"]
      236 GETTABLEKS                       R18 R0 K8 ["Position"]
      238 SETTABLEKS                       R18 R17 K8 ["Position"]
      240 DUPTABLE                         R18 K35 [{"TriangleVisual"}]
      241 GETUPVAL                         R19 0
      242 GETTABLEKS                       R19 R19 K1 ["createElement"]
      244 LOADK                            R20 K36 ["ImageButton"]
      245 DUPTABLE                         R21 K44 [{"AnchorPoint", "Size", "BackgroundTransparency", "BorderSizePixel", "ImageColor3", "Image", "Rotation"}]
      246 GETTABLEKS                       R23 R0 K12 ["Axis"]
      248 JUMPIFNOTEQKS                    R23 K13 ["X"] ; [+7]
      250 GETIMPORT                        R22 K47 [Vector2.new]
      252 LOADK                            R23 K48 [0.5]
      253 LOADN                            R24 0
      254 CALL                             R22 2 1
      255 JUMP                             ; [+5]
      256 GETIMPORT                        R22 K47 [Vector2.new]
      258 LOADN                            R23 0
      259 LOADK                            R24 K48 [0.5]
      260 CALL                             R22 2 1
      261 SETTABLEKS                       R22 R21 K37 ["AnchorPoint"]
      263 GETIMPORT                        R22 K51 [UDim2.fromOffset]
      265 LOADN                            R23 10
      266 LOADN                            R24 10
      267 CALL                             R22 2 1
      268 SETTABLEKS                       R22 R21 K38 ["Size"]
      270 LOADN                            R22 1
      271 SETTABLEKS                       R22 R21 K39 ["BackgroundTransparency"]
      273 LOADN                            R22 0
      274 SETTABLEKS                       R22 R21 K40 ["BorderSizePixel"]
      276 JUMPIFNOT                        R1 ; [+7]
      277 GETIMPORT                        R22 K17 [Color3.fromRGB]
      279 LOADN                            R23 255
      280 LOADN                            R24 255
      281 LOADN                            R25 100
      282 CALL                             R22 3 1
      283 JUMP                             ; [+6]
      284 GETIMPORT                        R22 K17 [Color3.fromRGB]
      286 LOADN                            R23 255
      287 LOADN                            R24 255
      288 LOADN                            R25 255
      289 CALL                             R22 3 1
      290 SETTABLEKS                       R22 R21 K41 ["ImageColor3"]
      292 LOADK                            R22 K52 ["rbxasset://textures/smallTriangle.png"]
      293 SETTABLEKS                       R22 R21 K42 ["Image"]
      295 GETTABLEKS                       R23 R0 K12 ["Axis"]
      297 JUMPIFNOTEQKS                    R23 K13 ["X"] ; [+3]
      299 LOADN                            R22 0
      300 JUMP                             ; [+1]
      301 LOADN                            R22 166
      302 SETTABLEKS                       R22 R21 K43 ["Rotation"]
      304 DUPTABLE                         R22 K19 [{"Input"}]
      305 GETUPVAL                         R23 0
      306 GETTABLEKS                       R23 R23 K1 ["createElement"]
      308 GETUPVAL                         R24 2
      309 DUPTABLE                         R25 K29 [{"Inflate", "XSnap", "YSnap", "OnHoverStart", "OnHoverMoved", "OnHoverEnded", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
      310 LOADN                            R26 2
      311 SETTABLEKS                       R26 R25 K20 ["Inflate"]
      313 LOADN                            R26 1
      314 SETTABLEKS                       R26 R25 K21 ["XSnap"]
      316 LOADN                            R26 1
      317 SETTABLEKS                       R26 R25 K22 ["YSnap"]
      319 SETTABLEKS                       R5 R25 K23 ["OnHoverStart"]
      321 SETTABLEKS                       R6 R25 K24 ["OnHoverMoved"]
      323 SETTABLEKS                       R7 R25 K25 ["OnHoverEnded"]
      325 SETTABLEKS                       R8 R25 K26 ["OnDragStart"]
      327 SETTABLEKS                       R9 R25 K27 ["OnDragMoved"]
      329 SETTABLEKS                       R10 R25 K28 ["OnDragEnded"]
      331 CALL                             R23 2 1
      332 SETTABLEKS                       R23 R22 K18 ["Input"]
      334 CALL                             R19 3 1
      335 SETTABLEKS                       R19 R18 K34 ["TriangleVisual"]
      337 CALL                             R15 3 1
      338 SETTABLEKS                       R15 R14 K5 ["Arrow2"]
      340 CALL                             R11 3 -1
      341 RETURN                           R11 -1

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
        2 LOADN                            R2 0
        3 LOADN                            R3 0
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
       21 DUPTABLE                         R7 K11 [{"Size", "Image"}]
       22 GETIMPORT                        R8 K14 [UDim2.fromScale]
       24 LOADN                            R9 1
       25 LOADN                            R10 1
       26 CALL                             R8 2 1
       27 SETTABLEKS                       R8 R7 K10 ["Size"]
       29 LOADK                            R8 K15 ["rbxasset://textures/particles/SquareParticle.png"]
       30 SETTABLEKS                       R8 R7 K6 ["Image"]
       32 CALL                             R5 2 1
       33 SETTABLEKS                       R5 R4 K6 ["Image"]
       35 DUPTABLE                         R5 K20 [{"LineXMin", "LineYMin", "LineXMax", "LineYMax"}]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K8 ["createElement"]
       39 GETUPVAL                         R7 1
       40 DUPTABLE                         R8 K24 [{"Axis", "Position", "OnPositionChanged"}]
       41 LOADK                            R9 K25 ["X"]
       42 SETTABLEKS                       R9 R8 K21 ["Axis"]
       44 GETTABLEKS                       R9 R2 K26 ["Min"]
       46 GETTABLEKS                       R9 R9 K25 ["X"]
       48 SETTABLEKS                       R9 R8 K22 ["Position"]
       50 NEWCLOSURE                       R9 P0
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R9 R8 K23 ["OnPositionChanged"]
       55 CALL                             R6 2 1
       56 SETTABLEKS                       R6 R5 K16 ["LineXMin"]
       58 GETUPVAL                         R6 0
       59 GETTABLEKS                       R6 R6 K8 ["createElement"]
       61 GETUPVAL                         R7 1
       62 DUPTABLE                         R8 K24 [{"Axis", "Position", "OnPositionChanged"}]
       63 LOADK                            R9 K27 ["Y"]
       64 SETTABLEKS                       R9 R8 K21 ["Axis"]
       66 GETTABLEKS                       R9 R2 K26 ["Min"]
       68 GETTABLEKS                       R9 R9 K27 ["Y"]
       70 SETTABLEKS                       R9 R8 K22 ["Position"]
       72 NEWCLOSURE                       R9 P1
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R2
       75 SETTABLEKS                       R9 R8 K23 ["OnPositionChanged"]
       77 CALL                             R6 2 1
       78 SETTABLEKS                       R6 R5 K17 ["LineYMin"]
       80 GETUPVAL                         R6 0
       81 GETTABLEKS                       R6 R6 K8 ["createElement"]
       83 GETUPVAL                         R7 1
       84 DUPTABLE                         R8 K24 [{"Axis", "Position", "OnPositionChanged"}]
       85 LOADK                            R9 K25 ["X"]
       86 SETTABLEKS                       R9 R8 K21 ["Axis"]
       88 GETTABLEKS                       R9 R2 K28 ["Max"]
       90 GETTABLEKS                       R9 R9 K25 ["X"]
       92 SETTABLEKS                       R9 R8 K22 ["Position"]
       94 NEWCLOSURE                       R9 P2
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R2
       97 SETTABLEKS                       R9 R8 K23 ["OnPositionChanged"]
       99 CALL                             R6 2 1
      100 SETTABLEKS                       R6 R5 K18 ["LineXMax"]
      102 GETUPVAL                         R6 0
      103 GETTABLEKS                       R6 R6 K8 ["createElement"]
      105 GETUPVAL                         R7 1
      106 DUPTABLE                         R8 K24 [{"Axis", "Position", "OnPositionChanged"}]
      107 LOADK                            R9 K27 ["Y"]
      108 SETTABLEKS                       R9 R8 K21 ["Axis"]
      110 GETTABLEKS                       R9 R2 K28 ["Max"]
      112 GETTABLEKS                       R9 R9 K27 ["Y"]
      114 SETTABLEKS                       R9 R8 K22 ["Position"]
      116 NEWCLOSURE                       R9 P3
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R2
      119 SETTABLEKS                       R9 R8 K23 ["OnPositionChanged"]
      121 CALL                             R6 2 1
      122 SETTABLEKS                       R6 R5 K19 ["LineYMax"]
      124 GETUPVAL                         R6 0
      125 GETTABLEKS                       R6 R6 K8 ["createElement"]
      127 GETUPVAL                         R7 2
      128 DUPTABLE                         R8 K33 [{"GraphRect", "YAxisScaling", "children", "childrenUnclipped"}]
      129 GETIMPORT                        R9 K5 [Rect.new]
      131 LOADN                            R10 0
      132 LOADN                            R11 0
      133 GETTABLEKS                       R12 R1 K25 ["X"]
      135 GETTABLEKS                       R13 R1 K27 ["Y"]
      137 CALL                             R9 4 1
      138 SETTABLEKS                       R9 R8 K29 ["GraphRect"]
      140 DUPTABLE                         R9 K36 [{"Type", "Direction"}]
      141 LOADK                            R10 K37 ["Linear"]
      142 SETTABLEKS                       R10 R9 K34 ["Type"]
      144 LOADK                            R10 K38 ["Reversed"]
      145 SETTABLEKS                       R10 R9 K35 ["Direction"]
      147 SETTABLEKS                       R9 R8 K30 ["YAxisScaling"]
      149 SETTABLEKS                       R4 R8 K31 ["children"]
      151 SETTABLEKS                       R5 R8 K32 ["childrenUnclipped"]
      153 CALL                             R6 2 -1
      154 RETURN                           R6 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K4 [{"Size", "BackgroundTransparency"}]
        5 GETIMPORT                        R4 K7 [UDim2.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 200
        9 LOADN                            R7 0
       10 LOADN                            R8 200
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K2 ["Size"]
       14 LOADN                            R4 1
       15 SETTABLEKS                       R4 R3 K3 ["BackgroundTransparency"]
       17 DUPTABLE                         R4 K9 [{"Editor"}]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K0 ["createElement"]
       21 GETUPVAL                         R6 1
       22 MOVE                             R7 R0
       23 CALL                             R5 2 1
       24 SETTABLEKS                       R5 R4 K8 ["Editor"]
       26 CALL                             R1 3 -1
       27 RETURN                           R1 -1

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
       51 DUPTABLE                         R9 K18 [{"summary", "story", "controls"}]
       52 LOADK                            R10 K19 ["An editor for a Rect representing a 9-slice center, such as the property ImageLabel.SliceCenter."]
       53 SETTABLEKS                       R10 R9 K15 ["summary"]
       55 DUPCLOSURE                       R10 K20 [PROTO_12]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R8
       58 SETTABLEKS                       R10 R9 K16 ["story"]
       60 NEWTABLE                         R10 0 0
       62 SETTABLEKS                       R10 R9 K17 ["controls"]
       64 RETURN                           R9 1
