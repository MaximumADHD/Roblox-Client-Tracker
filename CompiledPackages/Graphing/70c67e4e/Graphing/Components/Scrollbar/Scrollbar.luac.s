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
       53 GETTABLEKS                       R8 R5 K15 ["getViewportRect"]
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
       84 MOVE                             R11 R6
       85 MOVE                             R12 R9
       86 CALL                             R11 1 1
       87 MOVE                             R12 R6
       88 MOVE                             R13 R10
       89 CALL                             R12 1 1
       90 GETTABLEKS                       R14 R0 K20 ["ExpandedBounds"]
       92 JUMPIFNOT                        R14 ; [+7]
       93 MOVE                             R13 R6
       94 GETTABLEKS                       R15 R0 K20 ["ExpandedBounds"]
       96 GETTABLEKS                       R14 R15 K16 ["Min"]
       98 CALL                             R13 1 1
       99 JUMP                             ; [+1]
      100 LOADN                            R13 0
      101 GETTABLEKS                       R15 R0 K20 ["ExpandedBounds"]
      103 JUMPIFNOT                        R15 ; [+7]
      104 MOVE                             R14 R6
      105 GETTABLEKS                       R16 R0 K20 ["ExpandedBounds"]
      107 GETTABLEKS                       R15 R16 K19 ["Max"]
      109 CALL                             R14 1 1
      110 JUMP                             ; [+1]
      111 LOADN                            R14 1
      112 GETUPVAL                         R16 1
      113 GETTABLEKS                       R15 R16 K21 ["useCallback"]
      115 NEWCLOSURE                       R16 P0
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R7
      122 NEWTABLE                         R17 0 2
      124 MOVE                             R18 R5
      125 MOVE                             R19 R0
      126 SETLIST                          R17 R18 2 [1]
      128 CALL                             R15 2 1
      129 GETUPVAL                         R17 1
      130 GETTABLEKS                       R16 R17 K21 ["useCallback"]
      132 NEWCLOSURE                       R17 P1
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R0
      136 CAPTURE                          UPVAL U3
      137 CAPTURE                          VAL R11
      138 NEWTABLE                         R18 0 1
      140 MOVE                             R19 R0
      141 SETLIST                          R18 R19 1 [1]
      143 CALL                             R16 2 1
      144 GETUPVAL                         R18 1
      145 GETTABLEKS                       R17 R18 K21 ["useCallback"]
      147 NEWCLOSURE                       R18 P2
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R5
      150 CAPTURE                          UPVAL U3
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R9
      153 NEWTABLE                         R19 0 1
      155 MOVE                             R20 R0
      156 SETLIST                          R19 R20 1 [1]
      158 CALL                             R17 2 1
      159 GETUPVAL                         R19 1
      160 GETTABLEKS                       R18 R19 K21 ["useCallback"]
      162 NEWCLOSURE                       R19 P3
      163 CAPTURE                          VAL R0
      164 CAPTURE                          VAL R5
      165 CAPTURE                          UPVAL U3
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R10
      168 NEWTABLE                         R20 0 1
      170 MOVE                             R21 R0
      171 SETLIST                          R20 R21 1 [1]
      173 CALL                             R18 2 1
      174 GETUPVAL                         R20 1
      175 GETTABLEKS                       R19 R20 K21 ["useCallback"]
      177 NEWCLOSURE                       R20 P4
      178 CAPTURE                          VAL R15
      179 NEWTABLE                         R21 0 1
      181 MOVE                             R22 R0
      182 SETLIST                          R21 R22 1 [1]
      184 CALL                             R19 2 1
      185 GETUPVAL                         R21 1
      186 GETTABLEKS                       R20 R21 K21 ["useCallback"]
      188 NEWCLOSURE                       R21 P5
      189 CAPTURE                          VAL R15
      190 NEWTABLE                         R22 0 1
      192 MOVE                             R23 R0
      193 SETLIST                          R22 R23 1 [1]
      195 CALL                             R20 2 1
      196 GETIMPORT                        R22 K24 [UDim.new]
      198 LOADN                            R23 0
      199 MINUS                            R25 R3
      200 SUB                              R24 R25 R4
      201 CALL                             R22 2 1
      202 GETIMPORT                        R24 K24 [UDim.new]
      204 LOADN                            R25 1
      205 LOADN                            R26 0
      206 CALL                             R24 2 1
      207 ADD                              R23 R24 R1
      208 GETTABLEKS                       R24 R0 K9 ["Axis"]
      210 GETUPVAL                         R26 3
      211 GETTABLEKS                       R25 R26 K10 ["AXIS_X"]
      213 JUMPIFNOTEQ                      R24 R25 ; [+8]
      215 GETIMPORT                        R25 K26 [UDim2.new]
      217 MOVE                             R26 R22
      218 MOVE                             R27 R23
      219 CALL                             R25 2 1
      220 MOVE                             R21 R25
      221 JUMP                             ; [+6]
      222 GETIMPORT                        R25 K26 [UDim2.new]
      224 MOVE                             R26 R23
      225 MOVE                             R27 R22
      226 CALL                             R25 2 1
      227 MOVE                             R21 R25
      228 GETIMPORT                        R23 K24 [UDim.new]
      230 LOADN                            R24 1
      231 LOADN                            R25 0
      232 CALL                             R23 2 1
      233 GETTABLEKS                       R24 R0 K9 ["Axis"]
      235 GETUPVAL                         R26 3
      236 GETTABLEKS                       R25 R26 K10 ["AXIS_X"]
      238 JUMPIFNOTEQ                      R24 R25 ; [+8]
      240 GETIMPORT                        R25 K26 [UDim2.new]
      242 MOVE                             R26 R23
      243 MOVE                             R27 R2
      244 CALL                             R25 2 1
      245 MOVE                             R22 R25
      246 JUMP                             ; [+6]
      247 GETIMPORT                        R25 K26 [UDim2.new]
      249 MOVE                             R26 R2
      250 MOVE                             R27 R23
      251 CALL                             R25 2 1
      252 MOVE                             R22 R25
      253 GETIMPORT                        R24 K24 [UDim.new]
      255 LOADN                            R25 0
      256 ADD                              R27 R3 R4
      257 MULK                             R26 R27 K27 [2]
      258 CALL                             R24 2 1
      259 GETIMPORT                        R25 K24 [UDim.new]
      261 LOADN                            R26 0
      262 LOADN                            R27 0
      263 CALL                             R25 2 1
      264 GETTABLEKS                       R26 R0 K9 ["Axis"]
      266 GETUPVAL                         R28 3
      267 GETTABLEKS                       R27 R28 K10 ["AXIS_X"]
      269 JUMPIFNOTEQ                      R26 R27 ; [+8]
      271 GETIMPORT                        R27 K26 [UDim2.new]
      273 MOVE                             R28 R24
      274 MOVE                             R29 R25
      275 CALL                             R27 2 1
      276 MOVE                             R23 R27
      277 JUMP                             ; [+6]
      278 GETIMPORT                        R27 K26 [UDim2.new]
      280 MOVE                             R28 R25
      281 MOVE                             R29 R24
      282 CALL                             R27 2 1
      283 MOVE                             R23 R27
      284 GETIMPORT                        R25 K24 [UDim.new]
      286 MOVE                             R26 R11
      287 LOADN                            R27 0
      288 CALL                             R25 2 1
      289 GETIMPORT                        R26 K24 [UDim.new]
      291 LOADN                            R27 0
      292 LOADN                            R28 0
      293 CALL                             R26 2 1
      294 GETTABLEKS                       R27 R0 K9 ["Axis"]
      296 GETUPVAL                         R29 3
      297 GETTABLEKS                       R28 R29 K10 ["AXIS_X"]
      299 JUMPIFNOTEQ                      R27 R28 ; [+8]
      301 GETIMPORT                        R28 K26 [UDim2.new]
      303 MOVE                             R29 R25
      304 MOVE                             R30 R26
      305 CALL                             R28 2 1
      306 MOVE                             R24 R28
      307 JUMP                             ; [+6]
      308 GETIMPORT                        R28 K26 [UDim2.new]
      310 MOVE                             R29 R26
      311 MOVE                             R30 R25
      312 CALL                             R28 2 1
      313 MOVE                             R24 R28
      314 GETIMPORT                        R26 K24 [UDim.new]
      316 SUB                              R27 R12 R11
      317 CALL                             R26 1 1
      318 GETIMPORT                        R27 K24 [UDim.new]
      320 LOADN                            R28 1
      321 LOADN                            R29 0
      322 CALL                             R27 2 1
      323 GETTABLEKS                       R28 R0 K9 ["Axis"]
      325 GETUPVAL                         R30 3
      326 GETTABLEKS                       R29 R30 K10 ["AXIS_X"]
      328 JUMPIFNOTEQ                      R28 R29 ; [+8]
      330 GETIMPORT                        R29 K26 [UDim2.new]
      332 MOVE                             R30 R26
      333 MOVE                             R31 R27
      334 CALL                             R29 2 1
      335 MOVE                             R25 R29
      336 JUMP                             ; [+6]
      337 GETIMPORT                        R29 K26 [UDim2.new]
      339 MOVE                             R30 R27
      340 MOVE                             R31 R26
      341 CALL                             R29 2 1
      342 MOVE                             R25 R29
      343 GETIMPORT                        R27 K24 [UDim.new]
      345 LOADN                            R28 0
      346 MOVE                             R29 R3
      347 CALL                             R27 2 1
      348 GETIMPORT                        R28 K24 [UDim.new]
      350 LOADN                            R29 1
      351 LOADN                            R30 0
      352 CALL                             R28 2 1
      353 GETTABLEKS                       R29 R0 K9 ["Axis"]
      355 GETUPVAL                         R31 3
      356 GETTABLEKS                       R30 R31 K10 ["AXIS_X"]
      358 JUMPIFNOTEQ                      R29 R30 ; [+8]
      360 GETIMPORT                        R30 K26 [UDim2.new]
      362 MOVE                             R31 R27
      363 MOVE                             R32 R28
      364 CALL                             R30 2 1
      365 MOVE                             R26 R30
      366 JUMP                             ; [+6]
      367 GETIMPORT                        R30 K26 [UDim2.new]
      369 MOVE                             R31 R28
      370 MOVE                             R32 R27
      371 CALL                             R30 2 1
      372 MOVE                             R26 R30
      373 GETIMPORT                        R28 K24 [UDim.new]
      375 LOADN                            R29 0
      376 MOVE                             R30 R4
      377 CALL                             R28 2 1
      378 GETIMPORT                        R29 K24 [UDim.new]
      380 LOADN                            R30 1
      381 LOADN                            R31 0
      382 CALL                             R29 2 1
      383 GETTABLEKS                       R30 R0 K9 ["Axis"]
      385 GETUPVAL                         R32 3
      386 GETTABLEKS                       R31 R32 K10 ["AXIS_X"]
      388 JUMPIFNOTEQ                      R30 R31 ; [+8]
      390 GETIMPORT                        R31 K26 [UDim2.new]
      392 MOVE                             R32 R28
      393 MOVE                             R33 R29
      394 CALL                             R31 2 1
      395 MOVE                             R27 R31
      396 JUMP                             ; [+6]
      397 GETIMPORT                        R31 K26 [UDim2.new]
      399 MOVE                             R32 R29
      400 MOVE                             R33 R28
      401 CALL                             R31 2 1
      402 MOVE                             R27 R31
      403 GETTABLEKS                       R29 R0 K9 ["Axis"]
      405 GETUPVAL                         R31 3
      406 GETTABLEKS                       R30 R31 K10 ["AXIS_X"]
      408 JUMPIFNOTEQ                      R29 R30 ; [+3]
      410 LOADN                            R28 0
      411 JUMP                             ; [+1]
      412 LOADN                            R28 90
      413 GETUPVAL                         R30 1
      414 GETTABLEKS                       R29 R30 K28 ["createElement"]
      416 LOADK                            R30 K29 ["Frame"]
      417 NEWTABLE                         R31 8 0
      419 SETTABLEKS                       R21 R31 K30 ["Position"]
      421 ADD                              R32 R22 R23
      422 SETTABLEKS                       R32 R31 K2 ["Size"]
      424 GETTABLEKS                       R32 R0 K31 ["OutlineThickness"]
      426 JUMPIF                           R32 ; [+3]
      427 GETUPVAL                         R33 0
      428 GETTABLEKS                       R32 R33 K32 ["SCROLLBAR_OUTLINE_THICKNESS"]
      430 SETTABLEKS                       R32 R31 K33 ["BorderSizePixel"]
      432 GETTABLEKS                       R32 R0 K34 ["OutlineColor3"]
      434 JUMPIF                           R32 ; [+3]
      435 GETUPVAL                         R33 0
      436 GETTABLEKS                       R32 R33 K35 ["SCROLLBAR_OUTLINE_COLOR3"]
      438 SETTABLEKS                       R32 R31 K36 ["BorderColor3"]
      440 GETTABLEKS                       R32 R0 K37 ["Color3"]
      442 JUMPIF                           R32 ; [+3]
      443 GETUPVAL                         R33 0
      444 GETTABLEKS                       R32 R33 K38 ["SCROLLBAR_COLOR3"]
      446 SETTABLEKS                       R32 R31 K39 ["BackgroundColor3"]
      448 GETTABLEKS                       R32 R0 K40 ["ZIndex"]
      450 SETTABLEKS                       R32 R31 K40 ["ZIndex"]
      452 GETUPVAL                         R33 1
      453 GETTABLEKS                       R32 R33 K41 ["Tag"]
      455 LOADK                            R33 K42 ["ScrollbarFrame"]
      456 SETTABLE                         R33 R31 R32
      457 DUPTABLE                         R32 K46 [{"MinScrollButton", "MaxScrollButton", "Inner"}]
      458 GETUPVAL                         R34 1
      459 GETTABLEKS                       R33 R34 K28 ["createElement"]
      461 GETUPVAL                         R34 4
      462 DUPTABLE                         R35 K50 [{"Position", "Rotation", "Size", "Image", "OnClick"}]
      463 GETIMPORT                        R36 K52 [UDim2.fromScale]
      465 LOADN                            R37 0
      466 LOADN                            R38 0
      467 CALL                             R36 2 1
      468 SETTABLEKS                       R36 R35 K30 ["Position"]
      470 SETTABLEKS                       R28 R35 K47 ["Rotation"]
      472 SETTABLEKS                       R26 R35 K2 ["Size"]
      474 GETUPVAL                         R37 0
      475 GETTABLEKS                       R36 R37 K53 ["SCROLLBAR_LEFT_SCROLL_BUTTON_IMAGE"]
      477 SETTABLEKS                       R36 R35 K48 ["Image"]
      479 SETTABLEKS                       R19 R35 K49 ["OnClick"]
      481 CALL                             R33 2 1
      482 SETTABLEKS                       R33 R32 K43 ["MinScrollButton"]
      484 GETUPVAL                         R34 1
      485 GETTABLEKS                       R33 R34 K28 ["createElement"]
      487 GETUPVAL                         R34 4
      488 DUPTABLE                         R35 K55 [{"AnchorPoint", "Position", "Rotation", "Size", "Image", "OnClick"}]
      489 GETTABLEKS                       R37 R0 K9 ["Axis"]
      491 GETUPVAL                         R39 3
      492 GETTABLEKS                       R38 R39 K10 ["AXIS_X"]
      494 JUMPIFNOTEQ                      R37 R38 ; [+7]
      496 GETIMPORT                        R36 K57 [Vector2.new]
      498 LOADN                            R37 1
      499 LOADN                            R38 0
      500 CALL                             R36 2 1
      501 JUMP                             ; [+5]
      502 GETIMPORT                        R36 K57 [Vector2.new]
      504 LOADN                            R37 0
      505 LOADN                            R38 1
      506 CALL                             R36 2 1
      507 SETTABLEKS                       R36 R35 K54 ["AnchorPoint"]
      509 GETIMPORT                        R37 K24 [UDim.new]
      511 LOADN                            R38 1
      512 LOADN                            R39 0
      513 CALL                             R37 2 1
      514 GETIMPORT                        R38 K24 [UDim.new]
      516 LOADN                            R39 0
      517 LOADN                            R40 0
      518 CALL                             R38 2 1
      519 GETTABLEKS                       R39 R0 K9 ["Axis"]
      521 GETUPVAL                         R41 3
      522 GETTABLEKS                       R40 R41 K10 ["AXIS_X"]
      524 JUMPIFNOTEQ                      R39 R40 ; [+8]
      526 GETIMPORT                        R40 K26 [UDim2.new]
      528 MOVE                             R41 R37
      529 MOVE                             R42 R38
      530 CALL                             R40 2 1
      531 MOVE                             R36 R40
      532 JUMP                             ; [+6]
      533 GETIMPORT                        R40 K26 [UDim2.new]
      535 MOVE                             R41 R38
      536 MOVE                             R42 R37
      537 CALL                             R40 2 1
      538 MOVE                             R36 R40
      539 SETTABLEKS                       R36 R35 K30 ["Position"]
      541 SETTABLEKS                       R28 R35 K47 ["Rotation"]
      543 SETTABLEKS                       R26 R35 K2 ["Size"]
      545 GETUPVAL                         R37 0
      546 GETTABLEKS                       R36 R37 K58 ["SCROLLBAR_RIGHT_SCROLL_BUTTON_IMAGE"]
      548 SETTABLEKS                       R36 R35 K48 ["Image"]
      550 SETTABLEKS                       R20 R35 K49 ["OnClick"]
      552 CALL                             R33 2 1
      553 SETTABLEKS                       R33 R32 K44 ["MaxScrollButton"]
      555 GETUPVAL                         R34 1
      556 GETTABLEKS                       R33 R34 K28 ["createElement"]
      558 LOADK                            R34 K29 ["Frame"]
      559 DUPTABLE                         R35 K60 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "BorderSizePixel"}]
      560 GETIMPORT                        R36 K57 [Vector2.new]
      562 LOADK                            R37 K61 [0.5]
      563 LOADK                            R38 K61 [0.5]
      564 CALL                             R36 2 1
      565 SETTABLEKS                       R36 R35 K54 ["AnchorPoint"]
      567 GETIMPORT                        R36 K52 [UDim2.fromScale]
      569 LOADK                            R37 K61 [0.5]
      570 LOADK                            R38 K61 [0.5]
      571 CALL                             R36 2 1
      572 SETTABLEKS                       R36 R35 K30 ["Position"]
      574 GETIMPORT                        R37 K52 [UDim2.fromScale]
      576 LOADN                            R38 1
      577 LOADN                            R39 1
      578 CALL                             R37 2 1
      579 SUB                              R36 R37 R23
      580 SETTABLEKS                       R36 R35 K2 ["Size"]
      582 LOADN                            R36 1
      583 SETTABLEKS                       R36 R35 K59 ["BackgroundTransparency"]
      585 LOADN                            R36 0
      586 SETTABLEKS                       R36 R35 K33 ["BorderSizePixel"]
      588 DUPTABLE                         R36 K63 [{"Body"}]
      589 GETUPVAL                         R38 1
      590 GETTABLEKS                       R37 R38 K28 ["createElement"]
      592 LOADK                            R38 K29 ["Frame"]
      593 DUPTABLE                         R39 K64 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel"}]
      594 SETTABLEKS                       R24 R39 K30 ["Position"]
      596 SETTABLEKS                       R25 R39 K2 ["Size"]
      598 LOADN                            R40 1
      599 SETTABLEKS                       R40 R39 K59 ["BackgroundTransparency"]
      601 LOADN                            R40 0
      602 SETTABLEKS                       R40 R39 K33 ["BorderSizePixel"]
      604 DUPTABLE                         R40 K68 [{"MainButton", "LeftButton", "RightButton"}]
      605 GETUPVAL                         R42 1
      606 GETTABLEKS                       R41 R42 K28 ["createElement"]
      608 GETUPVAL                         R42 4
      609 DUPTABLE                         R43 K70 [{"AnchorPoint", "Position", "Size", "OnMoved"}]
      610 GETTABLEKS                       R45 R0 K9 ["Axis"]
      612 GETUPVAL                         R47 3
      613 GETTABLEKS                       R46 R47 K10 ["AXIS_X"]
      615 JUMPIFNOTEQ                      R45 R46 ; [+7]
      617 GETIMPORT                        R44 K57 [Vector2.new]
      619 LOADN                            R45 0
      620 LOADN                            R46 0
      621 CALL                             R44 2 1
      622 JUMP                             ; [+5]
      623 GETIMPORT                        R44 K57 [Vector2.new]
      625 LOADN                            R45 0
      626 LOADN                            R46 1
      627 CALL                             R44 2 1
      628 SETTABLEKS                       R44 R43 K54 ["AnchorPoint"]
      630 GETTABLEKS                       R45 R0 K9 ["Axis"]
      632 GETUPVAL                         R47 3
      633 GETTABLEKS                       R46 R47 K10 ["AXIS_X"]
      635 JUMPIFNOTEQ                      R45 R46 ; [+7]
      637 GETIMPORT                        R44 K52 [UDim2.fromScale]
      639 LOADN                            R45 0
      640 LOADN                            R46 0
      641 CALL                             R44 2 1
      642 JUMP                             ; [+5]
      643 GETIMPORT                        R44 K52 [UDim2.fromScale]
      645 LOADN                            R45 0
      646 LOADN                            R46 1
      647 CALL                             R44 2 1
      648 SETTABLEKS                       R44 R43 K30 ["Position"]
      650 GETIMPORT                        R44 K52 [UDim2.fromScale]
      652 LOADN                            R45 1
      653 LOADN                            R46 1
      654 CALL                             R44 2 1
      655 SETTABLEKS                       R44 R43 K2 ["Size"]
      657 SETTABLEKS                       R16 R43 K69 ["OnMoved"]
      659 CALL                             R41 2 1
      660 SETTABLEKS                       R41 R40 K65 ["MainButton"]
      662 GETUPVAL                         R42 1
      663 GETTABLEKS                       R41 R42 K28 ["createElement"]
      665 GETUPVAL                         R42 4
      666 DUPTABLE                         R43 K71 [{"AnchorPoint", "Position", "Rotation", "Size", "Image", "OnMoved"}]
      667 GETTABLEKS                       R45 R0 K9 ["Axis"]
      669 GETUPVAL                         R47 3
      670 GETTABLEKS                       R46 R47 K10 ["AXIS_X"]
      672 JUMPIFNOTEQ                      R45 R46 ; [+7]
      674 GETIMPORT                        R44 K57 [Vector2.new]
      676 LOADN                            R45 1
      677 LOADN                            R46 0
      678 CALL                             R44 2 1
      679 JUMP                             ; [+5]
      680 GETIMPORT                        R44 K57 [Vector2.new]
      682 LOADN                            R45 0
      683 LOADN                            R46 0
      684 CALL                             R44 2 1
      685 SETTABLEKS                       R44 R43 K54 ["AnchorPoint"]
      687 GETTABLEKS                       R45 R0 K9 ["Axis"]
      689 GETUPVAL                         R47 3
      690 GETTABLEKS                       R46 R47 K10 ["AXIS_X"]
      692 JUMPIFNOTEQ                      R45 R46 ; [+7]
      694 GETIMPORT                        R44 K52 [UDim2.fromScale]
      696 LOADN                            R45 0
      697 LOADN                            R46 0
      698 CALL                             R44 2 1
      699 JUMP                             ; [+5]
      700 GETIMPORT                        R44 K52 [UDim2.fromScale]
      702 LOADN                            R45 0
      703 LOADN                            R46 1
      704 CALL                             R44 2 1
      705 SETTABLEKS                       R44 R43 K30 ["Position"]
      707 SETTABLEKS                       R28 R43 K47 ["Rotation"]
      709 SETTABLEKS                       R27 R43 K2 ["Size"]
      711 GETUPVAL                         R45 0
      712 GETTABLEKS                       R44 R45 K72 ["SCROLLBAR_LEFT_ZOOM_BUTTON_IMAGE"]
      714 SETTABLEKS                       R44 R43 K48 ["Image"]
      716 SETTABLEKS                       R17 R43 K69 ["OnMoved"]
      718 CALL                             R41 2 1
      719 SETTABLEKS                       R41 R40 K66 ["LeftButton"]
      721 GETUPVAL                         R42 1
      722 GETTABLEKS                       R41 R42 K28 ["createElement"]
      724 GETUPVAL                         R42 4
      725 DUPTABLE                         R43 K71 [{"AnchorPoint", "Position", "Rotation", "Size", "Image", "OnMoved"}]
      726 GETTABLEKS                       R45 R0 K9 ["Axis"]
      728 GETUPVAL                         R47 3
      729 GETTABLEKS                       R46 R47 K10 ["AXIS_X"]
      731 JUMPIFNOTEQ                      R45 R46 ; [+7]
      733 GETIMPORT                        R44 K57 [Vector2.new]
      735 LOADN                            R45 0
      736 LOADN                            R46 0
      737 CALL                             R44 2 1
      738 JUMP                             ; [+5]
      739 GETIMPORT                        R44 K57 [Vector2.new]
      741 LOADN                            R45 0
      742 LOADN                            R46 1
      743 CALL                             R44 2 1
      744 SETTABLEKS                       R44 R43 K54 ["AnchorPoint"]
      746 GETTABLEKS                       R45 R0 K9 ["Axis"]
      748 GETUPVAL                         R47 3
      749 GETTABLEKS                       R46 R47 K10 ["AXIS_X"]
      751 JUMPIFNOTEQ                      R45 R46 ; [+7]
      753 GETIMPORT                        R44 K52 [UDim2.fromScale]
      755 LOADN                            R45 1
      756 LOADN                            R46 0
      757 CALL                             R44 2 1
      758 JUMP                             ; [+5]
      759 GETIMPORT                        R44 K52 [UDim2.fromScale]
      761 LOADN                            R45 0
      762 LOADN                            R46 0
      763 CALL                             R44 2 1
      764 SETTABLEKS                       R44 R43 K30 ["Position"]
      766 SETTABLEKS                       R28 R43 K47 ["Rotation"]
      768 SETTABLEKS                       R27 R43 K2 ["Size"]
      770 GETUPVAL                         R45 0
      771 GETTABLEKS                       R44 R45 K73 ["SCROLLBAR_RIGHT_ZOOM_BUTTON_IMAGE"]
      773 SETTABLEKS                       R44 R43 K48 ["Image"]
      775 SETTABLEKS                       R18 R43 K69 ["OnMoved"]
      777 CALL                             R41 2 1
      778 SETTABLEKS                       R41 R40 K67 ["RightButton"]
      780 CALL                             R37 3 1
      781 SETTABLEKS                       R37 R36 K62 ["Body"]
      783 CALL                             R33 3 1
      784 SETTABLEKS                       R33 R32 K45 ["Inner"]
      786 CALL                             R29 3 -1
      787 RETURN                           R29 -1

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
