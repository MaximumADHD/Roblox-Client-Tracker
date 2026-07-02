PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsMouseDown"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+15]
        5 GETIMPORT                        R0 K3 [CFrame.lookAt]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K4 ["Position"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["Position"]
       13 GETUPVAL                         R4 2
       14 CALL                             R4 0 1
       15 ADD                              R2 R3 R4
       16 CALL                             R0 2 1
       17 GETUPVAL                         R1 3
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R7 R7 K1 ["BrushSettings"]
        4 GETTABLE                         R5 R6 R7
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R6 R6 K2 ["BrushSize"]
        8 GETTABLE                         R4 R5 R6
        9 GETTABLEKS                       R4 R4 K3 ["Size"]
       11 DIVK                             R3 R4 K0 [2]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K4 ["VoxelResolution"]
       15 MUL                              R2 R3 R4
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K5 ["TerrainCacheMultiplier"]
       19 MUL                              R1 R2 R3
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K6 ["TerrainCacheMaxRadius"]
       23 FASTCALL2                        MATH_MIN R1 R2 ; [+3]
       25 GETIMPORT                        R0 K9 [math.min]
       27 CALL                             R0 2 1
       28 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Draw"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+11]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R3 R3 K1 ["BrushSettings"]
       10 GETTABLE                         R1 R2 R3
       11 GETUPVAL                         R2 4
       12 GETTABLEKS                       R2 R2 K2 ["TemporarySmooth"]
       14 GETTABLE                         R0 R1 R2
       15 JUMPIFNOT                        R0 ; [+26]
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K3 ["Paint"]
       20 JUMPIFNOTEQ                      R0 R1 ; [+38]
       22 GETUPVAL                         R0 5
       23 JUMPIFNOT                        R0 ; [+35]
       24 GETUPVAL                         R1 5
       25 GETUPVAL                         R2 6
       26 GETTABLEKS                       R2 R2 K4 ["TargetMaterial"]
       28 GETTABLE                         R0 R1 R2
       29 GETIMPORT                        R1 K8 [Enum.Material.Air]
       31 JUMPIFEQ                         R0 R1 ; [+10]
       33 GETUPVAL                         R1 5
       34 GETUPVAL                         R2 6
       35 GETTABLEKS                       R2 R2 K9 ["SourceMaterial"]
       37 GETTABLE                         R0 R1 R2
       38 GETIMPORT                        R1 K8 [Enum.Material.Air]
       40 JUMPIFNOTEQ                      R0 R1 ; [+18]
       42 GETUPVAL                         R3 2
       43 GETUPVAL                         R4 3
       44 GETTABLEKS                       R4 R4 K1 ["BrushSettings"]
       46 GETTABLE                         R2 R3 R4
       47 GETUPVAL                         R3 4
       48 GETTABLEKS                       R3 R3 K10 ["PlaneLock"]
       50 GETTABLE                         R1 R2 R3
       51 GETUPVAL                         R2 7
       52 GETTABLEKS                       R2 R2 K11 ["Off"]
       54 JUMPIFEQ                         R1 R2 ; [+2]
       56 LOADB                            R0 0 +1
       57 LOADB                            R0 1
       58 RETURN                           R0 1
       59 LOADB                            R0 0
       60 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["BrushSettings"]
        4 GETTABLE                         R2 R3 R4
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["BrushShape"]
        8 GETTABLE                         R1 R2 R3
        9 GETUPVAL                         R4 0
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K0 ["BrushSettings"]
       13 GETTABLE                         R3 R4 R5
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K2 ["BrushSize"]
       17 GETTABLE                         R2 R3 R4
       18 GETTABLEKS                       R4 R2 K3 ["Size"]
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K4 ["VoxelResolution"]
       23 MUL                              R3 R4 R5
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K5 ["Sphere"]
       27 JUMPIFNOTEQ                      R1 R5 ; [+3]
       29 MOVE                             R4 R3
       30 JUMP                             ; [+6]
       31 GETTABLEKS                       R5 R2 K6 ["Height"]
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R6 R6 K4 ["VoxelResolution"]
       36 MUL                              R4 R5 R6
       37 GETUPVAL                         R5 5
       38 GETUPVAL                         R8 0
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K0 ["BrushSettings"]
       42 GETTABLE                         R7 R8 R9
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R8 R8 K7 ["PivotPosition"]
       46 GETTABLE                         R6 R7 R8
       47 GETUPVAL                         R7 6
       48 GETTABLEKS                       R7 R7 K8 ["current"]
       50 MOVE                             R8 R4
       51 CALL                             R5 3 1
       52 GETUPVAL                         R6 7
       53 LOADK                            R8 K9 ["BrushVisual"]
       54 NAMECALL                         R6 R6 K10 ["FindFirstChild"]
       56 CALL                             R6 2 1
       57 JUMPIF                           R6 ; [+1]
       58 RETURN                           R0 0
       59 LOADK                            R9 K11 ["Central"]
       60 LOADB                            R10 1
       61 NAMECALL                         R7 R6 K10 ["FindFirstChild"]
       63 CALL                             R7 3 1
       64 JUMPIFNOT                        R7 ; [+33]
       65 GETUPVAL                         R9 4
       66 GETTABLEKS                       R9 R9 K12 ["Cylinder"]
       68 JUMPIFNOTEQ                      R1 R9 ; [+9]
       70 GETIMPORT                        R9 K15 [CFrame.Angles]
       72 LOADK                            R10 K16 [1.5707963267949]
       73 LOADN                            R11 0
       74 LOADN                            R12 0
       75 CALL                             R9 3 1
       76 ADD                              R8 R9 R5
       77 JUMP                             ; [+4]
       78 GETIMPORT                        R8 K18 [CFrame.new]
       80 MOVE                             R9 R5
       81 CALL                             R8 1 1
       82 SETTABLEKS                       R8 R7 K13 ["CFrame"]
       84 LOADK                            R11 K19 ["OnTop"]
       85 LOADB                            R12 1
       86 NAMECALL                         R9 R6 K10 ["FindFirstChild"]
       88 CALL                             R9 3 1
       89 SETTABLEKS                       R8 R9 K13 ["CFrame"]
       91 LOADK                            R11 K20 ["Outline"]
       92 LOADB                            R12 1
       93 NAMECALL                         R9 R6 K10 ["FindFirstChild"]
       95 CALL                             R9 3 1
       96 SETTABLEKS                       R8 R9 K13 ["CFrame"]
       98 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["BrushSettings"]
        5 NEWTABLE                         R3 1 0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["State"]
       10 SETTABLE                         R0 R3 R4
       11 SETTABLE                         R3 R1 R2
       12 GETUPVAL                         R2 2
       13 MOVE                             R3 R0
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 3
       16 MOVE                             R3 R0
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 4
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K3 [{"CacheID", "CachePoint"}]
        5 GETUPVAL                         R4 1
        6 SETTABLEKS                       R4 R3 K1 ["CacheID"]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K2 ["CachePoint"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Origin"]
        3 GETTABLEKS                       R0 R0 K1 ["Position"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["UnitRay"]
        8 GETTABLEKS                       R1 R1 K3 ["Direction"]
       10 GETIMPORT                        R2 K6 [RaycastParams.new]
       12 CALL                             R2 0 1
       13 GETUPVAL                         R5 1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K7 ["BrushSettings"]
       17 GETTABLE                         R4 R5 R6
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K8 ["IgnoreParts"]
       21 GETTABLE                         R3 R4 R5
       22 JUMPIFNOT                        R3 ; [+25]
       23 NEWTABLE                         R3 0 1
       25 GETUPVAL                         R4 4
       26 SETLIST                          R3 R4 1 [1]
       28 GETUPVAL                         R4 5
       29 LOADK                            R6 K9 ["Baseplate"]
       30 NAMECALL                         R4 R4 K10 ["FindFirstChild"]
       32 CALL                             R4 2 1
       33 JUMPIFNOT                        R4 ; [+7]
       34 FASTCALL2                        TABLE_INSERT R3 R4 ; [+5]
       36 MOVE                             R6 R3
       37 MOVE                             R7 R4
       38 GETIMPORT                        R5 K13 [table.insert]
       40 CALL                             R5 2 0
       41 GETIMPORT                        R5 K17 [Enum.RaycastFilterType.Whitelist]
       43 SETTABLEKS                       R5 R2 K18 ["FilterType"]
       45 SETTABLEKS                       R3 R2 K19 ["FilterDescendantsInstances"]
       47 JUMP                             ; [+38]
       48 NEWTABLE                         R3 0 0
       50 GETUPVAL                         R4 6
       51 GETTABLEKS                       R4 R4 K20 ["LocalPlayer"]
       53 JUMPIFNOT                        R4 ; [+17]
       54 GETUPVAL                         R4 6
       55 GETTABLEKS                       R4 R4 K20 ["LocalPlayer"]
       57 GETTABLEKS                       R4 R4 K21 ["Character"]
       59 JUMPIFNOT                        R4 ; [+11]
       60 GETUPVAL                         R6 6
       61 GETTABLEKS                       R6 R6 K20 ["LocalPlayer"]
       63 GETTABLEKS                       R6 R6 K21 ["Character"]
       65 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       67 MOVE                             R5 R3
       68 GETIMPORT                        R4 K13 [table.insert]
       70 CALL                             R4 2 0
       71 GETUPVAL                         R6 5
       72 GETTABLEKS                       R6 R6 K22 ["Terrain"]
       74 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       76 MOVE                             R5 R3
       77 GETIMPORT                        R4 K13 [table.insert]
       79 CALL                             R4 2 0
       80 GETIMPORT                        R4 K24 [Enum.RaycastFilterType.Blacklist]
       82 SETTABLEKS                       R4 R2 K18 ["FilterType"]
       84 SETTABLEKS                       R3 R2 K19 ["FilterDescendantsInstances"]
       86 GETUPVAL                         R5 1
       87 GETUPVAL                         R6 2
       88 GETTABLEKS                       R6 R6 K7 ["BrushSettings"]
       90 GETTABLE                         R4 R5 R6
       91 GETUPVAL                         R5 3
       92 GETTABLEKS                       R5 R5 K25 ["IgnoreWater"]
       94 GETTABLE                         R3 R4 R5
       95 SETTABLEKS                       R3 R2 K25 ["IgnoreWater"]
       97 LOADB                            R3 1
       98 SETTABLEKS                       R3 R2 K26 ["BruteForceAllSlow"]
      100 GETUPVAL                         R3 5
      101 MOVE                             R5 R0
      102 GETUPVAL                         R7 7
      103 GETTABLEKS                       R7 R7 K27 ["RayLength"]
      105 MUL                              R6 R1 R7
      106 MOVE                             R7 R2
      107 NAMECALL                         R3 R3 K28 ["Raycast"]
      109 CALL                             R3 4 1
      110 GETUPVAL                         R4 8
      111 NAMECALL                         R4 R4 K29 ["IsMouseDown"]
      113 CALL                             R4 1 1
      114 JUMPIFNOT                        R4 ; [+95]
      115 GETUPVAL                         R4 9
      116 CALL                             R4 0 1
      117 JUMPIFNOT                        R4 ; [+92]
      118 JUMPIFNOT                        R3 ; [+3]
      119 GETTABLEKS                       R4 R3 K1 ["Position"]
      121 JUMP                             ; [+3]
      122 GETUPVAL                         R4 10
      123 GETTABLEKS                       R4 R4 K1 ["Position"]
      125 GETUPVAL                         R6 11
      126 GETTABLEKS                       R6 R6 K30 ["CachePoint"]
      128 SUB                              R5 R4 R6
      129 GETTABLEKS                       R6 R5 K31 ["magnitude"]
      131 GETUPVAL                         R7 11
      132 GETTABLEKS                       R7 R7 K32 ["CacheID"]
      134 GETUPVAL                         R9 12
      135 CALL                             R9 0 1
      136 GETUPVAL                         R10 7
      137 GETTABLEKS                       R10 R10 K33 ["TerrainCacheUpdateThreshold"]
      139 MUL                              R8 R9 R10
      140 JUMPIFLT                         R8 R6 ; [+2]
      142 JUMPIF                           R7 ; [+18]
      143 GETUPVAL                         R8 5
      144 GETUPVAL                         R11 11
      145 GETTABLEKS                       R11 R11 K32 ["CacheID"]
      147 ORK                              R10 R11 K34 [""]
      148 MOVE                             R11 R4
      149 GETUPVAL                         R12 12
      150 CALL                             R12 0 -1
      151 NAMECALL                         R8 R8 K35 ["CacheCurrentTerrain"]
      153 CALL                             R8 -1 1
      154 MOVE                             R7 R8
      155 GETUPVAL                         R8 13
      156 NEWCLOSURE                       R9 P0
      157 CAPTURE                          UPVAL U14
      158 CAPTURE                          REF R7
      159 CAPTURE                          VAL R4
      160 CALL                             R8 1 0
      161 GETUPVAL                         R10 1
      162 GETUPVAL                         R11 2
      163 GETTABLEKS                       R11 R11 K7 ["BrushSettings"]
      165 GETTABLE                         R9 R10 R11
      166 GETUPVAL                         R10 3
      167 GETTABLEKS                       R10 R10 K8 ["IgnoreParts"]
      169 GETTABLE                         R8 R9 R10
      170 JUMPIF                           R8 ; [+25]
      171 GETUPVAL                         R8 5
      172 MOVE                             R10 R7
      173 MOVE                             R11 R0
      174 GETUPVAL                         R13 7
      175 GETTABLEKS                       R13 R13 K27 ["RayLength"]
      177 MUL                              R12 R1 R13
      178 LOADB                            R13 1
      179 MOVE                             R14 R2
      180 NAMECALL                         R8 R8 K36 ["RaycastCachedTerrain"]
      182 CALL                             R8 6 1
      183 JUMPIFNOT                        R3 ; [+9]
      184 JUMPIFNOT                        R8 ; [+8]
      185 GETTABLEKS                       R9 R8 K37 ["Distance"]
      187 GETTABLEKS                       R10 R3 K37 ["Distance"]
      189 JUMPIFNOTLT                      R9 R10 ; [+19]
      191 MOVE                             R3 R8
      192 JUMP                             ; [+16]
      193 JUMPIFNOT                        R8 ; [+15]
      194 MOVE                             R3 R8
      195 JUMP                             ; [+13]
      196 GETUPVAL                         R8 5
      197 MOVE                             R10 R7
      198 MOVE                             R11 R0
      199 GETUPVAL                         R13 7
      200 GETTABLEKS                       R13 R13 K27 ["RayLength"]
      202 MUL                              R12 R1 R13
      203 LOADB                            R13 1
      204 MOVE                             R14 R2
      205 NAMECALL                         R8 R8 K36 ["RaycastCachedTerrain"]
      207 CALL                             R8 6 1
      208 MOVE                             R3 R8
      209 CLOSEUPVALS                      R7
      210 JUMPIFNOT                        R3 ; [+40]
      211 DUPTABLE                         R4 K41 [{"Distance", "Instance", "Material", "Normal", "Position"}]
      212 GETTABLEKS                       R6 R3 K1 ["Position"]
      214 SUB                              R5 R6 R0
      215 GETTABLEKS                       R5 R5 K42 ["Magnitude"]
      217 SETTABLEKS                       R5 R4 K37 ["Distance"]
      219 GETTABLEKS                       R5 R3 K38 ["Instance"]
      221 SETTABLEKS                       R5 R4 K38 ["Instance"]
      223 GETTABLEKS                       R5 R3 K39 ["Material"]
      225 SETTABLEKS                       R5 R4 K39 ["Material"]
      227 GETTABLEKS                       R5 R3 K40 ["Normal"]
      229 SETTABLEKS                       R5 R4 K40 ["Normal"]
      231 GETTABLEKS                       R5 R3 K1 ["Position"]
      233 SETTABLEKS                       R5 R4 K1 ["Position"]
      235 MOVE                             R3 R4
      236 GETUPVAL                         R4 15
      237 GETTABLEKS                       R4 R4 K43 ["current"]
      239 GETUPVAL                         R5 16
      240 GETTABLEKS                       R5 R5 K44 ["Pending"]
      242 JUMPIFNOTEQ                      R4 R5 ; [+74]
      244 GETUPVAL                         R4 15
      245 GETUPVAL                         R5 16
      246 GETTABLEKS                       R5 R5 K45 ["Active"]
      248 SETTABLEKS                       R5 R4 K43 ["current"]
      250 JUMP                             ; [+66]
      251 GETUPVAL                         R4 15
      252 GETTABLEKS                       R4 R4 K43 ["current"]
      254 JUMPIFNOTEQKS                    R4 K45 ["Active"] ; [+7]
      256 DUPTABLE                         R4 K50 [{["Distance"] = -1, ["Instance"] = , ["Material"], ["Normal"] = {0, 1, 0}, ["Position"] = {0, 0, 0}}]
      257 GETIMPORT                        R5 K52 [Enum.Material.Air]
      259 SETTABLEKS                       R5 R4 K39 ["Material"]
      261 RETURN                           R4 1
      262 GETUPVAL                         R4 17
      263 CALL                             R4 0 1
      264 GETUPVAL                         R5 18
      265 MOVE                             R6 R0
      266 MOVE                             R7 R1
      267 LOADK                            R8 K49 [{0, 0, 0}]
      268 LOADK                            R9 K48 [{0, 1, 0}]
      269 CALL                             R5 4 2
      270 JUMPIFNOT                        R5 ; [+16]
      271 JUMPIFNOT                        R6 ; [+15]
      272 LOADN                            R7 0
      273 JUMPIFNOTLE                      R7 R6 ; [+13]
      275 DUPTABLE                         R7 K53 [{"Distance", "Normal", "Position"}]
      276 SUB                              R8 R5 R0
      277 GETTABLEKS                       R8 R8 K42 ["Magnitude"]
      279 SETTABLEKS                       R8 R7 K37 ["Distance"]
      281 SETTABLEKS                       R4 R7 K40 ["Normal"]
      283 SETTABLEKS                       R5 R7 K1 ["Position"]
      285 MOVE                             R3 R7
      286 JUMP                             ; [+16]
      287 GETUPVAL                         R9 7
      288 GETTABLEKS                       R9 R9 K27 ["RayLength"]
      290 MUL                              R8 R1 R9
      291 ADD                              R7 R0 R8
      292 DUPTABLE                         R8 K53 [{"Distance", "Normal", "Position"}]
      293 SUB                              R9 R7 R0
      294 GETTABLEKS                       R9 R9 K42 ["Magnitude"]
      296 SETTABLEKS                       R9 R8 K37 ["Distance"]
      298 SETTABLEKS                       R4 R8 K40 ["Normal"]
      300 SETTABLEKS                       R7 R8 K1 ["Position"]
      302 MOVE                             R3 R8
      303 GETUPVAL                         R7 15
      304 GETTABLEKS                       R7 R7 K43 ["current"]
      306 GETUPVAL                         R8 16
      307 GETTABLEKS                       R8 R8 K44 ["Pending"]
      309 JUMPIFNOTEQ                      R7 R8 ; [+7]
      311 GETUPVAL                         R7 15
      312 GETUPVAL                         R8 16
      313 GETTABLEKS                       R8 R8 K54 ["Inactive"]
      315 SETTABLEKS                       R8 R7 K43 ["current"]
      317 GETUPVAL                         R4 19
      318 GETUPVAL                         R5 1
      319 GETUPVAL                         R7 8
      320 NAMECALL                         R7 R7 K29 ["IsMouseDown"]
      322 CALL                             R7 1 1
      323 JUMPIFNOT                        R7 ; [+2]
      324 GETUPVAL                         R6 20
      325 JUMP                             ; [+10]
      326 GETIMPORT                        R6 K57 [CFrame.lookAt]
      328 GETTABLEKS                       R7 R3 K1 ["Position"]
      330 GETTABLEKS                       R9 R3 K1 ["Position"]
      332 GETUPVAL                         R10 17
      333 CALL                             R10 0 1
      334 ADD                              R8 R9 R10
      335 CALL                             R6 2 1
      336 GETUPVAL                         R7 0
      337 GETUPVAL                         R8 21
      338 CALL                             R4 4 1
      339 JUMPIFNOT                        R4 ; [+1]
      340 MOVE                             R3 R4
      341 GETUPVAL                         R7 1
      342 GETUPVAL                         R8 2
      343 GETTABLEKS                       R8 R8 K7 ["BrushSettings"]
      345 GETTABLE                         R6 R7 R8
      346 GETUPVAL                         R7 3
      347 GETTABLEKS                       R7 R7 K58 ["Snapping"]
      349 GETTABLE                         R5 R6 R7
      350 GETUPVAL                         R6 22
      351 GETIMPORT                        R7 K60 [table.clone]
      353 MOVE                             R8 R3
      354 CALL                             R7 1 -1
      355 CALL                             R6 -1 0
      356 JUMPIFEQKNIL                     R5 ; [+45]
      358 GETUPVAL                         R6 23
      359 GETTABLEKS                       R6 R6 K61 ["Off"]
      361 JUMPIFEQ                         R5 R6 ; [+40]
      363 GETUPVAL                         R6 24
      364 GETTABLEKS                       R7 R3 K1 ["Position"]
      366 CALL                             R6 1 1
      367 GETUPVAL                         R9 1
      368 GETUPVAL                         R10 2
      369 GETTABLEKS                       R10 R10 K7 ["BrushSettings"]
      371 GETTABLE                         R8 R9 R10
      372 GETUPVAL                         R9 3
      373 GETTABLEKS                       R9 R9 K62 ["FixedYPlane"]
      375 GETTABLE                         R7 R8 R9
      376 JUMPIFNOT                        R7 ; [+18]
      377 GETTABLEKS                       R8 R6 K63 ["X"]
      379 GETUPVAL                         R11 1
      380 GETUPVAL                         R12 2
      381 GETTABLEKS                       R12 R12 K7 ["BrushSettings"]
      383 GETTABLE                         R10 R11 R12
      384 GETUPVAL                         R11 3
      385 GETTABLEKS                       R11 R11 K64 ["FixedYPlanePosition"]
      387 GETTABLE                         R9 R10 R11
      388 GETTABLEKS                       R10 R6 K65 ["Z"]
      390 FASTCALL                         VECTOR ; [+2]
      391 GETIMPORT                        R7 K67 [Vector3.new]
      393 CALL                             R7 3 1
      394 MOVE                             R6 R7
      395 SUB                              R7 R6 R0
      396 GETTABLEKS                       R7 R7 K42 ["Magnitude"]
      398 SETTABLEKS                       R7 R3 K37 ["Distance"]
      400 SETTABLEKS                       R6 R3 K1 ["Position"]
      402 GETUPVAL                         R6 25
      403 GETTABLEKS                       R7 R3 K1 ["Position"]
      405 SETTABLEKS                       R7 R6 K43 ["current"]
      407 RETURN                           R3 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["CacheID"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 1
        4 DUPTABLE                         R1 K2 [{"CacheID", "CachePoint"}]
        5 GETUPVAL                         R2 0
        6 LOADK                            R4 K3 [""]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K4 ["Position"]
       10 GETUPVAL                         R6 2
       11 CALL                             R6 0 -1
       12 NAMECALL                         R2 R2 K5 ["CacheCurrentTerrain"]
       14 CALL                             R2 -1 1
       15 SETTABLEKS                       R2 R1 K0 ["CacheID"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K4 ["Position"]
       20 SETTABLEKS                       R2 R1 K1 ["CachePoint"]
       22 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+12]
        3 GETUPVAL                         R0 1
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 5
       10 GETUPVAL                         R1 6
       11 GETTABLEKS                       R1 R1 K0 ["Pending"]
       13 SETTABLEKS                       R1 R0 K1 ["current"]
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CacheID"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["CacheID"]
        8 NAMECALL                         R0 R0 K1 ["ClearCachedTerrain"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 2
       12 DUPTABLE                         R1 K4 [{["CachePoint"] = {0, 0, 0}}]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 3
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K5 ["current"]
       18 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isMouseMoveReserved"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+9]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 0
        8 NAMECALL                         R2 R2 K1 ["IsMouseDown"]
       10 CALL                             R2 1 -1
       11 CALL                             R1 -1 -1
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 3
       15 JUMPIF                           R0 ; [+3]
       16 GETUPVAL                         R0 4
       17 LOADB                            R1 1
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["TerrainRaycast"]
        2 NAMECALL                         R0 R0 K1 ["UnbindFromRenderStep"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["TerrainRaycast"]
        2 LOADN                            R3 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 NAMECALL                         R0 R0 K1 ["BindToRenderStep"]
       11 CALL                             R0 4 0
       12 DUPCLOSURE                       R0 K2 [PROTO_12]
       13 CAPTURE                          UPVAL U0
       14 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["use"]
        3 CALL                             R3 1 1
        4 NAMECALL                         R4 R3 K1 ["getMouse"]
        6 CALL                             R4 1 1
        7 GETUPVAL                         R5 1
        8 DUPTABLE                         R6 K7 [{["Distance"], ["Normal"] = {0, 1, 0}, ["Position"] = {0, 0, 0}}]
        9 GETTABLEKS                       R7 R4 K8 ["Origin"]
       11 GETTABLEKS                       R7 R7 K5 ["Position"]
       13 GETTABLEKS                       R7 R7 K9 ["Magnitude"]
       15 SETTABLEKS                       R7 R6 K2 ["Distance"]
       17 CALL                             R5 1 2
       18 GETUPVAL                         R7 1
       19 DUPTABLE                         R8 K7 [{["Distance"], ["Normal"] = {0, 1, 0}, ["Position"] = {0, 0, 0}}]
       20 GETTABLEKS                       R9 R4 K8 ["Origin"]
       22 GETTABLEKS                       R9 R9 K5 ["Position"]
       24 GETTABLEKS                       R9 R9 K9 ["Magnitude"]
       26 SETTABLEKS                       R9 R8 K2 ["Distance"]
       28 CALL                             R7 1 2
       29 GETUPVAL                         R9 1
       30 GETIMPORT                        R10 K12 [CFrame.lookAt]
       32 GETTABLEKS                       R11 R5 K5 ["Position"]
       34 GETTABLEKS                       R13 R5 K5 ["Position"]
       36 LOADK                            R14 K4 [{0, 1, 0}]
       37 ADD                              R12 R13 R14
       38 CALL                             R10 2 -1
       39 CALL                             R9 -1 2
       40 GETUPVAL                         R11 2
       41 NEWCLOSURE                       R12 P0
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          VAL R10
       46 NEWTABLE                         R13 0 2
       48 MOVE                             R14 R0
       49 MOVE                             R15 R5
       50 SETLIST                          R13 R14 2 [1]
       52 CALL                             R11 2 0
       53 GETUPVAL                         R11 1
       54 DUPTABLE                         R12 K16 [{["CacheID"] = , ["CachePoint"] = {0, 0, 0}}]
       55 CALL                             R11 1 2
       56 GETUPVAL                         R13 1
       57 NAMECALL                         R14 R3 K17 ["isMouseMoveReserved"]
       59 CALL                             R14 1 -1
       60 CALL                             R13 -1 2
       61 GETUPVAL                         R15 4
       62 LOADNIL                          R16
       63 CALL                             R15 1 1
       64 GETUPVAL                         R16 4
       65 LOADK                            R17 K6 [{0, 0, 0}]
       66 CALL                             R16 1 1
       67 GETUPVAL                         R17 5
       68 CALL                             R17 0 1
       69 GETUPVAL                         R19 6
       70 GETTABLEKS                       R19 R19 K18 ["MaterialSettings"]
       72 GETTABLE                         R18 R1 R19
       73 GETUPVAL                         R19 7
       74 NEWCLOSURE                       R20 P1
       75 CAPTURE                          VAL R1
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          UPVAL U8
       78 CAPTURE                          UPVAL U9
       79 NEWTABLE                         R21 0 1
       81 GETUPVAL                         R24 6
       82 GETTABLEKS                       R24 R24 K19 ["BrushSettings"]
       84 GETTABLE                         R23 R1 R24
       85 GETUPVAL                         R24 8
       86 GETTABLEKS                       R24 R24 K20 ["BrushSize"]
       88 GETTABLE                         R22 R23 R24
       89 SETLIST                          R21 R22 1 [1]
       91 CALL                             R19 2 1
       92 GETUPVAL                         R20 7
       93 NEWCLOSURE                       R21 P2
       94 CAPTURE                          VAL R0
       95 CAPTURE                          UPVAL U10
       96 CAPTURE                          VAL R1
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          UPVAL U8
       99 CAPTURE                          VAL R18
      100 CAPTURE                          UPVAL U11
      101 CAPTURE                          UPVAL U12
      102 NEWTABLE                         R22 0 4
      104 GETUPVAL                         R25 6
      105 GETTABLEKS                       R25 R25 K19 ["BrushSettings"]
      107 GETTABLE                         R24 R1 R25
      108 GETUPVAL                         R25 8
      109 GETTABLEKS                       R25 R25 K21 ["TemporarySmooth"]
      111 GETTABLE                         R23 R24 R25
      112 GETUPVAL                         R26 6
      113 GETTABLEKS                       R26 R26 K19 ["BrushSettings"]
      115 GETTABLE                         R25 R1 R26
      116 GETUPVAL                         R26 8
      117 GETTABLEKS                       R26 R26 K22 ["PlaneLock"]
      119 GETTABLE                         R24 R25 R26
      120 JUMPIFNOT                        R18 ; [+5]
      121 GETUPVAL                         R26 11
      122 GETTABLEKS                       R26 R26 K23 ["TargetMaterial"]
      124 GETTABLE                         R25 R18 R26
      125 JUMP                             ; [+1]
      126 LOADB                            R25 1
      127 MOVE                             R26 R0
      128 SETLIST                          R22 R23 4 [1]
      130 CALL                             R20 2 1
      131 GETUPVAL                         R21 7
      132 NEWCLOSURE                       R22 P3
      133 CAPTURE                          VAL R1
      134 CAPTURE                          UPVAL U6
      135 CAPTURE                          UPVAL U8
      136 CAPTURE                          UPVAL U9
      137 CAPTURE                          UPVAL U13
      138 CAPTURE                          UPVAL U14
      139 CAPTURE                          VAL R16
      140 CAPTURE                          UPVAL U15
      141 NEWTABLE                         R23 0 1
      143 MOVE                             R24 R1
      144 SETLIST                          R23 R24 1 [1]
      146 CALL                             R21 2 1
      147 GETUPVAL                         R22 7
      148 NEWCLOSURE                       R23 P4
      149 CAPTURE                          UPVAL U6
      150 CAPTURE                          UPVAL U8
      151 CAPTURE                          VAL R21
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R2
      154 NEWTABLE                         R24 0 4
      156 MOVE                             R25 R9
      157 MOVE                             R26 R2
      158 MOVE                             R27 R0
      159 MOVE                             R28 R21
      160 SETLIST                          R24 R25 4 [1]
      162 CALL                             R22 2 1
      163 GETUPVAL                         R23 7
      164 NEWCLOSURE                       R24 P5
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R1
      167 CAPTURE                          UPVAL U6
      168 CAPTURE                          UPVAL U8
      169 CAPTURE                          VAL R17
      170 CAPTURE                          UPVAL U16
      171 CAPTURE                          UPVAL U17
      172 CAPTURE                          UPVAL U9
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R20
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R12
      179 CAPTURE                          UPVAL U18
      180 CAPTURE                          VAL R15
      181 CAPTURE                          UPVAL U19
      182 CAPTURE                          UPVAL U3
      183 CAPTURE                          UPVAL U20
      184 CAPTURE                          UPVAL U21
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R0
      187 CAPTURE                          VAL R8
      188 CAPTURE                          UPVAL U22
      189 CAPTURE                          UPVAL U23
      190 CAPTURE                          VAL R16
      191 NEWTABLE                         R25 0 12
      193 NAMECALL                         R27 R3 K24 ["IsMouseDown"]
      195 CALL                             R27 1 1
      196 JUMPIFNOT                        R27 ; [+2]
      197 MOVE                             R26 R9
      198 JUMP                             ; [+1]
      199 LOADB                            R26 1
      200 MOVE                             R27 R11
      201 MOVE                             R28 R19
      202 MOVE                             R29 R20
      203 GETUPVAL                         R32 6
      204 GETTABLEKS                       R32 R32 K19 ["BrushSettings"]
      206 GETTABLE                         R31 R1 R32
      207 GETUPVAL                         R32 8
      208 GETTABLEKS                       R32 R32 K25 ["IgnoreParts"]
      210 GETTABLE                         R30 R31 R32
      211 GETUPVAL                         R33 6
      212 GETTABLEKS                       R33 R33 K19 ["BrushSettings"]
      214 GETTABLE                         R32 R1 R33
      215 GETUPVAL                         R33 8
      216 GETTABLEKS                       R33 R33 K26 ["IgnoreWater"]
      218 GETTABLE                         R31 R32 R33
      219 GETUPVAL                         R34 6
      220 GETTABLEKS                       R34 R34 K19 ["BrushSettings"]
      222 GETTABLE                         R33 R1 R34
      223 GETUPVAL                         R34 8
      224 GETTABLEKS                       R34 R34 K27 ["Snapping"]
      226 GETTABLE                         R32 R33 R34
      227 GETUPVAL                         R35 6
      228 GETTABLEKS                       R35 R35 K19 ["BrushSettings"]
      230 GETTABLE                         R34 R1 R35
      231 GETUPVAL                         R35 8
      232 GETTABLEKS                       R35 R35 K28 ["FixedYPlane"]
      234 GETTABLE                         R33 R34 R35
      235 GETUPVAL                         R36 6
      236 GETTABLEKS                       R36 R36 K19 ["BrushSettings"]
      238 GETTABLE                         R35 R1 R36
      239 GETUPVAL                         R36 8
      240 GETTABLEKS                       R36 R36 K29 ["FixedYPlanePosition"]
      242 GETTABLE                         R34 R35 R36
      243 GETUPVAL                         R37 6
      244 GETTABLEKS                       R37 R37 K19 ["BrushSettings"]
      246 GETTABLE                         R36 R1 R37
      247 GETUPVAL                         R37 8
      248 GETTABLEKS                       R37 R37 K30 ["PlaneTransform"]
      250 GETTABLE                         R35 R36 R37
      251 GETUPVAL                         R38 6
      252 GETTABLEKS                       R38 R38 K19 ["BrushSettings"]
      254 GETTABLE                         R37 R1 R38
      255 GETUPVAL                         R38 8
      256 GETTABLEKS                       R38 R38 K22 ["PlaneLock"]
      258 GETTABLE                         R36 R37 R38
      259 MOVE                             R37 R0
      260 SETLIST                          R25 R26 12 [1]
      262 CALL                             R23 2 1
      263 GETUPVAL                         R24 24
      264 GETTABLEKS                       R25 R4 K31 ["Button1Down"]
      266 NEWCLOSURE                       R26 P6
      267 CAPTURE                          VAL R20
      268 CAPTURE                          VAL R12
      269 CAPTURE                          UPVAL U16
      270 CAPTURE                          VAL R5
      271 CAPTURE                          VAL R19
      272 CAPTURE                          VAL R15
      273 CAPTURE                          UPVAL U19
      274 NEWTABLE                         R27 0 1
      276 MOVE                             R28 R5
      277 SETLIST                          R27 R28 1 [1]
      279 CALL                             R24 3 0
      280 GETUPVAL                         R24 24
      281 GETTABLEKS                       R25 R4 K32 ["Button1Up"]
      283 NEWCLOSURE                       R26 P7
      284 CAPTURE                          VAL R11
      285 CAPTURE                          UPVAL U16
      286 CAPTURE                          VAL R12
      287 CAPTURE                          VAL R15
      288 NEWTABLE                         R27 0 1
      290 MOVE                             R28 R11
      291 SETLIST                          R27 R28 1 [1]
      293 CALL                             R24 3 0
      294 GETUPVAL                         R24 24
      295 GETTABLEKS                       R25 R3 K33 ["MouseMoveAction"]
      297 NEWCLOSURE                       R26 P8
      298 CAPTURE                          VAL R13
      299 CAPTURE                          VAL R14
      300 NEWTABLE                         R27 0 1
      302 MOVE                             R28 R13
      303 SETLIST                          R27 R28 1 [1]
      305 CALL                             R24 3 0
      306 GETUPVAL                         R24 2
      307 NEWCLOSURE                       R25 P9
      308 CAPTURE                          UPVAL U25
      309 CAPTURE                          VAL R3
      310 CAPTURE                          VAL R22
      311 CAPTURE                          VAL R23
      312 CAPTURE                          VAL R13
      313 CAPTURE                          VAL R14
      314 NEWTABLE                         R26 0 1
      316 MOVE                             R27 R22
      317 SETLIST                          R26 R27 1 [1]
      319 CALL                             R24 2 0
      320 MOVE                             R24 R5
      321 MOVE                             R25 R7
      322 GETTABLEKS                       R26 R16 K34 ["current"]
      324 RETURN                           R24 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       23 GETTABLEKS                       R4 R2 K10 ["useEffect"]
       25 GETTABLEKS                       R5 R2 K11 ["useRef"]
       27 GETTABLEKS                       R6 R2 K12 ["useState"]
       29 GETIMPORT                        R7 K5 [require]
       31 GETTABLEKS                       R8 R0 K13 ["Src"]
       33 GETTABLEKS                       R8 R8 K14 ["Controllers"]
       35 GETTABLEKS                       R8 R8 K15 ["ShortcutController"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R0 K13 ["Src"]
       42 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       44 GETTABLEKS                       R9 R9 K17 ["useEventConnection"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K13 ["Src"]
       51 GETTABLEKS                       R10 R10 K16 ["Hooks"]
       53 GETTABLEKS                       R10 R10 K18 ["useTerrain"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R0 K13 ["Src"]
       60 GETTABLEKS                       R11 R11 K19 ["Resources"]
       62 GETTABLEKS                       R11 R11 K20 ["Constants"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R12 R0 K13 ["Src"]
       69 GETTABLEKS                       R12 R12 K21 ["Util"]
       71 GETTABLEKS                       R12 R12 K22 ["ApplyPlaneLock"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R13 R0 K13 ["Src"]
       78 GETTABLEKS                       R13 R13 K21 ["Util"]
       80 GETTABLEKS                       R13 R13 K23 ["ConvertForPivot"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R14 R0 K13 ["Src"]
       87 GETTABLEKS                       R14 R14 K21 ["Util"]
       89 GETTABLEKS                       R14 R14 K24 ["getCameraLookPlane"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETTABLEKS                       R15 R0 K13 ["Src"]
       96 GETTABLEKS                       R15 R15 K21 ["Util"]
       98 GETTABLEKS                       R15 R15 K25 ["getPlaneIntersection"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R16 R0 K13 ["Src"]
      105 GETTABLEKS                       R16 R16 K21 ["Util"]
      107 GETTABLEKS                       R16 R16 K26 ["getSnappedToVoxel"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K28 [game]
      112 LOADK                            R18 K29 ["CoreGui"]
      113 NAMECALL                         R16 R16 K30 ["GetService"]
      115 CALL                             R16 2 1
      116 GETIMPORT                        R17 K28 [game]
      118 LOADK                            R19 K31 ["Players"]
      119 NAMECALL                         R17 R17 K30 ["GetService"]
      121 CALL                             R17 2 1
      122 GETIMPORT                        R18 K28 [game]
      124 LOADK                            R20 K32 ["RunService"]
      125 NAMECALL                         R18 R18 K30 ["GetService"]
      127 CALL                             R18 2 1
      128 GETIMPORT                        R19 K28 [game]
      130 LOADK                            R21 K33 ["Workspace"]
      131 NAMECALL                         R19 R19 K30 ["GetService"]
      133 CALL                             R19 2 1
      134 GETIMPORT                        R20 K5 [require]
      136 GETTABLEKS                       R21 R0 K13 ["Src"]
      138 GETTABLEKS                       R21 R21 K34 ["Types"]
      140 CALL                             R20 1 1
      141 GETTABLEKS                       R21 R20 K35 ["BrushSettings"]
      143 GETTABLEKS                       R22 R20 K36 ["BrushShape"]
      145 GETTABLEKS                       R23 R20 K37 ["Category"]
      147 GETTABLEKS                       R24 R20 K38 ["MaterialSettings"]
      149 GETTABLEKS                       R25 R20 K39 ["PlaneLock"]
      151 GETTABLEKS                       R26 R20 K40 ["RaycastType"]
      153 GETTABLEKS                       R27 R20 K41 ["Snapping"]
      155 GETTABLEKS                       R28 R20 K42 ["Tool"]
      157 DUPCLOSURE                       R29 K43 [PROTO_14]
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R13
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R23
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R28
      169 CAPTURE                          VAL R24
      170 CAPTURE                          VAL R25
      171 CAPTURE                          VAL R22
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R19
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R26
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R27
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R18
      184 RETURN                           R29 1
