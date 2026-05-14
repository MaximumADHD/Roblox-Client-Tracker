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
       27 DUPTABLE                         R5 K16 [{"Adornee", "AlwaysOnTop", "CFrame", "Color3", "Height", "Radius", "ZIndex"}]
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R6 R6 K17 ["Terrain"]
       31 SETTABLEKS                       R6 R5 K10 ["Adornee"]
       33 LOADB                            R6 1
       34 SETTABLEKS                       R6 R5 K11 ["AlwaysOnTop"]
       36 SETTABLEKS                       R2 R5 K0 ["CFrame"]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K4 ["props"]
       41 GETTABLEKS                       R6 R6 K18 ["Color"]
       43 SETTABLEKS                       R6 R5 K12 ["Color3"]
       45 GETUPVAL                         R7 0
       46 GETUPVAL                         R8 1
       47 ADD                              R6 R7 R8
       48 SETTABLEKS                       R6 R5 K13 ["Height"]
       50 GETUPVAL                         R7 5
       51 DIVK                             R6 R7 K3 [2]
       52 SETTABLEKS                       R6 R5 K14 ["Radius"]
       54 LOADN                            R6 0
       55 SETTABLEKS                       R6 R5 K15 ["ZIndex"]
       57 CALL                             R3 2 -1
       58 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Scale"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K3 ["RadiusOffset"]
        8 ORK                              R2 R3 K2 [0]
        9 LOADK                            R5 K4 [4.5]
       10 ADD                              R4 R5 R2
       11 MUL                              R3 R4 R1
       12 GETUPVAL                         R5 0
       13 MUL                              R4 R5 R1
       14 GETUPVAL                         R5 1
       15 CALL                             R5 0 1
       16 JUMPIF                           R5 ; [+11]
       17 GETTABLEKS                       R5 R0 K0 ["props"]
       19 GETTABLEKS                       R5 R5 K5 ["Hovered"]
       21 JUMPIFNOT                        R5 ; [+6]
       22 GETTABLEKS                       R6 R0 K0 ["props"]
       24 GETTABLEKS                       R6 R6 K1 ["Scale"]
       26 MULK                             R5 R6 K6 [0.1]
       27 ADD                              R3 R3 R5
       28 GETTABLEKS                       R5 R0 K0 ["props"]
       30 GETTABLEKS                       R5 R5 K7 ["Thin"]
       32 JUMPIFNOT                        R5 ; [+1]
       33 MULK                             R4 R4 K2 [0]
       34 GETTABLEKS                       R5 R0 K0 ["props"]
       36 GETTABLEKS                       R5 R5 K5 ["Hovered"]
       38 JUMPIFNOT                        R5 ; [+1]
       39 MULK                             R4 R4 K8 [1.5]
       40 LOADNIL                          R5
       41 LOADNIL                          R6
       42 GETUPVAL                         R7 1
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
       92 GETUPVAL                         R9 2
       93 GETTABLEKS                       R9 R9 K19 ["createElement"]
       95 LOADK                            R10 K20 ["CylinderHandleAdornment"]
       96 DUPTABLE                         R11 K31 [{"Adornee", "CFrame", "Height", "Radius", "InnerRadius", "Color3", "AlwaysOnTop", "Transparency", "ZIndex", "AdornCullingMode", "Angle"}]
       97 GETUPVAL                         R12 3
       98 GETTABLEKS                       R12 R12 K32 ["Terrain"]
      100 SETTABLEKS                       R12 R11 K21 ["Adornee"]
      102 SETTABLEKS                       R5 R11 K12 ["CFrame"]
      104 SETTABLEKS                       R4 R11 K22 ["Height"]
      106 ADD                              R12 R3 R8
      107 SETTABLEKS                       R12 R11 K23 ["Radius"]
      109 SUB                              R12 R3 R8
      110 SETTABLEKS                       R12 R11 K24 ["InnerRadius"]
      112 GETTABLEKS                       R12 R0 K0 ["props"]
      114 GETTABLEKS                       R12 R12 K33 ["Color"]
      116 SETTABLEKS                       R12 R11 K25 ["Color3"]
      118 LOADB                            R12 1
      119 SETTABLEKS                       R12 R11 K26 ["AlwaysOnTop"]
      121 GETUPVAL                         R13 1
      122 CALL                             R13 0 1
      123 JUMPIFNOT                        R13 ; [+2]
      124 LOADN                            R12 0
      125 JUMP                             ; [+1]
      126 LOADK                            R12 K34 [0.45]
      127 SETTABLEKS                       R12 R11 K27 ["Transparency"]
      129 LOADN                            R12 0
      130 SETTABLEKS                       R12 R11 K28 ["ZIndex"]
      132 GETUPVAL                         R12 4
      133 SETTABLEKS                       R12 R11 K29 ["AdornCullingMode"]
      135 GETUPVAL                         R13 1
      136 CALL                             R13 0 1
      137 JUMPIFNOT                        R13 ; [+2]
      138 MOVE                             R12 R6
      139 JUMP                             ; [+1]
      140 LOADNIL                          R12
      141 SETTABLEKS                       R12 R11 K30 ["Angle"]
      143 CALL                             R9 2 1
      144 SETTABLEKS                       R9 R7 K35 ["OnTopHandle"]
      146 GETUPVAL                         R9 1
      147 CALL                             R9 0 1
      148 JUMPIF                           R9 ; [+41]
      149 GETUPVAL                         R9 2
      150 GETTABLEKS                       R9 R9 K19 ["createElement"]
      152 LOADK                            R10 K20 ["CylinderHandleAdornment"]
      153 DUPTABLE                         R11 K36 [{"Adornee", "CFrame", "Height", "Radius", "InnerRadius", "Color3", "AlwaysOnTop", "Transparency", "ZIndex", "AdornCullingMode"}]
      154 GETUPVAL                         R12 3
      155 GETTABLEKS                       R12 R12 K32 ["Terrain"]
      157 SETTABLEKS                       R12 R11 K21 ["Adornee"]
      159 SETTABLEKS                       R5 R11 K12 ["CFrame"]
      161 SETTABLEKS                       R4 R11 K22 ["Height"]
      163 ADD                              R12 R3 R8
      164 SETTABLEKS                       R12 R11 K23 ["Radius"]
      166 SUB                              R12 R3 R8
      167 SETTABLEKS                       R12 R11 K24 ["InnerRadius"]
      169 GETTABLEKS                       R12 R0 K0 ["props"]
      171 GETTABLEKS                       R12 R12 K33 ["Color"]
      173 SETTABLEKS                       R12 R11 K25 ["Color3"]
      175 LOADB                            R12 0
      176 SETTABLEKS                       R12 R11 K26 ["AlwaysOnTop"]
      178 LOADN                            R12 0
      179 SETTABLEKS                       R12 R11 K27 ["Transparency"]
      181 LOADN                            R12 0
      182 SETTABLEKS                       R12 R11 K28 ["ZIndex"]
      184 GETUPVAL                         R12 4
      185 SETTABLEKS                       R12 R11 K29 ["AdornCullingMode"]
      187 CALL                             R9 2 1
      188 SETTABLEKS                       R9 R7 K37 ["BrightHandle"]
      190 GETTABLEKS                       R9 R0 K0 ["props"]
      192 GETTABLEKS                       R9 R9 K38 ["TickAngle"]
      194 JUMPIFNOT                        R9 ; [+235]
      195 GETTABLEKS                       R9 R0 K0 ["props"]
      197 GETTABLEKS                       R9 R9 K38 ["TickAngle"]
      199 LOADNIL                          R10
      200 GETUPVAL                         R11 1
      201 CALL                             R11 0 1
      202 JUMPIFNOT                        R11 ; [+12]
      203 FASTCALL1                        MATH_RAD R6 ; [+3]
      204 MOVE                             R14 R6
      205 GETIMPORT                        R13 K41 [math.rad]
      207 CALL                             R13 1 1
      208 DIV                              R12 R13 R9
      209 FASTCALL1                        MATH_CEIL R12 ; [+2]
      210 GETIMPORT                        R11 K43 [math.ceil]
      212 CALL                             R11 1 1
      213 MOVE                             R10 R11
      214 JUMP                             ; [+6]
      215 DIVRK                            R12 R44 K9 ["StartAngle"]
      216 FASTCALL1                        MATH_CEIL R12 ; [+2]
      217 GETIMPORT                        R11 K43 [math.ceil]
      219 CALL                             R11 1 1
      220 MOVE                             R10 R11
      221 LOADK                            R12 K45 [0.05]
      222 MUL                              R11 R12 R1
      223 LOADK                            R13 K6 [0.1]
      224 MUL                              R12 R13 R3
      225 LOADK                            R14 K6 [0.1]
      226 MUL                              R13 R14 R1
      227 LOADK                            R15 K46 [0.3]
      228 MUL                              R14 R15 R3
      229 LOADN                            R15 0
      230 LOADN                            R16 0
      231 LOADB                            R17 0
      232 LOADN                            R18 0
      233 GETTABLEKS                       R19 R0 K0 ["props"]
      235 GETTABLEKS                       R19 R19 K9 ["StartAngle"]
      237 JUMPIFNOT                        R19 ; [+14]
      238 GETTABLEKS                       R19 R0 K0 ["props"]
      240 GETTABLEKS                       R19 R19 K47 ["EndAngle"]
      242 GETTABLEKS                       R20 R0 K0 ["props"]
      244 GETTABLEKS                       R20 R20 K9 ["StartAngle"]
      246 SUB                              R15 R19 R20
      247 GETTABLEKS                       R19 R0 K0 ["props"]
      249 GETTABLEKS                       R16 R19 K9 ["StartAngle"]
      251 LOADB                            R17 1
      252 GETUPVAL                         R19 1
      253 CALL                             R19 0 1
      254 JUMPIFNOT                        R19 ; [+16]
      255 GETTABLEKS                       R19 R0 K0 ["props"]
      257 GETTABLEKS                       R19 R19 K10 ["SlideAngle"]
      259 JUMPIFNOT                        R19 ; [+11]
      260 GETTABLEKS                       R22 R0 K0 ["props"]
      262 GETTABLEKS                       R22 R22 K10 ["SlideAngle"]
      264 ADDK                             R21 R22 K15 [1.5707963267949]
      265 DIV                              R20 R21 R9
      266 FASTCALL1                        MATH_CEIL R20 ; [+2]
      267 GETIMPORT                        R19 K43 [math.ceil]
      269 CALL                             R19 1 1
      270 MUL                              R18 R19 R9
      271 LOADN                            R21 1
      272 MOVE                             R19 R10
      273 LOADN                            R20 1
      274 FORNPREP                         R19
      275 LOADK                            R25 K48 [3.14159265358979]
      276 SUBK                             R27 R21 K49 [1]
      277 MUL                              R26 R27 R9
      278 ADD                              R24 R25 R26
      279 SUB                              R23 R24 R15
      280 ADD                              R22 R23 R18
      281 MOVE                             R23 R17
      282 JUMPIFNOT                        R23 ; [+18]
      283 SUB                              R24 R22 R16
      284 DIVK                             R28 R24 K15 [1.5707963267949]
      285 ADDK                             R27 R28 K18 [0.5]
      286 FASTCALL1                        MATH_FLOOR R27 ; [+2]
      287 GETIMPORT                        R26 K51 [math.floor]
      289 CALL                             R26 1 1
      290 MULK                             R25 R26 K15 [1.5707963267949]
      291 SUB                              R27 R24 R25
      292 FASTCALL1                        MATH_ABS R27 ; [+2]
      293 GETIMPORT                        R26 K53 [math.abs]
      295 CALL                             R26 1 1
      296 LOADK                            R27 K54 [0.001]
      297 JUMPIFLT                         R26 R27 ; [+2]
      299 LOADB                            R23 0 +1
      300 LOADB                            R23 1
      301 JUMPIFNOT                        R23 ; [+2]
      302 MOVE                             R24 R14
      303 JUMPIF                           R24 ; [+1]
      304 MOVE                             R24 R12
      305 JUMPIFNOT                        R23 ; [+2]
      306 MOVE                             R25 R13
      307 JUMPIF                           R25 ; [+1]
      308 MOVE                             R25 R11
      309 GETTABLEKS                       R28 R0 K0 ["props"]
      311 GETTABLEKS                       R28 R28 K11 ["HandleCFrame"]
      313 GETIMPORT                        R29 K14 [CFrame.Angles]
      315 MOVE                             R30 R22
      316 LOADN                            R31 0
      317 LOADN                            R32 0
      318 CALL                             R29 3 1
      319 MUL                              R27 R28 R29
      320 GETIMPORT                        R28 K56 [CFrame.new]
      322 LOADN                            R29 0
      323 LOADN                            R30 0
      324 LOADK                            R33 K18 [0.5]
      325 MUL                              R32 R33 R12
      326 SUB                              R31 R3 R32
      327 CALL                             R28 3 1
      328 MUL                              R26 R27 R28
      329 LOADK                            R28 K57 ["Tick"]
      330 FASTCALL1                        TOSTRING R21 ; [+3]
      331 MOVE                             R30 R21
      332 GETIMPORT                        R29 K59 [tostring]
      334 CALL                             R29 1 1
      335 CONCAT                           R27 R28 R29
      336 GETUPVAL                         R28 2
      337 GETTABLEKS                       R28 R28 K19 ["createElement"]
      339 LOADK                            R29 K60 ["BoxHandleAdornment"]
      340 DUPTABLE                         R30 K62 [{"Adornee", "AlwaysOnTop", "CFrame", "Color3", "Size", "ZIndex", "AdornCullingMode"}]
      341 GETUPVAL                         R31 3
      342 GETTABLEKS                       R31 R31 K32 ["Terrain"]
      344 SETTABLEKS                       R31 R30 K21 ["Adornee"]
      346 LOADB                            R31 0
      347 SETTABLEKS                       R31 R30 K26 ["AlwaysOnTop"]
      349 SETTABLEKS                       R26 R30 K12 ["CFrame"]
      351 GETTABLEKS                       R31 R0 K0 ["props"]
      353 GETTABLEKS                       R31 R31 K33 ["Color"]
      355 SETTABLEKS                       R31 R30 K25 ["Color3"]
      357 FASTCALL3                        VECTOR R25 R25 R24
      359 MOVE                             R32 R25
      360 MOVE                             R33 R25
      361 MOVE                             R34 R24
      362 GETIMPORT                        R31 K64 [Vector3.new]
      364 CALL                             R31 3 1
      365 SETTABLEKS                       R31 R30 K61 ["Size"]
      367 LOADN                            R31 0
      368 SETTABLEKS                       R31 R30 K28 ["ZIndex"]
      370 GETUPVAL                         R31 4
      371 SETTABLEKS                       R31 R30 K29 ["AdornCullingMode"]
      373 CALL                             R28 2 1
      374 SETTABLE                         R28 R7 R27
      375 LOADK                            R28 K65 ["OnTopTick"]
      376 FASTCALL1                        TOSTRING R21 ; [+3]
      377 MOVE                             R30 R21
      378 GETIMPORT                        R29 K59 [tostring]
      380 CALL                             R29 1 1
      381 CONCAT                           R27 R28 R29
      382 GETUPVAL                         R28 2
      383 GETTABLEKS                       R28 R28 K19 ["createElement"]
      385 LOADK                            R29 K60 ["BoxHandleAdornment"]
      386 DUPTABLE                         R30 K66 [{"Adornee", "AlwaysOnTop", "Transparency", "CFrame", "Color3", "Size", "ZIndex", "AdornCullingMode"}]
      387 GETUPVAL                         R31 3
      388 GETTABLEKS                       R31 R31 K32 ["Terrain"]
      390 SETTABLEKS                       R31 R30 K21 ["Adornee"]
      392 LOADB                            R31 1
      393 SETTABLEKS                       R31 R30 K26 ["AlwaysOnTop"]
      395 GETUPVAL                         R32 1
      396 CALL                             R32 0 1
      397 JUMPIFNOT                        R32 ; [+2]
      398 LOADN                            R31 0
      399 JUMP                             ; [+1]
      400 LOADK                            R31 K34 [0.45]
      401 SETTABLEKS                       R31 R30 K27 ["Transparency"]
      403 SETTABLEKS                       R26 R30 K12 ["CFrame"]
      405 GETTABLEKS                       R31 R0 K0 ["props"]
      407 GETTABLEKS                       R31 R31 K33 ["Color"]
      409 SETTABLEKS                       R31 R30 K25 ["Color3"]
      411 FASTCALL3                        VECTOR R25 R25 R24
      413 MOVE                             R32 R25
      414 MOVE                             R33 R25
      415 MOVE                             R34 R24
      416 GETIMPORT                        R31 K64 [Vector3.new]
      418 CALL                             R31 3 1
      419 SETTABLEKS                       R31 R30 K61 ["Size"]
      421 LOADN                            R31 0
      422 SETTABLEKS                       R31 R30 K28 ["ZIndex"]
      424 GETUPVAL                         R31 4
      425 SETTABLEKS                       R31 R30 K29 ["AdornCullingMode"]
      427 CALL                             R28 2 1
      428 SETTABLE                         R28 R7 R27
      429 FORNLOOP                         R19
      430 GETTABLEKS                       R9 R0 K0 ["props"]
      432 GETTABLEKS                       R9 R9 K9 ["StartAngle"]
      434 JUMPIFNOT                        R9 ; [+239]
      435 GETTABLEKS                       R9 R0 K0 ["props"]
      437 GETTABLEKS                       R9 R9 K47 ["EndAngle"]
      439 JUMPIFNOT                        R9 ; [+234]
      440 LOADK                            R10 K6 [0.1]
      441 MUL                              R9 R10 R3
      442 LOADK                            R11 K46 [0.3]
      443 MUL                              R10 R11 R3
      444 LOADN                            R11 0
      445 GETUPVAL                         R12 1
      446 CALL                             R12 0 1
      447 JUMPIF                           R12 ; [+3]
      448 LOADK                            R12 K18 [0.5]
      449 SUB                              R13 R10 R9
      450 MUL                              R11 R12 R13
      451 GETTABLEKS                       R13 R0 K0 ["props"]
      453 GETTABLEKS                       R13 R13 K47 ["EndAngle"]
      455 GETTABLEKS                       R14 R0 K0 ["props"]
      457 GETTABLEKS                       R14 R14 K9 ["StartAngle"]
      459 SUB                              R12 R13 R14
      460 GETTABLEKS                       R13 R0 K0 ["props"]
      462 GETTABLEKS                       R13 R13 K9 ["StartAngle"]
      464 LOADK                            R14 K48 [3.14159265358979]
      465 JUMPIFNOTLT                      R14 R12 ; [+2]
      467 SUBK                             R12 R12 K44 [6.28318530717959]
      468 LOADK                            R14 K67 [-3.14159265358979]
      469 JUMPIFNOTLT                      R12 R14 ; [+2]
      471 ADDK                             R12 R12 K44 [6.28318530717959]
      472 LOADN                            R14 0
      473 JUMPIFNOTLT                      R12 R14 ; [+8]
      475 ADD                              R13 R13 R12
      476 FASTCALL1                        MATH_ABS R12 ; [+3]
      477 MOVE                             R15 R12
      478 GETIMPORT                        R14 K53 [math.abs]
      480 CALL                             R14 1 1
      481 MOVE                             R12 R14
      482 FASTCALL1                        MATH_ABS R12 ; [+3]
      483 MOVE                             R15 R12
      484 GETIMPORT                        R14 K53 [math.abs]
      486 CALL                             R14 1 1
      487 LOADK                            R15 K54 [0.001]
      488 JUMPIFNOTLT                      R15 R14 ; [+57]
      490 GETUPVAL                         R14 2
      491 GETTABLEKS                       R14 R14 K19 ["createElement"]
      493 LOADK                            R15 K20 ["CylinderHandleAdornment"]
      494 DUPTABLE                         R16 K68 [{"Adornee", "CFrame", "Height", "Radius", "InnerRadius", "Angle", "Color3", "AlwaysOnTop", "Transparency", "ZIndex"}]
      495 GETUPVAL                         R17 3
      496 GETTABLEKS                       R17 R17 K32 ["Terrain"]
      498 SETTABLEKS                       R17 R16 K21 ["Adornee"]
      500 GETTABLEKS                       R18 R0 K0 ["props"]
      502 GETTABLEKS                       R18 R18 K11 ["HandleCFrame"]
      504 GETIMPORT                        R19 K14 [CFrame.Angles]
      506 SUBK                             R20 R13 K15 [1.5707963267949]
      507 LOADK                            R21 K15 [1.5707963267949]
      508 LOADK                            R22 K15 [1.5707963267949]
      509 CALL                             R19 3 1
      510 MUL                              R17 R18 R19
      511 SETTABLEKS                       R17 R16 K12 ["CFrame"]
      513 LOADN                            R17 0
      514 SETTABLEKS                       R17 R16 K22 ["Height"]
      516 SETTABLEKS                       R3 R16 K23 ["Radius"]
      518 LOADN                            R17 0
      519 SETTABLEKS                       R17 R16 K24 ["InnerRadius"]
      521 FASTCALL1                        MATH_DEG R12 ; [+3]
      522 MOVE                             R18 R12
      523 GETIMPORT                        R17 K70 [math.deg]
      525 CALL                             R17 1 1
      526 SETTABLEKS                       R17 R16 K30 ["Angle"]
      528 GETTABLEKS                       R17 R0 K0 ["props"]
      530 GETTABLEKS                       R17 R17 K33 ["Color"]
      532 SETTABLEKS                       R17 R16 K25 ["Color3"]
      534 LOADB                            R17 1
      535 SETTABLEKS                       R17 R16 K26 ["AlwaysOnTop"]
      537 LOADK                            R17 K71 [0.6]
      538 SETTABLEKS                       R17 R16 K27 ["Transparency"]
      540 LOADN                            R17 0
      541 SETTABLEKS                       R17 R16 K28 ["ZIndex"]
      543 CALL                             R14 2 1
      544 SETTABLEKS                       R14 R7 K72 ["AngleSweepElement"]
      546 LOADK                            R15 K73 [0.08]
      547 MUL                              R14 R15 R1
      548 NEWCLOSURE                       R15 P0
      549 CAPTURE                          REF R3
      550 CAPTURE                          REF R11
      551 CAPTURE                          VAL R0
      552 CAPTURE                          UPVAL U2
      553 CAPTURE                          UPVAL U3
      554 CAPTURE                          VAL R14
      555 MOVE                             R16 R15
      556 GETTABLEKS                       R17 R0 K0 ["props"]
      558 GETTABLEKS                       R17 R17 K47 ["EndAngle"]
      560 CALL                             R16 1 1
      561 SETTABLEKS                       R16 R7 K74 ["EndAngleElement"]
      563 GETUPVAL                         R16 5
      564 CALL                             R16 0 1
      565 JUMPIFNOT                        R16 ; [+107]
      566 GETTABLEKS                       R16 R0 K0 ["props"]
      568 GETTABLEKS                       R16 R16 K75 ["DraggerContext"]
      570 NAMECALL                         R16 R16 K76 ["shouldShowPreciseInput"]
      572 CALL                             R16 1 1
      573 JUMPIFNOT                        R16 ; [+99]
      574 GETTABLEKS                       R16 R0 K0 ["props"]
      576 GETTABLEKS                       R16 R16 K11 ["HandleCFrame"]
      578 GETTABLEKS                       R17 R16 K77 ["Position"]
      580 GETIMPORT                        R18 K56 [CFrame.new]
      582 LOADN                            R19 0
      583 LOADN                            R20 0
      584 ADD                              R23 R3 R11
      585 MINUS                            R22 R23
      586 DIVK                             R21 R22 K78 [2]
      587 CALL                             R18 3 1
      588 GETIMPORT                        R21 K14 [CFrame.Angles]
      590 MULK                             R23 R12 K18 [0.5]
      591 ADD                              R22 R13 R23
      592 LOADN                            R23 0
      593 LOADN                            R24 0
      594 CALL                             R21 3 1
      595 MUL                              R20 R16 R21
      596 MUL                              R19 R20 R18
      597 GETTABLEKS                       R19 R19 K79 ["LookVector"]
      599 LOADK                            R23 K80 [1.2]
      600 MUL                              R22 R23 R3
      601 MUL                              R21 R19 R22
      602 ADD                              R20 R17 R21
      603 GETTABLEKS                       R21 R0 K0 ["props"]
      605 GETTABLEKS                       R21 R21 K75 ["DraggerContext"]
      607 MOVE                             R23 R20
      608 NAMECALL                         R21 R21 K81 ["worldToViewportPoint"]
      610 CALL                             R21 2 2
      611 LOADNIL                          R23
      612 GETUPVAL                         R24 1
      613 CALL                             R24 0 1
      614 JUMPIFNOT                        R24 ; [+14]
      615 GETTABLEKS                       R24 R0 K0 ["props"]
      617 GETTABLEKS                       R24 R24 K75 ["DraggerContext"]
      619 NAMECALL                         R25 R24 K82 ["shouldAngleSnap"]
      621 CALL                             R25 1 1
      622 JUMPIFNOT                        R25 ; [+5]
      623 NAMECALL                         R25 R24 K83 ["getRotateIncrement"]
      625 CALL                             R25 1 1
      626 MOVE                             R23 R25
      627 JUMP                             ; [+1]
      628 LOADNIL                          R23
      629 JUMPIFNOT                        R22 ; [+43]
      630 GETUPVAL                         R25 1
      631 CALL                             R25 0 1
      632 JUMPIFNOT                        R25 ; [+5]
      633 GETTABLEKS                       R24 R0 K0 ["props"]
      635 GETTABLEKS                       R24 R24 K84 ["AxisId"]
      637 JUMP                             ; [+1]
      638 LOADNIL                          R24
      639 GETUPVAL                         R25 2
      640 GETTABLEKS                       R25 R25 K19 ["createElement"]
      642 GETUPVAL                         R26 6
      643 DUPTABLE                         R27 K86 [{"DraggerContext", "Position", "Value"}]
      644 GETTABLEKS                       R28 R0 K0 ["props"]
      646 GETTABLEKS                       R28 R28 K75 ["DraggerContext"]
      648 SETTABLEKS                       R28 R27 K75 ["DraggerContext"]
      650 GETIMPORT                        R28 K89 [UDim2.fromOffset]
      652 GETTABLEKS                       R29 R21 K90 ["X"]
      654 GETTABLEKS                       R30 R21 K91 ["Y"]
      656 CALL                             R28 2 1
      657 SETTABLEKS                       R28 R27 K77 ["Position"]
      659 GETUPVAL                         R28 7
      660 FASTCALL1                        MATH_DEG R12 ; [+3]
      661 MOVE                             R30 R12
      662 GETIMPORT                        R29 K70 [math.deg]
      664 CALL                             R29 1 1
      665 MOVE                             R30 R23
      666 MOVE                             R31 R24
      667 CALL                             R28 3 1
      668 SETTABLEKS                       R28 R27 K85 ["Value"]
      670 CALL                             R25 2 1
      671 SETTABLEKS                       R25 R7 K92 ["ValueDisplay"]
      673 CLOSEUPVALS                      R11
      674 GETUPVAL                         R9 2
      675 GETTABLEKS                       R9 R9 K19 ["createElement"]
      677 LOADK                            R10 K93 ["Folder"]
      678 NEWTABLE                         R11 0 0
      680 MOVE                             R12 R7
      681 CALL                             R9 3 -1
      682 CLOSEUPVALS                      R3
      683 RETURN                           R9 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Scale"]
        2 GETTABLEKS                       R3 R0 K1 ["HandleCFrame"]
        4 GETTABLEKS                       R4 R1 K2 ["Unit"]
        6 GETTABLEKS                       R6 R0 K4 ["RadiusOffset"]
        8 ORK                              R5 R6 K3 [0]
        9 LOADK                            R8 K5 [4.5]
       10 ADD                              R7 R8 R5
       11 MUL                              R6 R7 R2
       12 GETUPVAL                         R8 0
       13 MUL                              R7 R8 R2
       14 GETTABLEKS                       R8 R3 K6 ["RightVector"]
       16 GETTABLEKS                       R9 R3 K7 ["Position"]
       18 LOADK                            R10 K8 [∞]
       19 LOADB                            R11 0
       20 LOADNIL                          R12
       21 LOADNIL                          R13
       22 MULK                             R16 R8 K9 [0.5]
       23 MUL                              R15 R16 R7
       24 ADD                              R14 R9 R15
       25 GETUPVAL                         R15 1
       26 GETTABLEKS                       R15 R15 K10 ["intersectRayPlane"]
       28 GETTABLEKS                       R16 R4 K11 ["Origin"]
       30 GETTABLEKS                       R17 R4 K12 ["Direction"]
       32 MOVE                             R18 R14
       33 MOVE                             R19 R8
       34 CALL                             R15 4 1
       35 MOVE                             R13 R15
       36 GETUPVAL                         R15 2
       37 CALL                             R15 0 1
       38 JUMPIFNOT                        R15 ; [+2]
       39 JUMPIFEQKNIL                     R13 ; [+26]
       41 LOADN                            R15 0
       42 JUMPIFNOTLE                      R15 R13 ; [+23]
       44 JUMPIFNOTLT                      R13 R10 ; [+21]
       46 GETTABLEKS                       R16 R4 K11 ["Origin"]
       48 GETTABLEKS                       R18 R4 K12 ["Direction"]
       50 MUL                              R17 R18 R13
       51 ADD                              R15 R16 R17
       52 SUB                              R16 R15 R14
       53 GETTABLEKS                       R16 R16 K13 ["Magnitude"]
       55 SUB                              R18 R16 R6
       56 FASTCALL1                        MATH_ABS R18 ; [+2]
       57 GETIMPORT                        R17 K16 [math.abs]
       59 CALL                             R17 1 1
       60 LOADK                            R19 K9 [0.5]
       61 MUL                              R18 R19 R7
       62 JUMPIFNOTLT                      R17 R18 ; [+3]
       64 LOADB                            R11 1
       65 MOVE                             R10 R13
       66 MULK                             R17 R8 K9 [0.5]
       67 MUL                              R16 R17 R7
       68 SUB                              R15 R9 R16
       69 GETUPVAL                         R16 1
       70 GETTABLEKS                       R16 R16 K10 ["intersectRayPlane"]
       72 GETTABLEKS                       R17 R4 K11 ["Origin"]
       74 GETTABLEKS                       R18 R4 K12 ["Direction"]
       76 MOVE                             R19 R15
       77 MINUS                            R20 R8
       78 CALL                             R16 4 1
       79 MOVE                             R13 R16
       80 GETUPVAL                         R16 2
       81 CALL                             R16 0 1
       82 JUMPIFNOT                        R16 ; [+2]
       83 JUMPIFEQKNIL                     R13 ; [+26]
       85 LOADN                            R16 0
       86 JUMPIFNOTLE                      R16 R13 ; [+23]
       88 JUMPIFNOTLT                      R13 R10 ; [+21]
       90 GETTABLEKS                       R17 R4 K11 ["Origin"]
       92 GETTABLEKS                       R19 R4 K12 ["Direction"]
       94 MUL                              R18 R19 R13
       95 ADD                              R16 R17 R18
       96 SUB                              R17 R16 R15
       97 GETTABLEKS                       R17 R17 K13 ["Magnitude"]
       99 SUB                              R19 R17 R6
      100 FASTCALL1                        MATH_ABS R19 ; [+2]
      101 GETIMPORT                        R18 K16 [math.abs]
      103 CALL                             R18 1 1
      104 LOADK                            R20 K9 [0.5]
      105 MUL                              R19 R20 R7
      106 JUMPIFNOTLT                      R18 R19 ; [+3]
      108 LOADB                            R11 1
      109 MOVE                             R10 R13
      110 GETTABLEKS                       R18 R4 K11 ["Origin"]
      112 NAMECALL                         R16 R3 K17 ["PointToObjectSpace"]
      114 CALL                             R16 2 1
      115 GETTABLEKS                       R19 R4 K12 ["Direction"]
      117 NAMECALL                         R17 R3 K18 ["VectorToObjectSpace"]
      119 CALL                             R17 2 1
      120 LOADK                            R20 K9 [0.5]
      121 MUL                              R19 R20 R7
      122 SUB                              R18 R6 R19
      123 GETUPVAL                         R19 1
      124 GETTABLEKS                       R19 R19 K19 ["intersectRayCylinder"]
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
      138 LOADK                            R21 K9 [0.5]
      139 MUL                              R20 R21 R7
      140 ADD                              R19 R6 R20
      141 GETUPVAL                         R20 1
      142 GETTABLEKS                       R20 R20 K19 ["intersectRayCylinder"]
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
       45 GETTABLEKS                       R8 R8 K16 ["getFFlagDraggerImprovements"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K8 [require]
       50 GETTABLEKS                       R9 R1 K15 ["Flags"]
       52 GETTABLEKS                       R9 R9 K17 ["getFFlagNextGenDraggers"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K21 [Enum.AdornCullingMode.Never]
       57 GETTABLEKS                       R10 R3 K22 ["PureComponent"]
       59 LOADK                            R12 K23 ["RotateHandleView"]
       60 NAMECALL                         R10 R10 K24 ["extend"]
       62 CALL                             R10 2 1
       63 MOVE                             R12 R7
       64 CALL                             R12 0 1
       65 JUMPIFNOT                        R12 ; [+2]
       66 LOADK                            R11 K25 [0.1]
       67 JUMP                             ; [+1]
       68 LOADK                            R11 K26 [0.15]
       69 MOVE                             R13 R7
       70 CALL                             R13 0 1
       71 JUMPIFNOT                        R13 ; [+2]
       72 LOADK                            R12 K27 [0.6]
       73 JUMP                             ; [+1]
       74 MULK                             R12 R11 K28 [4]
       75 DUPCLOSURE                       R13 K29 [PROTO_0]
       76 DUPCLOSURE                       R14 K30 [PROTO_2]
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R6
       85 SETTABLEKS                       R14 R10 K31 ["render"]
       87 DUPCLOSURE                       R14 K32 [PROTO_3]
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R8
       91 SETTABLEKS                       R14 R10 K33 ["hitTest"]
       93 RETURN                           R10 1
