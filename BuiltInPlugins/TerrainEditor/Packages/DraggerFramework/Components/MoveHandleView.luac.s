PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Scale"]
        4 MULK                             R2 R1 K2 [4]
        5 MULK                             R3 R1 K3 [0.1]
        6 MULK                             R4 R1 K4 [0.6]
        7 GETTABLEKS                       R8 R0 K0 ["props"]
        9 GETTABLEKS                       R7 R8 K6 ["Outset"]
       11 ORK                              R6 R7 K5 [0]
       12 MUL                              R5 R2 R6
       13 ADD                              R4 R4 R5
       14 MULK                             R5 R1 K7 [0.2]
       15 MULK                             R6 R2 K8 [0.25]
       16 GETTABLEKS                       R8 R0 K0 ["props"]
       18 GETTABLEKS                       R7 R8 K9 ["Thin"]
       20 JUMPIFNOT                        R7 ; [+2]
       21 GETUPVAL                         R7 0
       22 MUL                              R3 R3 R7
       23 GETTABLEKS                       R8 R0 K0 ["props"]
       25 GETTABLEKS                       R7 R8 K10 ["Hovered"]
       27 JUMPIFNOT                        R7 ; [+2]
       28 MULK                             R3 R3 K11 [1.5]
       29 MULK                             R6 R6 K11 [1.5]
       30 GETTABLEKS                       R9 R0 K0 ["props"]
       32 GETTABLEKS                       R8 R9 K12 ["Axis"]
       34 GETIMPORT                        R9 K15 [CFrame.new]
       36 LOADN                            R10 0
       37 LOADN                            R11 0
       38 ADD                              R13 R4 R2
       39 MINUS                            R12 R13
       40 CALL                             R9 3 1
       41 MUL                              R7 R8 R9
       42 LOADN                            R10 0
       43 LOADN                            R11 0
       44 MINUS                            R12 R5
       45 FASTCALL                         VECTOR ; [+2]
       46 GETIMPORT                        R9 K17 [Vector3.new]
       48 CALL                             R9 3 1
       49 MUL                              R8 R7 R9
       50 GETUPVAL                         R10 1
       51 GETTABLEKS                       R9 R10 K18 ["CurrentCamera"]
       53 MOVE                             R11 R8
       54 NAMECALL                         R9 R9 K19 ["WorldToScreenPoint"]
       56 CALL                             R9 2 2
       57 NEWTABLE                         R11 8 0
       59 GETUPVAL                         R12 2
       60 CALL                             R12 0 1
       61 JUMPIFNOT                        R12 ; [+69]
       62 GETTABLEKS                       R13 R0 K0 ["props"]
       64 GETTABLEKS                       R12 R13 K20 ["Tail"]
       66 JUMPIFNOT                        R12 ; [+64]
       67 ADD                              R2 R2 R4
       68 LOADN                            R4 0
       69 GETTABLEKS                       R16 R0 K0 ["props"]
       71 GETTABLEKS                       R15 R16 K21 ["TailScale"]
       73 FASTCALL2                        MATH_MIN R1 R15 ; [+4]
       75 MOVE                             R14 R1
       76 GETIMPORT                        R13 K24 [math.min]
       78 CALL                             R13 2 1
       79 GETUPVAL                         R15 3
       80 GETTABLEKS                       R14 R15 K25 ["createElement"]
       82 LOADK                            R15 K26 ["CylinderHandleAdornment"]
       83 DUPTABLE                         R16 K35 [{"Adornee", "ZIndex", "Radius", "Height", "CFrame", "Color3", "AlwaysOnTop", "Transparency", "AdornCullingMode"}]
       84 GETUPVAL                         R18 1
       85 GETTABLEKS                       R17 R18 K36 ["Terrain"]
       87 SETTABLEKS                       R17 R16 K27 ["Adornee"]
       89 LOADN                            R17 0
       90 SETTABLEKS                       R17 R16 K28 ["ZIndex"]
       92 MULK                             R18 R13 K3 [0.1]
       93 MULK                             R17 R18 K37 [0.65]
       94 SETTABLEKS                       R17 R16 K29 ["Radius"]
       96 SETTABLEKS                       R12 R16 K30 ["Height"]
       98 GETTABLEKS                       R19 R0 K0 ["props"]
      100 GETTABLEKS                       R18 R19 K12 ["Axis"]
      102 GETIMPORT                        R19 K15 [CFrame.new]
      104 LOADN                            R20 0
      105 LOADN                            R21 0
      106 LOADN                            R23 0
      107 MULK                             R24 R12 K38 [0.5]
      108 ADD                              R22 R23 R24
      109 CALL                             R19 3 1
      110 MUL                              R17 R18 R19
      111 SETTABLEKS                       R17 R16 K13 ["CFrame"]
      113 GETTABLEKS                       R18 R0 K0 ["props"]
      115 GETTABLEKS                       R17 R18 K39 ["Color"]
      117 SETTABLEKS                       R17 R16 K31 ["Color3"]
      119 LOADB                            R17 1
      120 SETTABLEKS                       R17 R16 K32 ["AlwaysOnTop"]
      122 LOADK                            R17 K38 [0.5]
      123 SETTABLEKS                       R17 R16 K33 ["Transparency"]
      125 GETUPVAL                         R17 4
      126 SETTABLEKS                       R17 R16 K34 ["AdornCullingMode"]
      128 CALL                             R14 2 1
      129 SETTABLEKS                       R14 R11 K40 ["ExtraShaft"]
      131 GETTABLEKS                       R13 R0 K0 ["props"]
      133 GETTABLEKS                       R12 R13 K10 ["Hovered"]
      135 JUMPIF                           R12 ; [+88]
      136 GETUPVAL                         R13 3
      137 GETTABLEKS                       R12 R13 K25 ["createElement"]
      139 LOADK                            R13 K26 ["CylinderHandleAdornment"]
      140 DUPTABLE                         R14 K41 [{"Adornee", "ZIndex", "Radius", "Height", "CFrame", "Color3", "AlwaysOnTop", "AdornCullingMode"}]
      141 GETUPVAL                         R16 1
      142 GETTABLEKS                       R15 R16 K36 ["Terrain"]
      144 SETTABLEKS                       R15 R14 K27 ["Adornee"]
      146 LOADN                            R15 0
      147 SETTABLEKS                       R15 R14 K28 ["ZIndex"]
      149 SETTABLEKS                       R3 R14 K29 ["Radius"]
      151 SETTABLEKS                       R2 R14 K30 ["Height"]
      153 GETTABLEKS                       R17 R0 K0 ["props"]
      155 GETTABLEKS                       R16 R17 K12 ["Axis"]
      157 GETIMPORT                        R17 K15 [CFrame.new]
      159 LOADN                            R18 0
      160 LOADN                            R19 0
      161 MULK                             R22 R2 K38 [0.5]
      162 ADD                              R21 R4 R22
      163 MINUS                            R20 R21
      164 CALL                             R17 3 1
      165 MUL                              R15 R16 R17
      166 SETTABLEKS                       R15 R14 K13 ["CFrame"]
      168 GETTABLEKS                       R16 R0 K0 ["props"]
      170 GETTABLEKS                       R15 R16 K39 ["Color"]
      172 SETTABLEKS                       R15 R14 K31 ["Color3"]
      174 LOADB                            R15 0
      175 SETTABLEKS                       R15 R14 K32 ["AlwaysOnTop"]
      177 GETUPVAL                         R15 4
      178 SETTABLEKS                       R15 R14 K34 ["AdornCullingMode"]
      180 CALL                             R12 2 1
      181 SETTABLEKS                       R12 R11 K42 ["Shaft"]
      183 GETTABLEKS                       R13 R0 K0 ["props"]
      185 GETTABLEKS                       R12 R13 K9 ["Thin"]
      187 JUMPIF                           R12 ; [+36]
      188 GETUPVAL                         R13 3
      189 GETTABLEKS                       R12 R13 K25 ["createElement"]
      191 LOADK                            R13 K43 ["ConeHandleAdornment"]
      192 DUPTABLE                         R14 K41 [{"Adornee", "ZIndex", "Radius", "Height", "CFrame", "Color3", "AlwaysOnTop", "AdornCullingMode"}]
      193 GETUPVAL                         R16 1
      194 GETTABLEKS                       R15 R16 K36 ["Terrain"]
      196 SETTABLEKS                       R15 R14 K27 ["Adornee"]
      198 LOADN                            R15 0
      199 SETTABLEKS                       R15 R14 K28 ["ZIndex"]
      201 LOADN                            R16 3
      202 MUL                              R15 R16 R3
      203 SETTABLEKS                       R15 R14 K29 ["Radius"]
      205 SETTABLEKS                       R6 R14 K30 ["Height"]
      207 SETTABLEKS                       R7 R14 K13 ["CFrame"]
      209 GETTABLEKS                       R16 R0 K0 ["props"]
      211 GETTABLEKS                       R15 R16 K39 ["Color"]
      213 SETTABLEKS                       R15 R14 K31 ["Color3"]
      215 LOADB                            R15 0
      216 SETTABLEKS                       R15 R14 K32 ["AlwaysOnTop"]
      218 GETUPVAL                         R15 4
      219 SETTABLEKS                       R15 R14 K34 ["AdornCullingMode"]
      221 CALL                             R12 2 1
      222 SETTABLEKS                       R12 R11 K44 ["Head"]
      224 GETTABLEKS                       R13 R0 K0 ["props"]
      226 GETTABLEKS                       R12 R13 K32 ["AlwaysOnTop"]
      228 JUMPIFNOT                        R12 ; [+109]
      229 GETUPVAL                         R13 3
      230 GETTABLEKS                       R12 R13 K25 ["createElement"]
      232 LOADK                            R13 K26 ["CylinderHandleAdornment"]
      233 DUPTABLE                         R14 K35 [{"Adornee", "ZIndex", "Radius", "Height", "CFrame", "Color3", "AlwaysOnTop", "Transparency", "AdornCullingMode"}]
      234 GETUPVAL                         R16 1
      235 GETTABLEKS                       R15 R16 K36 ["Terrain"]
      237 SETTABLEKS                       R15 R14 K27 ["Adornee"]
      239 LOADN                            R15 0
      240 SETTABLEKS                       R15 R14 K28 ["ZIndex"]
      242 SETTABLEKS                       R3 R14 K29 ["Radius"]
      244 SETTABLEKS                       R2 R14 K30 ["Height"]
      246 GETTABLEKS                       R17 R0 K0 ["props"]
      248 GETTABLEKS                       R16 R17 K12 ["Axis"]
      250 GETIMPORT                        R17 K15 [CFrame.new]
      252 LOADN                            R18 0
      253 LOADN                            R19 0
      254 MULK                             R22 R2 K38 [0.5]
      255 ADD                              R21 R4 R22
      256 MINUS                            R20 R21
      257 CALL                             R17 3 1
      258 MUL                              R15 R16 R17
      259 SETTABLEKS                       R15 R14 K13 ["CFrame"]
      261 GETTABLEKS                       R16 R0 K0 ["props"]
      263 GETTABLEKS                       R15 R16 K39 ["Color"]
      265 SETTABLEKS                       R15 R14 K31 ["Color3"]
      267 LOADB                            R15 1
      268 SETTABLEKS                       R15 R14 K32 ["AlwaysOnTop"]
      270 GETTABLEKS                       R17 R0 K0 ["props"]
      272 GETTABLEKS                       R16 R17 K10 ["Hovered"]
      274 JUMPIFNOT                        R16 ; [+2]
      275 LOADN                            R15 0
      276 JUMP                             ; [+1]
      277 LOADK                            R15 K45 [0.45]
      278 SETTABLEKS                       R15 R14 K33 ["Transparency"]
      280 GETUPVAL                         R15 4
      281 SETTABLEKS                       R15 R14 K34 ["AdornCullingMode"]
      283 CALL                             R12 2 1
      284 SETTABLEKS                       R12 R11 K46 ["DimmedShaft"]
      286 GETTABLEKS                       R13 R0 K0 ["props"]
      288 GETTABLEKS                       R12 R13 K9 ["Thin"]
      290 JUMPIF                           R12 ; [+118]
      291 GETUPVAL                         R13 3
      292 GETTABLEKS                       R12 R13 K25 ["createElement"]
      294 LOADK                            R13 K43 ["ConeHandleAdornment"]
      295 DUPTABLE                         R14 K35 [{"Adornee", "ZIndex", "Radius", "Height", "CFrame", "Color3", "AlwaysOnTop", "Transparency", "AdornCullingMode"}]
      296 GETUPVAL                         R16 1
      297 GETTABLEKS                       R15 R16 K36 ["Terrain"]
      299 SETTABLEKS                       R15 R14 K27 ["Adornee"]
      301 LOADN                            R15 0
      302 SETTABLEKS                       R15 R14 K28 ["ZIndex"]
      304 LOADN                            R16 3
      305 MUL                              R15 R16 R3
      306 SETTABLEKS                       R15 R14 K29 ["Radius"]
      308 SETTABLEKS                       R6 R14 K30 ["Height"]
      310 SETTABLEKS                       R7 R14 K13 ["CFrame"]
      312 GETTABLEKS                       R16 R0 K0 ["props"]
      314 GETTABLEKS                       R15 R16 K39 ["Color"]
      316 SETTABLEKS                       R15 R14 K31 ["Color3"]
      318 LOADB                            R15 1
      319 SETTABLEKS                       R15 R14 K32 ["AlwaysOnTop"]
      321 GETTABLEKS                       R17 R0 K0 ["props"]
      323 GETTABLEKS                       R16 R17 K10 ["Hovered"]
      325 JUMPIFNOT                        R16 ; [+2]
      326 LOADN                            R15 0
      327 JUMP                             ; [+1]
      328 LOADK                            R15 K45 [0.45]
      329 SETTABLEKS                       R15 R14 K33 ["Transparency"]
      331 GETUPVAL                         R15 4
      332 SETTABLEKS                       R15 R14 K34 ["AdornCullingMode"]
      334 CALL                             R12 2 1
      335 SETTABLEKS                       R12 R11 K47 ["DimmedHead"]
      337 JUMP                             ; [+71]
      338 GETTABLEKS                       R13 R0 K0 ["props"]
      340 GETTABLEKS                       R12 R13 K9 ["Thin"]
      342 JUMPIF                           R12 ; [+66]
      343 GETUPVAL                         R13 3
      344 GETTABLEKS                       R12 R13 K25 ["createElement"]
      346 GETUPVAL                         R14 3
      347 GETTABLEKS                       R13 R14 K48 ["Portal"]
      349 DUPTABLE                         R14 K50 [{"target"}]
      350 GETUPVAL                         R15 5
      351 SETTABLEKS                       R15 R14 K49 ["target"]
      353 DUPTABLE                         R15 K52 [{"MoveToolScreenspaceHandle"}]
      354 GETUPVAL                         R17 3
      355 GETTABLEKS                       R16 R17 K25 ["createElement"]
      357 LOADK                            R17 K53 ["ScreenGui"]
      358 NEWTABLE                         R18 0 0
      360 DUPTABLE                         R19 K55 [{"Frame"}]
      361 GETUPVAL                         R21 3
      362 GETTABLEKS                       R20 R21 K25 ["createElement"]
      364 LOADK                            R21 K54 ["Frame"]
      365 DUPTABLE                         R22 K60 [{"BorderSizePixel", "BackgroundColor3", "Position", "Size", "AdornCullingMode"}]
      366 LOADN                            R23 0
      367 SETTABLEKS                       R23 R22 K56 ["BorderSizePixel"]
      369 GETTABLEKS                       R24 R0 K0 ["props"]
      371 GETTABLEKS                       R23 R24 K39 ["Color"]
      373 SETTABLEKS                       R23 R22 K57 ["BackgroundColor3"]
      375 GETIMPORT                        R23 K62 [UDim2.new]
      377 LOADN                            R24 0
      378 GETTABLEKS                       R26 R9 K64 ["X"]
      380 SUBK                             R25 R26 K63 [3]
      381 LOADN                            R26 0
      382 GETTABLEKS                       R28 R9 K65 ["Y"]
      384 SUBK                             R27 R28 K63 [3]
      385 CALL                             R23 4 1
      386 SETTABLEKS                       R23 R22 K58 ["Position"]
      388 GETIMPORT                        R23 K62 [UDim2.new]
      390 LOADN                            R24 0
      391 LOADN                            R25 6
      392 LOADN                            R26 0
      393 LOADN                            R27 6
      394 CALL                             R23 4 1
      395 SETTABLEKS                       R23 R22 K59 ["Size"]
      397 GETUPVAL                         R23 4
      398 SETTABLEKS                       R23 R22 K34 ["AdornCullingMode"]
      400 CALL                             R20 2 1
      401 SETTABLEKS                       R20 R19 K54 ["Frame"]
      403 CALL                             R16 3 1
      404 SETTABLEKS                       R16 R15 K51 ["MoveToolScreenspaceHandle"]
      406 CALL                             R12 3 1
      407 SETTABLEKS                       R12 R11 K66 ["ScreenBox"]
      409 GETUPVAL                         R13 3
      410 GETTABLEKS                       R12 R13 K25 ["createElement"]
      412 LOADK                            R13 K67 ["Folder"]
      413 NEWTABLE                         R14 0 0
      415 MOVE                             R15 R11
      416 CALL                             R12 3 -1
      417 RETURN                           R12 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Scale"]
        2 MULK                             R3 R2 K1 [4]
        3 MULK                             R4 R2 K2 [0.4]
        4 MULK                             R5 R4 K3 [3]
        5 MULK                             R6 R2 K4 [0.6]
        6 GETTABLEKS                       R9 R0 K6 ["Outset"]
        8 ORK                              R8 R9 K5 [0]
        9 MUL                              R7 R3 R8
       10 ADD                              R6 R6 R7
       11 MULK                             R7 R2 K7 [0.2]
       12 MULK                             R8 R3 K8 [0.25]
       13 ADD                              R9 R6 R3
       14 GETTABLEKS                       R10 R0 K9 ["AlwaysOnTop"]
       16 JUMPIF                           R10 ; [+57]
       17 GETTABLEKS                       R11 R0 K10 ["Axis"]
       19 LOADN                            R13 0
       20 LOADN                            R14 0
       21 ADD                              R17 R6 R3
       22 ADD                              R16 R17 R7
       23 MINUS                            R15 R16
       24 FASTCALL                         VECTOR ; [+2]
       25 GETIMPORT                        R12 K13 [Vector3.new]
       27 CALL                             R12 3 1
       28 MUL                              R10 R11 R12
       29 GETUPVAL                         R12 0
       30 GETTABLEKS                       R11 R12 K14 ["CurrentCamera"]
       32 MOVE                             R13 R10
       33 NAMECALL                         R11 R11 K15 ["WorldToScreenPoint"]
       35 CALL                             R11 2 2
       36 GETUPVAL                         R14 0
       37 GETTABLEKS                       R13 R14 K14 ["CurrentCamera"]
       39 GETTABLEKS                       R15 R1 K16 ["Origin"]
       41 NAMECALL                         R13 R13 K15 ["WorldToScreenPoint"]
       43 CALL                             R13 2 1
       44 GETTABLEKS                       R14 R13 K17 ["X"]
       46 GETTABLEKS                       R16 R11 K17 ["X"]
       48 SUBK                             R15 R16 K3 [3]
       49 JUMPIFNOTLT                      R15 R14 ; [+24]
       51 GETTABLEKS                       R14 R13 K18 ["Y"]
       53 GETTABLEKS                       R16 R11 K18 ["Y"]
       55 SUBK                             R15 R16 K3 [3]
       56 JUMPIFNOTLT                      R15 R14 ; [+17]
       58 GETTABLEKS                       R14 R13 K17 ["X"]
       60 GETTABLEKS                       R16 R11 K17 ["X"]
       62 ADDK                             R15 R16 K3 [3]
       63 JUMPIFNOTLT                      R14 R15 ; [+10]
       65 GETTABLEKS                       R14 R13 K18 ["Y"]
       67 GETTABLEKS                       R16 R11 K18 ["Y"]
       69 ADDK                             R15 R16 K3 [3]
       70 JUMPIFNOTLT                      R14 R15 ; [+3]
       72 LOADN                            R14 0
       73 RETURN                           R14 1
       74 GETUPVAL                         R11 1
       75 GETTABLEKS                       R10 R11 K19 ["intersectRayRay"]
       77 GETTABLEKS                       R12 R0 K10 ["Axis"]
       79 GETTABLEKS                       R11 R12 K20 ["Position"]
       81 GETTABLEKS                       R13 R0 K10 ["Axis"]
       83 GETTABLEKS                       R12 R13 K21 ["LookVector"]
       85 GETTABLEKS                       R13 R1 K16 ["Origin"]
       87 GETTABLEKS                       R15 R1 K22 ["Direction"]
       89 GETTABLEKS                       R14 R15 K23 ["Unit"]
       91 CALL                             R10 4 2
       92 JUMPIF                           R10 ; [+2]
       93 LOADNIL                          R12
       94 RETURN                           R12 1
       95 GETUPVAL                         R13 1
       96 GETTABLEKS                       R12 R13 K19 ["intersectRayRay"]
       98 GETTABLEKS                       R13 R1 K16 ["Origin"]
      100 GETTABLEKS                       R15 R1 K22 ["Direction"]
      102 GETTABLEKS                       R14 R15 K23 ["Unit"]
      104 GETTABLEKS                       R16 R0 K10 ["Axis"]
      106 GETTABLEKS                       R15 R16 K20 ["Position"]
      108 GETTABLEKS                       R17 R0 K10 ["Axis"]
      110 GETTABLEKS                       R16 R17 K21 ["LookVector"]
      112 CALL                             R12 4 2
      113 GETTABLEKS                       R18 R0 K10 ["Axis"]
      115 GETTABLEKS                       R17 R18 K20 ["Position"]
      117 GETTABLEKS                       R20 R0 K10 ["Axis"]
      119 GETTABLEKS                       R19 R20 K21 ["LookVector"]
      121 MUL                              R18 R19 R11
      122 ADD                              R16 R17 R18
      123 GETTABLEKS                       R18 R1 K16 ["Origin"]
      125 GETTABLEKS                       R21 R1 K22 ["Direction"]
      127 GETTABLEKS                       R20 R21 K23 ["Unit"]
      129 MUL                              R19 R20 R13
      130 ADD                              R17 R18 R19
      131 SUB                              R15 R16 R17
      132 GETTABLEKS                       R14 R15 K24 ["Magnitude"]
      134 JUMPIFNOTLT                      R14 R4 ; [+6]
      136 JUMPIFNOTLT                      R6 R11 ; [+4]
      138 JUMPIFNOTLT                      R11 R9 ; [+2]
      140 RETURN                           R13 1
      141 JUMPIFNOTLT                      R14 R5 ; [+7]
      143 JUMPIFNOTLT                      R9 R11 ; [+5]
      145 ADD                              R15 R9 R8
      146 JUMPIFNOTLT                      R11 R15 ; [+2]
      148 RETURN                           R13 1
      149 LOADNIL                          R15
      150 RETURN                           R15 1

