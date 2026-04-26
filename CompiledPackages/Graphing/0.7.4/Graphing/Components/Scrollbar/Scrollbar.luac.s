PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["AXIS_X"]
        3 JUMPIFNOTEQ                      R1 R3 ; [+4]
        5 GETTABLEKS                       R2 R0 K1 ["X"]
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K2 ["Y"]
       10 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["AXIS_X"]
        3 JUMPIFNOTEQ                      R2 R4 ; [+7]
        5 GETIMPORT                        R3 K3 [UDim2.new]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 CALL                             R3 2 1
       10 RETURN                           R3 1
       11 GETIMPORT                        R3 K3 [UDim2.new]
       13 MOVE                             R4 R1
       14 MOVE                             R5 R0
       15 CALL                             R3 2 1
       16 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnViewChanged"]
        3 JUMPIFNOT                        R1 ; [+46]
        4 GETUPVAL                         R2 1
        5 ADD                              R1 R2 R0
        6 GETUPVAL                         R3 2
        7 ADD                              R2 R3 R0
        8 LOADN                            R3 0
        9 FASTCALL2                        MATH_MIN R1 R2 ; [+5]
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 GETIMPORT                        R4 K3 [math.min]
       15 CALL                             R4 2 1
       16 FASTCALL2                        MATH_MAX R1 R2 ; [+5]
       18 MOVE                             R6 R1
       19 MOVE                             R7 R2
       20 GETIMPORT                        R5 K5 [math.max]
       22 CALL                             R5 2 1
       23 GETUPVAL                         R6 3
       24 JUMPIFNOTLT                      R4 R6 ; [+4]
       26 GETUPVAL                         R6 3
       27 SUB                              R3 R6 R4
       28 JUMP                             ; [+5]
       29 GETUPVAL                         R6 4
       30 JUMPIFNOTLT                      R6 R5 ; [+3]
       32 GETUPVAL                         R6 4
       33 SUB                              R3 R6 R5
       34 ADD                              R1 R1 R3
       35 ADD                              R2 R2 R3
       36 GETUPVAL                         R6 5
       37 MOVE                             R7 R1
       38 CALL                             R6 1 1
       39 MOVE                             R1 R6
       40 GETUPVAL                         R6 5
       41 MOVE                             R7 R2
       42 CALL                             R6 1 1
       43 MOVE                             R2 R6
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R6 R7 K0 ["OnViewChanged"]
       47 MOVE                             R7 R1
       48 MOVE                             R8 R2
       49 CALL                             R6 2 0
       50 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["plotToView"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R5 R6 K1 ["Axis"]
        9 GETUPVAL                         R7 3
       10 GETTABLEKS                       R6 R7 K2 ["AXIS_X"]
       12 JUMPIFNOTEQ                      R5 R6 ; [+4]
       14 GETTABLEKS                       R4 R1 K3 ["X"]
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R4 R1 K4 ["Y"]
       19 GETUPVAL                         R5 4
       20 SUB                              R3 R4 R5
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnViewChanged"]
        3 JUMPIFNOT                        R1 ; [+47]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["plotToView"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K2 ["graphToPlot"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K3 ["Axis"]
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R6 R7 K4 ["AXIS_X"]
       20 JUMPIFNOTEQ                      R5 R6 ; [+4]
       22 GETTABLEKS                       R4 R2 K5 ["X"]
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R4 R2 K6 ["Y"]
       27 GETUPVAL                         R6 3
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K7 ["MinZoom"]
       31 SUB                              R5 R6 R7
       32 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       34 GETIMPORT                        R3 K10 [math.min]
       36 CALL                             R3 2 1
       37 GETUPVAL                         R6 4
       38 FASTCALL2                        MATH_MAX R3 R6 ; [+4]
       40 MOVE                             R5 R3
       41 GETIMPORT                        R4 K12 [math.max]
       43 CALL                             R4 2 1
       44 MOVE                             R3 R4
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R4 R5 K0 ["OnViewChanged"]
       48 MOVE                             R5 R3
       49 GETUPVAL                         R6 3
       50 CALL                             R4 2 0
       51 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnViewChanged"]
        3 JUMPIFNOT                        R1 ; [+47]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["plotToView"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K2 ["graphToPlot"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K3 ["Axis"]
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R6 R7 K4 ["AXIS_X"]
       20 JUMPIFNOTEQ                      R5 R6 ; [+4]
       22 GETTABLEKS                       R4 R2 K5 ["X"]
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R4 R2 K6 ["Y"]
       27 GETUPVAL                         R6 3
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K7 ["MinZoom"]
       31 ADD                              R5 R6 R7
       32 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       34 GETIMPORT                        R3 K10 [math.max]
       36 CALL                             R3 2 1
       37 GETUPVAL                         R6 4
       38 FASTCALL2                        MATH_MIN R3 R6 ; [+4]
       40 MOVE                             R5 R3
       41 GETIMPORT                        R4 K12 [math.min]
       43 CALL                             R4 2 1
       44 MOVE                             R3 R4
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R4 R5 K0 ["OnViewChanged"]
       48 GETUPVAL                         R5 3
       49 MOVE                             R6 R3
       50 CALL                             R4 2 0
       51 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [-0.04]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [0.04]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["Distance"]
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["SCROLLBAR_DISTANCE"]
        6 GETTABLEKS                       R2 R0 K2 ["Size"]
        8 JUMPIF                           R2 ; [+3]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["SCROLLBAR_SIZE"]
       12 GETTABLEKS                       R3 R0 K4 ["ScrollButtonSize"]
       14 JUMPIF                           R3 ; [+3]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K5 ["SCROLLBAR_SCROLL_BUTTON_SIZE"]
       18 GETTABLEKS                       R4 R0 K6 ["ZoomButtonSize"]
       20 JUMPIF                           R4 ; [+3]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K7 ["SCROLLBAR_ZOOM_BUTTON_SIZE"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R5 R6 K8 ["useContext"]
       27 GETUPVAL                         R6 2
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R7 R0 K9 ["Axis"]
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R8 R9 K10 ["AXIS_X"]
       34 JUMPIFNOTEQ                      R7 R8 ; [+4]
       36 GETTABLEKS                       R6 R5 K11 ["plotToGraphX"]
       38 JUMP                             ; [+2]
       39 GETTABLEKS                       R6 R5 K12 ["plotToGraphY"]
       41 GETTABLEKS                       R8 R0 K9 ["Axis"]
       43 GETUPVAL                         R10 3
       44 GETTABLEKS                       R9 R10 K10 ["AXIS_X"]
       46 JUMPIFNOTEQ                      R8 R9 ; [+4]
       48 GETTABLEKS                       R7 R5 K13 ["graphToPlotX"]
       50 JUMP                             ; [+2]
       51 GETTABLEKS                       R7 R5 K14 ["graphToPlotY"]
       53 GETTABLEKS                       R8 R5 K15 ["getGraphRect"]
       55 CALL                             R8 0 1
       56 GETTABLEKS                       R10 R8 K16 ["Min"]
       58 GETTABLEKS                       R11 R0 K9 ["Axis"]
       60 GETUPVAL                         R13 3
       61 GETTABLEKS                       R12 R13 K10 ["AXIS_X"]
       63 JUMPIFNOTEQ                      R11 R12 ; [+4]
       65 GETTABLEKS                       R9 R10 K17 ["X"]
       67 JUMP                             ; [+2]
       68 GETTABLEKS                       R9 R10 K18 ["Y"]
       70 GETTABLEKS                       R11 R8 K19 ["Max"]
       72 GETTABLEKS                       R12 R0 K9 ["Axis"]
       74 GETUPVAL                         R14 3
       75 GETTABLEKS                       R13 R14 K10 ["AXIS_X"]
       77 JUMPIFNOTEQ                      R12 R13 ; [+4]
       79 GETTABLEKS                       R10 R11 K17 ["X"]
       81 JUMP                             ; [+2]
       82 GETTABLEKS                       R10 R11 K18 ["Y"]
       84 GETTABLEKS                       R11 R5 K20 ["getViewportRect"]
       86 CALL                             R11 0 1
       87 GETTABLEKS                       R13 R11 K16 ["Min"]
       89 GETTABLEKS                       R14 R0 K9 ["Axis"]
       91 GETUPVAL                         R16 3
       92 GETTABLEKS                       R15 R16 K10 ["AXIS_X"]
       94 JUMPIFNOTEQ                      R14 R15 ; [+4]
       96 GETTABLEKS                       R12 R13 K17 ["X"]
       98 JUMP                             ; [+2]
       99 GETTABLEKS                       R12 R13 K18 ["Y"]
      101 GETTABLEKS                       R14 R11 K19 ["Max"]
      103 GETTABLEKS                       R15 R0 K9 ["Axis"]
      105 GETUPVAL                         R17 3
      106 GETTABLEKS                       R16 R17 K10 ["AXIS_X"]
      108 JUMPIFNOTEQ                      R15 R16 ; [+4]
      110 GETTABLEKS                       R13 R14 K17 ["X"]
      112 JUMP                             ; [+2]
      113 GETTABLEKS                       R13 R14 K18 ["Y"]
      115 MOVE                             R14 R6
      116 MOVE                             R15 R12
      117 CALL                             R14 1 1
      118 MOVE                             R15 R6
      119 MOVE                             R16 R13
      120 CALL                             R15 1 1
      121 GETTABLEKS                       R17 R0 K21 ["ExpandedBounds"]
      123 JUMPIFNOT                        R17 ; [+7]
      124 MOVE                             R16 R6
      125 GETTABLEKS                       R18 R0 K21 ["ExpandedBounds"]
      127 GETTABLEKS                       R17 R18 K16 ["Min"]
      129 CALL                             R16 1 1
      130 JUMP                             ; [+1]
      131 LOADN                            R16 0
      132 GETTABLEKS                       R18 R0 K21 ["ExpandedBounds"]
      134 JUMPIFNOT                        R18 ; [+7]
      135 MOVE                             R17 R6
      136 GETTABLEKS                       R19 R0 K21 ["ExpandedBounds"]
      138 GETTABLEKS                       R18 R19 K19 ["Max"]
      140 CALL                             R17 1 1
      141 JUMP                             ; [+1]
      142 LOADN                            R17 1
      143 GETUPVAL                         R19 1
      144 GETTABLEKS                       R18 R19 K22 ["useCallback"]
      146 NEWCLOSURE                       R19 P0
      147 CAPTURE                          VAL R0
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R7
      153 NEWTABLE                         R20 0 2
      155 MOVE                             R21 R5
      156 MOVE                             R22 R0
      157 SETLIST                          R20 R21 2 [1]
      159 CALL                             R18 2 1
      160 GETUPVAL                         R20 1
      161 GETTABLEKS                       R19 R20 K22 ["useCallback"]
      163 NEWCLOSURE                       R20 P1
      164 CAPTURE                          VAL R5
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R0
      167 CAPTURE                          UPVAL U3
      168 CAPTURE                          VAL R14
      169 NEWTABLE                         R21 0 1
      171 MOVE                             R22 R0
      172 SETLIST                          R21 R22 1 [1]
      174 CALL                             R19 2 1
      175 GETUPVAL                         R21 1
      176 GETTABLEKS                       R20 R21 K22 ["useCallback"]
      178 NEWCLOSURE                       R21 P2
      179 CAPTURE                          VAL R0
      180 CAPTURE                          VAL R5
      181 CAPTURE                          UPVAL U3
      182 CAPTURE                          VAL R13
      183 CAPTURE                          VAL R9
      184 NEWTABLE                         R22 0 1
      186 MOVE                             R23 R0
      187 SETLIST                          R22 R23 1 [1]
      189 CALL                             R20 2 1
      190 GETUPVAL                         R22 1
      191 GETTABLEKS                       R21 R22 K22 ["useCallback"]
      193 NEWCLOSURE                       R22 P3
      194 CAPTURE                          VAL R0
      195 CAPTURE                          VAL R5
      196 CAPTURE                          UPVAL U3
      197 CAPTURE                          VAL R12
      198 CAPTURE                          VAL R10
      199 NEWTABLE                         R23 0 1
      201 MOVE                             R24 R0
      202 SETLIST                          R23 R24 1 [1]
      204 CALL                             R21 2 1
      205 GETUPVAL                         R23 1
      206 GETTABLEKS                       R22 R23 K22 ["useCallback"]
      208 NEWCLOSURE                       R23 P4
      209 CAPTURE                          VAL R18
      210 NEWTABLE                         R24 0 1
      212 MOVE                             R25 R0
      213 SETLIST                          R24 R25 1 [1]
      215 CALL                             R22 2 1
      216 GETUPVAL                         R24 1
      217 GETTABLEKS                       R23 R24 K22 ["useCallback"]
      219 NEWCLOSURE                       R24 P5
      220 CAPTURE                          VAL R18
      221 NEWTABLE                         R25 0 1
      223 MOVE                             R26 R0
      224 SETLIST                          R25 R26 1 [1]
      226 CALL                             R23 2 1
      227 GETIMPORT                        R25 K25 [UDim.new]
      229 LOADN                            R26 0
      230 MINUS                            R28 R3
      231 SUB                              R27 R28 R4
      232 CALL                             R25 2 1
      233 GETIMPORT                        R27 K25 [UDim.new]
      235 LOADN                            R28 1
      236 LOADN                            R29 0
      237 CALL                             R27 2 1
      238 ADD                              R26 R27 R1
      239 GETTABLEKS                       R27 R0 K9 ["Axis"]
      241 GETUPVAL                         R29 3
      242 GETTABLEKS                       R28 R29 K10 ["AXIS_X"]
      244 JUMPIFNOTEQ                      R27 R28 ; [+8]
      246 GETIMPORT                        R28 K27 [UDim2.new]
      248 MOVE                             R29 R25
      249 MOVE                             R30 R26
      250 CALL                             R28 2 1
      251 MOVE                             R24 R28
      252 JUMP                             ; [+6]
      253 GETIMPORT                        R28 K27 [UDim2.new]
      255 MOVE                             R29 R26
      256 MOVE                             R30 R25
      257 CALL                             R28 2 1
      258 MOVE                             R24 R28
      259 GETIMPORT                        R26 K25 [UDim.new]
      261 LOADN                            R27 1
      262 LOADN                            R28 0
      263 CALL                             R26 2 1
      264 GETTABLEKS                       R27 R0 K9 ["Axis"]
      266 GETUPVAL                         R29 3
      267 GETTABLEKS                       R28 R29 K10 ["AXIS_X"]
      269 JUMPIFNOTEQ                      R27 R28 ; [+8]
      271 GETIMPORT                        R28 K27 [UDim2.new]
      273 MOVE                             R29 R26
      274 MOVE                             R30 R2
      275 CALL                             R28 2 1
      276 MOVE                             R25 R28
      277 JUMP                             ; [+6]
      278 GETIMPORT                        R28 K27 [UDim2.new]
      280 MOVE                             R29 R2
      281 MOVE                             R30 R26
      282 CALL                             R28 2 1
      283 MOVE                             R25 R28
      284 GETIMPORT                        R27 K25 [UDim.new]
      286 LOADN                            R28 0
      287 ADD                              R30 R3 R4
      288 MULK                             R29 R30 K28 [2]
      289 CALL                             R27 2 1
      290 GETIMPORT                        R28 K25 [UDim.new]
      292 LOADN                            R29 0
      293 LOADN                            R30 0
      294 CALL                             R28 2 1
      295 GETTABLEKS                       R29 R0 K9 ["Axis"]
      297 GETUPVAL                         R31 3
      298 GETTABLEKS                       R30 R31 K10 ["AXIS_X"]
      300 JUMPIFNOTEQ                      R29 R30 ; [+8]
      302 GETIMPORT                        R30 K27 [UDim2.new]
      304 MOVE                             R31 R27
      305 MOVE                             R32 R28
      306 CALL                             R30 2 1
      307 MOVE                             R26 R30
      308 JUMP                             ; [+6]
      309 GETIMPORT                        R30 K27 [UDim2.new]
      311 MOVE                             R31 R28
      312 MOVE                             R32 R27
      313 CALL                             R30 2 1
      314 MOVE                             R26 R30
      315 GETIMPORT                        R28 K25 [UDim.new]
      317 MOVE                             R29 R14
      318 LOADN                            R30 0
      319 CALL                             R28 2 1
      320 GETIMPORT                        R29 K25 [UDim.new]
      322 LOADN                            R30 0
      323 LOADN                            R31 0
      324 CALL                             R29 2 1
      325 GETTABLEKS                       R30 R0 K9 ["Axis"]
      327 GETUPVAL                         R32 3
      328 GETTABLEKS                       R31 R32 K10 ["AXIS_X"]
      330 JUMPIFNOTEQ                      R30 R31 ; [+8]
      332 GETIMPORT                        R31 K27 [UDim2.new]
      334 MOVE                             R32 R28
      335 MOVE                             R33 R29
      336 CALL                             R31 2 1
      337 MOVE                             R27 R31
      338 JUMP                             ; [+6]
      339 GETIMPORT                        R31 K27 [UDim2.new]
      341 MOVE                             R32 R29
      342 MOVE                             R33 R28
      343 CALL                             R31 2 1
      344 MOVE                             R27 R31
      345 GETIMPORT                        R29 K25 [UDim.new]
      347 SUB                              R30 R15 R14
      348 CALL                             R29 1 1
      349 GETIMPORT                        R30 K25 [UDim.new]
      351 LOADN                            R31 1
      352 LOADN                            R32 0
      353 CALL                             R30 2 1
      354 GETTABLEKS                       R31 R0 K9 ["Axis"]
      356 GETUPVAL                         R33 3
      357 GETTABLEKS                       R32 R33 K10 ["AXIS_X"]
      359 JUMPIFNOTEQ                      R31 R32 ; [+8]
      361 GETIMPORT                        R32 K27 [UDim2.new]
      363 MOVE                             R33 R29
      364 MOVE                             R34 R30
      365 CALL                             R32 2 1
      366 MOVE                             R28 R32
      367 JUMP                             ; [+6]
      368 GETIMPORT                        R32 K27 [UDim2.new]
      370 MOVE                             R33 R30
      371 MOVE                             R34 R29
      372 CALL                             R32 2 1
      373 MOVE                             R28 R32
      374 GETIMPORT                        R30 K25 [UDim.new]
      376 LOADN                            R31 0
      377 MOVE                             R32 R3
      378 CALL                             R30 2 1
      379 GETIMPORT                        R31 K25 [UDim.new]
      381 LOADN                            R32 1
      382 LOADN                            R33 0
      383 CALL                             R31 2 1
      384 GETTABLEKS                       R32 R0 K9 ["Axis"]
      386 GETUPVAL                         R34 3
      387 GETTABLEKS                       R33 R34 K10 ["AXIS_X"]
      389 JUMPIFNOTEQ                      R32 R33 ; [+8]
      391 GETIMPORT                        R33 K27 [UDim2.new]
      393 MOVE                             R34 R30
      394 MOVE                             R35 R31
      395 CALL                             R33 2 1
      396 MOVE                             R29 R33
      397 JUMP                             ; [+6]
      398 GETIMPORT                        R33 K27 [UDim2.new]
      400 MOVE                             R34 R31
      401 MOVE                             R35 R30
      402 CALL                             R33 2 1
      403 MOVE                             R29 R33
      404 GETIMPORT                        R31 K25 [UDim.new]
      406 LOADN                            R32 0
      407 MOVE                             R33 R4
      408 CALL                             R31 2 1
      409 GETIMPORT                        R32 K25 [UDim.new]
      411 LOADN                            R33 1
      412 LOADN                            R34 0
      413 CALL                             R32 2 1
      414 GETTABLEKS                       R33 R0 K9 ["Axis"]
      416 GETUPVAL                         R35 3
      417 GETTABLEKS                       R34 R35 K10 ["AXIS_X"]
      419 JUMPIFNOTEQ                      R33 R34 ; [+8]
      421 GETIMPORT                        R34 K27 [UDim2.new]
      423 MOVE                             R35 R31
      424 MOVE                             R36 R32
      425 CALL                             R34 2 1
      426 MOVE                             R30 R34
      427 JUMP                             ; [+6]
      428 GETIMPORT                        R34 K27 [UDim2.new]
      430 MOVE                             R35 R32
      431 MOVE                             R36 R31
      432 CALL                             R34 2 1
      433 MOVE                             R30 R34
      434 GETTABLEKS                       R32 R0 K9 ["Axis"]
      436 GETUPVAL                         R34 3
      437 GETTABLEKS                       R33 R34 K10 ["AXIS_X"]
      439 JUMPIFNOTEQ                      R32 R33 ; [+3]
      441 LOADN                            R31 0
      442 JUMP                             ; [+1]
      443 LOADN                            R31 90
      444 GETUPVAL                         R33 1
      445 GETTABLEKS                       R32 R33 K29 ["createElement"]
      447 LOADK                            R33 K30 ["Frame"]
      448 NEWTABLE                         R34 8 0
      450 SETTABLEKS                       R24 R34 K31 ["Position"]
      452 ADD                              R35 R25 R26
      453 SETTABLEKS                       R35 R34 K2 ["Size"]
      455 GETTABLEKS                       R35 R0 K32 ["OutlineThickness"]
      457 JUMPIF                           R35 ; [+3]
      458 GETUPVAL                         R36 0
      459 GETTABLEKS                       R35 R36 K33 ["SCROLLBAR_OUTLINE_THICKNESS"]
      461 SETTABLEKS                       R35 R34 K34 ["BorderSizePixel"]
      463 GETTABLEKS                       R35 R0 K35 ["OutlineColor3"]
      465 JUMPIF                           R35 ; [+3]
      466 GETUPVAL                         R36 0
      467 GETTABLEKS                       R35 R36 K36 ["SCROLLBAR_OUTLINE_COLOR3"]
      469 SETTABLEKS                       R35 R34 K37 ["BorderColor3"]
      471 GETTABLEKS                       R35 R0 K38 ["Color3"]
      473 JUMPIF                           R35 ; [+3]
      474 GETUPVAL                         R36 0
      475 GETTABLEKS                       R35 R36 K39 ["SCROLLBAR_COLOR3"]
      477 SETTABLEKS                       R35 R34 K40 ["BackgroundColor3"]
      479 GETTABLEKS                       R35 R0 K41 ["ZIndex"]
      481 SETTABLEKS                       R35 R34 K41 ["ZIndex"]
      483 GETUPVAL                         R36 1
      484 GETTABLEKS                       R35 R36 K42 ["Tag"]
      486 LOADK                            R36 K43 ["ScrollbarFrame"]
      487 SETTABLE                         R36 R34 R35
      488 DUPTABLE                         R35 K47 [{"MinScrollButton", "MaxScrollButton", "Inner"}]
      489 GETUPVAL                         R37 1
      490 GETTABLEKS                       R36 R37 K29 ["createElement"]
      492 GETUPVAL                         R37 4
      493 DUPTABLE                         R38 K51 [{"Position", "Rotation", "Size", "Image", "OnClick"}]
      494 GETIMPORT                        R39 K53 [UDim2.fromScale]
      496 LOADN                            R40 0
      497 LOADN                            R41 0
      498 CALL                             R39 2 1
      499 SETTABLEKS                       R39 R38 K31 ["Position"]
      501 SETTABLEKS                       R31 R38 K48 ["Rotation"]
      503 SETTABLEKS                       R29 R38 K2 ["Size"]
      505 GETUPVAL                         R40 0
      506 GETTABLEKS                       R39 R40 K54 ["SCROLLBAR_LEFT_SCROLL_BUTTON_IMAGE"]
      508 SETTABLEKS                       R39 R38 K49 ["Image"]
      510 SETTABLEKS                       R22 R38 K50 ["OnClick"]
      512 CALL                             R36 2 1
      513 SETTABLEKS                       R36 R35 K44 ["MinScrollButton"]
      515 GETUPVAL                         R37 1
      516 GETTABLEKS                       R36 R37 K29 ["createElement"]
      518 GETUPVAL                         R37 4
      519 DUPTABLE                         R38 K56 [{"AnchorPoint", "Position", "Rotation", "Size", "Image", "OnClick"}]
      520 GETTABLEKS                       R40 R0 K9 ["Axis"]
      522 GETUPVAL                         R42 3
      523 GETTABLEKS                       R41 R42 K10 ["AXIS_X"]
      525 JUMPIFNOTEQ                      R40 R41 ; [+7]
      527 GETIMPORT                        R39 K58 [Vector2.new]
      529 LOADN                            R40 1
      530 LOADN                            R41 0
      531 CALL                             R39 2 1
      532 JUMP                             ; [+5]
      533 GETIMPORT                        R39 K58 [Vector2.new]
      535 LOADN                            R40 0
      536 LOADN                            R41 1
      537 CALL                             R39 2 1
      538 SETTABLEKS                       R39 R38 K55 ["AnchorPoint"]
      540 GETIMPORT                        R40 K25 [UDim.new]
      542 LOADN                            R41 1
      543 LOADN                            R42 0
      544 CALL                             R40 2 1
      545 GETIMPORT                        R41 K25 [UDim.new]
      547 LOADN                            R42 0
      548 LOADN                            R43 0
      549 CALL                             R41 2 1
      550 GETTABLEKS                       R42 R0 K9 ["Axis"]
      552 GETUPVAL                         R44 3
      553 GETTABLEKS                       R43 R44 K10 ["AXIS_X"]
      555 JUMPIFNOTEQ                      R42 R43 ; [+8]
      557 GETIMPORT                        R43 K27 [UDim2.new]
      559 MOVE                             R44 R40
      560 MOVE                             R45 R41
      561 CALL                             R43 2 1
      562 MOVE                             R39 R43
      563 JUMP                             ; [+6]
      564 GETIMPORT                        R43 K27 [UDim2.new]
      566 MOVE                             R44 R41
      567 MOVE                             R45 R40
      568 CALL                             R43 2 1
      569 MOVE                             R39 R43
      570 SETTABLEKS                       R39 R38 K31 ["Position"]
      572 SETTABLEKS                       R31 R38 K48 ["Rotation"]
      574 SETTABLEKS                       R29 R38 K2 ["Size"]
      576 GETUPVAL                         R40 0
      577 GETTABLEKS                       R39 R40 K59 ["SCROLLBAR_RIGHT_SCROLL_BUTTON_IMAGE"]
      579 SETTABLEKS                       R39 R38 K49 ["Image"]
      581 SETTABLEKS                       R23 R38 K50 ["OnClick"]
      583 CALL                             R36 2 1
      584 SETTABLEKS                       R36 R35 K45 ["MaxScrollButton"]
      586 GETUPVAL                         R37 1
      587 GETTABLEKS                       R36 R37 K29 ["createElement"]
      589 LOADK                            R37 K30 ["Frame"]
      590 DUPTABLE                         R38 K61 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "BorderSizePixel"}]
      591 GETIMPORT                        R39 K58 [Vector2.new]
      593 LOADK                            R40 K62 [0.5]
      594 LOADK                            R41 K62 [0.5]
      595 CALL                             R39 2 1
      596 SETTABLEKS                       R39 R38 K55 ["AnchorPoint"]
      598 GETIMPORT                        R39 K53 [UDim2.fromScale]
      600 LOADK                            R40 K62 [0.5]
      601 LOADK                            R41 K62 [0.5]
      602 CALL                             R39 2 1
      603 SETTABLEKS                       R39 R38 K31 ["Position"]
      605 GETIMPORT                        R40 K53 [UDim2.fromScale]
      607 LOADN                            R41 1
      608 LOADN                            R42 1
      609 CALL                             R40 2 1
      610 SUB                              R39 R40 R26
      611 SETTABLEKS                       R39 R38 K2 ["Size"]
      613 LOADN                            R39 1
      614 SETTABLEKS                       R39 R38 K60 ["BackgroundTransparency"]
      616 LOADN                            R39 0
      617 SETTABLEKS                       R39 R38 K34 ["BorderSizePixel"]
      619 DUPTABLE                         R39 K64 [{"Body"}]
      620 GETUPVAL                         R41 1
      621 GETTABLEKS                       R40 R41 K29 ["createElement"]
      623 LOADK                            R41 K30 ["Frame"]
      624 DUPTABLE                         R42 K65 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel"}]
      625 SETTABLEKS                       R27 R42 K31 ["Position"]
      627 SETTABLEKS                       R28 R42 K2 ["Size"]
      629 LOADN                            R43 1
      630 SETTABLEKS                       R43 R42 K60 ["BackgroundTransparency"]
      632 LOADN                            R43 0
      633 SETTABLEKS                       R43 R42 K34 ["BorderSizePixel"]
      635 DUPTABLE                         R43 K69 [{"MainButton", "LeftButton", "RightButton"}]
      636 GETUPVAL                         R45 1
      637 GETTABLEKS                       R44 R45 K29 ["createElement"]
      639 GETUPVAL                         R45 4
      640 DUPTABLE                         R46 K71 [{"AnchorPoint", "Position", "Size", "OnMoved"}]
      641 GETTABLEKS                       R48 R0 K9 ["Axis"]
      643 GETUPVAL                         R50 3
      644 GETTABLEKS                       R49 R50 K10 ["AXIS_X"]
      646 JUMPIFNOTEQ                      R48 R49 ; [+7]
      648 GETIMPORT                        R47 K58 [Vector2.new]
      650 LOADN                            R48 0
      651 LOADN                            R49 0
      652 CALL                             R47 2 1
      653 JUMP                             ; [+5]
      654 GETIMPORT                        R47 K58 [Vector2.new]
      656 LOADN                            R48 0
      657 LOADN                            R49 1
      658 CALL                             R47 2 1
      659 SETTABLEKS                       R47 R46 K55 ["AnchorPoint"]
      661 GETTABLEKS                       R48 R0 K9 ["Axis"]
      663 GETUPVAL                         R50 3
      664 GETTABLEKS                       R49 R50 K10 ["AXIS_X"]
      666 JUMPIFNOTEQ                      R48 R49 ; [+7]
      668 GETIMPORT                        R47 K53 [UDim2.fromScale]
      670 LOADN                            R48 0
      671 LOADN                            R49 0
      672 CALL                             R47 2 1
      673 JUMP                             ; [+5]
      674 GETIMPORT                        R47 K53 [UDim2.fromScale]
      676 LOADN                            R48 0
      677 LOADN                            R49 1
      678 CALL                             R47 2 1
      679 SETTABLEKS                       R47 R46 K31 ["Position"]
      681 GETIMPORT                        R47 K53 [UDim2.fromScale]
      683 LOADN                            R48 1
      684 LOADN                            R49 1
      685 CALL                             R47 2 1
      686 SETTABLEKS                       R47 R46 K2 ["Size"]
      688 SETTABLEKS                       R19 R46 K70 ["OnMoved"]
      690 CALL                             R44 2 1
      691 SETTABLEKS                       R44 R43 K66 ["MainButton"]
      693 GETUPVAL                         R45 1
      694 GETTABLEKS                       R44 R45 K29 ["createElement"]
      696 GETUPVAL                         R45 4
      697 DUPTABLE                         R46 K72 [{"AnchorPoint", "Position", "Rotation", "Size", "Image", "OnMoved"}]
      698 GETTABLEKS                       R48 R0 K9 ["Axis"]
      700 GETUPVAL                         R50 3
      701 GETTABLEKS                       R49 R50 K10 ["AXIS_X"]
      703 JUMPIFNOTEQ                      R48 R49 ; [+7]
      705 GETIMPORT                        R47 K58 [Vector2.new]
      707 LOADN                            R48 1
      708 LOADN                            R49 0
      709 CALL                             R47 2 1
      710 JUMP                             ; [+5]
      711 GETIMPORT                        R47 K58 [Vector2.new]
      713 LOADN                            R48 0
      714 LOADN                            R49 0
      715 CALL                             R47 2 1
      716 SETTABLEKS                       R47 R46 K55 ["AnchorPoint"]
      718 GETTABLEKS                       R48 R0 K9 ["Axis"]
      720 GETUPVAL                         R50 3
      721 GETTABLEKS                       R49 R50 K10 ["AXIS_X"]
      723 JUMPIFNOTEQ                      R48 R49 ; [+7]
      725 GETIMPORT                        R47 K53 [UDim2.fromScale]
      727 LOADN                            R48 0
      728 LOADN                            R49 0
      729 CALL                             R47 2 1
      730 JUMP                             ; [+5]
      731 GETIMPORT                        R47 K53 [UDim2.fromScale]
      733 LOADN                            R48 0
      734 LOADN                            R49 1
      735 CALL                             R47 2 1
      736 SETTABLEKS                       R47 R46 K31 ["Position"]
      738 SETTABLEKS                       R31 R46 K48 ["Rotation"]
      740 SETTABLEKS                       R30 R46 K2 ["Size"]
      742 GETUPVAL                         R48 0
      743 GETTABLEKS                       R47 R48 K73 ["SCROLLBAR_LEFT_ZOOM_BUTTON_IMAGE"]
      745 SETTABLEKS                       R47 R46 K49 ["Image"]
      747 SETTABLEKS                       R20 R46 K70 ["OnMoved"]
      749 CALL                             R44 2 1
      750 SETTABLEKS                       R44 R43 K67 ["LeftButton"]
      752 GETUPVAL                         R45 1
      753 GETTABLEKS                       R44 R45 K29 ["createElement"]
      755 GETUPVAL                         R45 4
      756 DUPTABLE                         R46 K72 [{"AnchorPoint", "Position", "Rotation", "Size", "Image", "OnMoved"}]
      757 GETTABLEKS                       R48 R0 K9 ["Axis"]
      759 GETUPVAL                         R50 3
      760 GETTABLEKS                       R49 R50 K10 ["AXIS_X"]
      762 JUMPIFNOTEQ                      R48 R49 ; [+7]
      764 GETIMPORT                        R47 K58 [Vector2.new]
      766 LOADN                            R48 0
      767 LOADN                            R49 0
      768 CALL                             R47 2 1
      769 JUMP                             ; [+5]
      770 GETIMPORT                        R47 K58 [Vector2.new]
      772 LOADN                            R48 0
      773 LOADN                            R49 1
      774 CALL                             R47 2 1
      775 SETTABLEKS                       R47 R46 K55 ["AnchorPoint"]
      777 GETTABLEKS                       R48 R0 K9 ["Axis"]
      779 GETUPVAL                         R50 3
      780 GETTABLEKS                       R49 R50 K10 ["AXIS_X"]
      782 JUMPIFNOTEQ                      R48 R49 ; [+7]
      784 GETIMPORT                        R47 K53 [UDim2.fromScale]
      786 LOADN                            R48 1
      787 LOADN                            R49 0
      788 CALL                             R47 2 1
      789 JUMP                             ; [+5]
      790 GETIMPORT                        R47 K53 [UDim2.fromScale]
      792 LOADN                            R48 0
      793 LOADN                            R49 0
      794 CALL                             R47 2 1
      795 SETTABLEKS                       R47 R46 K31 ["Position"]
      797 SETTABLEKS                       R31 R46 K48 ["Rotation"]
      799 SETTABLEKS                       R30 R46 K2 ["Size"]
      801 GETUPVAL                         R48 0
      802 GETTABLEKS                       R47 R48 K74 ["SCROLLBAR_RIGHT_ZOOM_BUTTON_IMAGE"]
      804 SETTABLEKS                       R47 R46 K49 ["Image"]
      806 SETTABLEKS                       R21 R46 K70 ["OnMoved"]
      808 CALL                             R44 2 1
      809 SETTABLEKS                       R44 R43 K68 ["RightButton"]
      811 CALL                             R40 3 1
      812 SETTABLEKS                       R40 R39 K63 ["Body"]
      814 CALL                             R36 3 1
      815 SETTABLEKS                       R36 R35 K46 ["Inner"]
      817 CALL                             R32 3 -1
      818 RETURN                           R32 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["CanvasContext"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["ScrollbarButton"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Util"]
       30 GETTABLEKS                       R6 R7 K12 ["StyleUtil"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Types"]
       37 CALL                             R6 1 1
       38 DUPCLOSURE                       R7 K14 [PROTO_0]
       39 CAPTURE                          VAL R6
       40 DUPCLOSURE                       R8 K15 [PROTO_1]
       41 CAPTURE                          VAL R6
       42 DUPCLOSURE                       R9 K16 [PROTO_8]
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R4
       48 SETGLOBAL                        R9 K17 ["Scrollbar"]
       50 GETGLOBAL                        R9 K17 ["Scrollbar"]
       52 RETURN                           R9 1
