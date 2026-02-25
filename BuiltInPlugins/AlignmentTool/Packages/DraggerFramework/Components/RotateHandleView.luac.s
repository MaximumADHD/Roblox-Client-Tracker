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
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K4 ["props"]
       13 GETTABLEKS                       R4 R5 K5 ["HandleCFrame"]
       15 GETIMPORT                        R5 K7 [CFrame.Angles]
       17 MOVE                             R6 R0
       18 LOADN                            R7 0
       19 LOADN                            R8 0
       20 CALL                             R5 3 1
       21 MUL                              R3 R4 R5
       22 MUL                              R2 R3 R1
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R3 R4 K8 ["createElement"]
       26 LOADK                            R4 K9 ["CylinderHandleAdornment"]
       27 DUPTABLE                         R5 K16 [{"Adornee", "AlwaysOnTop", "CFrame", "Color3", "Height", "Radius", "ZIndex"}]
       28 GETUPVAL                         R7 4
       29 GETTABLEKS                       R6 R7 K17 ["Terrain"]
       31 SETTABLEKS                       R6 R5 K10 ["Adornee"]
       33 LOADB                            R6 1
       34 SETTABLEKS                       R6 R5 K11 ["AlwaysOnTop"]
       36 SETTABLEKS                       R2 R5 K0 ["CFrame"]
       38 GETUPVAL                         R8 2
       39 GETTABLEKS                       R7 R8 K4 ["props"]
       41 GETTABLEKS                       R6 R7 K18 ["Color"]
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
        0 GETTABLEKS                       R3 R0 K1 ["props"]
        2 GETTABLEKS                       R2 R3 K2 ["RadiusOffset"]
        4 ORK                              R1 R2 K0 [0]
        5 LOADK                            R4 K3 [4.5]
        6 ADD                              R3 R4 R1
        7 GETTABLEKS                       R5 R0 K1 ["props"]
        9 GETTABLEKS                       R4 R5 K4 ["Scale"]
       11 MUL                              R2 R3 R4
       12 GETTABLEKS                       R4 R0 K1 ["props"]
       14 GETTABLEKS                       R3 R4 K5 ["Hovered"]
       16 JUMPIFNOT                        R3 ; [+6]
       17 GETTABLEKS                       R5 R0 K1 ["props"]
       19 GETTABLEKS                       R4 R5 K4 ["Scale"]
       21 MULK                             R3 R4 K6 [0.1]
       22 ADD                              R2 R2 R3
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R6 R0 K1 ["props"]
       26 GETTABLEKS                       R5 R6 K4 ["Scale"]
       28 MUL                              R3 R4 R5
       29 NEWTABLE                         R4 4 0
       31 GETTABLEKS                       R6 R0 K1 ["props"]
       33 GETTABLEKS                       R5 R6 K7 ["Thin"]
       35 JUMPIFNOT                        R5 ; [+2]
       36 LOADN                            R5 0
       37 MUL                              R3 R5 R3
       38 GETTABLEKS                       R6 R0 K1 ["props"]
       40 GETTABLEKS                       R5 R6 K5 ["Hovered"]
       42 JUMPIFNOT                        R5 ; [+2]
       43 LOADK                            R5 K8 [1.5]
       44 MUL                              R3 R5 R3
       45 LOADK                            R6 K9 [0.5]
       46 MUL                              R5 R6 R3
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R6 R7 K10 ["createElement"]
       50 LOADK                            R7 K11 ["CylinderHandleAdornment"]
       51 DUPTABLE                         R8 K22 [{"Adornee", "CFrame", "Height", "Radius", "InnerRadius", "Color3", "AlwaysOnTop", "Transparency", "ZIndex", "AdornCullingMode"}]
       52 GETUPVAL                         R10 2
       53 GETTABLEKS                       R9 R10 K23 ["Terrain"]
       55 SETTABLEKS                       R9 R8 K12 ["Adornee"]
       57 GETTABLEKS                       R11 R0 K1 ["props"]
       59 GETTABLEKS                       R10 R11 K24 ["HandleCFrame"]
       61 GETIMPORT                        R11 K26 [CFrame.Angles]
       63 GETTABLEKS                       R14 R0 K1 ["props"]
       65 GETTABLEKS                       R13 R14 K27 ["StartAngle"]
       67 ORK                              R12 R13 K0 [0]
       68 LOADK                            R13 K28 [1.5707963267949]
       69 LOADK                            R14 K28 [1.5707963267949]
       70 CALL                             R11 3 1
       71 MUL                              R9 R10 R11
       72 SETTABLEKS                       R9 R8 K13 ["CFrame"]
       74 SETTABLEKS                       R3 R8 K14 ["Height"]
       76 ADD                              R9 R2 R5
       77 SETTABLEKS                       R9 R8 K15 ["Radius"]
       79 SUB                              R9 R2 R5
       80 SETTABLEKS                       R9 R8 K16 ["InnerRadius"]
       82 GETTABLEKS                       R10 R0 K1 ["props"]
       84 GETTABLEKS                       R9 R10 K29 ["Color"]
       86 SETTABLEKS                       R9 R8 K17 ["Color3"]
       88 LOADB                            R9 1
       89 SETTABLEKS                       R9 R8 K18 ["AlwaysOnTop"]
       91 LOADK                            R9 K30 [0.45]
       92 SETTABLEKS                       R9 R8 K19 ["Transparency"]
       94 LOADN                            R9 0
       95 SETTABLEKS                       R9 R8 K20 ["ZIndex"]
       97 GETUPVAL                         R9 3
       98 SETTABLEKS                       R9 R8 K21 ["AdornCullingMode"]
      100 CALL                             R6 2 1
      101 SETTABLEKS                       R6 R4 K31 ["OnTopHandle"]
      103 GETUPVAL                         R7 1
      104 GETTABLEKS                       R6 R7 K10 ["createElement"]
      106 LOADK                            R7 K11 ["CylinderHandleAdornment"]
      107 DUPTABLE                         R8 K32 [{"Adornee", "CFrame", "Height", "Radius", "InnerRadius", "Color3", "AlwaysOnTop", "ZIndex", "AdornCullingMode"}]
      108 GETUPVAL                         R10 2
      109 GETTABLEKS                       R9 R10 K23 ["Terrain"]
      111 SETTABLEKS                       R9 R8 K12 ["Adornee"]
      113 GETTABLEKS                       R11 R0 K1 ["props"]
      115 GETTABLEKS                       R10 R11 K24 ["HandleCFrame"]
      117 GETIMPORT                        R11 K26 [CFrame.Angles]
      119 GETTABLEKS                       R14 R0 K1 ["props"]
      121 GETTABLEKS                       R13 R14 K27 ["StartAngle"]
      123 ORK                              R12 R13 K0 [0]
      124 LOADK                            R13 K28 [1.5707963267949]
      125 LOADK                            R14 K28 [1.5707963267949]
      126 CALL                             R11 3 1
      127 MUL                              R9 R10 R11
      128 SETTABLEKS                       R9 R8 K13 ["CFrame"]
      130 SETTABLEKS                       R3 R8 K14 ["Height"]
      132 ADD                              R9 R2 R5
      133 SETTABLEKS                       R9 R8 K15 ["Radius"]
      135 SUB                              R9 R2 R5
      136 SETTABLEKS                       R9 R8 K16 ["InnerRadius"]
      138 GETTABLEKS                       R10 R0 K1 ["props"]
      140 GETTABLEKS                       R9 R10 K29 ["Color"]
      142 SETTABLEKS                       R9 R8 K17 ["Color3"]
      144 LOADB                            R9 0
      145 SETTABLEKS                       R9 R8 K18 ["AlwaysOnTop"]
      147 LOADN                            R9 0
      148 SETTABLEKS                       R9 R8 K20 ["ZIndex"]
      150 GETUPVAL                         R9 3
      151 SETTABLEKS                       R9 R8 K21 ["AdornCullingMode"]
      153 CALL                             R6 2 1
      154 SETTABLEKS                       R6 R4 K33 ["BrightHandle"]
      156 GETTABLEKS                       R7 R0 K1 ["props"]
      158 GETTABLEKS                       R6 R7 K34 ["TickAngle"]
      160 JUMPIFNOT                        R6 ; [+200]
      161 GETTABLEKS                       R7 R0 K1 ["props"]
      163 GETTABLEKS                       R6 R7 K34 ["TickAngle"]
      165 DIVRK                            R8 R35 K6 [0.1]
      166 FASTCALL1                        MATH_CEIL R8 ; [+2]
      167 GETIMPORT                        R7 K38 [math.ceil]
      169 CALL                             R7 1 1
      170 LOADK                            R9 K39 [0.05]
      171 GETTABLEKS                       R11 R0 K1 ["props"]
      173 GETTABLEKS                       R10 R11 K4 ["Scale"]
      175 MUL                              R8 R9 R10
      176 LOADK                            R10 K6 [0.1]
      177 MUL                              R9 R10 R2
      178 LOADK                            R11 K6 [0.1]
      179 GETTABLEKS                       R13 R0 K1 ["props"]
      181 GETTABLEKS                       R12 R13 K4 ["Scale"]
      183 MUL                              R10 R11 R12
      184 LOADK                            R12 K40 [0.3]
      185 MUL                              R11 R12 R2
      186 LOADN                            R12 0
      187 LOADN                            R13 0
      188 LOADB                            R14 0
      189 GETTABLEKS                       R16 R0 K1 ["props"]
      191 GETTABLEKS                       R15 R16 K27 ["StartAngle"]
      193 JUMPIFNOT                        R15 ; [+14]
      194 GETTABLEKS                       R16 R0 K1 ["props"]
      196 GETTABLEKS                       R15 R16 K41 ["EndAngle"]
      198 GETTABLEKS                       R17 R0 K1 ["props"]
      200 GETTABLEKS                       R16 R17 K27 ["StartAngle"]
      202 SUB                              R12 R15 R16
      203 GETTABLEKS                       R15 R0 K1 ["props"]
      205 GETTABLEKS                       R13 R15 K27 ["StartAngle"]
      207 LOADB                            R14 1
      208 LOADN                            R17 1
      209 MOVE                             R15 R7
      210 LOADN                            R16 1
      211 FORNPREP                         R15
      212 LOADK                            R20 K42 [3.14159265358979]
      213 SUBK                             R22 R17 K43 [1]
      214 MUL                              R21 R22 R6
      215 ADD                              R19 R20 R21
      216 SUB                              R18 R19 R12
      217 MOVE                             R19 R14
      218 JUMPIFNOT                        R19 ; [+18]
      219 SUB                              R20 R18 R13
      220 DIVK                             R24 R20 K28 [1.5707963267949]
      221 ADDK                             R23 R24 K9 [0.5]
      222 FASTCALL1                        MATH_FLOOR R23 ; [+2]
      223 GETIMPORT                        R22 K45 [math.floor]
      225 CALL                             R22 1 1
      226 MULK                             R21 R22 K28 [1.5707963267949]
      227 SUB                              R23 R20 R21
      228 FASTCALL1                        MATH_ABS R23 ; [+2]
      229 GETIMPORT                        R22 K47 [math.abs]
      231 CALL                             R22 1 1
      232 LOADK                            R23 K48 [0.001]
      233 JUMPIFLT                         R22 R23 ; [+2]
      235 LOADB                            R19 0 +1
      236 LOADB                            R19 1
      237 JUMPIFNOT                        R19 ; [+2]
      238 MOVE                             R20 R11
      239 JUMPIF                           R20 ; [+1]
      240 MOVE                             R20 R9
      241 JUMPIFNOT                        R19 ; [+2]
      242 MOVE                             R21 R10
      243 JUMPIF                           R21 ; [+1]
      244 MOVE                             R21 R8
      245 GETTABLEKS                       R25 R0 K1 ["props"]
      247 GETTABLEKS                       R24 R25 K24 ["HandleCFrame"]
      249 GETIMPORT                        R25 K26 [CFrame.Angles]
      251 MOVE                             R26 R18
      252 LOADN                            R27 0
      253 LOADN                            R28 0
      254 CALL                             R25 3 1
      255 MUL                              R23 R24 R25
      256 GETIMPORT                        R24 K50 [CFrame.new]
      258 LOADN                            R25 0
      259 LOADN                            R26 0
      260 LOADK                            R29 K9 [0.5]
      261 MUL                              R28 R29 R9
      262 SUB                              R27 R2 R28
      263 CALL                             R24 3 1
      264 MUL                              R22 R23 R24
      265 LOADK                            R24 K51 ["Tick"]
      266 FASTCALL1                        TOSTRING R17 ; [+3]
      267 MOVE                             R26 R17
      268 GETIMPORT                        R25 K53 [tostring]
      270 CALL                             R25 1 1
      271 CONCAT                           R23 R24 R25
      272 GETUPVAL                         R25 1
      273 GETTABLEKS                       R24 R25 K10 ["createElement"]
      275 LOADK                            R25 K54 ["BoxHandleAdornment"]
      276 DUPTABLE                         R26 K56 [{"Adornee", "AlwaysOnTop", "CFrame", "Color3", "Size", "ZIndex", "AdornCullingMode"}]
      277 GETUPVAL                         R28 2
      278 GETTABLEKS                       R27 R28 K23 ["Terrain"]
      280 SETTABLEKS                       R27 R26 K12 ["Adornee"]
      282 LOADB                            R27 0
      283 SETTABLEKS                       R27 R26 K18 ["AlwaysOnTop"]
      285 SETTABLEKS                       R22 R26 K13 ["CFrame"]
      287 GETTABLEKS                       R28 R0 K1 ["props"]
      289 GETTABLEKS                       R27 R28 K29 ["Color"]
      291 SETTABLEKS                       R27 R26 K17 ["Color3"]
      293 FASTCALL3                        VECTOR R21 R21 R20
      295 MOVE                             R28 R21
      296 MOVE                             R29 R21
      297 MOVE                             R30 R20
      298 GETIMPORT                        R27 K58 [Vector3.new]
      300 CALL                             R27 3 1
      301 SETTABLEKS                       R27 R26 K55 ["Size"]
      303 LOADN                            R27 0
      304 SETTABLEKS                       R27 R26 K20 ["ZIndex"]
      306 GETUPVAL                         R27 3
      307 SETTABLEKS                       R27 R26 K21 ["AdornCullingMode"]
      309 CALL                             R24 2 1
      310 SETTABLE                         R24 R4 R23
      311 LOADK                            R24 K59 ["OnTopTick"]
      312 FASTCALL1                        TOSTRING R17 ; [+3]
      313 MOVE                             R26 R17
      314 GETIMPORT                        R25 K53 [tostring]
      316 CALL                             R25 1 1
      317 CONCAT                           R23 R24 R25
      318 GETUPVAL                         R25 1
      319 GETTABLEKS                       R24 R25 K10 ["createElement"]
      321 LOADK                            R25 K54 ["BoxHandleAdornment"]
      322 DUPTABLE                         R26 K60 [{"Adornee", "AlwaysOnTop", "Transparency", "CFrame", "Color3", "Size", "ZIndex", "AdornCullingMode"}]
      323 GETUPVAL                         R28 2
      324 GETTABLEKS                       R27 R28 K23 ["Terrain"]
      326 SETTABLEKS                       R27 R26 K12 ["Adornee"]
      328 LOADB                            R27 1
      329 SETTABLEKS                       R27 R26 K18 ["AlwaysOnTop"]
      331 LOADK                            R27 K30 [0.45]
      332 SETTABLEKS                       R27 R26 K19 ["Transparency"]
      334 SETTABLEKS                       R22 R26 K13 ["CFrame"]
      336 GETTABLEKS                       R28 R0 K1 ["props"]
      338 GETTABLEKS                       R27 R28 K29 ["Color"]
      340 SETTABLEKS                       R27 R26 K17 ["Color3"]
      342 FASTCALL3                        VECTOR R21 R21 R20
      344 MOVE                             R28 R21
      345 MOVE                             R29 R21
      346 MOVE                             R30 R20
      347 GETIMPORT                        R27 K58 [Vector3.new]
      349 CALL                             R27 3 1
      350 SETTABLEKS                       R27 R26 K55 ["Size"]
      352 LOADN                            R27 0
      353 SETTABLEKS                       R27 R26 K20 ["ZIndex"]
      355 GETUPVAL                         R27 3
      356 SETTABLEKS                       R27 R26 K21 ["AdornCullingMode"]
      358 CALL                             R24 2 1
      359 SETTABLE                         R24 R4 R23
      360 FORNLOOP                         R15
      361 GETTABLEKS                       R7 R0 K1 ["props"]
      363 GETTABLEKS                       R6 R7 K27 ["StartAngle"]
      365 JUMPIFNOT                        R6 ; [+209]
      366 GETTABLEKS                       R7 R0 K1 ["props"]
      368 GETTABLEKS                       R6 R7 K41 ["EndAngle"]
      370 JUMPIFNOT                        R6 ; [+204]
      371 LOADK                            R7 K6 [0.1]
      372 MUL                              R6 R7 R2
      373 LOADK                            R8 K40 [0.3]
      374 MUL                              R7 R8 R2
      375 LOADK                            R9 K9 [0.5]
      376 SUB                              R10 R7 R6
      377 MUL                              R8 R9 R10
      378 GETTABLEKS                       R11 R0 K1 ["props"]
      380 GETTABLEKS                       R10 R11 K41 ["EndAngle"]
      382 GETTABLEKS                       R12 R0 K1 ["props"]
      384 GETTABLEKS                       R11 R12 K27 ["StartAngle"]
      386 SUB                              R9 R10 R11
      387 GETTABLEKS                       R11 R0 K1 ["props"]
      389 GETTABLEKS                       R10 R11 K27 ["StartAngle"]
      391 LOADK                            R11 K42 [3.14159265358979]
      392 JUMPIFNOTLT                      R11 R9 ; [+2]
      394 SUBK                             R9 R9 K35 [6.28318530717959]
      395 LOADK                            R11 K61 [-3.14159265358979]
      396 JUMPIFNOTLT                      R9 R11 ; [+2]
      398 ADDK                             R9 R9 K35 [6.28318530717959]
      399 LOADN                            R11 0
      400 JUMPIFNOTLT                      R9 R11 ; [+8]
      402 ADD                              R10 R10 R9
      403 FASTCALL1                        MATH_ABS R9 ; [+3]
      404 MOVE                             R12 R9
      405 GETIMPORT                        R11 K47 [math.abs]
      407 CALL                             R11 1 1
      408 MOVE                             R9 R11
      409 FASTCALL1                        MATH_ABS R9 ; [+3]
      410 MOVE                             R12 R9
      411 GETIMPORT                        R11 K47 [math.abs]
      413 CALL                             R11 1 1
      414 LOADK                            R12 K48 [0.001]
      415 JUMPIFNOTLT                      R12 R11 ; [+57]
      417 GETUPVAL                         R12 1
      418 GETTABLEKS                       R11 R12 K10 ["createElement"]
      420 LOADK                            R12 K11 ["CylinderHandleAdornment"]
      421 DUPTABLE                         R13 K63 [{"Adornee", "CFrame", "Height", "Radius", "InnerRadius", "Angle", "Color3", "AlwaysOnTop", "Transparency", "ZIndex"}]
      422 GETUPVAL                         R15 2
      423 GETTABLEKS                       R14 R15 K23 ["Terrain"]
      425 SETTABLEKS                       R14 R13 K12 ["Adornee"]
      427 GETTABLEKS                       R16 R0 K1 ["props"]
      429 GETTABLEKS                       R15 R16 K24 ["HandleCFrame"]
      431 GETIMPORT                        R16 K26 [CFrame.Angles]
      433 SUBK                             R17 R10 K28 [1.5707963267949]
      434 LOADK                            R18 K28 [1.5707963267949]
      435 LOADK                            R19 K28 [1.5707963267949]
      436 CALL                             R16 3 1
      437 MUL                              R14 R15 R16
      438 SETTABLEKS                       R14 R13 K13 ["CFrame"]
      440 LOADN                            R14 0
      441 SETTABLEKS                       R14 R13 K14 ["Height"]
      443 SETTABLEKS                       R2 R13 K15 ["Radius"]
      445 LOADN                            R14 0
      446 SETTABLEKS                       R14 R13 K16 ["InnerRadius"]
      448 FASTCALL1                        MATH_DEG R9 ; [+3]
      449 MOVE                             R15 R9
      450 GETIMPORT                        R14 K65 [math.deg]
      452 CALL                             R14 1 1
      453 SETTABLEKS                       R14 R13 K62 ["Angle"]
      455 GETTABLEKS                       R15 R0 K1 ["props"]
      457 GETTABLEKS                       R14 R15 K29 ["Color"]
      459 SETTABLEKS                       R14 R13 K17 ["Color3"]
      461 LOADB                            R14 1
      462 SETTABLEKS                       R14 R13 K18 ["AlwaysOnTop"]
      464 LOADK                            R14 K66 [0.6]
      465 SETTABLEKS                       R14 R13 K19 ["Transparency"]
      467 LOADN                            R14 0
      468 SETTABLEKS                       R14 R13 K20 ["ZIndex"]
      470 CALL                             R11 2 1
      471 SETTABLEKS                       R11 R4 K67 ["AngleSweepElement"]
      473 LOADK                            R12 K68 [0.08]
      474 GETTABLEKS                       R14 R0 K1 ["props"]
      476 GETTABLEKS                       R13 R14 K4 ["Scale"]
      478 MUL                              R11 R12 R13
      479 NEWCLOSURE                       R12 P0
      480 CAPTURE                          REF R2
      481 CAPTURE                          VAL R8
      482 CAPTURE                          VAL R0
      483 CAPTURE                          UPVAL U1
      484 CAPTURE                          UPVAL U2
      485 CAPTURE                          VAL R11
      486 MOVE                             R13 R12
      487 GETTABLEKS                       R15 R0 K1 ["props"]
      489 GETTABLEKS                       R14 R15 K41 ["EndAngle"]
      491 CALL                             R13 1 1
      492 SETTABLEKS                       R13 R4 K69 ["EndAngleElement"]
      494 GETUPVAL                         R13 4
      495 CALL                             R13 0 1
      496 JUMPIFNOT                        R13 ; [+78]
      497 GETTABLEKS                       R14 R0 K1 ["props"]
      499 GETTABLEKS                       R13 R14 K70 ["DraggerContext"]
      501 NAMECALL                         R13 R13 K71 ["shouldShowPreciseInput"]
      503 CALL                             R13 1 1
      504 JUMPIFNOT                        R13 ; [+70]
      505 GETTABLEKS                       R14 R0 K1 ["props"]
      507 GETTABLEKS                       R13 R14 K24 ["HandleCFrame"]
      509 GETTABLEKS                       R14 R13 K72 ["Position"]
      511 GETIMPORT                        R15 K50 [CFrame.new]
      513 LOADN                            R16 0
      514 LOADN                            R17 0
      515 ADD                              R20 R2 R8
      516 MINUS                            R19 R20
      517 DIVK                             R18 R19 K73 [2]
      518 CALL                             R15 3 1
      519 GETIMPORT                        R19 K26 [CFrame.Angles]
      521 MULK                             R21 R9 K9 [0.5]
      522 ADD                              R20 R10 R21
      523 LOADN                            R21 0
      524 LOADN                            R22 0
      525 CALL                             R19 3 1
      526 MUL                              R18 R13 R19
      527 MUL                              R17 R18 R15
      528 GETTABLEKS                       R16 R17 K74 ["LookVector"]
      530 LOADK                            R20 K75 [1.2]
      531 MUL                              R19 R20 R2
      532 MUL                              R18 R16 R19
      533 ADD                              R17 R14 R18
      534 GETTABLEKS                       R19 R0 K1 ["props"]
      536 GETTABLEKS                       R18 R19 K70 ["DraggerContext"]
      538 MOVE                             R20 R17
      539 NAMECALL                         R18 R18 K76 ["worldToViewportPoint"]
      541 CALL                             R18 2 2
      542 JUMPIFNOT                        R19 ; [+32]
      543 GETUPVAL                         R21 1
      544 GETTABLEKS                       R20 R21 K10 ["createElement"]
      546 GETUPVAL                         R21 5
      547 DUPTABLE                         R22 K78 [{"DraggerContext", "Position", "Value"}]
      548 GETTABLEKS                       R24 R0 K1 ["props"]
      550 GETTABLEKS                       R23 R24 K70 ["DraggerContext"]
      552 SETTABLEKS                       R23 R22 K70 ["DraggerContext"]
      554 GETIMPORT                        R23 K81 [UDim2.fromOffset]
      556 GETTABLEKS                       R24 R18 K82 ["X"]
      558 GETTABLEKS                       R25 R18 K83 ["Y"]
      560 CALL                             R23 2 1
      561 SETTABLEKS                       R23 R22 K72 ["Position"]
      563 GETUPVAL                         R23 6
      564 FASTCALL1                        MATH_DEG R9 ; [+3]
      565 MOVE                             R25 R9
      566 GETIMPORT                        R24 K65 [math.deg]
      568 CALL                             R24 1 1
      569 CALL                             R23 1 1
      570 SETTABLEKS                       R23 R22 K77 ["Value"]
      572 CALL                             R20 2 1
      573 SETTABLEKS                       R20 R4 K84 ["ValueDisplay"]
      575 GETUPVAL                         R7 1
      576 GETTABLEKS                       R6 R7 K10 ["createElement"]
      578 LOADK                            R7 K85 ["Folder"]
      579 NEWTABLE                         R8 0 0
      581 MOVE                             R9 R4
      582 CALL                             R6 3 -1
      583 CLOSEUPVALS                      R2
      584 RETURN                           R6 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["HandleCFrame"]
        2 GETTABLEKS                       R3 R1 K1 ["Unit"]
        4 GETTABLEKS                       R5 R0 K3 ["RadiusOffset"]
        6 ORK                              R4 R5 K2 [0]
        7 LOADK                            R7 K4 [4.5]
        8 ADD                              R6 R7 R4
        9 GETTABLEKS                       R7 R0 K5 ["Scale"]
       11 MUL                              R5 R6 R7
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R8 R0 K5 ["Scale"]
       15 MUL                              R6 R7 R8
       16 GETTABLEKS                       R7 R2 K6 ["RightVector"]
       18 GETTABLEKS                       R8 R2 K7 ["Position"]
       20 LOADK                            R9 K8 [∞]
       21 LOADB                            R10 0
       22 LOADNIL                          R11
       23 LOADNIL                          R12
       24 MULK                             R15 R7 K9 [0.5]
       25 MUL                              R14 R15 R6
       26 ADD                              R13 R8 R14
       27 GETUPVAL                         R15 1
       28 GETTABLEKS                       R14 R15 K10 ["intersectRayPlane"]
       30 GETTABLEKS                       R15 R3 K11 ["Origin"]
       32 GETTABLEKS                       R16 R3 K12 ["Direction"]
       34 MOVE                             R17 R13
       35 MOVE                             R18 R7
       36 CALL                             R14 4 1
       37 MOVE                             R12 R14
       38 LOADN                            R14 0
       39 JUMPIFNOTLE                      R14 R12 ; [+23]
       41 JUMPIFNOTLT                      R12 R9 ; [+21]
       43 GETTABLEKS                       R15 R3 K11 ["Origin"]
       45 GETTABLEKS                       R17 R3 K12 ["Direction"]
       47 MUL                              R16 R17 R12
       48 ADD                              R14 R15 R16
       49 SUB                              R16 R14 R13
       50 GETTABLEKS                       R15 R16 K13 ["Magnitude"]
       52 SUB                              R17 R15 R5
       53 FASTCALL1                        MATH_ABS R17 ; [+2]
       54 GETIMPORT                        R16 K16 [math.abs]
       56 CALL                             R16 1 1
       57 LOADK                            R18 K9 [0.5]
       58 MUL                              R17 R18 R6
       59 JUMPIFNOTLT                      R16 R17 ; [+3]
       61 LOADB                            R10 1
       62 MOVE                             R9 R12
       63 MULK                             R16 R7 K9 [0.5]
       64 MUL                              R15 R16 R6
       65 SUB                              R14 R8 R15
       66 GETUPVAL                         R16 1
       67 GETTABLEKS                       R15 R16 K10 ["intersectRayPlane"]
       69 GETTABLEKS                       R16 R3 K11 ["Origin"]
       71 GETTABLEKS                       R17 R3 K12 ["Direction"]
       73 MOVE                             R18 R14
       74 MINUS                            R19 R7
       75 CALL                             R15 4 1
       76 MOVE                             R12 R15
       77 LOADN                            R15 0
       78 JUMPIFNOTLE                      R15 R12 ; [+23]
       80 JUMPIFNOTLT                      R12 R9 ; [+21]
       82 GETTABLEKS                       R16 R3 K11 ["Origin"]
       84 GETTABLEKS                       R18 R3 K12 ["Direction"]
       86 MUL                              R17 R18 R12
       87 ADD                              R15 R16 R17
       88 SUB                              R17 R15 R14
       89 GETTABLEKS                       R16 R17 K13 ["Magnitude"]
       91 SUB                              R18 R16 R5
       92 FASTCALL1                        MATH_ABS R18 ; [+2]
       93 GETIMPORT                        R17 K16 [math.abs]
       95 CALL                             R17 1 1
       96 LOADK                            R19 K9 [0.5]
       97 MUL                              R18 R19 R6
       98 JUMPIFNOTLT                      R17 R18 ; [+3]
      100 LOADB                            R10 1
      101 MOVE                             R9 R12
      102 GETTABLEKS                       R17 R3 K11 ["Origin"]
      104 NAMECALL                         R15 R2 K17 ["PointToObjectSpace"]
      106 CALL                             R15 2 1
      107 GETTABLEKS                       R18 R3 K12 ["Direction"]
      109 NAMECALL                         R16 R2 K18 ["VectorToObjectSpace"]
      111 CALL                             R16 2 1
      112 LOADK                            R19 K9 [0.5]
      113 MUL                              R18 R19 R6
      114 SUB                              R17 R5 R18
      115 GETUPVAL                         R19 1
      116 GETTABLEKS                       R18 R19 K19 ["intersectRayCylinder"]
      118 MOVE                             R19 R15
      119 MOVE                             R20 R16
      120 MOVE                             R21 R17
      121 MOVE                             R22 R6
      122 CALL                             R18 4 2
      123 MOVE                             R11 R18
      124 MOVE                             R12 R19
      125 JUMPIFNOT                        R11 ; [+4]
      126 JUMPIFNOTLT                      R12 R9 ; [+3]
      128 LOADB                            R10 1
      129 MOVE                             R9 R12
      130 LOADK                            R20 K9 [0.5]
      131 MUL                              R19 R20 R6
      132 ADD                              R18 R5 R19
      133 GETUPVAL                         R20 1
      134 GETTABLEKS                       R19 R20 K19 ["intersectRayCylinder"]
      136 MOVE                             R20 R15
      137 MOVE                             R21 R16
      138 MOVE                             R22 R18
      139 MOVE                             R23 R6
      140 CALL                             R19 4 2
      141 MOVE                             R11 R19
      142 MOVE                             R12 R20
      143 JUMPIFNOT                        R11 ; [+4]
      144 JUMPIFNOTLT                      R12 R9 ; [+3]
      146 LOADB                            R10 1
      147 MOVE                             R9 R12
      148 JUMPIFNOT                        R10 ; [+1]
      149 RETURN                           R9 1
      150 LOADNIL                          R19
      151 RETURN                           R19 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETIMPORT                        R3 K8 [require]
       17 GETTABLEKS                       R4 R2 K9 ["Roact"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K8 [require]
       22 GETTABLEKS                       R6 R1 K10 ["Utility"]
       24 GETTABLEKS                       R5 R6 K11 ["Math"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K8 [require]
       29 GETTABLEKS                       R7 R1 K12 ["Components"]
       31 GETTABLEKS                       R6 R7 K13 ["FloatingValueInput"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K8 [require]
       36 GETTABLEKS                       R8 R1 K10 ["Utility"]
       38 GETTABLEKS                       R7 R8 K14 ["conciseNumberFormat"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K8 [require]
       43 GETTABLEKS                       R9 R1 K15 ["Flags"]
       45 GETTABLEKS                       R8 R9 K16 ["getFFlagDraggerImprovements"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K20 [Enum.AdornCullingMode.Never]
       50 GETTABLEKS                       R9 R3 K21 ["PureComponent"]
       52 LOADK                            R11 K22 ["RotateHandleView"]
       53 NAMECALL                         R9 R9 K23 ["extend"]
       55 CALL                             R9 2 1
       56 MOVE                             R11 R7
       57 CALL                             R11 0 1
       58 JUMPIFNOT                        R11 ; [+2]
       59 LOADK                            R10 K24 [0.1]
       60 JUMP                             ; [+1]
       61 LOADK                            R10 K25 [0.15]
       62 MOVE                             R12 R7
       63 CALL                             R12 0 1
       64 JUMPIFNOT                        R12 ; [+2]
       65 LOADK                            R11 K26 [0.6]
       66 JUMP                             ; [+1]
       67 MULK                             R11 R10 K27 [4]
       68 DUPCLOSURE                       R12 K28 [PROTO_0]
       69 DUPCLOSURE                       R13 K29 [PROTO_2]
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R6
       77 SETTABLEKS                       R13 R9 K30 ["render"]
       79 DUPCLOSURE                       R13 K31 [PROTO_3]
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R4
       82 SETTABLEKS                       R13 R9 K32 ["hitTest"]
       84 RETURN                           R9 1
