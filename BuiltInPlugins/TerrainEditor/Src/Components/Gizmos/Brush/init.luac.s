PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["Value"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["BrushSettings"]
        7 GETTABLE                         R2 R3 R4
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["BrushShape"]
       11 GETTABLE                         R3 R2 R4
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K3 ["BrushSize"]
       15 GETTABLE                         R4 R2 R5
       16 GETTABLEKS                       R6 R4 K4 ["Size"]
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R7 R7 K5 ["VoxelResolution"]
       21 MUL                              R5 R6 R7
       22 GETUPVAL                         R7 4
       23 GETTABLEKS                       R7 R7 K6 ["Sphere"]
       25 JUMPIFNOTEQ                      R3 R7 ; [+3]
       27 MOVE                             R6 R5
       28 JUMP                             ; [+6]
       29 GETTABLEKS                       R7 R4 K7 ["Height"]
       31 GETUPVAL                         R8 3
       32 GETTABLEKS                       R8 R8 K5 ["VoxelResolution"]
       34 MUL                              R6 R7 R8
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R8 R8 K8 ["PlaneLock"]
       38 GETTABLE                         R7 R2 R8
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R9 R9 K9 ["PlaneTransform"]
       42 GETTABLE                         R8 R2 R9
       43 GETUPVAL                         R10 2
       44 GETTABLEKS                       R10 R10 K10 ["ManualPlaneLock"]
       46 GETTABLE                         R9 R2 R10
       47 GETUPVAL                         R10 5
       48 GETTABLEKS                       R11 R0 K11 ["Tool"]
       50 GETTABLEKS                       R12 R0 K0 ["Value"]
       52 JUMPIFNOT                        R9 ; [+14]
       53 GETUPVAL                         R14 6
       54 GETTABLEKS                       R14 R14 K12 ["Manual"]
       56 JUMPIFNOTEQ                      R7 R14 ; [+10]
       58 GETTABLEKS                       R14 R0 K11 ["Tool"]
       60 GETUPVAL                         R15 7
       61 GETTABLEKS                       R15 R15 K13 ["Flatten"]
       63 JUMPIFEQ                         R14 R15 ; [+3]
       65 DUPCLOSURE                       R13 K14 [PROTO_0]
       66 JUMP                             ; [+2]
       67 GETTABLEKS                       R13 R0 K15 ["Save"]
       69 CALL                             R10 3 3
       70 GETUPVAL                         R13 8
       71 GETUPVAL                         R15 2
       72 GETTABLEKS                       R15 R15 K16 ["PivotPosition"]
       74 GETTABLE                         R14 R2 R15
       75 MOVE                             R15 R12
       76 MOVE                             R16 R6
       77 CALL                             R13 3 1
       78 GETUPVAL                         R14 9
       79 LOADK                            R16 K17 ["Brush"]
       80 NAMECALL                         R14 R14 K18 ["use"]
       82 CALL                             R14 2 1
       83 GETTABLEKS                       R16 R14 K19 ["CenterRadiusMultiplier"]
       85 GETTABLEKS                       R17 R10 K20 ["Distance"]
       87 MUL                              R15 R16 R17
       88 GETTABLEKS                       R16 R14 K21 ["CenterTransparency"]
       90 GETTABLEKS                       R17 R14 K22 ["Color"]
       92 GETTABLEKS                       R18 R14 K23 ["MainTransparency"]
       94 GETUPVAL                         R20 6
       95 GETTABLEKS                       R20 R20 K12 ["Manual"]
       97 JUMPIFNOTEQ                      R7 R20 ; [+3]
       99 MOVE                             R19 R8
      100 JUMP                             ; [+9]
      101 GETIMPORT                        R19 K26 [CFrame.lookAt]
      103 FASTCALL                         VECTOR ; [+2]
      104 GETIMPORT                        R20 K29 [Vector3.new]
      106 CALL                             R20 0 1
      107 GETTABLEKS                       R21 R11 K30 ["Normal"]
      109 CALL                             R19 2 1
      110 GETUPVAL                         R20 8
      111 GETUPVAL                         R22 2
      112 GETTABLEKS                       R22 R22 K16 ["PivotPosition"]
      114 GETTABLE                         R21 R2 R22
      115 GETTABLEKS                       R22 R11 K31 ["Position"]
      117 MOVE                             R23 R6
      118 CALL                             R20 3 1
      119 LOADB                            R21 1
      120 GETUPVAL                         R22 6
      121 GETTABLEKS                       R22 R22 K32 ["Auto"]
      123 JUMPIFEQ                         R7 R22 ; [+8]
      125 LOADB                            R21 0
      126 GETUPVAL                         R22 6
      127 GETTABLEKS                       R22 R22 K12 ["Manual"]
      129 JUMPIFNOTEQ                      R7 R22 ; [+2]
      131 NOT                              R21 R9
      132 GETUPVAL                         R23 6
      133 GETTABLEKS                       R23 R23 K12 ["Manual"]
      135 JUMPIFNOTEQ                      R7 R23 ; [+6]
      137 GETTABLEKS                       R24 R8 K31 ["Position"]
      139 SUB                              R23 R8 R24
      140 ADD                              R22 R23 R20
      141 JUMP                             ; [+7]
      142 GETIMPORT                        R22 K26 [CFrame.lookAt]
      144 MOVE                             R23 R20
      145 GETTABLEKS                       R25 R11 K30 ["Normal"]
      147 ADD                              R24 R20 R25
      148 CALL                             R22 2 1
      149 GETTABLEKS                       R23 R0 K11 ["Tool"]
      151 GETUPVAL                         R24 7
      152 GETTABLEKS                       R24 R24 K13 ["Flatten"]
      154 JUMPIFNOTEQ                      R23 R24 ; [+60]
      156 LOADB                            R21 1
      157 GETUPVAL                         R24 2
      158 GETTABLEKS                       R24 R24 K33 ["FlattenPlane"]
      160 GETTABLE                         R23 R2 R24
      161 GETUPVAL                         R24 10
      162 GETTABLEKS                       R24 R24 K32 ["Auto"]
      164 JUMPIFNOTEQ                      R23 R24 ; [+18]
      166 GETIMPORT                        R23 K26 [CFrame.lookAt]
      168 FASTCALL                         VECTOR ; [+2]
      169 GETIMPORT                        R24 K29 [Vector3.new]
      171 CALL                             R24 0 1
      172 LOADK                            R25 K34 [{0, 1, 0}]
      173 CALL                             R23 2 1
      174 MOVE                             R19 R23
      175 GETIMPORT                        R23 K26 [CFrame.lookAt]
      177 MOVE                             R24 R20
      178 LOADK                            R26 K34 [{0, 1, 0}]
      179 ADD                              R25 R20 R26
      180 CALL                             R23 2 1
      181 MOVE                             R22 R23
      182 JUMP                             ; [+32]
      183 GETIMPORT                        R23 K26 [CFrame.lookAt]
      185 FASTCALL                         VECTOR ; [+2]
      186 GETIMPORT                        R24 K29 [Vector3.new]
      188 CALL                             R24 0 1
      189 LOADK                            R25 K34 [{0, 1, 0}]
      190 CALL                             R23 2 1
      191 MOVE                             R19 R23
      192 GETTABLEKS                       R24 R20 K35 ["X"]
      194 LOADN                            R25 0
      195 GETTABLEKS                       R26 R20 K36 ["Z"]
      197 FASTCALL                         VECTOR ; [+2]
      198 GETIMPORT                        R23 K29 [Vector3.new]
      200 CALL                             R23 3 1
      201 LOADK                            R25 K34 [{0, 1, 0}]
      202 GETUPVAL                         R27 2
      203 GETTABLEKS                       R27 R27 K37 ["FixedYPlane"]
      205 GETTABLE                         R26 R2 R27
      206 MUL                              R24 R25 R26
      207 ADD                              R20 R23 R24
      208 GETIMPORT                        R23 K26 [CFrame.lookAt]
      210 MOVE                             R24 R20
      211 LOADK                            R26 K34 [{0, 1, 0}]
      212 ADD                              R25 R20 R26
      213 CALL                             R23 2 1
      214 MOVE                             R22 R23
      215 GETTABLEKS                       R23 R0 K11 ["Tool"]
      217 GETUPVAL                         R24 7
      218 GETTABLEKS                       R24 R24 K13 ["Flatten"]
      220 JUMPIFEQ                         R23 R24 ; [+9]
      222 JUMPIFNOT                        R9 ; [+7]
      223 GETUPVAL                         R23 6
      224 GETTABLEKS                       R23 R23 K12 ["Manual"]
      226 JUMPIFNOTEQ                      R7 R23 ; [+3]
      228 LOADNIL                          R23
      229 RETURN                           R23 1
      230 GETUPVAL                         R24 4
      231 GETTABLEKS                       R24 R24 K6 ["Sphere"]
      233 JUMPIFNOTEQ                      R3 R24 ; [+23]
      235 GETUPVAL                         R23 11
      236 GETTABLEKS                       R23 R23 K38 ["createElement"]
      238 GETUPVAL                         R24 12
      239 DUPTABLE                         R25 K42 [{"Adornee", "CFrame", "Color", "Radius", "Transparency"}]
      240 SETTABLEKS                       R1 R25 K39 ["Adornee"]
      242 GETIMPORT                        R26 K43 [CFrame.new]
      244 MOVE                             R27 R13
      245 CALL                             R26 1 1
      246 SETTABLEKS                       R26 R25 K24 ["CFrame"]
      248 SETTABLEKS                       R17 R25 K22 ["Color"]
      250 DIVK                             R26 R5 K44 [2]
      251 SETTABLEKS                       R26 R25 K40 ["Radius"]
      253 SETTABLEKS                       R18 R25 K41 ["Transparency"]
      255 CALL                             R23 2 1
      256 JUMP                             ; [+67]
      257 GETUPVAL                         R24 4
      258 GETTABLEKS                       R24 R24 K45 ["Cube"]
      260 JUMPIFNOTEQ                      R3 R24 ; [+30]
      262 GETUPVAL                         R23 11
      263 GETTABLEKS                       R23 R23 K38 ["createElement"]
      265 GETUPVAL                         R24 13
      266 DUPTABLE                         R25 K46 [{"Adornee", "CFrame", "Color", "Size", "Transparency"}]
      267 SETTABLEKS                       R1 R25 K39 ["Adornee"]
      269 GETIMPORT                        R26 K43 [CFrame.new]
      271 MOVE                             R27 R13
      272 CALL                             R26 1 1
      273 SETTABLEKS                       R26 R25 K24 ["CFrame"]
      275 SETTABLEKS                       R17 R25 K22 ["Color"]
      277 FASTCALL3                        VECTOR R5 R6 R5
      279 MOVE                             R27 R5
      280 MOVE                             R28 R6
      281 MOVE                             R29 R5
      282 GETIMPORT                        R26 K29 [Vector3.new]
      284 CALL                             R26 3 1
      285 SETTABLEKS                       R26 R25 K4 ["Size"]
      287 SETTABLEKS                       R18 R25 K41 ["Transparency"]
      289 CALL                             R23 2 1
      290 JUMP                             ; [+33]
      291 GETUPVAL                         R24 4
      292 GETTABLEKS                       R24 R24 K47 ["Cylinder"]
      294 JUMPIFNOTEQ                      R3 R24 ; [+28]
      296 GETUPVAL                         R23 11
      297 GETTABLEKS                       R23 R23 K38 ["createElement"]
      299 GETUPVAL                         R24 14
      300 DUPTABLE                         R25 K48 [{"Adornee", "CFrame", "Color", "Height", "Radius", "Transparency"}]
      301 SETTABLEKS                       R1 R25 K39 ["Adornee"]
      303 GETIMPORT                        R27 K50 [CFrame.Angles]
      305 LOADK                            R28 K51 [1.5707963267949]
      306 LOADN                            R29 0
      307 LOADN                            R30 0
      308 CALL                             R27 3 1
      309 ADD                              R26 R27 R13
      310 SETTABLEKS                       R26 R25 K24 ["CFrame"]
      312 SETTABLEKS                       R17 R25 K22 ["Color"]
      314 SETTABLEKS                       R6 R25 K7 ["Height"]
      316 DIVK                             R26 R5 K44 [2]
      317 SETTABLEKS                       R26 R25 K40 ["Radius"]
      319 SETTABLEKS                       R18 R25 K41 ["Transparency"]
      321 CALL                             R23 2 1
      322 JUMP                             ; [+1]
      323 LOADNIL                          R23
      324 GETUPVAL                         R24 15
      325 GETTABLEKS                       R24 R24 K52 ["createPortal"]
      327 DUPTABLE                         R25 K55 [{"BrushVisual", "Grid"}]
      328 GETUPVAL                         R26 11
      329 GETTABLEKS                       R26 R26 K38 ["createElement"]
      331 LOADK                            R27 K56 ["Folder"]
      332 NEWTABLE                         R28 0 0
      334 DUPTABLE                         R29 K59 [{"Cursor", "Central"}]
      335 SETTABLEKS                       R23 R29 K57 ["Cursor"]
      337 GETUPVAL                         R30 11
      338 GETTABLEKS                       R30 R30 K38 ["createElement"]
      340 LOADK                            R31 K60 ["SphereHandleAdornment"]
      341 DUPTABLE                         R32 K63 [{"Adornee", "AlwaysOnTop", "CFrame", "Color", "Radius", "Transparency", "ZIndex"}]
      342 SETTABLEKS                       R1 R32 K39 ["Adornee"]
      344 LOADB                            R33 1
      345 SETTABLEKS                       R33 R32 K61 ["AlwaysOnTop"]
      347 GETIMPORT                        R33 K43 [CFrame.new]
      349 MOVE                             R34 R13
      350 CALL                             R33 1 1
      351 SETTABLEKS                       R33 R32 K24 ["CFrame"]
      353 SETTABLEKS                       R17 R32 K22 ["Color"]
      355 SETTABLEKS                       R15 R32 K40 ["Radius"]
      357 SETTABLEKS                       R16 R32 K41 ["Transparency"]
      359 LOADN                            R33 1
      360 SETTABLEKS                       R33 R32 K62 ["ZIndex"]
      362 CALL                             R30 2 1
      363 SETTABLEKS                       R30 R29 K58 ["Central"]
      365 CALL                             R26 3 1
      366 SETTABLEKS                       R26 R25 K53 ["BrushVisual"]
      368 JUMPIFNOT                        R21 ; [+22]
      369 GETUPVAL                         R26 11
      370 GETTABLEKS                       R26 R26 K38 ["createElement"]
      372 GETUPVAL                         R27 16
      373 DUPTABLE                         R28 K66 [{"AlwaysOnTop", "Center", "Size", "Transform"}]
      374 LOADB                            R29 1
      375 SETTABLEKS                       R29 R28 K61 ["AlwaysOnTop"]
      377 SETTABLEKS                       R19 R28 K64 ["Center"]
      379 GETUPVAL                         R30 2
      380 GETTABLEKS                       R30 R30 K3 ["BrushSize"]
      382 GETTABLE                         R29 R2 R30
      383 GETTABLEKS                       R29 R29 K4 ["Size"]
      385 SETTABLEKS                       R29 R28 K4 ["Size"]
      387 SETTABLEKS                       R22 R28 K65 ["Transform"]
      389 CALL                             R26 2 1
      390 JUMP                             ; [+1]
      391 LOADNIL                          R26
      392 SETTABLEKS                       R26 R25 K54 ["Grid"]
      394 GETUPVAL                         R26 17
      395 CALL                             R24 2 -1
      396 RETURN                           R24 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Stylizer"]
       32 GETTABLEKS                       R6 R0 K12 ["Src"]
       34 GETTABLEKS                       R6 R6 K13 ["Hooks"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R6 K14 ["useRaycast"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R6 K15 ["useTerrain"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R10 R0 K12 ["Src"]
       50 GETTABLEKS                       R10 R10 K16 ["Resources"]
       52 GETTABLEKS                       R10 R10 K17 ["Constants"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R0 K12 ["Src"]
       59 GETTABLEKS                       R11 R11 K18 ["Util"]
       61 GETTABLEKS                       R11 R11 K19 ["ConvertForPivot"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K5 [require]
       66 GETIMPORT                        R12 K1 [script]
       68 GETTABLEKS                       R12 R12 K20 ["Box"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K5 [require]
       73 GETIMPORT                        R13 K1 [script]
       75 GETTABLEKS                       R13 R13 K21 ["Cylinder"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K5 [require]
       80 GETIMPORT                        R14 K1 [script]
       82 GETTABLEKS                       R14 R14 K22 ["Sphere"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K5 [require]
       87 GETTABLEKS                       R15 R0 K12 ["Src"]
       89 GETTABLEKS                       R15 R15 K23 ["Components"]
       91 GETTABLEKS                       R15 R15 K24 ["Gizmos"]
       93 GETTABLEKS                       R15 R15 K25 ["Grid"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K5 [require]
       98 GETTABLEKS                       R16 R0 K12 ["Src"]
      100 GETTABLEKS                       R16 R16 K26 ["Types"]
      102 CALL                             R15 1 1
      103 GETTABLEKS                       R16 R15 K27 ["BrushSettings"]
      105 GETTABLEKS                       R17 R15 K28 ["BrushShape"]
      107 GETTABLEKS                       R18 R15 K29 ["Category"]
      109 GETTABLEKS                       R19 R15 K30 ["FlattenPlane"]
      111 GETTABLEKS                       R20 R15 K31 ["PlaneLock"]
      113 GETTABLEKS                       R21 R15 K32 ["Tool"]
      115 GETIMPORT                        R22 K5 [require]
      117 GETTABLEKS                       R23 R0 K12 ["Src"]
      119 GETTABLEKS                       R23 R23 K16 ["Resources"]
      121 GETTABLEKS                       R23 R23 K33 ["Theme"]
      123 CALL                             R22 1 1
      124 GETIMPORT                        R23 K35 [game]
      126 LOADK                            R25 K36 ["CoreGui"]
      127 NAMECALL                         R23 R23 K37 ["GetService"]
      129 CALL                             R23 2 1
      130 DUPCLOSURE                       R24 K38 [PROTO_1]
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R18
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R20
      138 CAPTURE                          VAL R21
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R19
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R23
      149 RETURN                           R24 1
