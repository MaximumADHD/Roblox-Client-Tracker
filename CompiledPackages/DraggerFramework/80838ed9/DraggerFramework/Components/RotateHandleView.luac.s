PROTO_0:
        0 DIVK                             R4 R0 K0 [1.5707963267949]
        1 ADDK                             R3 R4 K1 [0.5]
        2 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        3 GETIMPORT                        R2 K4 [math.floor]
        5 CALL                             R2 1 1
        6 MULK                             R1 R2 K0 [1.5707963267949]
        7 SUB                              R4 R0 R1
        8 FASTCALL1                        MATH_ABS R4 ; [+2]
        9 GETIMPORT                        R3 K6 [math.abs]
       11 CALL                             R3 1 1
       12 LOADK                            R4 K7 [0.001]
       13 JUMPIFLT                         R3 R4 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [CFrame.new]
        2 LOADN                            R2 0
        3 LOADN                            R3 0
        4 GETUPVAL                         R7 0
        5 GETUPVAL                         R8 1
        6 ADD                              R6 R7 R8
        7 MINUS                            R5 R6
        8 DIVK                             R4 R5 K3 [2]
        9 CALL                             R1 3 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K4 ["props"]
       13 GETTABLEKS                       R4 R4 K5 ["HandleCFrame"]
       15 GETIMPORT                        R5 K7 [CFrame.Angles]
       17 MOVE                             R6 R0
       18 LOADN                            R7 0
       19 LOADN                            R8 0
       20 CALL                             R5 3 1
       21 MUL                              R3 R4 R5
       22 MUL                              R2 R3 R1
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K8 ["createElement"]
       26 LOADK                            R4 K9 ["CylinderHandleAdornment"]
       27 DUPTABLE                         R5 K18 [{["Adornee"], ["AlwaysOnTop"] = True, [3], ["Color3"], ["Height"], ["Radius"], ["ZIndex"] = 0}]
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R6 R6 K19 ["Terrain"]
       31 SETTABLEKS                       R6 R5 K10 ["Adornee"]
       33 SETTABLEKS                       R2 R5 K0 ["CFrame"]
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R6 R6 K4 ["props"]
       38 GETTABLEKS                       R6 R6 K20 ["Color"]
       40 SETTABLEKS                       R6 R5 K13 ["Color3"]
       42 GETUPVAL                         R7 0
       43 GETUPVAL                         R8 1
       44 ADD                              R6 R7 R8
       45 SETTABLEKS                       R6 R5 K14 ["Height"]
       47 GETUPVAL                         R7 5
       48 DIVK                             R6 R7 K3 [2]
       49 SETTABLEKS                       R6 R5 K15 ["Radius"]
       51 CALL                             R3 2 -1
       52 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Scale"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K3 ["RadiusOffset"]
        8 ORK                              R2 R3 K2 [0]
        9 LOADK                            R5 K4 [4.5]
       10 ADD                              R4 R5 R2
       11 MUL                              R3 R4 R1
       12 LOADK                            R5 K5 [0.1]
       13 MUL                              R4 R5 R1
       14 GETUPVAL                         R5 0
       15 CALL                             R5 0 1
       16 JUMPIF                           R5 ; [+11]
       17 GETTABLEKS                       R5 R0 K0 ["props"]
       19 GETTABLEKS                       R5 R5 K6 ["Hovered"]
       21 JUMPIFNOT                        R5 ; [+6]
       22 GETTABLEKS                       R6 R0 K0 ["props"]
       24 GETTABLEKS                       R6 R6 K1 ["Scale"]
       26 MULK                             R5 R6 K5 [0.1]
       27 ADD                              R3 R3 R5
       28 GETTABLEKS                       R5 R0 K0 ["props"]
       30 GETTABLEKS                       R5 R5 K7 ["Thin"]
       32 JUMPIFNOT                        R5 ; [+1]
       33 MULK                             R4 R4 K2 [0]
       34 GETTABLEKS                       R5 R0 K0 ["props"]
       36 GETTABLEKS                       R5 R5 K6 ["Hovered"]
       38 JUMPIFNOT                        R5 ; [+1]
       39 MULK                             R4 R4 K8 [1.5]
       40 LOADNIL                          R5
       41 LOADNIL                          R6
       42 GETUPVAL                         R7 0
       43 CALL                             R7 0 1
       44 JUMPIFNOT                        R7 ; [+28]
       45 GETTABLEKS                       R9 R0 K0 ["props"]
       47 GETTABLEKS                       R9 R9 K9 ["StartAngle"]
       49 ORK                              R8 R9 K2 [0]
       50 GETTABLEKS                       R10 R0 K0 ["props"]
       52 GETTABLEKS                       R10 R10 K10 ["SlideAngle"]
       54 ORK                              R9 R10 K2 [0]
       55 ADD                              R7 R8 R9
       56 GETTABLEKS                       R8 R0 K0 ["props"]
       58 GETTABLEKS                       R8 R8 K11 ["HandleCFrame"]
       60 GETIMPORT                        R9 K14 [CFrame.Angles]
       62 MOVE                             R10 R7
       63 LOADK                            R11 K15 [1.5707963267949]
       64 LOADK                            R12 K15 [1.5707963267949]
       65 CALL                             R9 3 1
       66 MUL                              R5 R8 R9
       67 GETTABLEKS                       R8 R0 K0 ["props"]
       69 GETTABLEKS                       R8 R8 K17 ["ArcAngle"]
       71 ORK                              R6 R8 K16 [360]
       72 JUMP                             ; [+15]
       73 GETTABLEKS                       R7 R0 K0 ["props"]
       75 GETTABLEKS                       R7 R7 K11 ["HandleCFrame"]
       77 GETIMPORT                        R8 K14 [CFrame.Angles]
       79 GETTABLEKS                       R10 R0 K0 ["props"]
       81 GETTABLEKS                       R10 R10 K9 ["StartAngle"]
       83 ORK                              R9 R10 K2 [0]
       84 LOADK                            R10 K15 [1.5707963267949]
       85 LOADK                            R11 K15 [1.5707963267949]
       86 CALL                             R8 3 1
       87 MUL                              R5 R7 R8
       88 NEWTABLE                         R7 4 0
       90 LOADK                            R9 K18 [0.5]
       91 MUL                              R8 R9 R4
       92 GETUPVAL                         R9 1
       93 GETTABLEKS                       R9 R9 K19 ["createElement"]
       95 LOADK                            R10 K20 ["CylinderHandleAdornment"]
       96 DUPTABLE                         R11 K32 [{["Adornee"], ["CFrame"], ["Height"], ["Radius"], ["InnerRadius"], ["Color3"], ["AlwaysOnTop"] = True, ["Transparency"], ["ZIndex"] = 0, ["AdornCullingMode"], ["Angle"]}]
       97 GETUPVAL                         R12 2
       98 GETTABLEKS                       R12 R12 K33 ["Terrain"]
      100 SETTABLEKS                       R12 R11 K21 ["Adornee"]
      102 SETTABLEKS                       R5 R11 K12 ["CFrame"]
      104 SETTABLEKS                       R4 R11 K22 ["Height"]
      106 ADD                              R12 R3 R8
      107 SETTABLEKS                       R12 R11 K23 ["Radius"]
      109 SUB                              R12 R3 R8
      110 SETTABLEKS                       R12 R11 K24 ["InnerRadius"]
      112 GETTABLEKS                       R12 R0 K0 ["props"]
      114 GETTABLEKS                       R12 R12 K34 ["Color"]
      116 SETTABLEKS                       R12 R11 K25 ["Color3"]
      118 GETUPVAL                         R13 0
      119 CALL                             R13 0 1
      120 JUMPIFNOT                        R13 ; [+2]
      121 LOADN                            R12 0
      122 JUMP                             ; [+1]
      123 LOADK                            R12 K35 [0.45]
      124 SETTABLEKS                       R12 R11 K28 ["Transparency"]
      126 GETUPVAL                         R12 3
      127 SETTABLEKS                       R12 R11 K30 ["AdornCullingMode"]
      129 GETUPVAL                         R13 0
      130 CALL                             R13 0 1
      131 JUMPIFNOT                        R13 ; [+2]
      132 MOVE                             R12 R6
      133 JUMP                             ; [+1]
      134 LOADNIL                          R12
      135 SETTABLEKS                       R12 R11 K31 ["Angle"]
      137 CALL                             R9 2 1
      138 SETTABLEKS                       R9 R7 K36 ["OnTopHandle"]
      140 GETUPVAL                         R9 0
      141 CALL                             R9 0 1
      142 JUMPIF                           R9 ; [+32]
      143 GETUPVAL                         R9 1
      144 GETTABLEKS                       R9 R9 K19 ["createElement"]
      146 LOADK                            R10 K20 ["CylinderHandleAdornment"]
      147 DUPTABLE                         R11 K38 [{["Adornee"], ["CFrame"], ["Height"], ["Radius"], ["InnerRadius"], ["Color3"], ["AlwaysOnTop"] = False, ["Transparency"] = 0, ["ZIndex"] = 0, ["AdornCullingMode"]}]
      148 GETUPVAL                         R12 2
      149 GETTABLEKS                       R12 R12 K33 ["Terrain"]
      151 SETTABLEKS                       R12 R11 K21 ["Adornee"]
      153 SETTABLEKS                       R5 R11 K12 ["CFrame"]
      155 SETTABLEKS                       R4 R11 K22 ["Height"]
      157 ADD                              R12 R3 R8
      158 SETTABLEKS                       R12 R11 K23 ["Radius"]
      160 SUB                              R12 R3 R8
      161 SETTABLEKS                       R12 R11 K24 ["InnerRadius"]
      163 GETTABLEKS                       R12 R0 K0 ["props"]
      165 GETTABLEKS                       R12 R12 K34 ["Color"]
      167 SETTABLEKS                       R12 R11 K25 ["Color3"]
      169 GETUPVAL                         R12 3
      170 SETTABLEKS                       R12 R11 K30 ["AdornCullingMode"]
      172 CALL                             R9 2 1
      173 SETTABLEKS                       R9 R7 K39 ["BrightHandle"]
      175 GETTABLEKS                       R9 R0 K0 ["props"]
      177 GETTABLEKS                       R9 R9 K40 ["TickAngle"]
      179 JUMPIFNOT                        R9 ; [+223]
      180 GETTABLEKS                       R9 R0 K0 ["props"]
      182 GETTABLEKS                       R9 R9 K40 ["TickAngle"]
      184 LOADNIL                          R10
      185 GETUPVAL                         R11 0
      186 CALL                             R11 0 1
      187 JUMPIFNOT                        R11 ; [+12]
      188 FASTCALL1                        MATH_RAD R6 ; [+3]
      189 MOVE                             R14 R6
      190 GETIMPORT                        R13 K43 [math.rad]
      192 CALL                             R13 1 1
      193 DIV                              R12 R13 R9
      194 FASTCALL1                        MATH_CEIL R12 ; [+2]
      195 GETIMPORT                        R11 K45 [math.ceil]
      197 CALL                             R11 1 1
      198 MOVE                             R10 R11
      199 JUMP                             ; [+6]
      200 DIVRK                            R12 K46 [6.28318530717959] R9
      201 FASTCALL1                        MATH_CEIL R12 ; [+2]
      202 GETIMPORT                        R11 K45 [math.ceil]
      204 CALL                             R11 1 1
      205 MOVE                             R10 R11
      206 LOADK                            R12 K47 [0.05]
      207 MUL                              R11 R12 R1
      208 LOADK                            R13 K5 [0.1]
      209 MUL                              R12 R13 R3
      210 LOADK                            R14 K5 [0.1]
      211 MUL                              R13 R14 R1
      212 LOADK                            R15 K48 [0.3]
      213 MUL                              R14 R15 R3
      214 LOADN                            R15 0
      215 LOADN                            R16 0
      216 LOADB                            R17 0
      217 LOADN                            R18 0
      218 GETTABLEKS                       R19 R0 K0 ["props"]
      220 GETTABLEKS                       R19 R19 K9 ["StartAngle"]
      222 JUMPIFNOT                        R19 ; [+14]
      223 GETTABLEKS                       R19 R0 K0 ["props"]
      225 GETTABLEKS                       R19 R19 K49 ["EndAngle"]
      227 GETTABLEKS                       R20 R0 K0 ["props"]
      229 GETTABLEKS                       R20 R20 K9 ["StartAngle"]
      231 SUB                              R15 R19 R20
      232 GETTABLEKS                       R19 R0 K0 ["props"]
      234 GETTABLEKS                       R16 R19 K9 ["StartAngle"]
      236 LOADB                            R17 1
      237 GETUPVAL                         R19 0
      238 CALL                             R19 0 1
      239 JUMPIFNOT                        R19 ; [+16]
      240 GETTABLEKS                       R19 R0 K0 ["props"]
      242 GETTABLEKS                       R19 R19 K10 ["SlideAngle"]
      244 JUMPIFNOT                        R19 ; [+11]
      245 GETTABLEKS                       R22 R0 K0 ["props"]
      247 GETTABLEKS                       R22 R22 K10 ["SlideAngle"]
      249 ADDK                             R21 R22 K15 [1.5707963267949]
      250 DIV                              R20 R21 R9
      251 FASTCALL1                        MATH_CEIL R20 ; [+2]
      252 GETIMPORT                        R19 K45 [math.ceil]
      254 CALL                             R19 1 1
      255 MUL                              R18 R19 R9
      256 LOADN                            R21 1
      257 MOVE                             R19 R10
      258 LOADN                            R20 1
      259 FORNPREP                         R19
      260 LOADK                            R25 K50 [3.14159265358979]
      261 SUBK                             R27 R21 K51 [1]
      262 MUL                              R26 R27 R9
      263 ADD                              R24 R25 R26
      264 SUB                              R23 R24 R15
      265 ADD                              R22 R23 R18
      266 MOVE                             R23 R17
      267 JUMPIFNOT                        R23 ; [+18]
      268 SUB                              R24 R22 R16
      269 DIVK                             R28 R24 K15 [1.5707963267949]
      270 ADDK                             R27 R28 K18 [0.5]
      271 FASTCALL1                        MATH_FLOOR R27 ; [+2]
      272 GETIMPORT                        R26 K53 [math.floor]
      274 CALL                             R26 1 1
      275 MULK                             R25 R26 K15 [1.5707963267949]
      276 SUB                              R27 R24 R25
      277 FASTCALL1                        MATH_ABS R27 ; [+2]
      278 GETIMPORT                        R26 K55 [math.abs]
      280 CALL                             R26 1 1
      281 LOADK                            R27 K56 [0.001]
      282 JUMPIFLT                         R26 R27 ; [+2]
      284 LOADB                            R23 0 +1
      285 LOADB                            R23 1
      286 JUMPIFNOT                        R23 ; [+2]
      287 MOVE                             R24 R14
      288 JUMPIF                           R24 ; [+1]
      289 MOVE                             R24 R12
      290 JUMPIFNOT                        R23 ; [+2]
      291 MOVE                             R25 R13
      292 JUMPIF                           R25 ; [+1]
      293 MOVE                             R25 R11
      294 GETTABLEKS                       R28 R0 K0 ["props"]
      296 GETTABLEKS                       R28 R28 K11 ["HandleCFrame"]
      298 GETIMPORT                        R29 K14 [CFrame.Angles]
      300 MOVE                             R30 R22
      301 LOADN                            R31 0
      302 LOADN                            R32 0
      303 CALL                             R29 3 1
      304 MUL                              R27 R28 R29
      305 GETIMPORT                        R28 K58 [CFrame.new]
      307 LOADN                            R29 0
      308 LOADN                            R30 0
      309 LOADK                            R33 K18 [0.5]
      310 MUL                              R32 R33 R12
      311 SUB                              R31 R3 R32
      312 CALL                             R28 3 1
      313 MUL                              R26 R27 R28
      314 LOADK                            R28 K59 ["Tick"]
      315 FASTCALL1                        TOSTRING R21 ; [+3]
      316 MOVE                             R30 R21
      317 GETIMPORT                        R29 K61 [tostring]
      319 CALL                             R29 1 1
      320 CONCAT                           R27 R28 R29
      321 GETUPVAL                         R28 1
      322 GETTABLEKS                       R28 R28 K19 ["createElement"]
      324 LOADK                            R29 K62 ["BoxHandleAdornment"]
      325 DUPTABLE                         R30 K64 [{["Adornee"], ["AlwaysOnTop"] = False, ["CFrame"], ["Color3"], ["Size"], ["ZIndex"] = 0, ["AdornCullingMode"]}]
      326 GETUPVAL                         R31 2
      327 GETTABLEKS                       R31 R31 K33 ["Terrain"]
      329 SETTABLEKS                       R31 R30 K21 ["Adornee"]
      331 SETTABLEKS                       R26 R30 K12 ["CFrame"]
      333 GETTABLEKS                       R31 R0 K0 ["props"]
      335 GETTABLEKS                       R31 R31 K34 ["Color"]
      337 SETTABLEKS                       R31 R30 K25 ["Color3"]
      339 FASTCALL3                        VECTOR R25 R25 R24
      341 MOVE                             R32 R25
      342 MOVE                             R33 R25
      343 MOVE                             R34 R24
      344 GETIMPORT                        R31 K66 [Vector3.new]
      346 CALL                             R31 3 1
      347 SETTABLEKS                       R31 R30 K63 ["Size"]
      349 GETUPVAL                         R31 3
      350 SETTABLEKS                       R31 R30 K30 ["AdornCullingMode"]
      352 CALL                             R28 2 1
      353 SETTABLE                         R28 R7 R27
      354 LOADK                            R28 K67 ["OnTopTick"]
      355 FASTCALL1                        TOSTRING R21 ; [+3]
      356 MOVE                             R30 R21
      357 GETIMPORT                        R29 K61 [tostring]
      359 CALL                             R29 1 1
      360 CONCAT                           R27 R28 R29
      361 GETUPVAL                         R28 1
      362 GETTABLEKS                       R28 R28 K19 ["createElement"]
      364 LOADK                            R29 K62 ["BoxHandleAdornment"]
      365 DUPTABLE                         R30 K68 [{["Adornee"], ["AlwaysOnTop"] = True, ["Transparency"], ["CFrame"], ["Color3"], ["Size"], ["ZIndex"] = 0, ["AdornCullingMode"]}]
      366 GETUPVAL                         R31 2
      367 GETTABLEKS                       R31 R31 K33 ["Terrain"]
      369 SETTABLEKS                       R31 R30 K21 ["Adornee"]
      371 GETUPVAL                         R32 0
      372 CALL                             R32 0 1
      373 JUMPIFNOT                        R32 ; [+2]
      374 LOADN                            R31 0
      375 JUMP                             ; [+1]
      376 LOADK                            R31 K35 [0.45]
      377 SETTABLEKS                       R31 R30 K28 ["Transparency"]
      379 SETTABLEKS                       R26 R30 K12 ["CFrame"]
      381 GETTABLEKS                       R31 R0 K0 ["props"]
      383 GETTABLEKS                       R31 R31 K34 ["Color"]
      385 SETTABLEKS                       R31 R30 K25 ["Color3"]
      387 FASTCALL3                        VECTOR R25 R25 R24
      389 MOVE                             R32 R25
      390 MOVE                             R33 R25
      391 MOVE                             R34 R24
      392 GETIMPORT                        R31 K66 [Vector3.new]
      394 CALL                             R31 3 1
      395 SETTABLEKS                       R31 R30 K63 ["Size"]
      397 GETUPVAL                         R31 3
      398 SETTABLEKS                       R31 R30 K30 ["AdornCullingMode"]
      400 CALL                             R28 2 1
      401 SETTABLE                         R28 R7 R27
      402 FORNLOOP                         R19
      403 GETTABLEKS                       R9 R0 K0 ["props"]
      405 GETTABLEKS                       R9 R9 K9 ["StartAngle"]
      407 JUMPIFNOT                        R9 ; [+221]
      408 GETTABLEKS                       R9 R0 K0 ["props"]
      410 GETTABLEKS                       R9 R9 K49 ["EndAngle"]
      412 JUMPIFNOT                        R9 ; [+216]
      413 LOADK                            R10 K5 [0.1]
      414 MUL                              R9 R10 R3
      415 LOADK                            R11 K48 [0.3]
      416 MUL                              R10 R11 R3
      417 LOADN                            R11 0
      418 GETUPVAL                         R12 0
      419 CALL                             R12 0 1
      420 JUMPIF                           R12 ; [+3]
      421 LOADK                            R12 K18 [0.5]
      422 SUB                              R13 R10 R9
      423 MUL                              R11 R12 R13
      424 GETTABLEKS                       R13 R0 K0 ["props"]
      426 GETTABLEKS                       R13 R13 K49 ["EndAngle"]
      428 GETTABLEKS                       R14 R0 K0 ["props"]
      430 GETTABLEKS                       R14 R14 K9 ["StartAngle"]
      432 SUB                              R12 R13 R14
      433 GETTABLEKS                       R13 R0 K0 ["props"]
      435 GETTABLEKS                       R13 R13 K9 ["StartAngle"]
      437 LOADK                            R14 K50 [3.14159265358979]
      438 JUMPIFNOTLT                      R14 R12 ; [+2]
      440 SUBK                             R12 R12 K46 [6.28318530717959]
      441 LOADK                            R14 K69 [-3.14159265358979]
      442 JUMPIFNOTLT                      R12 R14 ; [+2]
      444 ADDK                             R12 R12 K46 [6.28318530717959]
      445 LOADN                            R14 0
      446 JUMPIFNOTLT                      R12 R14 ; [+8]
      448 ADD                              R13 R13 R12
      449 FASTCALL1                        MATH_ABS R12 ; [+3]
      450 MOVE                             R15 R12
      451 GETIMPORT                        R14 K55 [math.abs]
      453 CALL                             R14 1 1
      454 MOVE                             R12 R14
      455 FASTCALL1                        MATH_ABS R12 ; [+3]
      456 MOVE                             R15 R12
      457 GETIMPORT                        R14 K55 [math.abs]
      459 CALL                             R14 1 1
      460 LOADK                            R15 K56 [0.001]
      461 JUMPIFNOTLT                      R15 R14 ; [+42]
      463 GETUPVAL                         R14 1
      464 GETTABLEKS                       R14 R14 K19 ["createElement"]
      466 LOADK                            R15 K20 ["CylinderHandleAdornment"]
      467 DUPTABLE                         R16 K71 [{["Adornee"], ["CFrame"], ["Height"] = 0, ["Radius"], ["InnerRadius"] = 0, ["Angle"], ["Color3"], ["AlwaysOnTop"] = True, ["Transparency"] = 0.6, ["ZIndex"] = 0}]
      468 GETUPVAL                         R17 2
      469 GETTABLEKS                       R17 R17 K33 ["Terrain"]
      471 SETTABLEKS                       R17 R16 K21 ["Adornee"]
      473 GETTABLEKS                       R18 R0 K0 ["props"]
      475 GETTABLEKS                       R18 R18 K11 ["HandleCFrame"]
      477 GETIMPORT                        R19 K14 [CFrame.Angles]
      479 SUBK                             R20 R13 K15 [1.5707963267949]
      480 LOADK                            R21 K15 [1.5707963267949]
      481 LOADK                            R22 K15 [1.5707963267949]
      482 CALL                             R19 3 1
      483 MUL                              R17 R18 R19
      484 SETTABLEKS                       R17 R16 K12 ["CFrame"]
      486 SETTABLEKS                       R3 R16 K23 ["Radius"]
      488 FASTCALL1                        MATH_DEG R12 ; [+3]
      489 MOVE                             R18 R12
      490 GETIMPORT                        R17 K73 [math.deg]
      492 CALL                             R17 1 1
      493 SETTABLEKS                       R17 R16 K31 ["Angle"]
      495 GETTABLEKS                       R17 R0 K0 ["props"]
      497 GETTABLEKS                       R17 R17 K34 ["Color"]
      499 SETTABLEKS                       R17 R16 K25 ["Color3"]
      501 CALL                             R14 2 1
      502 SETTABLEKS                       R14 R7 K74 ["AngleSweepElement"]
      504 LOADK                            R15 K75 [0.08]
      505 MUL                              R14 R15 R1
      506 NEWCLOSURE                       R15 P0
      507 CAPTURE                          REF R3
      508 CAPTURE                          REF R11
      509 CAPTURE                          VAL R0
      510 CAPTURE                          UPVAL U1
      511 CAPTURE                          UPVAL U2
      512 CAPTURE                          VAL R14
      513 MOVE                             R16 R15
      514 GETTABLEKS                       R17 R0 K0 ["props"]
      516 GETTABLEKS                       R17 R17 K49 ["EndAngle"]
      518 CALL                             R16 1 1
      519 SETTABLEKS                       R16 R7 K76 ["EndAngleElement"]
      521 GETTABLEKS                       R16 R0 K0 ["props"]
      523 GETTABLEKS                       R16 R16 K77 ["DraggerContext"]
      525 NAMECALL                         R16 R16 K78 ["shouldShowPreciseInput"]
      527 CALL                             R16 1 1
      528 JUMPIFNOT                        R16 ; [+99]
      529 GETTABLEKS                       R16 R0 K0 ["props"]
      531 GETTABLEKS                       R16 R16 K11 ["HandleCFrame"]
      533 GETTABLEKS                       R17 R16 K79 ["Position"]
      535 GETIMPORT                        R18 K58 [CFrame.new]
      537 LOADN                            R19 0
      538 LOADN                            R20 0
      539 ADD                              R23 R3 R11
      540 MINUS                            R22 R23
      541 DIVK                             R21 R22 K80 [2]
      542 CALL                             R18 3 1
      543 GETIMPORT                        R21 K14 [CFrame.Angles]
      545 MULK                             R23 R12 K18 [0.5]
      546 ADD                              R22 R13 R23
      547 LOADN                            R23 0
      548 LOADN                            R24 0
      549 CALL                             R21 3 1
      550 MUL                              R20 R16 R21
      551 MUL                              R19 R20 R18
      552 GETTABLEKS                       R19 R19 K81 ["LookVector"]
      554 LOADK                            R23 K82 [1.2]
      555 MUL                              R22 R23 R3
      556 MUL                              R21 R19 R22
      557 ADD                              R20 R17 R21
      558 GETTABLEKS                       R21 R0 K0 ["props"]
      560 GETTABLEKS                       R21 R21 K77 ["DraggerContext"]
      562 MOVE                             R23 R20
      563 NAMECALL                         R21 R21 K83 ["worldToViewportPoint"]
      565 CALL                             R21 2 2
      566 LOADNIL                          R23
      567 GETUPVAL                         R24 0
      568 CALL                             R24 0 1
      569 JUMPIFNOT                        R24 ; [+14]
      570 GETTABLEKS                       R24 R0 K0 ["props"]
      572 GETTABLEKS                       R24 R24 K77 ["DraggerContext"]
      574 NAMECALL                         R25 R24 K84 ["shouldAngleSnap"]
      576 CALL                             R25 1 1
      577 JUMPIFNOT                        R25 ; [+5]
      578 NAMECALL                         R25 R24 K85 ["getRotateIncrement"]
      580 CALL                             R25 1 1
      581 MOVE                             R23 R25
      582 JUMP                             ; [+1]
      583 LOADNIL                          R23
      584 JUMPIFNOT                        R22 ; [+43]
      585 GETUPVAL                         R25 0
      586 CALL                             R25 0 1
      587 JUMPIFNOT                        R25 ; [+5]
      588 GETTABLEKS                       R24 R0 K0 ["props"]
      590 GETTABLEKS                       R24 R24 K86 ["AxisId"]
      592 JUMP                             ; [+1]
      593 LOADNIL                          R24
      594 GETUPVAL                         R25 1
      595 GETTABLEKS                       R25 R25 K19 ["createElement"]
      597 GETUPVAL                         R26 4
      598 DUPTABLE                         R27 K88 [{"DraggerContext", "Position", "Value"}]
      599 GETTABLEKS                       R28 R0 K0 ["props"]
      601 GETTABLEKS                       R28 R28 K77 ["DraggerContext"]
      603 SETTABLEKS                       R28 R27 K77 ["DraggerContext"]
      605 GETIMPORT                        R28 K91 [UDim2.fromOffset]
      607 GETTABLEKS                       R29 R21 K92 ["X"]
      609 GETTABLEKS                       R30 R21 K93 ["Y"]
      611 CALL                             R28 2 1
      612 SETTABLEKS                       R28 R27 K79 ["Position"]
      614 GETUPVAL                         R28 5
      615 FASTCALL1                        MATH_DEG R12 ; [+3]
      616 MOVE                             R30 R12
      617 GETIMPORT                        R29 K73 [math.deg]
      619 CALL                             R29 1 1
      620 MOVE                             R30 R23
      621 MOVE                             R31 R24
      622 CALL                             R28 3 1
      623 SETTABLEKS                       R28 R27 K87 ["Value"]
      625 CALL                             R25 2 1
      626 SETTABLEKS                       R25 R7 K94 ["ValueDisplay"]
      628 CLOSEUPVALS                      R11
      629 GETUPVAL                         R9 1
      630 GETTABLEKS                       R9 R9 K19 ["createElement"]
      632 LOADK                            R10 K95 ["Folder"]
      633 NEWTABLE                         R11 0 0
      635 MOVE                             R12 R7
      636 CALL                             R9 3 -1
      637 CLOSEUPVALS                      R3
      638 RETURN                           R9 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Scale"]
        2 GETTABLEKS                       R3 R0 K1 ["HandleCFrame"]
        4 GETTABLEKS                       R4 R1 K2 ["Unit"]
        6 GETTABLEKS                       R6 R0 K4 ["RadiusOffset"]
        8 ORK                              R5 R6 K3 [0]
        9 LOADK                            R8 K5 [4.5]
       10 ADD                              R7 R8 R5
       11 MUL                              R6 R7 R2
       12 LOADK                            R8 K6 [0.6]
       13 MUL                              R7 R8 R2
       14 GETTABLEKS                       R8 R3 K7 ["RightVector"]
       16 GETTABLEKS                       R9 R3 K8 ["Position"]
       18 LOADK                            R10 K9 [∞]
       19 LOADB                            R11 0
       20 LOADNIL                          R12
       21 LOADNIL                          R13
       22 MULK                             R16 R8 K10 [0.5]
       23 MUL                              R15 R16 R7
       24 ADD                              R14 R9 R15
       25 GETUPVAL                         R15 0
       26 GETTABLEKS                       R15 R15 K11 ["intersectRayPlane"]
       28 GETTABLEKS                       R16 R4 K12 ["Origin"]
       30 GETTABLEKS                       R17 R4 K13 ["Direction"]
       32 MOVE                             R18 R14
       33 MOVE                             R19 R8
       34 CALL                             R15 4 1
       35 MOVE                             R13 R15
       36 GETUPVAL                         R15 1
       37 CALL                             R15 0 1
       38 JUMPIFNOT                        R15 ; [+2]
       39 JUMPIFEQKNIL                     R13 ; [+26]
       41 LOADN                            R15 0
       42 JUMPIFNOTLE                      R15 R13 ; [+23]
       44 JUMPIFNOTLT                      R13 R10 ; [+21]
       46 GETTABLEKS                       R16 R4 K12 ["Origin"]
       48 GETTABLEKS                       R18 R4 K13 ["Direction"]
       50 MUL                              R17 R18 R13
       51 ADD                              R15 R16 R17
       52 SUB                              R16 R15 R14
       53 GETTABLEKS                       R16 R16 K14 ["Magnitude"]
       55 SUB                              R18 R16 R6
       56 FASTCALL1                        MATH_ABS R18 ; [+2]
       57 GETIMPORT                        R17 K17 [math.abs]
       59 CALL                             R17 1 1
       60 LOADK                            R19 K10 [0.5]
       61 MUL                              R18 R19 R7
       62 JUMPIFNOTLT                      R17 R18 ; [+3]
       64 LOADB                            R11 1
       65 MOVE                             R10 R13
       66 MULK                             R17 R8 K10 [0.5]
       67 MUL                              R16 R17 R7
       68 SUB                              R15 R9 R16
       69 GETUPVAL                         R16 0
       70 GETTABLEKS                       R16 R16 K11 ["intersectRayPlane"]
       72 GETTABLEKS                       R17 R4 K12 ["Origin"]
       74 GETTABLEKS                       R18 R4 K13 ["Direction"]
       76 MOVE                             R19 R15
       77 MINUS                            R20 R8
       78 CALL                             R16 4 1
       79 MOVE                             R13 R16
       80 GETUPVAL                         R16 1
       81 CALL                             R16 0 1
       82 JUMPIFNOT                        R16 ; [+2]
       83 JUMPIFEQKNIL                     R13 ; [+26]
       85 LOADN                            R16 0
       86 JUMPIFNOTLE                      R16 R13 ; [+23]
       88 JUMPIFNOTLT                      R13 R10 ; [+21]
       90 GETTABLEKS                       R17 R4 K12 ["Origin"]
       92 GETTABLEKS                       R19 R4 K13 ["Direction"]
       94 MUL                              R18 R19 R13
       95 ADD                              R16 R17 R18
       96 SUB                              R17 R16 R15
       97 GETTABLEKS                       R17 R17 K14 ["Magnitude"]
       99 SUB                              R19 R17 R6
      100 FASTCALL1                        MATH_ABS R19 ; [+2]
      101 GETIMPORT                        R18 K17 [math.abs]
      103 CALL                             R18 1 1
      104 LOADK                            R20 K10 [0.5]
      105 MUL                              R19 R20 R7
      106 JUMPIFNOTLT                      R18 R19 ; [+3]
      108 LOADB                            R11 1
      109 MOVE                             R10 R13
      110 GETTABLEKS                       R18 R4 K12 ["Origin"]
      112 NAMECALL                         R16 R3 K18 ["PointToObjectSpace"]
      114 CALL                             R16 2 1
      115 GETTABLEKS                       R19 R4 K13 ["Direction"]
      117 NAMECALL                         R17 R3 K19 ["VectorToObjectSpace"]
      119 CALL                             R17 2 1
      120 LOADK                            R20 K10 [0.5]
      121 MUL                              R19 R20 R7
      122 SUB                              R18 R6 R19
      123 GETUPVAL                         R19 0
      124 GETTABLEKS                       R19 R19 K20 ["intersectRayCylinder"]
      126 MOVE                             R20 R16
      127 MOVE                             R21 R17
      128 MOVE                             R22 R18
      129 MOVE                             R23 R7
      130 CALL                             R19 4 2
      131 MOVE                             R12 R19
      132 MOVE                             R13 R20
      133 JUMPIFNOT                        R12 ; [+4]
      134 JUMPIFNOTLT                      R13 R10 ; [+3]
      136 LOADB                            R11 1
      137 MOVE                             R10 R13
      138 LOADK                            R21 K10 [0.5]
      139 MUL                              R20 R21 R7
      140 ADD                              R19 R6 R20
      141 GETUPVAL                         R20 0
      142 GETTABLEKS                       R20 R20 K20 ["intersectRayCylinder"]
      144 MOVE                             R21 R16
      145 MOVE                             R22 R17
      146 MOVE                             R23 R19
      147 MOVE                             R24 R7
      148 CALL                             R20 4 2
      149 MOVE                             R12 R20
      150 MOVE                             R13 R21
      151 JUMPIFNOT                        R12 ; [+4]
      152 JUMPIFNOTLT                      R13 R10 ; [+3]
      154 LOADB                            R11 1
      155 MOVE                             R10 R13
      156 JUMPIFNOT                        R11 ; [+1]
      157 RETURN                           R10 1
      158 LOADNIL                          R20
      159 RETURN                           R20 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETIMPORT                        R3 K8 [require]
       17 GETTABLEKS                       R4 R2 K9 ["Roact"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K8 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Utility"]
       24 GETTABLEKS                       R5 R5 K11 ["Math"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K8 [require]
       29 GETTABLEKS                       R6 R1 K12 ["Components"]
       31 GETTABLEKS                       R6 R6 K13 ["FloatingValueInput"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K8 [require]
       36 GETTABLEKS                       R7 R1 K10 ["Utility"]
       38 GETTABLEKS                       R7 R7 K14 ["conciseNumberFormat"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K8 [require]
       43 GETTABLEKS                       R8 R1 K15 ["Flags"]
       45 GETTABLEKS                       R8 R8 K16 ["getFFlagNextGenDraggers"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K20 [Enum.AdornCullingMode.Never]
       50 GETTABLEKS                       R9 R3 K21 ["PureComponent"]
       52 LOADK                            R11 K22 ["RotateHandleView"]
       53 NAMECALL                         R9 R9 K23 ["extend"]
       55 CALL                             R9 2 1
       56 DUPCLOSURE                       R10 K24 [PROTO_0]
       57 DUPCLOSURE                       R11 K25 [PROTO_2]
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R6
       64 SETTABLEKS                       R11 R9 K26 ["render"]
       66 DUPCLOSURE                       R11 K27 [PROTO_3]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R7
       69 SETTABLEKS                       R11 R9 K28 ["hitTest"]
       71 RETURN                           R9 1
