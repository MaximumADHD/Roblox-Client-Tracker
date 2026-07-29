PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Scale"]
        4 MULK                             R2 R1 K2 [4]
        5 MULK                             R3 R1 K3 [0.1]
        6 GETUPVAL                         R5 0
        7 MUL                              R4 R1 R5
        8 GETTABLEKS                       R7 R0 K0 ["props"]
       10 GETTABLEKS                       R7 R7 K5 ["Outset"]
       12 ORK                              R6 R7 K4 [0]
       13 MUL                              R5 R2 R6
       14 ADD                              R4 R4 R5
       15 MULK                             R5 R1 K6 [0.2]
       16 MULK                             R6 R2 K7 [0.25]
       17 MULK                             R7 R3 K8 [3]
       18 GETUPVAL                         R8 1
       19 CALL                             R8 0 1
       20 JUMPIFNOT                        R8 ; [+17]
       21 GETTABLEKS                       R8 R0 K0 ["props"]
       23 GETTABLEKS                       R8 R8 K9 ["Thin"]
       25 JUMPIFNOT                        R8 ; [+2]
       26 MULK                             R3 R3 K10 [0.4]
       27 MULK                             R7 R7 K10 [0.4]
       28 GETTABLEKS                       R8 R0 K0 ["props"]
       30 GETTABLEKS                       R8 R8 K11 ["Hovered"]
       32 JUMPIFNOT                        R8 ; [+20]
       33 GETUPVAL                         R8 2
       34 MUL                              R3 R3 R8
       35 GETUPVAL                         R8 2
       36 MUL                              R7 R7 R8
       37 JUMP                             ; [+15]
       38 GETTABLEKS                       R8 R0 K0 ["props"]
       40 GETTABLEKS                       R8 R8 K9 ["Thin"]
       42 JUMPIFNOT                        R8 ; [+1]
       43 MULK                             R3 R3 K10 [0.4]
       44 GETTABLEKS                       R8 R0 K0 ["props"]
       46 GETTABLEKS                       R8 R8 K11 ["Hovered"]
       48 JUMPIFNOT                        R8 ; [+4]
       49 GETUPVAL                         R8 2
       50 MUL                              R3 R3 R8
       51 GETUPVAL                         R8 2
       52 MUL                              R6 R6 R8
       53 GETTABLEKS                       R9 R0 K0 ["props"]
       55 GETTABLEKS                       R9 R9 K12 ["Axis"]
       57 GETIMPORT                        R10 K15 [CFrame.new]
       59 LOADN                            R11 0
       60 LOADN                            R12 0
       61 ADD                              R14 R4 R2
       62 MINUS                            R13 R14
       63 CALL                             R10 3 1
       64 MUL                              R8 R9 R10
       65 LOADN                            R11 0
       66 LOADN                            R12 0
       67 MINUS                            R13 R5
       68 FASTCALL                         VECTOR ; [+2]
       69 GETIMPORT                        R10 K17 [Vector3.new]
       71 CALL                             R10 3 1
       72 MUL                              R9 R8 R10
       73 GETUPVAL                         R10 3
       74 GETTABLEKS                       R10 R10 K18 ["CurrentCamera"]
       76 MOVE                             R12 R9
       77 NAMECALL                         R10 R10 K19 ["WorldToScreenPoint"]
       79 CALL                             R10 2 2
       80 NEWTABLE                         R12 4 0
       82 GETTABLEKS                       R13 R0 K0 ["props"]
       84 GETTABLEKS                       R13 R13 K20 ["Tail"]
       86 JUMPIFNOT                        R13 ; [+60]
       87 ADD                              R2 R2 R4
       88 LOADN                            R4 0
       89 GETTABLEKS                       R16 R0 K0 ["props"]
       91 GETTABLEKS                       R16 R16 K21 ["TailScale"]
       93 FASTCALL2                        MATH_MIN R1 R16 ; [+4]
       95 MOVE                             R15 R1
       96 GETIMPORT                        R14 K24 [math.min]
       98 CALL                             R14 2 1
       99 MULK                             R16 R14 K3 [0.1]
      100 MULK                             R15 R16 K25 [0.65]
      101 GETUPVAL                         R17 1
      102 CALL                             R17 0 1
      103 JUMPIFNOT                        R17 ; [+2]
      104 LOADK                            R16 K20 ["Tail"]
      105 JUMP                             ; [+1]
      106 LOADK                            R16 K26 ["ExtraShaft"]
      107 GETUPVAL                         R17 4
      108 GETTABLEKS                       R17 R17 K27 ["createElement"]
      110 LOADK                            R18 K28 ["CylinderHandleAdornment"]
      111 DUPTABLE                         R19 K39 [{["Adornee"], ["ZIndex"] = 0, ["Radius"], ["Height"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = True, ["Transparency"] = 0.5, ["AdornCullingMode"]}]
      112 GETUPVAL                         R20 3
      113 GETTABLEKS                       R20 R20 K40 ["Terrain"]
      115 SETTABLEKS                       R20 R19 K29 ["Adornee"]
      117 SETTABLEKS                       R15 R19 K31 ["Radius"]
      119 SETTABLEKS                       R13 R19 K32 ["Height"]
      121 GETTABLEKS                       R21 R0 K0 ["props"]
      123 GETTABLEKS                       R21 R21 K12 ["Axis"]
      125 GETIMPORT                        R22 K15 [CFrame.new]
      127 LOADN                            R23 0
      128 LOADN                            R24 0
      129 LOADN                            R26 0
      130 MULK                             R27 R13 K37 [0.5]
      131 ADD                              R25 R26 R27
      132 CALL                             R22 3 1
      133 MUL                              R20 R21 R22
      134 SETTABLEKS                       R20 R19 K13 ["CFrame"]
      136 GETTABLEKS                       R20 R0 K0 ["props"]
      138 GETTABLEKS                       R20 R20 K41 ["Color"]
      140 SETTABLEKS                       R20 R19 K33 ["Color3"]
      142 GETUPVAL                         R20 5
      143 SETTABLEKS                       R20 R19 K38 ["AdornCullingMode"]
      145 CALL                             R17 2 1
      146 SETTABLE                         R17 R12 R16
      147 GETUPVAL                         R14 1
      148 CALL                             R14 0 1
      149 JUMPIF                           R14 ; [+81]
      150 GETTABLEKS                       R14 R0 K0 ["props"]
      152 GETTABLEKS                       R14 R14 K11 ["Hovered"]
      154 JUMPIF                           R14 ; [+76]
      155 GETUPVAL                         R14 4
      156 GETTABLEKS                       R14 R14 K27 ["createElement"]
      158 LOADK                            R15 K28 ["CylinderHandleAdornment"]
      159 DUPTABLE                         R16 K43 [{["Adornee"], ["ZIndex"] = 0, ["Radius"], ["Height"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = False, ["AdornCullingMode"]}]
      160 GETUPVAL                         R17 3
      161 GETTABLEKS                       R17 R17 K40 ["Terrain"]
      163 SETTABLEKS                       R17 R16 K29 ["Adornee"]
      165 SETTABLEKS                       R3 R16 K31 ["Radius"]
      167 SETTABLEKS                       R2 R16 K32 ["Height"]
      169 GETTABLEKS                       R18 R0 K0 ["props"]
      171 GETTABLEKS                       R18 R18 K12 ["Axis"]
      173 GETIMPORT                        R19 K15 [CFrame.new]
      175 LOADN                            R20 0
      176 LOADN                            R21 0
      177 MULK                             R24 R2 K37 [0.5]
      178 ADD                              R23 R4 R24
      179 MINUS                            R22 R23
      180 CALL                             R19 3 1
      181 MUL                              R17 R18 R19
      182 SETTABLEKS                       R17 R16 K13 ["CFrame"]
      184 GETTABLEKS                       R17 R0 K0 ["props"]
      186 GETTABLEKS                       R17 R17 K41 ["Color"]
      188 SETTABLEKS                       R17 R16 K33 ["Color3"]
      190 GETUPVAL                         R17 5
      191 SETTABLEKS                       R17 R16 K38 ["AdornCullingMode"]
      193 CALL                             R14 2 1
      194 SETTABLEKS                       R14 R12 K44 ["Shaft"]
      196 GETTABLEKS                       R14 R0 K0 ["props"]
      198 GETTABLEKS                       R14 R14 K9 ["Thin"]
      200 JUMPIF                           R14 ; [+30]
      201 GETUPVAL                         R14 4
      202 GETTABLEKS                       R14 R14 K27 ["createElement"]
      204 LOADK                            R15 K45 ["ConeHandleAdornment"]
      205 DUPTABLE                         R16 K43 [{["Adornee"], ["ZIndex"] = 0, ["Radius"], ["Height"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = False, ["AdornCullingMode"]}]
      206 GETUPVAL                         R17 3
      207 GETTABLEKS                       R17 R17 K40 ["Terrain"]
      209 SETTABLEKS                       R17 R16 K29 ["Adornee"]
      211 LOADN                            R18 3
      212 MUL                              R17 R18 R3
      213 SETTABLEKS                       R17 R16 K31 ["Radius"]
      215 SETTABLEKS                       R6 R16 K32 ["Height"]
      217 SETTABLEKS                       R8 R16 K13 ["CFrame"]
      219 GETTABLEKS                       R17 R0 K0 ["props"]
      221 GETTABLEKS                       R17 R17 K41 ["Color"]
      223 SETTABLEKS                       R17 R16 K33 ["Color3"]
      225 GETUPVAL                         R17 5
      226 SETTABLEKS                       R17 R16 K38 ["AdornCullingMode"]
      228 CALL                             R14 2 1
      229 SETTABLEKS                       R14 R12 K46 ["Head"]
      231 GETTABLEKS                       R15 R0 K0 ["props"]
      233 GETTABLEKS                       R15 R15 K11 ["Hovered"]
      235 JUMPIFNOT                        R15 ; [+2]
      236 LOADN                            R14 0
      237 JUMP                             ; [+5]
      238 GETTABLEKS                       R15 R0 K0 ["props"]
      240 GETTABLEKS                       R15 R15 K36 ["Transparency"]
      242 ORK                              R14 R15 K4 [0]
      243 GETTABLEKS                       R15 R0 K0 ["props"]
      245 GETTABLEKS                       R15 R15 K34 ["AlwaysOnTop"]
      247 JUMPIFNOT                        R15 ; [+117]
      248 GETUPVAL                         R16 1
      249 CALL                             R16 0 1
      250 JUMPIFNOT                        R16 ; [+2]
      251 LOADK                            R15 K44 ["Shaft"]
      252 JUMP                             ; [+1]
      253 LOADK                            R15 K47 ["DimmedShaft"]
      254 GETUPVAL                         R16 4
      255 GETTABLEKS                       R16 R16 K27 ["createElement"]
      257 LOADK                            R17 K28 ["CylinderHandleAdornment"]
      258 DUPTABLE                         R18 K48 [{["Adornee"], ["ZIndex"] = 0, ["Radius"], ["Height"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = True, ["Transparency"], ["AdornCullingMode"]}]
      259 GETUPVAL                         R19 3
      260 GETTABLEKS                       R19 R19 K40 ["Terrain"]
      262 SETTABLEKS                       R19 R18 K29 ["Adornee"]
      264 SETTABLEKS                       R3 R18 K31 ["Radius"]
      266 SETTABLEKS                       R2 R18 K32 ["Height"]
      268 GETTABLEKS                       R20 R0 K0 ["props"]
      270 GETTABLEKS                       R20 R20 K12 ["Axis"]
      272 GETIMPORT                        R21 K15 [CFrame.new]
      274 LOADN                            R22 0
      275 LOADN                            R23 0
      276 MULK                             R26 R2 K37 [0.5]
      277 ADD                              R25 R4 R26
      278 MINUS                            R24 R25
      279 CALL                             R21 3 1
      280 MUL                              R19 R20 R21
      281 SETTABLEKS                       R19 R18 K13 ["CFrame"]
      283 GETTABLEKS                       R19 R0 K0 ["props"]
      285 GETTABLEKS                       R19 R19 K41 ["Color"]
      287 SETTABLEKS                       R19 R18 K33 ["Color3"]
      289 GETUPVAL                         R20 1
      290 CALL                             R20 0 1
      291 JUMPIFNOT                        R20 ; [+2]
      292 MOVE                             R19 R14
      293 JUMP                             ; [+8]
      294 GETTABLEKS                       R20 R0 K0 ["props"]
      296 GETTABLEKS                       R20 R20 K11 ["Hovered"]
      298 JUMPIFNOT                        R20 ; [+2]
      299 LOADN                            R19 0
      300 JUMP                             ; [+1]
      301 LOADK                            R19 K49 [0.45]
      302 SETTABLEKS                       R19 R18 K36 ["Transparency"]
      304 GETUPVAL                         R19 5
      305 SETTABLEKS                       R19 R18 K38 ["AdornCullingMode"]
      307 CALL                             R16 2 1
      308 SETTABLE                         R16 R12 R15
      309 GETTABLEKS                       R16 R0 K0 ["props"]
      311 GETTABLEKS                       R16 R16 K9 ["Thin"]
      313 JUMPIF                           R16 ; [+119]
      314 GETUPVAL                         R17 1
      315 CALL                             R17 0 1
      316 JUMPIFNOT                        R17 ; [+2]
      317 LOADK                            R16 K46 ["Head"]
      318 JUMP                             ; [+1]
      319 LOADK                            R16 K50 ["DimmedHead"]
      320 GETUPVAL                         R17 4
      321 GETTABLEKS                       R17 R17 K27 ["createElement"]
      323 LOADK                            R18 K45 ["ConeHandleAdornment"]
      324 DUPTABLE                         R19 K48 [{["Adornee"], ["ZIndex"] = 0, ["Radius"], ["Height"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = True, ["Transparency"], ["AdornCullingMode"]}]
      325 GETUPVAL                         R20 3
      326 GETTABLEKS                       R20 R20 K40 ["Terrain"]
      328 SETTABLEKS                       R20 R19 K29 ["Adornee"]
      330 LOADN                            R21 3
      331 MUL                              R20 R21 R3
      332 SETTABLEKS                       R20 R19 K31 ["Radius"]
      334 SETTABLEKS                       R6 R19 K32 ["Height"]
      336 SETTABLEKS                       R8 R19 K13 ["CFrame"]
      338 GETTABLEKS                       R20 R0 K0 ["props"]
      340 GETTABLEKS                       R20 R20 K41 ["Color"]
      342 SETTABLEKS                       R20 R19 K33 ["Color3"]
      344 GETUPVAL                         R21 1
      345 CALL                             R21 0 1
      346 JUMPIFNOT                        R21 ; [+2]
      347 MOVE                             R20 R14
      348 JUMP                             ; [+8]
      349 GETTABLEKS                       R21 R0 K0 ["props"]
      351 GETTABLEKS                       R21 R21 K11 ["Hovered"]
      353 JUMPIFNOT                        R21 ; [+2]
      354 LOADN                            R20 0
      355 JUMP                             ; [+1]
      356 LOADK                            R20 K49 [0.45]
      357 SETTABLEKS                       R20 R19 K36 ["Transparency"]
      359 GETUPVAL                         R20 5
      360 SETTABLEKS                       R20 R19 K38 ["AdornCullingMode"]
      362 CALL                             R17 2 1
      363 SETTABLE                         R17 R12 R16
      364 JUMP                             ; [+68]
      365 GETTABLEKS                       R15 R0 K0 ["props"]
      367 GETTABLEKS                       R15 R15 K9 ["Thin"]
      369 JUMPIF                           R15 ; [+63]
      370 GETUPVAL                         R15 4
      371 GETTABLEKS                       R15 R15 K27 ["createElement"]
      373 GETUPVAL                         R16 4
      374 GETTABLEKS                       R16 R16 K51 ["Portal"]
      376 DUPTABLE                         R17 K53 [{"target"}]
      377 GETUPVAL                         R18 6
      378 SETTABLEKS                       R18 R17 K52 ["target"]
      380 DUPTABLE                         R18 K55 [{"MoveToolScreenspaceHandle"}]
      381 GETUPVAL                         R19 4
      382 GETTABLEKS                       R19 R19 K27 ["createElement"]
      384 LOADK                            R20 K56 ["ScreenGui"]
      385 NEWTABLE                         R21 0 0
      387 DUPTABLE                         R22 K58 [{"Frame"}]
      388 GETUPVAL                         R23 4
      389 GETTABLEKS                       R23 R23 K27 ["createElement"]
      391 LOADK                            R24 K57 ["Frame"]
      392 DUPTABLE                         R25 K63 [{["BorderSizePixel"] = 0, ["BackgroundColor3"], ["Position"], ["Size"], ["AdornCullingMode"]}]
      393 GETTABLEKS                       R26 R0 K0 ["props"]
      395 GETTABLEKS                       R26 R26 K41 ["Color"]
      397 SETTABLEKS                       R26 R25 K60 ["BackgroundColor3"]
      399 GETIMPORT                        R26 K65 [UDim2.new]
      401 LOADN                            R27 0
      402 GETTABLEKS                       R29 R10 K66 ["X"]
      404 SUBK                             R28 R29 K8 [3]
      405 LOADN                            R29 0
      406 GETTABLEKS                       R31 R10 K67 ["Y"]
      408 SUBK                             R30 R31 K8 [3]
      409 CALL                             R26 4 1
      410 SETTABLEKS                       R26 R25 K61 ["Position"]
      412 GETIMPORT                        R26 K65 [UDim2.new]
      414 LOADN                            R27 0
      415 LOADN                            R28 6
      416 LOADN                            R29 0
      417 LOADN                            R30 6
      418 CALL                             R26 4 1
      419 SETTABLEKS                       R26 R25 K62 ["Size"]
      421 GETUPVAL                         R26 5
      422 SETTABLEKS                       R26 R25 K38 ["AdornCullingMode"]
      424 CALL                             R23 2 1
      425 SETTABLEKS                       R23 R22 K57 ["Frame"]
      427 CALL                             R19 3 1
      428 SETTABLEKS                       R19 R18 K54 ["MoveToolScreenspaceHandle"]
      430 CALL                             R15 3 1
      431 SETTABLEKS                       R15 R12 K68 ["ScreenBox"]
      433 GETUPVAL                         R15 4
      434 GETTABLEKS                       R15 R15 K27 ["createElement"]
      436 LOADK                            R16 K69 ["Folder"]
      437 NEWTABLE                         R17 0 0
      439 MOVE                             R18 R12
      440 CALL                             R15 3 -1
      441 RETURN                           R15 -1

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
       30 GETUPVAL                         R11 1
       31 GETTABLEKS                       R11 R11 K13 ["CurrentCamera"]
       33 MOVE                             R13 R10
       34 NAMECALL                         R11 R11 K14 ["WorldToScreenPoint"]
       36 CALL                             R11 2 2
       37 GETUPVAL                         R13 1
       38 GETTABLEKS                       R13 R13 K13 ["CurrentCamera"]
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
       75 GETUPVAL                         R10 2
       76 GETTABLEKS                       R10 R10 K18 ["intersectRayRay"]
       78 GETTABLEKS                       R11 R0 K9 ["Axis"]
       80 GETTABLEKS                       R11 R11 K19 ["Position"]
       82 GETTABLEKS                       R12 R0 K9 ["Axis"]
       84 GETTABLEKS                       R12 R12 K20 ["LookVector"]
       86 GETTABLEKS                       R13 R1 K15 ["Origin"]
       88 GETTABLEKS                       R14 R1 K21 ["Direction"]
       90 GETTABLEKS                       R14 R14 K22 ["Unit"]
       92 CALL                             R10 4 2
       93 JUMPIF                           R10 ; [+2]
       94 LOADNIL                          R12
       95 RETURN                           R12 1
       96 GETUPVAL                         R12 2
       97 GETTABLEKS                       R12 R12 K18 ["intersectRayRay"]
       99 GETTABLEKS                       R13 R1 K15 ["Origin"]
      101 GETTABLEKS                       R14 R1 K21 ["Direction"]
      103 GETTABLEKS                       R14 R14 K22 ["Unit"]
      105 GETTABLEKS                       R15 R0 K9 ["Axis"]
      107 GETTABLEKS                       R15 R15 K19 ["Position"]
      109 GETTABLEKS                       R16 R0 K9 ["Axis"]
      111 GETTABLEKS                       R16 R16 K20 ["LookVector"]
      113 CALL                             R12 4 2
      114 GETTABLEKS                       R16 R0 K9 ["Axis"]
      116 GETTABLEKS                       R16 R16 K19 ["Position"]
      118 GETTABLEKS                       R18 R0 K9 ["Axis"]
      120 GETTABLEKS                       R18 R18 K20 ["LookVector"]
      122 MUL                              R17 R18 R11
      123 ADD                              R15 R16 R17
      124 GETTABLEKS                       R17 R1 K15 ["Origin"]
      126 GETTABLEKS                       R19 R1 K21 ["Direction"]
      128 GETTABLEKS                       R19 R19 K22 ["Unit"]
      130 MUL                              R18 R19 R13
      131 ADD                              R16 R17 R18
      132 SUB                              R14 R15 R16
      133 GETTABLEKS                       R14 R14 K23 ["Magnitude"]
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
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R3 R2 K7 ["Parent"]
       21 GETTABLEKS                       R3 R3 K7 ["Parent"]
       23 GETIMPORT                        R4 K9 [require]
       25 GETTABLEKS                       R5 R2 K10 ["Utility"]
       27 GETTABLEKS                       R5 R5 K11 ["Math"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K9 [require]
       32 GETTABLEKS                       R6 R3 K12 ["Packages"]
       34 GETTABLEKS                       R6 R6 K13 ["Roact"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K17 [Enum.AdornCullingMode.Never]
       39 GETIMPORT                        R7 K9 [require]
       41 GETTABLEKS                       R8 R2 K18 ["Flags"]
       43 GETTABLEKS                       R8 R8 K19 ["getFFlagNextGenDraggers"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R5 K20 ["PureComponent"]
       48 LOADK                            R10 K21 ["MoveHandleView"]
       49 NAMECALL                         R8 R8 K22 ["extend"]
       51 CALL                             R8 2 1
       52 MOVE                             R10 R7
       53 CALL                             R10 0 1
       54 JUMPIFNOT                        R10 ; [+2]
       55 LOADK                            R9 K23 [0.7]
       56 JUMP                             ; [+1]
       57 LOADK                            R9 K24 [0.6]
       58 MOVE                             R11 R7
       59 CALL                             R11 0 1
       60 JUMPIFNOT                        R11 ; [+2]
       61 LOADK                            R10 K25 [1.3]
       62 JUMP                             ; [+1]
       63 LOADK                            R10 K26 [1.5]
       64 DUPCLOSURE                       R11 K27 [PROTO_0]
       65 SETTABLEKS                       R11 R8 K28 ["init"]
       67 DUPCLOSURE                       R11 K29 [PROTO_1]
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R1
       75 SETTABLEKS                       R11 R8 K30 ["render"]
       77 DUPCLOSURE                       R11 K31 [PROTO_2]
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R11 R8 K32 ["hitTest"]
       83 DUPCLOSURE                       R11 K33 [PROTO_3]
       84 CAPTURE                          VAL R9
       85 SETTABLEKS                       R11 R8 K34 ["getHandleDimensionForScale"]
       87 RETURN                           R8 1
