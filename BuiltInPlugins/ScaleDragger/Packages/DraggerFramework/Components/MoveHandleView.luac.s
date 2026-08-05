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
       73 GETUPVAL                         R11 3
       74 GETTABLEKS                       R11 R11 K18 ["CurrentCamera"]
       76 FASTCALL2K                       ASSERT R11 K19 ; [+4]
       78 LOADK                            R12 K19 ["Missing camera"]
       79 GETIMPORT                        R10 K21 [assert]
       81 CALL                             R10 2 1
       82 MOVE                             R12 R9
       83 NAMECALL                         R10 R10 K22 ["WorldToScreenPoint"]
       85 CALL                             R10 2 2
       86 NEWTABLE                         R12 4 0
       88 GETTABLEKS                       R13 R0 K0 ["props"]
       90 GETTABLEKS                       R13 R13 K23 ["Tail"]
       92 JUMPIFNOT                        R13 ; [+60]
       93 ADD                              R2 R2 R4
       94 LOADN                            R4 0
       95 GETTABLEKS                       R16 R0 K0 ["props"]
       97 GETTABLEKS                       R16 R16 K24 ["TailScale"]
       99 FASTCALL2                        MATH_MIN R1 R16 ; [+4]
      101 MOVE                             R15 R1
      102 GETIMPORT                        R14 K27 [math.min]
      104 CALL                             R14 2 1
      105 MULK                             R16 R14 K3 [0.1]
      106 MULK                             R15 R16 K28 [0.65]
      107 GETUPVAL                         R17 1
      108 CALL                             R17 0 1
      109 JUMPIFNOT                        R17 ; [+2]
      110 LOADK                            R16 K23 ["Tail"]
      111 JUMP                             ; [+1]
      112 LOADK                            R16 K29 ["ExtraShaft"]
      113 GETUPVAL                         R17 4
      114 GETTABLEKS                       R17 R17 K30 ["createElement"]
      116 LOADK                            R18 K31 ["CylinderHandleAdornment"]
      117 DUPTABLE                         R19 K42 [{["Adornee"], ["ZIndex"] = 0, ["Radius"], ["Height"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = True, ["Transparency"] = 0.5, ["AdornCullingMode"]}]
      118 GETUPVAL                         R20 3
      119 GETTABLEKS                       R20 R20 K43 ["Terrain"]
      121 SETTABLEKS                       R20 R19 K32 ["Adornee"]
      123 SETTABLEKS                       R15 R19 K34 ["Radius"]
      125 SETTABLEKS                       R13 R19 K35 ["Height"]
      127 GETTABLEKS                       R21 R0 K0 ["props"]
      129 GETTABLEKS                       R21 R21 K12 ["Axis"]
      131 GETIMPORT                        R22 K15 [CFrame.new]
      133 LOADN                            R23 0
      134 LOADN                            R24 0
      135 LOADN                            R26 0
      136 MULK                             R27 R13 K40 [0.5]
      137 ADD                              R25 R26 R27
      138 CALL                             R22 3 1
      139 MUL                              R20 R21 R22
      140 SETTABLEKS                       R20 R19 K13 ["CFrame"]
      142 GETTABLEKS                       R20 R0 K0 ["props"]
      144 GETTABLEKS                       R20 R20 K44 ["Color"]
      146 SETTABLEKS                       R20 R19 K36 ["Color3"]
      148 GETUPVAL                         R20 5
      149 SETTABLEKS                       R20 R19 K41 ["AdornCullingMode"]
      151 CALL                             R17 2 1
      152 SETTABLE                         R17 R12 R16
      153 GETUPVAL                         R14 1
      154 CALL                             R14 0 1
      155 JUMPIF                           R14 ; [+81]
      156 GETTABLEKS                       R14 R0 K0 ["props"]
      158 GETTABLEKS                       R14 R14 K11 ["Hovered"]
      160 JUMPIF                           R14 ; [+76]
      161 GETUPVAL                         R14 4
      162 GETTABLEKS                       R14 R14 K30 ["createElement"]
      164 LOADK                            R15 K31 ["CylinderHandleAdornment"]
      165 DUPTABLE                         R16 K46 [{["Adornee"], ["ZIndex"] = 0, ["Radius"], ["Height"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = False, ["AdornCullingMode"]}]
      166 GETUPVAL                         R17 3
      167 GETTABLEKS                       R17 R17 K43 ["Terrain"]
      169 SETTABLEKS                       R17 R16 K32 ["Adornee"]
      171 SETTABLEKS                       R3 R16 K34 ["Radius"]
      173 SETTABLEKS                       R2 R16 K35 ["Height"]
      175 GETTABLEKS                       R18 R0 K0 ["props"]
      177 GETTABLEKS                       R18 R18 K12 ["Axis"]
      179 GETIMPORT                        R19 K15 [CFrame.new]
      181 LOADN                            R20 0
      182 LOADN                            R21 0
      183 MULK                             R24 R2 K40 [0.5]
      184 ADD                              R23 R4 R24
      185 MINUS                            R22 R23
      186 CALL                             R19 3 1
      187 MUL                              R17 R18 R19
      188 SETTABLEKS                       R17 R16 K13 ["CFrame"]
      190 GETTABLEKS                       R17 R0 K0 ["props"]
      192 GETTABLEKS                       R17 R17 K44 ["Color"]
      194 SETTABLEKS                       R17 R16 K36 ["Color3"]
      196 GETUPVAL                         R17 5
      197 SETTABLEKS                       R17 R16 K41 ["AdornCullingMode"]
      199 CALL                             R14 2 1
      200 SETTABLEKS                       R14 R12 K47 ["Shaft"]
      202 GETTABLEKS                       R14 R0 K0 ["props"]
      204 GETTABLEKS                       R14 R14 K9 ["Thin"]
      206 JUMPIF                           R14 ; [+30]
      207 GETUPVAL                         R14 4
      208 GETTABLEKS                       R14 R14 K30 ["createElement"]
      210 LOADK                            R15 K48 ["ConeHandleAdornment"]
      211 DUPTABLE                         R16 K46 [{["Adornee"], ["ZIndex"] = 0, ["Radius"], ["Height"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = False, ["AdornCullingMode"]}]
      212 GETUPVAL                         R17 3
      213 GETTABLEKS                       R17 R17 K43 ["Terrain"]
      215 SETTABLEKS                       R17 R16 K32 ["Adornee"]
      217 LOADN                            R18 3
      218 MUL                              R17 R18 R3
      219 SETTABLEKS                       R17 R16 K34 ["Radius"]
      221 SETTABLEKS                       R6 R16 K35 ["Height"]
      223 SETTABLEKS                       R8 R16 K13 ["CFrame"]
      225 GETTABLEKS                       R17 R0 K0 ["props"]
      227 GETTABLEKS                       R17 R17 K44 ["Color"]
      229 SETTABLEKS                       R17 R16 K36 ["Color3"]
      231 GETUPVAL                         R17 5
      232 SETTABLEKS                       R17 R16 K41 ["AdornCullingMode"]
      234 CALL                             R14 2 1
      235 SETTABLEKS                       R14 R12 K49 ["Head"]
      237 GETTABLEKS                       R15 R0 K0 ["props"]
      239 GETTABLEKS                       R15 R15 K11 ["Hovered"]
      241 JUMPIFNOT                        R15 ; [+2]
      242 LOADN                            R14 0
      243 JUMP                             ; [+5]
      244 GETTABLEKS                       R15 R0 K0 ["props"]
      246 GETTABLEKS                       R15 R15 K39 ["Transparency"]
      248 ORK                              R14 R15 K4 [0]
      249 GETTABLEKS                       R15 R0 K0 ["props"]
      251 GETTABLEKS                       R15 R15 K37 ["AlwaysOnTop"]
      253 JUMPIFNOT                        R15 ; [+117]
      254 GETUPVAL                         R16 1
      255 CALL                             R16 0 1
      256 JUMPIFNOT                        R16 ; [+2]
      257 LOADK                            R15 K47 ["Shaft"]
      258 JUMP                             ; [+1]
      259 LOADK                            R15 K50 ["DimmedShaft"]
      260 GETUPVAL                         R16 4
      261 GETTABLEKS                       R16 R16 K30 ["createElement"]
      263 LOADK                            R17 K31 ["CylinderHandleAdornment"]
      264 DUPTABLE                         R18 K51 [{["Adornee"], ["ZIndex"] = 0, ["Radius"], ["Height"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = True, ["Transparency"], ["AdornCullingMode"]}]
      265 GETUPVAL                         R19 3
      266 GETTABLEKS                       R19 R19 K43 ["Terrain"]
      268 SETTABLEKS                       R19 R18 K32 ["Adornee"]
      270 SETTABLEKS                       R3 R18 K34 ["Radius"]
      272 SETTABLEKS                       R2 R18 K35 ["Height"]
      274 GETTABLEKS                       R20 R0 K0 ["props"]
      276 GETTABLEKS                       R20 R20 K12 ["Axis"]
      278 GETIMPORT                        R21 K15 [CFrame.new]
      280 LOADN                            R22 0
      281 LOADN                            R23 0
      282 MULK                             R26 R2 K40 [0.5]
      283 ADD                              R25 R4 R26
      284 MINUS                            R24 R25
      285 CALL                             R21 3 1
      286 MUL                              R19 R20 R21
      287 SETTABLEKS                       R19 R18 K13 ["CFrame"]
      289 GETTABLEKS                       R19 R0 K0 ["props"]
      291 GETTABLEKS                       R19 R19 K44 ["Color"]
      293 SETTABLEKS                       R19 R18 K36 ["Color3"]
      295 GETUPVAL                         R20 1
      296 CALL                             R20 0 1
      297 JUMPIFNOT                        R20 ; [+2]
      298 MOVE                             R19 R14
      299 JUMP                             ; [+8]
      300 GETTABLEKS                       R20 R0 K0 ["props"]
      302 GETTABLEKS                       R20 R20 K11 ["Hovered"]
      304 JUMPIFNOT                        R20 ; [+2]
      305 LOADN                            R19 0
      306 JUMP                             ; [+1]
      307 LOADK                            R19 K52 [0.45]
      308 SETTABLEKS                       R19 R18 K39 ["Transparency"]
      310 GETUPVAL                         R19 5
      311 SETTABLEKS                       R19 R18 K41 ["AdornCullingMode"]
      313 CALL                             R16 2 1
      314 SETTABLE                         R16 R12 R15
      315 GETTABLEKS                       R16 R0 K0 ["props"]
      317 GETTABLEKS                       R16 R16 K9 ["Thin"]
      319 JUMPIF                           R16 ; [+115]
      320 GETUPVAL                         R17 1
      321 CALL                             R17 0 1
      322 JUMPIFNOT                        R17 ; [+2]
      323 LOADK                            R16 K49 ["Head"]
      324 JUMP                             ; [+1]
      325 LOADK                            R16 K53 ["DimmedHead"]
      326 GETUPVAL                         R17 4
      327 GETTABLEKS                       R17 R17 K30 ["createElement"]
      329 LOADK                            R18 K48 ["ConeHandleAdornment"]
      330 DUPTABLE                         R19 K51 [{["Adornee"], ["ZIndex"] = 0, ["Radius"], ["Height"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = True, ["Transparency"], ["AdornCullingMode"]}]
      331 GETUPVAL                         R20 3
      332 GETTABLEKS                       R20 R20 K43 ["Terrain"]
      334 SETTABLEKS                       R20 R19 K32 ["Adornee"]
      336 LOADN                            R21 3
      337 MUL                              R20 R21 R3
      338 SETTABLEKS                       R20 R19 K34 ["Radius"]
      340 SETTABLEKS                       R6 R19 K35 ["Height"]
      342 SETTABLEKS                       R8 R19 K13 ["CFrame"]
      344 GETTABLEKS                       R20 R0 K0 ["props"]
      346 GETTABLEKS                       R20 R20 K44 ["Color"]
      348 SETTABLEKS                       R20 R19 K36 ["Color3"]
      350 GETUPVAL                         R21 1
      351 CALL                             R21 0 1
      352 JUMPIFNOT                        R21 ; [+2]
      353 MOVE                             R20 R14
      354 JUMP                             ; [+8]
      355 GETTABLEKS                       R21 R0 K0 ["props"]
      357 GETTABLEKS                       R21 R21 K11 ["Hovered"]
      359 JUMPIFNOT                        R21 ; [+2]
      360 LOADN                            R20 0
      361 JUMP                             ; [+1]
      362 LOADK                            R20 K52 [0.45]
      363 SETTABLEKS                       R20 R19 K39 ["Transparency"]
      365 GETUPVAL                         R20 5
      366 SETTABLEKS                       R20 R19 K41 ["AdornCullingMode"]
      368 CALL                             R17 2 1
      369 SETTABLE                         R17 R12 R16
      370 JUMP                             ; [+64]
      371 GETTABLEKS                       R15 R0 K0 ["props"]
      373 GETTABLEKS                       R15 R15 K9 ["Thin"]
      375 JUMPIF                           R15 ; [+59]
      376 GETUPVAL                         R15 4
      377 GETTABLEKS                       R15 R15 K30 ["createElement"]
      379 GETUPVAL                         R16 4
      380 GETTABLEKS                       R16 R16 K54 ["Portal"]
      382 DUPTABLE                         R17 K56 [{"target"}]
      383 GETUPVAL                         R18 6
      384 SETTABLEKS                       R18 R17 K55 ["target"]
      386 DUPTABLE                         R18 K58 [{"MoveToolScreenspaceHandle"}]
      387 GETUPVAL                         R19 4
      388 GETTABLEKS                       R19 R19 K30 ["createElement"]
      390 LOADK                            R20 K59 ["ScreenGui"]
      391 NEWTABLE                         R21 0 0
      393 DUPTABLE                         R22 K61 [{"Frame"}]
      394 GETUPVAL                         R23 4
      395 GETTABLEKS                       R23 R23 K30 ["createElement"]
      397 LOADK                            R24 K60 ["Frame"]
      398 DUPTABLE                         R25 K66 [{["BorderSizePixel"] = 0, ["BackgroundColor3"], ["Position"], ["Size"], ["AdornCullingMode"]}]
      399 GETTABLEKS                       R26 R0 K0 ["props"]
      401 GETTABLEKS                       R26 R26 K44 ["Color"]
      403 SETTABLEKS                       R26 R25 K63 ["BackgroundColor3"]
      405 GETIMPORT                        R26 K69 [UDim2.fromOffset]
      407 GETTABLEKS                       R28 R10 K70 ["X"]
      409 SUBK                             R27 R28 K8 [3]
      410 GETTABLEKS                       R29 R10 K71 ["Y"]
      412 SUBK                             R28 R29 K8 [3]
      413 CALL                             R26 2 1
      414 SETTABLEKS                       R26 R25 K64 ["Position"]
      416 GETIMPORT                        R26 K69 [UDim2.fromOffset]
      418 LOADN                            R27 6
      419 LOADN                            R28 6
      420 CALL                             R26 2 1
      421 SETTABLEKS                       R26 R25 K65 ["Size"]
      423 GETUPVAL                         R26 5
      424 SETTABLEKS                       R26 R25 K41 ["AdornCullingMode"]
      426 CALL                             R23 2 1
      427 SETTABLEKS                       R23 R22 K60 ["Frame"]
      429 CALL                             R19 3 1
      430 SETTABLEKS                       R19 R18 K57 ["MoveToolScreenspaceHandle"]
      432 CALL                             R15 3 1
      433 SETTABLEKS                       R15 R12 K72 ["ScreenBox"]
      435 GETUPVAL                         R15 4
      436 GETTABLEKS                       R15 R15 K30 ["createElement"]
      438 LOADK                            R16 K73 ["Folder"]
      439 NEWTABLE                         R17 0 0
      441 MOVE                             R18 R12
      442 CALL                             R15 3 -1
      443 RETURN                           R15 -1

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
       17 JUMPIF                           R10 ; [+69]
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
       31 GETTABLEKS                       R12 R12 K13 ["CurrentCamera"]
       33 FASTCALL2K                       ASSERT R12 K14 ; [+4]
       35 LOADK                            R13 K14 ["Missing camera"]
       36 GETIMPORT                        R11 K16 [assert]
       38 CALL                             R11 2 1
       39 MOVE                             R13 R10
       40 NAMECALL                         R11 R11 K17 ["WorldToScreenPoint"]
       42 CALL                             R11 2 2
       43 GETUPVAL                         R14 1
       44 GETTABLEKS                       R14 R14 K13 ["CurrentCamera"]
       46 FASTCALL2K                       ASSERT R14 K14 ; [+4]
       48 LOADK                            R15 K14 ["Missing camera"]
       49 GETIMPORT                        R13 K16 [assert]
       51 CALL                             R13 2 1
       52 GETTABLEKS                       R15 R1 K18 ["Origin"]
       54 NAMECALL                         R13 R13 K17 ["WorldToScreenPoint"]
       56 CALL                             R13 2 1
       57 GETTABLEKS                       R14 R13 K19 ["X"]
       59 GETTABLEKS                       R16 R11 K19 ["X"]
       61 SUBK                             R15 R16 K7 [3]
       62 JUMPIFNOTLT                      R15 R14 ; [+24]
       64 GETTABLEKS                       R14 R13 K20 ["Y"]
       66 GETTABLEKS                       R16 R11 K20 ["Y"]
       68 SUBK                             R15 R16 K7 [3]
       69 JUMPIFNOTLT                      R15 R14 ; [+17]
       71 GETTABLEKS                       R14 R13 K19 ["X"]
       73 GETTABLEKS                       R16 R11 K19 ["X"]
       75 ADDK                             R15 R16 K7 [3]
       76 JUMPIFNOTLT                      R14 R15 ; [+10]
       78 GETTABLEKS                       R14 R13 K20 ["Y"]
       80 GETTABLEKS                       R16 R11 K20 ["Y"]
       82 ADDK                             R15 R16 K7 [3]
       83 JUMPIFNOTLT                      R14 R15 ; [+3]
       85 LOADN                            R14 0
       86 RETURN                           R14 1
       87 GETUPVAL                         R10 2
       88 GETTABLEKS                       R10 R10 K21 ["intersectRayRay"]
       90 GETTABLEKS                       R11 R0 K9 ["Axis"]
       92 GETTABLEKS                       R11 R11 K22 ["Position"]
       94 GETTABLEKS                       R12 R0 K9 ["Axis"]
       96 GETTABLEKS                       R12 R12 K23 ["LookVector"]
       98 GETTABLEKS                       R13 R1 K18 ["Origin"]
      100 GETTABLEKS                       R14 R1 K24 ["Direction"]
      102 GETTABLEKS                       R14 R14 K25 ["Unit"]
      104 CALL                             R10 4 2
      105 JUMPIF                           R10 ; [+2]
      106 LOADNIL                          R12
      107 RETURN                           R12 1
      108 GETUPVAL                         R12 2
      109 GETTABLEKS                       R12 R12 K21 ["intersectRayRay"]
      111 GETTABLEKS                       R13 R1 K18 ["Origin"]
      113 GETTABLEKS                       R14 R1 K24 ["Direction"]
      115 GETTABLEKS                       R14 R14 K25 ["Unit"]
      117 GETTABLEKS                       R15 R0 K9 ["Axis"]
      119 GETTABLEKS                       R15 R15 K22 ["Position"]
      121 GETTABLEKS                       R16 R0 K9 ["Axis"]
      123 GETTABLEKS                       R16 R16 K23 ["LookVector"]
      125 CALL                             R12 4 2
      126 GETTABLEKS                       R16 R0 K9 ["Axis"]
      128 GETTABLEKS                       R16 R16 K22 ["Position"]
      130 GETTABLEKS                       R18 R0 K9 ["Axis"]
      132 GETTABLEKS                       R18 R18 K23 ["LookVector"]
      134 MUL                              R17 R18 R11
      135 ADD                              R15 R16 R17
      136 GETTABLEKS                       R17 R1 K18 ["Origin"]
      138 GETTABLEKS                       R19 R1 K24 ["Direction"]
      140 GETTABLEKS                       R19 R19 K25 ["Unit"]
      142 MUL                              R18 R19 R13
      143 ADD                              R16 R17 R18
      144 SUB                              R14 R15 R16
      145 GETTABLEKS                       R14 R14 K26 ["Magnitude"]
      147 JUMPIFNOTLT                      R14 R4 ; [+6]
      149 JUMPIFNOTLT                      R5 R11 ; [+4]
      151 JUMPIFNOTLT                      R11 R9 ; [+2]
      153 RETURN                           R13 1
      154 JUMPIFNOTLT                      R14 R8 ; [+7]
      156 JUMPIFNOTLT                      R9 R11 ; [+5]
      158 ADD                              R15 R9 R7
      159 JUMPIFNOTLT                      R11 R15 ; [+2]
      161 RETURN                           R13 1
      162 LOADNIL                          R15
      163 RETURN                           R15 1

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