PROTO_3:
        0 MULK                             R2 R0 K0 [4]
        1 MULK                             R3 R0 K1 [0.6]
        2 ORK                              R5 R1 K2 [0]
        3 MUL                              R4 R2 R5
        4 ADD                              R3 R3 R4
        5 MULK                             R4 R2 K3 [0.25]
        6 MOVE                             R5 R3
        7 ADD                              R6 R2 R4
        8 RETURN                           R5 2

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
       46 GETTABLEKS                       R8 R5 K20 ["PureComponent"]
       48 LOADK                            R10 K21 ["MoveHandleView"]
       49 NAMECALL                         R8 R8 K22 ["extend"]
       51 CALL                             R8 2 1
       52 MOVE                             R10 R7
       53 CALL                             R10 0 1
       54 JUMPIFNOT                        R10 ; [+2]
       55 LOADK                            R9 K23 [0.4]
       56 JUMP                             ; [+1]
       57 LOADK                            R9 K24 [0.34]
       58 DUPCLOSURE                       R10 K25 [PROTO_0]
       59 SETTABLEKS                       R10 R8 K26 ["init"]
       61 DUPCLOSURE                       R10 K27 [PROTO_1]
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R1
       68 SETTABLEKS                       R10 R8 K28 ["render"]
       70 DUPCLOSURE                       R10 K29 [PROTO_2]
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R4
       73 SETTABLEKS                       R10 R8 K30 ["hitTest"]
       75 DUPCLOSURE                       R10 K31 [PROTO_3]
       76 SETTABLEKS                       R10 R8 K32 ["getHandleDimensionForScale"]
       78 RETURN                           R8 1
