PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Scale"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K3 ["ZIndex"]
        8 ORK                              R2 R3 K2 [0]
        9 MULK                             R3 R1 K4 [4]
       10 MULK                             R4 R1 K5 [0.1]
       11 GETUPVAL                         R6 0
       12 MUL                              R5 R1 R6
       13 GETTABLEKS                       R8 R0 K0 ["props"]
       15 GETTABLEKS                       R8 R8 K6 ["Outset"]
       17 ORK                              R7 R8 K2 [0]
       18 MUL                              R6 R3 R7
       19 ADD                              R5 R5 R6
       20 MULK                             R6 R1 K7 [0.2]
       21 MULK                             R7 R3 K8 [0.25]
       22 MULK                             R8 R4 K9 [3]
       23 GETUPVAL                         R9 1
       24 CALL                             R9 0 1
       25 JUMPIFNOT                        R9 ; [+17]
       26 GETTABLEKS                       R9 R0 K0 ["props"]
       28 GETTABLEKS                       R9 R9 K10 ["Thin"]
       30 JUMPIFNOT                        R9 ; [+2]
       31 MULK                             R4 R4 K11 [0.4]
       32 MULK                             R8 R8 K11 [0.4]
       33 GETTABLEKS                       R9 R0 K0 ["props"]
       35 GETTABLEKS                       R9 R9 K12 ["Hovered"]
       37 JUMPIFNOT                        R9 ; [+20]
       38 GETUPVAL                         R9 2
       39 MUL                              R4 R4 R9
       40 GETUPVAL                         R9 2
       41 MUL                              R8 R8 R9
       42 JUMP                             ; [+15]
       43 GETTABLEKS                       R9 R0 K0 ["props"]
       45 GETTABLEKS                       R9 R9 K10 ["Thin"]
       47 JUMPIFNOT                        R9 ; [+1]
       48 MULK                             R4 R4 K11 [0.4]
       49 GETTABLEKS                       R9 R0 K0 ["props"]
       51 GETTABLEKS                       R9 R9 K12 ["Hovered"]
       53 JUMPIFNOT                        R9 ; [+4]
       54 GETUPVAL                         R9 2
       55 MUL                              R4 R4 R9
       56 GETUPVAL                         R9 2
       57 MUL                              R7 R7 R9
       58 GETTABLEKS                       R10 R0 K0 ["props"]
       60 GETTABLEKS                       R10 R10 K13 ["Axis"]
       62 GETIMPORT                        R11 K16 [CFrame.new]
       64 LOADN                            R12 0
       65 LOADN                            R13 0
       66 ADD                              R15 R5 R3
       67 MINUS                            R14 R15
       68 CALL                             R11 3 1
       69 MUL                              R9 R10 R11
       70 LOADN                            R12 0
       71 LOADN                            R13 0
       72 MINUS                            R14 R6
       73 FASTCALL                         VECTOR ; [+2]
       74 GETIMPORT                        R11 K18 [Vector3.new]
       76 CALL                             R11 3 1
       77 MUL                              R10 R9 R11
       78 GETUPVAL                         R12 3
       79 GETTABLEKS                       R12 R12 K19 ["CurrentCamera"]
       81 FASTCALL2K                       ASSERT R12 K20 ; [+4]
       83 LOADK                            R13 K20 ["Missing camera"]
       84 GETIMPORT                        R11 K22 [assert]
       86 CALL                             R11 2 1
       87 MOVE                             R13 R10
       88 NAMECALL                         R11 R11 K23 ["WorldToScreenPoint"]
       90 CALL                             R11 2 2
       91 NEWTABLE                         R13 4 0
       93 GETTABLEKS                       R14 R0 K0 ["props"]
       95 GETTABLEKS                       R14 R14 K24 ["Tail"]
       97 JUMPIFNOT                        R14 ; [+62]
       98 ADD                              R3 R3 R5
       99 LOADN                            R5 0
      100 GETTABLEKS                       R17 R0 K0 ["props"]
      102 GETTABLEKS                       R17 R17 K25 ["TailScale"]
      104 FASTCALL2                        MATH_MIN R1 R17 ; [+4]
      106 MOVE                             R16 R1
      107 GETIMPORT                        R15 K28 [math.min]
      109 CALL                             R15 2 1
      110 MULK                             R17 R15 K5 [0.1]
      111 MULK                             R16 R17 K29 [0.65]
      112 GETUPVAL                         R18 1
      113 CALL                             R18 0 1
      114 JUMPIFNOT                        R18 ; [+2]
      115 LOADK                            R17 K24 ["Tail"]
      116 JUMP                             ; [+1]
      117 LOADK                            R17 K30 ["ExtraShaft"]
      118 GETUPVAL                         R18 4
      119 GETTABLEKS                       R18 R18 K31 ["createElement"]
      121 LOADK                            R19 K32 ["CylinderHandleAdornment"]
      122 DUPTABLE                         R20 K42 [{["Adornee"], ["ZIndex"], ["Radius"], ["Height"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = True, ["Transparency"] = 0.5, ["AdornCullingMode"]}]
      123 GETUPVAL                         R21 3
      124 GETTABLEKS                       R21 R21 K43 ["Terrain"]
      126 SETTABLEKS                       R21 R20 K33 ["Adornee"]
      128 SETTABLEKS                       R2 R20 K3 ["ZIndex"]
      130 SETTABLEKS                       R16 R20 K34 ["Radius"]
      132 SETTABLEKS                       R14 R20 K35 ["Height"]
      134 GETTABLEKS                       R22 R0 K0 ["props"]
      136 GETTABLEKS                       R22 R22 K13 ["Axis"]
      138 GETIMPORT                        R23 K16 [CFrame.new]
      140 LOADN                            R24 0
      141 LOADN                            R25 0
      142 LOADN                            R27 0
      143 MULK                             R28 R14 K40 [0.5]
      144 ADD                              R26 R27 R28
      145 CALL                             R23 3 1
      146 MUL                              R21 R22 R23
      147 SETTABLEKS                       R21 R20 K14 ["CFrame"]
      149 GETTABLEKS                       R21 R0 K0 ["props"]
      151 GETTABLEKS                       R21 R21 K44 ["Color"]
      153 SETTABLEKS                       R21 R20 K36 ["Color3"]
      155 GETUPVAL                         R21 5
      156 SETTABLEKS                       R21 R20 K41 ["AdornCullingMode"]
      158 CALL                             R18 2 1
      159 SETTABLE                         R18 R13 R17
      160 GETUPVAL                         R15 1
      161 CALL                             R15 0 1
      162 JUMPIF                           R15 ; [+85]
      163 GETTABLEKS                       R15 R0 K0 ["props"]
      165 GETTABLEKS                       R15 R15 K12 ["Hovered"]
      167 JUMPIF                           R15 ; [+80]
      168 GETUPVAL                         R15 4
      169 GETTABLEKS                       R15 R15 K31 ["createElement"]
      171 LOADK                            R16 K32 ["CylinderHandleAdornment"]
      172 DUPTABLE                         R17 K46 [{["Adornee"], ["ZIndex"], ["Radius"], ["Height"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = False, ["AdornCullingMode"]}]
      173 GETUPVAL                         R18 3
      174 GETTABLEKS                       R18 R18 K43 ["Terrain"]
      176 SETTABLEKS                       R18 R17 K33 ["Adornee"]
      178 SETTABLEKS                       R2 R17 K3 ["ZIndex"]
      180 SETTABLEKS                       R4 R17 K34 ["Radius"]
      182 SETTABLEKS                       R3 R17 K35 ["Height"]
      184 GETTABLEKS                       R19 R0 K0 ["props"]
      186 GETTABLEKS                       R19 R19 K13 ["Axis"]
      188 GETIMPORT                        R20 K16 [CFrame.new]
      190 LOADN                            R21 0
      191 LOADN                            R22 0
      192 MULK                             R25 R3 K40 [0.5]
      193 ADD                              R24 R5 R25
      194 MINUS                            R23 R24
      195 CALL                             R20 3 1
      196 MUL                              R18 R19 R20
      197 SETTABLEKS                       R18 R17 K14 ["CFrame"]
      199 GETTABLEKS                       R18 R0 K0 ["props"]
      201 GETTABLEKS                       R18 R18 K44 ["Color"]
      203 SETTABLEKS                       R18 R17 K36 ["Color3"]
      205 GETUPVAL                         R18 5
      206 SETTABLEKS                       R18 R17 K41 ["AdornCullingMode"]
      208 CALL                             R15 2 1
      209 SETTABLEKS                       R15 R13 K47 ["Shaft"]
      211 GETTABLEKS                       R15 R0 K0 ["props"]
      213 GETTABLEKS                       R15 R15 K10 ["Thin"]
      215 JUMPIF                           R15 ; [+32]
      216 GETUPVAL                         R15 4
      217 GETTABLEKS                       R15 R15 K31 ["createElement"]
      219 LOADK                            R16 K48 ["ConeHandleAdornment"]
      220 DUPTABLE                         R17 K46 [{["Adornee"], ["ZIndex"], ["Radius"], ["Height"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = False, ["AdornCullingMode"]}]
      221 GETUPVAL                         R18 3
      222 GETTABLEKS                       R18 R18 K43 ["Terrain"]
      224 SETTABLEKS                       R18 R17 K33 ["Adornee"]
      226 SETTABLEKS                       R2 R17 K3 ["ZIndex"]
      228 LOADN                            R19 3
      229 MUL                              R18 R19 R4
      230 SETTABLEKS                       R18 R17 K34 ["Radius"]
      232 SETTABLEKS                       R7 R17 K35 ["Height"]
      234 SETTABLEKS                       R9 R17 K14 ["CFrame"]
      236 GETTABLEKS                       R18 R0 K0 ["props"]
      238 GETTABLEKS                       R18 R18 K44 ["Color"]
      240 SETTABLEKS                       R18 R17 K36 ["Color3"]
      242 GETUPVAL                         R18 5
      243 SETTABLEKS                       R18 R17 K41 ["AdornCullingMode"]
      245 CALL                             R15 2 1
      246 SETTABLEKS                       R15 R13 K49 ["Head"]
      248 GETTABLEKS                       R16 R0 K0 ["props"]
      250 GETTABLEKS                       R16 R16 K12 ["Hovered"]
      252 JUMPIFNOT                        R16 ; [+2]
      253 LOADN                            R15 0
      254 JUMP                             ; [+5]
      255 GETTABLEKS                       R16 R0 K0 ["props"]
      257 GETTABLEKS                       R16 R16 K39 ["Transparency"]
      259 ORK                              R15 R16 K2 [0]
      260 GETTABLEKS                       R16 R0 K0 ["props"]
      262 GETTABLEKS                       R16 R16 K37 ["AlwaysOnTop"]
      264 JUMPIFNOT                        R16 ; [+121]
      265 GETUPVAL                         R17 1
      266 CALL                             R17 0 1
      267 JUMPIFNOT                        R17 ; [+2]
      268 LOADK                            R16 K47 ["Shaft"]
      269 JUMP                             ; [+1]
      270 LOADK                            R16 K50 ["DimmedShaft"]
      271 GETUPVAL                         R17 4
      272 GETTABLEKS                       R17 R17 K31 ["createElement"]
      274 LOADK                            R18 K32 ["CylinderHandleAdornment"]
      275 DUPTABLE                         R19 K51 [{["Adornee"], ["ZIndex"], ["Radius"], ["Height"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = True, ["Transparency"], ["AdornCullingMode"]}]
      276 GETUPVAL                         R20 3
      277 GETTABLEKS                       R20 R20 K43 ["Terrain"]
      279 SETTABLEKS                       R20 R19 K33 ["Adornee"]
      281 SETTABLEKS                       R2 R19 K3 ["ZIndex"]
      283 SETTABLEKS                       R4 R19 K34 ["Radius"]
      285 SETTABLEKS                       R3 R19 K35 ["Height"]
      287 GETTABLEKS                       R21 R0 K0 ["props"]
      289 GETTABLEKS                       R21 R21 K13 ["Axis"]
      291 GETIMPORT                        R22 K16 [CFrame.new]
      293 LOADN                            R23 0
      294 LOADN                            R24 0
      295 MULK                             R27 R3 K40 [0.5]
      296 ADD                              R26 R5 R27
      297 MINUS                            R25 R26
      298 CALL                             R22 3 1
      299 MUL                              R20 R21 R22
      300 SETTABLEKS                       R20 R19 K14 ["CFrame"]
      302 GETTABLEKS                       R20 R0 K0 ["props"]
      304 GETTABLEKS                       R20 R20 K44 ["Color"]
      306 SETTABLEKS                       R20 R19 K36 ["Color3"]
      308 GETUPVAL                         R21 1
      309 CALL                             R21 0 1
      310 JUMPIFNOT                        R21 ; [+2]
      311 MOVE                             R20 R15
      312 JUMP                             ; [+8]
      313 GETTABLEKS                       R21 R0 K0 ["props"]
      315 GETTABLEKS                       R21 R21 K12 ["Hovered"]
      317 JUMPIFNOT                        R21 ; [+2]
      318 LOADN                            R20 0
      319 JUMP                             ; [+1]
      320 LOADK                            R20 K52 [0.45]
      321 SETTABLEKS                       R20 R19 K39 ["Transparency"]
      323 GETUPVAL                         R20 5
      324 SETTABLEKS                       R20 R19 K41 ["AdornCullingMode"]
      326 CALL                             R17 2 1
      327 SETTABLE                         R17 R13 R16
      328 GETTABLEKS                       R17 R0 K0 ["props"]
      330 GETTABLEKS                       R17 R17 K10 ["Thin"]
      332 JUMPIF                           R17 ; [+117]
      333 GETUPVAL                         R18 1
      334 CALL                             R18 0 1
      335 JUMPIFNOT                        R18 ; [+2]
      336 LOADK                            R17 K49 ["Head"]
      337 JUMP                             ; [+1]
      338 LOADK                            R17 K53 ["DimmedHead"]
      339 GETUPVAL                         R18 4
      340 GETTABLEKS                       R18 R18 K31 ["createElement"]
      342 LOADK                            R19 K48 ["ConeHandleAdornment"]
      343 DUPTABLE                         R20 K51 [{["Adornee"], ["ZIndex"], ["Radius"], ["Height"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = True, ["Transparency"], ["AdornCullingMode"]}]
      344 GETUPVAL                         R21 3
      345 GETTABLEKS                       R21 R21 K43 ["Terrain"]
      347 SETTABLEKS                       R21 R20 K33 ["Adornee"]
      349 SETTABLEKS                       R2 R20 K3 ["ZIndex"]
      351 LOADN                            R22 3
      352 MUL                              R21 R22 R4
      353 SETTABLEKS                       R21 R20 K34 ["Radius"]
      355 SETTABLEKS                       R7 R20 K35 ["Height"]
      357 SETTABLEKS                       R9 R20 K14 ["CFrame"]
      359 GETTABLEKS                       R21 R0 K0 ["props"]
      361 GETTABLEKS                       R21 R21 K44 ["Color"]
      363 SETTABLEKS                       R21 R20 K36 ["Color3"]
      365 GETUPVAL                         R22 1
      366 CALL                             R22 0 1
      367 JUMPIFNOT                        R22 ; [+2]
      368 MOVE                             R21 R15
      369 JUMP                             ; [+8]
      370 GETTABLEKS                       R22 R0 K0 ["props"]
      372 GETTABLEKS                       R22 R22 K12 ["Hovered"]
      374 JUMPIFNOT                        R22 ; [+2]
      375 LOADN                            R21 0
      376 JUMP                             ; [+1]
      377 LOADK                            R21 K52 [0.45]
      378 SETTABLEKS                       R21 R20 K39 ["Transparency"]
      380 GETUPVAL                         R21 5
      381 SETTABLEKS                       R21 R20 K41 ["AdornCullingMode"]
      383 CALL                             R18 2 1
      384 SETTABLE                         R18 R13 R17
      385 JUMP                             ; [+64]
      386 GETTABLEKS                       R16 R0 K0 ["props"]
      388 GETTABLEKS                       R16 R16 K10 ["Thin"]
      390 JUMPIF                           R16 ; [+59]
      391 GETUPVAL                         R16 4
      392 GETTABLEKS                       R16 R16 K31 ["createElement"]
      394 GETUPVAL                         R17 4
      395 GETTABLEKS                       R17 R17 K54 ["Portal"]
      397 DUPTABLE                         R18 K56 [{"target"}]
      398 GETUPVAL                         R19 6
      399 SETTABLEKS                       R19 R18 K55 ["target"]
      401 DUPTABLE                         R19 K58 [{"MoveToolScreenspaceHandle"}]
      402 GETUPVAL                         R20 4
      403 GETTABLEKS                       R20 R20 K31 ["createElement"]
      405 LOADK                            R21 K59 ["ScreenGui"]
      406 NEWTABLE                         R22 0 0
      408 DUPTABLE                         R23 K61 [{"Frame"}]
      409 GETUPVAL                         R24 4
      410 GETTABLEKS                       R24 R24 K31 ["createElement"]
      412 LOADK                            R25 K60 ["Frame"]
      413 DUPTABLE                         R26 K66 [{["BorderSizePixel"] = 0, ["BackgroundColor3"], ["Position"], ["Size"], ["AdornCullingMode"]}]
      414 GETTABLEKS                       R27 R0 K0 ["props"]
      416 GETTABLEKS                       R27 R27 K44 ["Color"]
      418 SETTABLEKS                       R27 R26 K63 ["BackgroundColor3"]
      420 GETIMPORT                        R27 K69 [UDim2.fromOffset]
      422 GETTABLEKS                       R29 R11 K70 ["X"]
      424 SUBK                             R28 R29 K9 [3]
      425 GETTABLEKS                       R30 R11 K71 ["Y"]
      427 SUBK                             R29 R30 K9 [3]
      428 CALL                             R27 2 1
      429 SETTABLEKS                       R27 R26 K64 ["Position"]
      431 GETIMPORT                        R27 K69 [UDim2.fromOffset]
      433 LOADN                            R28 6
      434 LOADN                            R29 6
      435 CALL                             R27 2 1
      436 SETTABLEKS                       R27 R26 K65 ["Size"]
      438 GETUPVAL                         R27 5
      439 SETTABLEKS                       R27 R26 K41 ["AdornCullingMode"]
      441 CALL                             R24 2 1
      442 SETTABLEKS                       R24 R23 K60 ["Frame"]
      444 CALL                             R20 3 1
      445 SETTABLEKS                       R20 R19 K57 ["MoveToolScreenspaceHandle"]
      447 CALL                             R16 3 1
      448 SETTABLEKS                       R16 R13 K72 ["ScreenBox"]
      450 GETUPVAL                         R16 4
      451 GETTABLEKS                       R16 R16 K31 ["createElement"]
      453 LOADK                            R17 K73 ["Folder"]
      454 NEWTABLE                         R18 0 0
      456 MOVE                             R19 R13
      457 CALL                             R16 3 -1
      458 RETURN                           R16 -1

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
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Utility"]
       23 GETTABLEKS                       R4 R4 K11 ["Math"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K9 [require]
       28 GETTABLEKS                       R5 R2 K7 ["Parent"]
       30 GETTABLEKS                       R5 R5 K12 ["Roact"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K16 [Enum.AdornCullingMode.Never]
       35 GETIMPORT                        R6 K9 [require]
       37 GETTABLEKS                       R7 R2 K17 ["Flags"]
       39 GETTABLEKS                       R7 R7 K18 ["getFFlagNextGenDraggers"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R4 K19 ["PureComponent"]
       44 LOADK                            R9 K20 ["MoveHandleView"]
       45 NAMECALL                         R7 R7 K21 ["extend"]
       47 CALL                             R7 2 1
       48 MOVE                             R9 R6
       49 CALL                             R9 0 1
       50 JUMPIFNOT                        R9 ; [+2]
       51 LOADK                            R8 K22 [0.7]
       52 JUMP                             ; [+1]
       53 LOADK                            R8 K23 [0.6]
       54 MOVE                             R10 R6
       55 CALL                             R10 0 1
       56 JUMPIFNOT                        R10 ; [+2]
       57 LOADK                            R9 K24 [1.3]
       58 JUMP                             ; [+1]
       59 LOADK                            R9 K25 [1.5]
       60 DUPCLOSURE                       R10 K26 [PROTO_0]
       61 SETTABLEKS                       R10 R7 K27 ["init"]
       63 DUPCLOSURE                       R10 K28 [PROTO_1]
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R1
       71 SETTABLEKS                       R10 R7 K29 ["render"]
       73 DUPCLOSURE                       R10 K30 [PROTO_2]
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R3
       77 SETTABLEKS                       R10 R7 K31 ["hitTest"]
       79 DUPCLOSURE                       R10 K32 [PROTO_3]
       80 CAPTURE                          VAL R8
       81 SETTABLEKS                       R10 R7 K33 ["getHandleDimensionForScale"]
       83 RETURN                           R7 1
