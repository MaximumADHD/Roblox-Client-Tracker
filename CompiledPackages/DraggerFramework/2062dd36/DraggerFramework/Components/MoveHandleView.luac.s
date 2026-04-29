PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Scale"]
        4 MULK                             R2 R1 K2 [4]
        5 MULK                             R3 R1 K3 [0.1]
        6 GETUPVAL                         R5 0
        7 MUL                              R4 R1 R5
        8 GETTABLEKS                       R8 R0 K0 ["props"]
       10 GETTABLEKS                       R7 R8 K5 ["Outset"]
       12 ORK                              R6 R7 K4 [0]
       13 MUL                              R5 R2 R6
       14 ADD                              R4 R4 R5
       15 MULK                             R5 R1 K6 [0.2]
       16 MULK                             R6 R2 K7 [0.25]
       17 MULK                             R7 R3 K8 [3]
       18 GETUPVAL                         R8 1
       19 CALL                             R8 0 1
       20 JUMPIFNOT                        R8 ; [+19]
       21 GETTABLEKS                       R9 R0 K0 ["props"]
       23 GETTABLEKS                       R8 R9 K9 ["Thin"]
       25 JUMPIFNOT                        R8 ; [+4]
       26 GETUPVAL                         R8 2
       27 MUL                              R3 R3 R8
       28 GETUPVAL                         R8 2
       29 MUL                              R7 R7 R8
       30 GETTABLEKS                       R9 R0 K0 ["props"]
       32 GETTABLEKS                       R8 R9 K10 ["Hovered"]
       34 JUMPIFNOT                        R8 ; [+21]
       35 GETUPVAL                         R8 3
       36 MUL                              R3 R3 R8
       37 GETUPVAL                         R8 3
       38 MUL                              R7 R7 R8
       39 JUMP                             ; [+16]
       40 GETTABLEKS                       R9 R0 K0 ["props"]
       42 GETTABLEKS                       R8 R9 K9 ["Thin"]
       44 JUMPIFNOT                        R8 ; [+2]
       45 GETUPVAL                         R8 2
       46 MUL                              R3 R3 R8
       47 GETTABLEKS                       R9 R0 K0 ["props"]
       49 GETTABLEKS                       R8 R9 K10 ["Hovered"]
       51 JUMPIFNOT                        R8 ; [+4]
       52 GETUPVAL                         R8 3
       53 MUL                              R3 R3 R8
       54 GETUPVAL                         R8 3
       55 MUL                              R6 R6 R8
       56 GETTABLEKS                       R10 R0 K0 ["props"]
       58 GETTABLEKS                       R9 R10 K11 ["Axis"]
       60 GETIMPORT                        R10 K14 [CFrame.new]
       62 LOADN                            R11 0
       63 LOADN                            R12 0
       64 ADD                              R14 R4 R2
       65 MINUS                            R13 R14
       66 CALL                             R10 3 1
       67 MUL                              R8 R9 R10
       68 LOADN                            R11 0
       69 LOADN                            R12 0
       70 MINUS                            R13 R5
       71 FASTCALL                         VECTOR ; [+2]
       72 GETIMPORT                        R10 K16 [Vector3.new]
       74 CALL                             R10 3 1
       75 MUL                              R9 R8 R10
       76 GETUPVAL                         R11 4
       77 GETTABLEKS                       R10 R11 K17 ["CurrentCamera"]
       79 MOVE                             R12 R9
       80 NAMECALL                         R10 R10 K18 ["WorldToScreenPoint"]
       82 CALL                             R10 2 2
       83 NEWTABLE                         R12 4 0
       85 GETUPVAL                         R13 5
       86 CALL                             R13 0 1
       87 JUMPIFNOT                        R13 ; [+74]
       88 GETTABLEKS                       R14 R0 K0 ["props"]
       90 GETTABLEKS                       R13 R14 K19 ["Tail"]
       92 JUMPIFNOT                        R13 ; [+69]
       93 ADD                              R2 R2 R4
       94 LOADN                            R4 0
       95 GETTABLEKS                       R17 R0 K0 ["props"]
       97 GETTABLEKS                       R16 R17 K20 ["TailScale"]
       99 FASTCALL2                        MATH_MIN R1 R16 ; [+4]
      101 MOVE                             R15 R1
      102 GETIMPORT                        R14 K23 [math.min]
      104 CALL                             R14 2 1
      105 MULK                             R16 R14 K3 [0.1]
      106 MULK                             R15 R16 K24 [0.65]
      107 GETUPVAL                         R17 1
      108 CALL                             R17 0 1
      109 JUMPIFNOT                        R17 ; [+2]
      110 LOADK                            R16 K19 ["Tail"]
      111 JUMP                             ; [+1]
      112 LOADK                            R16 K25 ["ExtraShaft"]
      113 GETUPVAL                         R18 6
      114 GETTABLEKS                       R17 R18 K26 ["createElement"]
      116 LOADK                            R18 K27 ["CylinderHandleAdornment"]
      117 DUPTABLE                         R19 K36 [{"Adornee", "ZIndex", "Radius", "Height", "CFrame", "Color3", "AlwaysOnTop", "Transparency", "AdornCullingMode"}]
      118 GETUPVAL                         R21 4
      119 GETTABLEKS                       R20 R21 K37 ["Terrain"]
      121 SETTABLEKS                       R20 R19 K28 ["Adornee"]
      123 LOADN                            R20 0
      124 SETTABLEKS                       R20 R19 K29 ["ZIndex"]
      126 SETTABLEKS                       R15 R19 K30 ["Radius"]
      128 SETTABLEKS                       R13 R19 K31 ["Height"]
      130 GETTABLEKS                       R22 R0 K0 ["props"]
      132 GETTABLEKS                       R21 R22 K11 ["Axis"]
      134 GETIMPORT                        R22 K14 [CFrame.new]
      136 LOADN                            R23 0
      137 LOADN                            R24 0
      138 LOADN                            R26 0
      139 MULK                             R27 R13 K38 [0.5]
      140 ADD                              R25 R26 R27
      141 CALL                             R22 3 1
      142 MUL                              R20 R21 R22
      143 SETTABLEKS                       R20 R19 K12 ["CFrame"]
      145 GETTABLEKS                       R21 R0 K0 ["props"]
      147 GETTABLEKS                       R20 R21 K39 ["Color"]
      149 SETTABLEKS                       R20 R19 K32 ["Color3"]
      151 LOADB                            R20 1
      152 SETTABLEKS                       R20 R19 K33 ["AlwaysOnTop"]
      154 LOADK                            R20 K38 [0.5]
      155 SETTABLEKS                       R20 R19 K34 ["Transparency"]
      157 GETUPVAL                         R20 7
      158 SETTABLEKS                       R20 R19 K35 ["AdornCullingMode"]
      160 CALL                             R17 2 1
      161 SETTABLE                         R17 R12 R16
      162 GETUPVAL                         R13 1
      163 CALL                             R13 0 1
      164 JUMPIF                           R13 ; [+93]
      165 GETTABLEKS                       R14 R0 K0 ["props"]
      167 GETTABLEKS                       R13 R14 K10 ["Hovered"]
      169 JUMPIF                           R13 ; [+88]
      170 GETUPVAL                         R14 6
      171 GETTABLEKS                       R13 R14 K26 ["createElement"]
      173 LOADK                            R14 K27 ["CylinderHandleAdornment"]
      174 DUPTABLE                         R15 K40 [{"Adornee", "ZIndex", "Radius", "Height", "CFrame", "Color3", "AlwaysOnTop", "AdornCullingMode"}]
      175 GETUPVAL                         R17 4
      176 GETTABLEKS                       R16 R17 K37 ["Terrain"]
      178 SETTABLEKS                       R16 R15 K28 ["Adornee"]
      180 LOADN                            R16 0
      181 SETTABLEKS                       R16 R15 K29 ["ZIndex"]
      183 SETTABLEKS                       R3 R15 K30 ["Radius"]
      185 SETTABLEKS                       R2 R15 K31 ["Height"]
      187 GETTABLEKS                       R18 R0 K0 ["props"]
      189 GETTABLEKS                       R17 R18 K11 ["Axis"]
      191 GETIMPORT                        R18 K14 [CFrame.new]
      193 LOADN                            R19 0
      194 LOADN                            R20 0
      195 MULK                             R23 R2 K38 [0.5]
      196 ADD                              R22 R4 R23
      197 MINUS                            R21 R22
      198 CALL                             R18 3 1
      199 MUL                              R16 R17 R18
      200 SETTABLEKS                       R16 R15 K12 ["CFrame"]
      202 GETTABLEKS                       R17 R0 K0 ["props"]
      204 GETTABLEKS                       R16 R17 K39 ["Color"]
      206 SETTABLEKS                       R16 R15 K32 ["Color3"]
      208 LOADB                            R16 0
      209 SETTABLEKS                       R16 R15 K33 ["AlwaysOnTop"]
      211 GETUPVAL                         R16 7
      212 SETTABLEKS                       R16 R15 K35 ["AdornCullingMode"]
      214 CALL                             R13 2 1
      215 SETTABLEKS                       R13 R12 K41 ["Shaft"]
      217 GETTABLEKS                       R14 R0 K0 ["props"]
      219 GETTABLEKS                       R13 R14 K9 ["Thin"]
      221 JUMPIF                           R13 ; [+36]
      222 GETUPVAL                         R14 6
      223 GETTABLEKS                       R13 R14 K26 ["createElement"]
      225 LOADK                            R14 K42 ["ConeHandleAdornment"]
      226 DUPTABLE                         R15 K40 [{"Adornee", "ZIndex", "Radius", "Height", "CFrame", "Color3", "AlwaysOnTop", "AdornCullingMode"}]
      227 GETUPVAL                         R17 4
      228 GETTABLEKS                       R16 R17 K37 ["Terrain"]
      230 SETTABLEKS                       R16 R15 K28 ["Adornee"]
      232 LOADN                            R16 0
      233 SETTABLEKS                       R16 R15 K29 ["ZIndex"]
      235 LOADN                            R17 3
      236 MUL                              R16 R17 R3
      237 SETTABLEKS                       R16 R15 K30 ["Radius"]
      239 SETTABLEKS                       R6 R15 K31 ["Height"]
      241 SETTABLEKS                       R8 R15 K12 ["CFrame"]
      243 GETTABLEKS                       R17 R0 K0 ["props"]
      245 GETTABLEKS                       R16 R17 K39 ["Color"]
      247 SETTABLEKS                       R16 R15 K32 ["Color3"]
      249 LOADB                            R16 0
      250 SETTABLEKS                       R16 R15 K33 ["AlwaysOnTop"]
      252 GETUPVAL                         R16 7
      253 SETTABLEKS                       R16 R15 K35 ["AdornCullingMode"]
      255 CALL                             R13 2 1
      256 SETTABLEKS                       R13 R12 K43 ["Head"]
      258 GETTABLEKS                       R15 R0 K0 ["props"]
      260 GETTABLEKS                       R14 R15 K10 ["Hovered"]
      262 JUMPIFNOT                        R14 ; [+2]
      263 LOADN                            R13 0
      264 JUMP                             ; [+5]
      265 GETTABLEKS                       R15 R0 K0 ["props"]
      267 GETTABLEKS                       R14 R15 K34 ["Transparency"]
      269 ORK                              R13 R14 K4 [0]
      270 GETTABLEKS                       R15 R0 K0 ["props"]
      272 GETTABLEKS                       R14 R15 K33 ["AlwaysOnTop"]
      274 JUMPIFNOT                        R14 ; [+129]
      275 GETUPVAL                         R15 1
      276 CALL                             R15 0 1
      277 JUMPIFNOT                        R15 ; [+2]
      278 LOADK                            R14 K41 ["Shaft"]
      279 JUMP                             ; [+1]
      280 LOADK                            R14 K44 ["DimmedShaft"]
      281 GETUPVAL                         R16 6
      282 GETTABLEKS                       R15 R16 K26 ["createElement"]
      284 LOADK                            R16 K27 ["CylinderHandleAdornment"]
      285 DUPTABLE                         R17 K36 [{"Adornee", "ZIndex", "Radius", "Height", "CFrame", "Color3", "AlwaysOnTop", "Transparency", "AdornCullingMode"}]
      286 GETUPVAL                         R19 4
      287 GETTABLEKS                       R18 R19 K37 ["Terrain"]
      289 SETTABLEKS                       R18 R17 K28 ["Adornee"]
      291 LOADN                            R18 0
      292 SETTABLEKS                       R18 R17 K29 ["ZIndex"]
      294 SETTABLEKS                       R3 R17 K30 ["Radius"]
      296 SETTABLEKS                       R2 R17 K31 ["Height"]
      298 GETTABLEKS                       R20 R0 K0 ["props"]
      300 GETTABLEKS                       R19 R20 K11 ["Axis"]
      302 GETIMPORT                        R20 K14 [CFrame.new]
      304 LOADN                            R21 0
      305 LOADN                            R22 0
      306 MULK                             R25 R2 K38 [0.5]
      307 ADD                              R24 R4 R25
      308 MINUS                            R23 R24
      309 CALL                             R20 3 1
      310 MUL                              R18 R19 R20
      311 SETTABLEKS                       R18 R17 K12 ["CFrame"]
      313 GETTABLEKS                       R19 R0 K0 ["props"]
      315 GETTABLEKS                       R18 R19 K39 ["Color"]
      317 SETTABLEKS                       R18 R17 K32 ["Color3"]
      319 LOADB                            R18 1
      320 SETTABLEKS                       R18 R17 K33 ["AlwaysOnTop"]
      322 GETUPVAL                         R19 1
      323 CALL                             R19 0 1
      324 JUMPIFNOT                        R19 ; [+2]
      325 MOVE                             R18 R13
      326 JUMP                             ; [+8]
      327 GETTABLEKS                       R20 R0 K0 ["props"]
      329 GETTABLEKS                       R19 R20 K10 ["Hovered"]
      331 JUMPIFNOT                        R19 ; [+2]
      332 LOADN                            R18 0
      333 JUMP                             ; [+1]
      334 LOADK                            R18 K45 [0.45]
      335 SETTABLEKS                       R18 R17 K34 ["Transparency"]
      337 GETUPVAL                         R18 7
      338 SETTABLEKS                       R18 R17 K35 ["AdornCullingMode"]
      340 CALL                             R15 2 1
      341 SETTABLE                         R15 R12 R14
      342 GETTABLEKS                       R16 R0 K0 ["props"]
      344 GETTABLEKS                       R15 R16 K9 ["Thin"]
      346 JUMPIF                           R15 ; [+128]
      347 GETUPVAL                         R16 1
      348 CALL                             R16 0 1
      349 JUMPIFNOT                        R16 ; [+2]
      350 LOADK                            R15 K43 ["Head"]
      351 JUMP                             ; [+1]
      352 LOADK                            R15 K46 ["DimmedHead"]
      353 GETUPVAL                         R17 6
      354 GETTABLEKS                       R16 R17 K26 ["createElement"]
      356 LOADK                            R17 K42 ["ConeHandleAdornment"]
      357 DUPTABLE                         R18 K36 [{"Adornee", "ZIndex", "Radius", "Height", "CFrame", "Color3", "AlwaysOnTop", "Transparency", "AdornCullingMode"}]
      358 GETUPVAL                         R20 4
      359 GETTABLEKS                       R19 R20 K37 ["Terrain"]
      361 SETTABLEKS                       R19 R18 K28 ["Adornee"]
      363 LOADN                            R19 0
      364 SETTABLEKS                       R19 R18 K29 ["ZIndex"]
      366 LOADN                            R20 3
      367 MUL                              R19 R20 R3
      368 SETTABLEKS                       R19 R18 K30 ["Radius"]
      370 SETTABLEKS                       R6 R18 K31 ["Height"]
      372 SETTABLEKS                       R8 R18 K12 ["CFrame"]
      374 GETTABLEKS                       R20 R0 K0 ["props"]
      376 GETTABLEKS                       R19 R20 K39 ["Color"]
      378 SETTABLEKS                       R19 R18 K32 ["Color3"]
      380 LOADB                            R19 1
      381 SETTABLEKS                       R19 R18 K33 ["AlwaysOnTop"]
      383 GETUPVAL                         R20 1
      384 CALL                             R20 0 1
      385 JUMPIFNOT                        R20 ; [+2]
      386 MOVE                             R19 R13
      387 JUMP                             ; [+8]
      388 GETTABLEKS                       R21 R0 K0 ["props"]
      390 GETTABLEKS                       R20 R21 K10 ["Hovered"]
      392 JUMPIFNOT                        R20 ; [+2]
      393 LOADN                            R19 0
      394 JUMP                             ; [+1]
      395 LOADK                            R19 K45 [0.45]
      396 SETTABLEKS                       R19 R18 K34 ["Transparency"]
      398 GETUPVAL                         R19 7
      399 SETTABLEKS                       R19 R18 K35 ["AdornCullingMode"]
      401 CALL                             R16 2 1
      402 SETTABLE                         R16 R12 R15
      403 JUMP                             ; [+71]
      404 GETTABLEKS                       R15 R0 K0 ["props"]
      406 GETTABLEKS                       R14 R15 K9 ["Thin"]
      408 JUMPIF                           R14 ; [+66]
      409 GETUPVAL                         R15 6
      410 GETTABLEKS                       R14 R15 K26 ["createElement"]
      412 GETUPVAL                         R16 6
      413 GETTABLEKS                       R15 R16 K47 ["Portal"]
      415 DUPTABLE                         R16 K49 [{"target"}]
      416 GETUPVAL                         R17 8
      417 SETTABLEKS                       R17 R16 K48 ["target"]
      419 DUPTABLE                         R17 K51 [{"MoveToolScreenspaceHandle"}]
      420 GETUPVAL                         R19 6
      421 GETTABLEKS                       R18 R19 K26 ["createElement"]
      423 LOADK                            R19 K52 ["ScreenGui"]
      424 NEWTABLE                         R20 0 0
      426 DUPTABLE                         R21 K54 [{"Frame"}]
      427 GETUPVAL                         R23 6
      428 GETTABLEKS                       R22 R23 K26 ["createElement"]
      430 LOADK                            R23 K53 ["Frame"]
      431 DUPTABLE                         R24 K59 [{"BorderSizePixel", "BackgroundColor3", "Position", "Size", "AdornCullingMode"}]
      432 LOADN                            R25 0
      433 SETTABLEKS                       R25 R24 K55 ["BorderSizePixel"]
      435 GETTABLEKS                       R26 R0 K0 ["props"]
      437 GETTABLEKS                       R25 R26 K39 ["Color"]
      439 SETTABLEKS                       R25 R24 K56 ["BackgroundColor3"]
      441 GETIMPORT                        R25 K61 [UDim2.new]
      443 LOADN                            R26 0
      444 GETTABLEKS                       R28 R10 K62 ["X"]
      446 SUBK                             R27 R28 K8 [3]
      447 LOADN                            R28 0
      448 GETTABLEKS                       R30 R10 K63 ["Y"]
      450 SUBK                             R29 R30 K8 [3]
      451 CALL                             R25 4 1
      452 SETTABLEKS                       R25 R24 K57 ["Position"]
      454 GETIMPORT                        R25 K61 [UDim2.new]
      456 LOADN                            R26 0
      457 LOADN                            R27 6
      458 LOADN                            R28 0
      459 LOADN                            R29 6
      460 CALL                             R25 4 1
      461 SETTABLEKS                       R25 R24 K58 ["Size"]
      463 GETUPVAL                         R25 7
      464 SETTABLEKS                       R25 R24 K35 ["AdornCullingMode"]
      466 CALL                             R22 2 1
      467 SETTABLEKS                       R22 R21 K53 ["Frame"]
      469 CALL                             R18 3 1
      470 SETTABLEKS                       R18 R17 K50 ["MoveToolScreenspaceHandle"]
      472 CALL                             R14 3 1
      473 SETTABLEKS                       R14 R12 K64 ["ScreenBox"]
      475 GETUPVAL                         R15 6
      476 GETTABLEKS                       R14 R15 K26 ["createElement"]
      478 LOADK                            R15 K65 ["Folder"]
      479 NEWTABLE                         R16 0 0
      481 MOVE                             R17 R12
      482 CALL                             R14 3 -1
      483 RETURN                           R14 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Scale"]
        2 MULK                             R3 R2 K1 [4]
        3 MULK                             R4 R2 K2 [0.4]
        4 GETUPVAL                         R6 0
        5 MUL                              R5 R2 R6
        6 GETTABLEKS                       R8 R0 K4 ["Outset"]
        8 ORK                              R7 R8 K3 [0]
        9 MUL                              R6 R3 R7
       10 ADD                              R5 R5 R6
       11 MULK                             R6 R2 K5 [0.2]
       12 MULK                             R7 R3 K6 [0.25]
       13 MULK                             R8 R4 K7 [3]
       14 ADD                              R9 R5 R3
       15 GETTABLEKS                       R10 R0 K8 ["AlwaysOnTop"]
       17 JUMPIF                           R10 ; [+57]
       18 GETTABLEKS                       R11 R0 K9 ["Axis"]
       20 LOADN                            R13 0
       21 LOADN                            R14 0
       22 ADD                              R17 R5 R3
       23 ADD                              R16 R17 R6
       24 MINUS                            R15 R16
       25 FASTCALL                         VECTOR ; [+2]
       26 GETIMPORT                        R12 K12 [Vector3.new]
       28 CALL                             R12 3 1
       29 MUL                              R10 R11 R12
       30 GETUPVAL                         R12 1
       31 GETTABLEKS                       R11 R12 K13 ["CurrentCamera"]
       33 MOVE                             R13 R10
       34 NAMECALL                         R11 R11 K14 ["WorldToScreenPoint"]
       36 CALL                             R11 2 2
       37 GETUPVAL                         R14 1
       38 GETTABLEKS                       R13 R14 K13 ["CurrentCamera"]
       40 GETTABLEKS                       R15 R1 K15 ["Origin"]
       42 NAMECALL                         R13 R13 K14 ["WorldToScreenPoint"]
       44 CALL                             R13 2 1
       45 GETTABLEKS                       R14 R13 K16 ["X"]
       47 GETTABLEKS                       R16 R11 K16 ["X"]
       49 SUBK                             R15 R16 K7 [3]
       50 JUMPIFNOTLT                      R15 R14 ; [+24]
       52 GETTABLEKS                       R14 R13 K17 ["Y"]
       54 GETTABLEKS                       R16 R11 K17 ["Y"]
       56 SUBK                             R15 R16 K7 [3]
       57 JUMPIFNOTLT                      R15 R14 ; [+17]
       59 GETTABLEKS                       R14 R13 K16 ["X"]
       61 GETTABLEKS                       R16 R11 K16 ["X"]
       63 ADDK                             R15 R16 K7 [3]
       64 JUMPIFNOTLT                      R14 R15 ; [+10]
       66 GETTABLEKS                       R14 R13 K17 ["Y"]
       68 GETTABLEKS                       R16 R11 K17 ["Y"]
       70 ADDK                             R15 R16 K7 [3]
       71 JUMPIFNOTLT                      R14 R15 ; [+3]
       73 LOADN                            R14 0
       74 RETURN                           R14 1
       75 GETUPVAL                         R11 2
       76 GETTABLEKS                       R10 R11 K18 ["intersectRayRay"]
       78 GETTABLEKS                       R12 R0 K9 ["Axis"]
       80 GETTABLEKS                       R11 R12 K19 ["Position"]
       82 GETTABLEKS                       R13 R0 K9 ["Axis"]
       84 GETTABLEKS                       R12 R13 K20 ["LookVector"]
       86 GETTABLEKS                       R13 R1 K15 ["Origin"]
       88 GETTABLEKS                       R15 R1 K21 ["Direction"]
       90 GETTABLEKS                       R14 R15 K22 ["Unit"]
       92 CALL                             R10 4 2
       93 JUMPIF                           R10 ; [+2]
       94 LOADNIL                          R12
       95 RETURN                           R12 1
       96 GETUPVAL                         R13 2
       97 GETTABLEKS                       R12 R13 K18 ["intersectRayRay"]
       99 GETTABLEKS                       R13 R1 K15 ["Origin"]
      101 GETTABLEKS                       R15 R1 K21 ["Direction"]
      103 GETTABLEKS                       R14 R15 K22 ["Unit"]
      105 GETTABLEKS                       R16 R0 K9 ["Axis"]
      107 GETTABLEKS                       R15 R16 K19 ["Position"]
      109 GETTABLEKS                       R17 R0 K9 ["Axis"]
      111 GETTABLEKS                       R16 R17 K20 ["LookVector"]
      113 CALL                             R12 4 2
      114 GETTABLEKS                       R18 R0 K9 ["Axis"]
      116 GETTABLEKS                       R17 R18 K19 ["Position"]
      118 GETTABLEKS                       R20 R0 K9 ["Axis"]
      120 GETTABLEKS                       R19 R20 K20 ["LookVector"]
      122 MUL                              R18 R19 R11
      123 ADD                              R16 R17 R18
      124 GETTABLEKS                       R18 R1 K15 ["Origin"]
      126 GETTABLEKS                       R21 R1 K21 ["Direction"]
      128 GETTABLEKS                       R20 R21 K22 ["Unit"]
      130 MUL                              R19 R20 R13
      131 ADD                              R17 R18 R19
      132 SUB                              R15 R16 R17
      133 GETTABLEKS                       R14 R15 K23 ["Magnitude"]
      135 JUMPIFNOTLT                      R14 R4 ; [+6]
      137 JUMPIFNOTLT                      R5 R11 ; [+4]
      139 JUMPIFNOTLT                      R11 R9 ; [+2]
      141 RETURN                           R13 1
      142 JUMPIFNOTLT                      R14 R8 ; [+7]
      144 JUMPIFNOTLT                      R9 R11 ; [+5]
      146 ADD                              R15 R9 R7
      147 JUMPIFNOTLT                      R11 R15 ; [+2]
      149 RETURN                           R13 1
      150 LOADNIL                          R15
      151 RETURN                           R15 1

PROTO_3:
        0 MULK                             R2 R0 K0 [4]
        1 GETUPVAL                         R4 0
        2 MUL                              R3 R0 R4
        3 ORK                              R5 R1 K1 [0]
        4 MUL                              R4 R2 R5
        5 ADD                              R3 R3 R4
        6 MULK                             R4 R2 K2 [0.25]
        7 MOVE                             R5 R3
        8 ADD                              R6 R2 R4
        9 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["CoreGui"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R4 K6 [script]
       15 GETTABLEKS                       R3 R4 K7 ["Parent"]
       17 GETTABLEKS                       R2 R3 K7 ["Parent"]
       19 GETTABLEKS                       R4 R2 K7 ["Parent"]
       21 GETTABLEKS                       R3 R4 K7 ["Parent"]
       23 GETIMPORT                        R4 K9 [require]
       25 GETTABLEKS                       R6 R2 K10 ["Utility"]
       27 GETTABLEKS                       R5 R6 K11 ["Math"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K9 [require]
       32 GETTABLEKS                       R7 R3 K12 ["Packages"]
       34 GETTABLEKS                       R6 R7 K13 ["Roact"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K17 [Enum.AdornCullingMode.Never]
       39 GETIMPORT                        R7 K9 [require]
       41 GETTABLEKS                       R9 R2 K18 ["Flags"]
       43 GETTABLEKS                       R8 R9 K19 ["getFFlagDraggerImprovements"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K9 [require]
       48 GETTABLEKS                       R10 R2 K18 ["Flags"]
       50 GETTABLEKS                       R9 R10 K20 ["getFFlagNextGenDraggers"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R9 R5 K21 ["PureComponent"]
       55 LOADK                            R11 K22 ["MoveHandleView"]
       56 NAMECALL                         R9 R9 K23 ["extend"]
       58 CALL                             R9 2 1
       59 MOVE                             R11 R8
       60 CALL                             R11 0 1
       61 JUMPIFNOT                        R11 ; [+2]
       62 LOADK                            R10 K24 [0.7]
       63 JUMP                             ; [+1]
       64 LOADK                            R10 K25 [0.6]
       65 MOVE                             R12 R7
       66 CALL                             R12 0 1
       67 JUMPIFNOT                        R12 ; [+2]
       68 LOADK                            R11 K26 [0.4]
       69 JUMP                             ; [+1]
       70 LOADK                            R11 K27 [0.34]
       71 MOVE                             R13 R8
       72 CALL                             R13 0 1
       73 JUMPIFNOT                        R13 ; [+2]
       74 LOADK                            R12 K28 [1.3]
       75 JUMP                             ; [+1]
       76 LOADK                            R12 K29 [1.5]
       77 DUPCLOSURE                       R13 K30 [PROTO_0]
       78 SETTABLEKS                       R13 R9 K31 ["init"]
       80 DUPCLOSURE                       R13 K32 [PROTO_1]
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R1
       90 SETTABLEKS                       R13 R9 K33 ["render"]
       92 DUPCLOSURE                       R13 K34 [PROTO_2]
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R0
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R13 R9 K35 ["hitTest"]
       98 DUPCLOSURE                       R13 K36 [PROTO_3]
       99 CAPTURE                          VAL R10
      100 SETTABLEKS                       R13 R9 K37 ["getHandleDimensionForScale"]
      102 RETURN                           R9 1
