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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Origin"]
        3 GETTABLEKS                       R1 R1 K1 ["Position"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["UnitRay"]
        8 GETTABLEKS                       R2 R2 K3 ["Direction"]
       10 NOT                              R3 R0
       11 GETIMPORT                        R4 K6 [RaycastParams.new]
       13 CALL                             R4 0 1
       14 GETUPVAL                         R7 1
       15 GETUPVAL                         R8 2
       16 GETTABLEKS                       R8 R8 K7 ["BrushSettings"]
       18 GETTABLE                         R6 R7 R8
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R7 R7 K8 ["IgnoreParts"]
       22 GETTABLE                         R5 R6 R7
       23 JUMPIFNOT                        R5 ; [+21]
       24 NEWTABLE                         R5 0 1
       26 GETUPVAL                         R6 4
       27 SETLIST                          R5 R6 1 [1]
       29 GETUPVAL                         R6 5
       30 LOADK                            R8 K9 ["Baseplate"]
       31 NAMECALL                         R6 R6 K10 ["FindFirstChild"]
       33 CALL                             R6 2 1
       34 JUMPIFNOT                        R6 ; [+7]
       35 FASTCALL2                        TABLE_INSERT R5 R6 ; [+5]
       37 MOVE                             R8 R5
       38 MOVE                             R9 R6
       39 GETIMPORT                        R7 K13 [table.insert]
       41 CALL                             R7 2 0
       42 SETTABLEKS                       R5 R4 K14 ["IncludeInstances"]
       44 JUMP                             ; [+36]
       45 NEWTABLE                         R5 0 0
       47 GETUPVAL                         R6 6
       48 GETTABLEKS                       R6 R6 K15 ["LocalPlayer"]
       50 JUMPIFNOT                        R6 ; [+17]
       51 GETUPVAL                         R6 6
       52 GETTABLEKS                       R6 R6 K15 ["LocalPlayer"]
       54 GETTABLEKS                       R6 R6 K16 ["Character"]
       56 JUMPIFNOT                        R6 ; [+11]
       57 GETUPVAL                         R8 6
       58 GETTABLEKS                       R8 R8 K15 ["LocalPlayer"]
       60 GETTABLEKS                       R8 R8 K16 ["Character"]
       62 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       64 MOVE                             R7 R5
       65 GETIMPORT                        R6 K13 [table.insert]
       67 CALL                             R6 2 0
       68 JUMPIF                           R3 ; [+10]
       69 GETUPVAL                         R6 7
       70 CALL                             R6 0 1
       71 JUMPIFNOT                        R6 ; [+7]
       72 GETUPVAL                         R8 4
       73 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       75 MOVE                             R7 R5
       76 GETIMPORT                        R6 K13 [table.insert]
       78 CALL                             R6 2 0
       79 SETTABLEKS                       R5 R4 K17 ["ExcludeInstances"]
       81 GETUPVAL                         R7 1
       82 GETUPVAL                         R8 2
       83 GETTABLEKS                       R8 R8 K7 ["BrushSettings"]
       85 GETTABLE                         R6 R7 R8
       86 GETUPVAL                         R7 3
       87 GETTABLEKS                       R7 R7 K18 ["IgnoreWater"]
       89 GETTABLE                         R5 R6 R7
       90 SETTABLEKS                       R5 R4 K18 ["IgnoreWater"]
       92 LOADB                            R5 1
       93 SETTABLEKS                       R5 R4 K19 ["BruteForceAllSlow"]
       95 GETUPVAL                         R5 5
       96 MOVE                             R7 R1
       97 GETUPVAL                         R9 8
       98 GETTABLEKS                       R9 R9 K20 ["RayLength"]
      100 MUL                              R8 R2 R9
      101 MOVE                             R9 R4
      102 NAMECALL                         R5 R5 K21 ["Raycast"]
      104 CALL                             R5 4 1
      105 GETUPVAL                         R6 9
      106 NAMECALL                         R6 R6 K22 ["IsMouseDown"]
      108 CALL                             R6 1 1
      109 JUMPIFNOT                        R6 ; [+106]
      110 GETUPVAL                         R6 7
      111 CALL                             R6 0 1
      112 JUMPIFNOT                        R6 ; [+103]
      113 JUMPIFNOT                        R5 ; [+3]
      114 GETTABLEKS                       R6 R5 K1 ["Position"]
      116 JUMP                             ; [+3]
      117 GETUPVAL                         R6 10
      118 GETTABLEKS                       R6 R6 K1 ["Position"]
      120 GETUPVAL                         R9 1
      121 GETUPVAL                         R10 2
      122 GETTABLEKS                       R10 R10 K7 ["BrushSettings"]
      124 GETTABLE                         R8 R9 R10
      125 GETUPVAL                         R9 3
      126 GETTABLEKS                       R9 R9 K8 ["IgnoreParts"]
      128 GETTABLE                         R7 R8 R9
      129 JUMPIF                           R7 ; [+3]
      130 GETUPVAL                         R7 11
      131 GETTABLEKS                       R6 R7 K23 ["current"]
      133 GETUPVAL                         R8 12
      134 GETTABLEKS                       R8 R8 K24 ["CachePoint"]
      136 SUB                              R7 R6 R8
      137 GETTABLEKS                       R8 R7 K25 ["magnitude"]
      139 GETUPVAL                         R9 12
      140 GETTABLEKS                       R9 R9 K26 ["CacheID"]
      142 GETUPVAL                         R11 13
      143 CALL                             R11 0 1
      144 GETUPVAL                         R12 8
      145 GETTABLEKS                       R12 R12 K27 ["TerrainCacheUpdateThreshold"]
      147 MUL                              R10 R11 R12
      148 JUMPIFLT                         R10 R8 ; [+2]
      150 JUMPIF                           R9 ; [+18]
      151 GETUPVAL                         R10 5
      152 GETUPVAL                         R13 12
      153 GETTABLEKS                       R13 R13 K26 ["CacheID"]
      155 ORK                              R12 R13 K28 [""]
      156 MOVE                             R13 R6
      157 GETUPVAL                         R14 13
      158 CALL                             R14 0 -1
      159 NAMECALL                         R10 R10 K29 ["CacheCurrentTerrain"]
      161 CALL                             R10 -1 1
      162 MOVE                             R9 R10
      163 GETUPVAL                         R10 14
      164 NEWCLOSURE                       R11 P0
      165 CAPTURE                          UPVAL U15
      166 CAPTURE                          REF R9
      167 CAPTURE                          REF R6
      168 CALL                             R10 1 0
      169 GETUPVAL                         R12 1
      170 GETUPVAL                         R13 2
      171 GETTABLEKS                       R13 R13 K7 ["BrushSettings"]
      173 GETTABLE                         R11 R12 R13
      174 GETUPVAL                         R12 3
      175 GETTABLEKS                       R12 R12 K8 ["IgnoreParts"]
      177 GETTABLE                         R10 R11 R12
      178 JUMPIF                           R10 ; [+24]
      179 GETUPVAL                         R10 5
      180 MOVE                             R12 R9
      181 MOVE                             R13 R1
      182 GETUPVAL                         R15 8
      183 GETTABLEKS                       R15 R15 K20 ["RayLength"]
      185 MUL                              R14 R2 R15
      186 LOADB                            R15 1
      187 NAMECALL                         R10 R10 K30 ["RaycastCachedTerrain"]
      189 CALL                             R10 5 1
      190 JUMPIFNOT                        R5 ; [+9]
      191 JUMPIFNOT                        R10 ; [+8]
      192 GETTABLEKS                       R11 R10 K31 ["Distance"]
      194 GETTABLEKS                       R12 R5 K31 ["Distance"]
      196 JUMPIFNOTLT                      R11 R12 ; [+18]
      198 MOVE                             R5 R10
      199 JUMP                             ; [+15]
      200 JUMPIFNOT                        R10 ; [+14]
      201 MOVE                             R5 R10
      202 JUMP                             ; [+12]
      203 GETUPVAL                         R10 5
      204 MOVE                             R12 R9
      205 MOVE                             R13 R1
      206 GETUPVAL                         R15 8
      207 GETTABLEKS                       R15 R15 K20 ["RayLength"]
      209 MUL                              R14 R2 R15
      210 LOADB                            R15 1
      211 NAMECALL                         R10 R10 K30 ["RaycastCachedTerrain"]
      213 CALL                             R10 5 1
      214 MOVE                             R5 R10
      215 CLOSEUPVALS                      R6
      216 JUMPIFNOT                        R5 ; [+40]
      217 DUPTABLE                         R6 K35 [{"Distance", "Instance", "Material", "Normal", "Position"}]
      218 GETTABLEKS                       R8 R5 K1 ["Position"]
      220 SUB                              R7 R8 R1
      221 GETTABLEKS                       R7 R7 K36 ["Magnitude"]
      223 SETTABLEKS                       R7 R6 K31 ["Distance"]
      225 GETTABLEKS                       R7 R5 K32 ["Instance"]
      227 SETTABLEKS                       R7 R6 K32 ["Instance"]
      229 GETTABLEKS                       R7 R5 K33 ["Material"]
      231 SETTABLEKS                       R7 R6 K33 ["Material"]
      233 GETTABLEKS                       R7 R5 K34 ["Normal"]
      235 SETTABLEKS                       R7 R6 K34 ["Normal"]
      237 GETTABLEKS                       R7 R5 K1 ["Position"]
      239 SETTABLEKS                       R7 R6 K1 ["Position"]
      241 MOVE                             R5 R6
      242 GETUPVAL                         R6 16
      243 GETTABLEKS                       R6 R6 K23 ["current"]
      245 GETUPVAL                         R7 17
      246 GETTABLEKS                       R7 R7 K37 ["Pending"]
      248 JUMPIFNOTEQ                      R6 R7 ; [+74]
      250 GETUPVAL                         R6 16
      251 GETUPVAL                         R7 17
      252 GETTABLEKS                       R7 R7 K38 ["Active"]
      254 SETTABLEKS                       R7 R6 K23 ["current"]
      256 JUMP                             ; [+66]
      257 GETUPVAL                         R6 16
      258 GETTABLEKS                       R6 R6 K23 ["current"]
      260 JUMPIFNOTEQKS                    R6 K38 ["Active"] ; [+7]
      262 DUPTABLE                         R6 K43 [{["Distance"] = -1, ["Instance"] = , ["Material"], ["Normal"] = {0, 1, 0}, ["Position"] = {0, 0, 0}}]
      263 GETIMPORT                        R7 K46 [Enum.Material.Air]
      265 SETTABLEKS                       R7 R6 K33 ["Material"]
      267 RETURN                           R6 1
      268 GETUPVAL                         R6 18
      269 CALL                             R6 0 1
      270 GETUPVAL                         R7 19
      271 MOVE                             R8 R1
      272 MOVE                             R9 R2
      273 LOADK                            R10 K42 [{0, 0, 0}]
      274 LOADK                            R11 K41 [{0, 1, 0}]
      275 CALL                             R7 4 2
      276 JUMPIFNOT                        R7 ; [+16]
      277 JUMPIFNOT                        R8 ; [+15]
      278 LOADN                            R9 0
      279 JUMPIFNOTLE                      R9 R8 ; [+13]
      281 DUPTABLE                         R9 K47 [{"Distance", "Normal", "Position"}]
      282 SUB                              R10 R7 R1
      283 GETTABLEKS                       R10 R10 K36 ["Magnitude"]
      285 SETTABLEKS                       R10 R9 K31 ["Distance"]
      287 SETTABLEKS                       R6 R9 K34 ["Normal"]
      289 SETTABLEKS                       R7 R9 K1 ["Position"]
      291 MOVE                             R5 R9
      292 JUMP                             ; [+16]
      293 GETUPVAL                         R11 8
      294 GETTABLEKS                       R11 R11 K20 ["RayLength"]
      296 MUL                              R10 R2 R11
      297 ADD                              R9 R1 R10
      298 DUPTABLE                         R10 K47 [{"Distance", "Normal", "Position"}]
      299 SUB                              R11 R9 R1
      300 GETTABLEKS                       R11 R11 K36 ["Magnitude"]
      302 SETTABLEKS                       R11 R10 K31 ["Distance"]
      304 SETTABLEKS                       R6 R10 K34 ["Normal"]
      306 SETTABLEKS                       R9 R10 K1 ["Position"]
      308 MOVE                             R5 R10
      309 GETUPVAL                         R9 16
      310 GETTABLEKS                       R9 R9 K23 ["current"]
      312 GETUPVAL                         R10 17
      313 GETTABLEKS                       R10 R10 K37 ["Pending"]
      315 JUMPIFNOTEQ                      R9 R10 ; [+7]
      317 GETUPVAL                         R9 16
      318 GETUPVAL                         R10 17
      319 GETTABLEKS                       R10 R10 K48 ["Inactive"]
      321 SETTABLEKS                       R10 R9 K23 ["current"]
      323 GETUPVAL                         R6 20
      324 GETUPVAL                         R7 1
      325 GETUPVAL                         R9 9
      326 NAMECALL                         R9 R9 K22 ["IsMouseDown"]
      328 CALL                             R9 1 1
      329 JUMPIFNOT                        R9 ; [+2]
      330 GETUPVAL                         R8 21
      331 JUMP                             ; [+10]
      332 GETIMPORT                        R8 K51 [CFrame.lookAt]
      334 GETTABLEKS                       R9 R5 K1 ["Position"]
      336 GETTABLEKS                       R11 R5 K1 ["Position"]
      338 GETUPVAL                         R12 18
      339 CALL                             R12 0 1
      340 ADD                              R10 R11 R12
      341 CALL                             R8 2 1
      342 GETUPVAL                         R9 0
      343 GETUPVAL                         R10 22
      344 CALL                             R6 4 1
      345 JUMPIFNOT                        R6 ; [+1]
      346 MOVE                             R5 R6
      347 GETUPVAL                         R9 1
      348 GETUPVAL                         R10 2
      349 GETTABLEKS                       R10 R10 K7 ["BrushSettings"]
      351 GETTABLE                         R8 R9 R10
      352 GETUPVAL                         R9 3
      353 GETTABLEKS                       R9 R9 K52 ["Snapping"]
      355 GETTABLE                         R7 R8 R9
      356 GETUPVAL                         R8 23
      357 GETIMPORT                        R9 K54 [table.clone]
      359 MOVE                             R10 R5
      360 CALL                             R9 1 -1
      361 CALL                             R8 -1 0
      362 JUMPIFEQKNIL                     R7 ; [+45]
      364 GETUPVAL                         R8 24
      365 GETTABLEKS                       R8 R8 K55 ["Off"]
      367 JUMPIFEQ                         R7 R8 ; [+40]
      369 GETUPVAL                         R8 25
      370 GETTABLEKS                       R9 R5 K1 ["Position"]
      372 CALL                             R8 1 1
      373 GETUPVAL                         R11 1
      374 GETUPVAL                         R12 2
      375 GETTABLEKS                       R12 R12 K7 ["BrushSettings"]
      377 GETTABLE                         R10 R11 R12
      378 GETUPVAL                         R11 3
      379 GETTABLEKS                       R11 R11 K56 ["FixedYPlane"]
      381 GETTABLE                         R9 R10 R11
      382 JUMPIFNOT                        R9 ; [+18]
      383 GETTABLEKS                       R10 R8 K57 ["X"]
      385 GETUPVAL                         R13 1
      386 GETUPVAL                         R14 2
      387 GETTABLEKS                       R14 R14 K7 ["BrushSettings"]
      389 GETTABLE                         R12 R13 R14
      390 GETUPVAL                         R13 3
      391 GETTABLEKS                       R13 R13 K58 ["FixedYPlanePosition"]
      393 GETTABLE                         R11 R12 R13
      394 GETTABLEKS                       R12 R8 K59 ["Z"]
      396 FASTCALL                         VECTOR ; [+2]
      397 GETIMPORT                        R9 K61 [Vector3.new]
      399 CALL                             R9 3 1
      400 MOVE                             R8 R9
      401 SUB                              R9 R8 R1
      402 GETTABLEKS                       R9 R9 K36 ["Magnitude"]
      404 SETTABLEKS                       R9 R5 K31 ["Distance"]
      406 SETTABLEKS                       R8 R5 K1 ["Position"]
      408 GETUPVAL                         R8 11
      409 GETTABLEKS                       R9 R5 K1 ["Position"]
      411 SETTABLEKS                       R9 R8 K23 ["current"]
      413 RETURN                           R5 1

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
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 NAMECALL                         R2 R2 K0 ["IsMouseDown"]
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 -1
        7 CALL                             R0 -1 0
        8 GETUPVAL                         R0 3
        9 LOADK                            R2 K1 ["TerrainRaycast"]
       10 LOADN                            R3 1
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 NAMECALL                         R0 R0 K2 ["BindToRenderStep"]
       19 CALL                             R0 4 0
       20 DUPCLOSURE                       R0 K3 [PROTO_12]
       21 CAPTURE                          UPVAL U3
       22 RETURN                           R0 1

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
      156 GETUPVAL                         R26 16
      157 CALL                             R26 0 1
      158 JUMPIFNOT                        R26 ; [+2]
      159 LOADB                            R25 1
      160 JUMP                             ; [+1]
      161 MOVE                             R25 R9
      162 MOVE                             R26 R2
      163 GETUPVAL                         R28 16
      164 CALL                             R28 0 1
      165 JUMPIFNOT                        R28 ; [+2]
      166 LOADB                            R27 1
      167 JUMP                             ; [+1]
      168 MOVE                             R27 R0
      169 MOVE                             R28 R21
      170 SETLIST                          R24 R25 4 [1]
      172 CALL                             R22 2 1
      173 GETUPVAL                         R23 7
      174 NEWCLOSURE                       R24 P5
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R1
      177 CAPTURE                          UPVAL U6
      178 CAPTURE                          UPVAL U8
      179 CAPTURE                          VAL R17
      180 CAPTURE                          UPVAL U17
      181 CAPTURE                          UPVAL U18
      182 CAPTURE                          VAL R20
      183 CAPTURE                          UPVAL U9
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R16
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R19
      189 CAPTURE                          VAL R12
      190 CAPTURE                          UPVAL U19
      191 CAPTURE                          VAL R15
      192 CAPTURE                          UPVAL U20
      193 CAPTURE                          UPVAL U3
      194 CAPTURE                          UPVAL U21
      195 CAPTURE                          UPVAL U22
      196 CAPTURE                          VAL R9
      197 CAPTURE                          VAL R0
      198 CAPTURE                          VAL R8
      199 CAPTURE                          UPVAL U23
      200 CAPTURE                          UPVAL U24
      201 NEWTABLE                         R25 0 12
      203 NAMECALL                         R27 R3 K24 ["IsMouseDown"]
      205 CALL                             R27 1 1
      206 JUMPIFNOT                        R27 ; [+2]
      207 MOVE                             R26 R9
      208 JUMP                             ; [+1]
      209 LOADB                            R26 1
      210 MOVE                             R27 R11
      211 MOVE                             R28 R19
      212 MOVE                             R29 R20
      213 GETUPVAL                         R32 6
      214 GETTABLEKS                       R32 R32 K19 ["BrushSettings"]
      216 GETTABLE                         R31 R1 R32
      217 GETUPVAL                         R32 8
      218 GETTABLEKS                       R32 R32 K25 ["IgnoreParts"]
      220 GETTABLE                         R30 R31 R32
      221 GETUPVAL                         R33 6
      222 GETTABLEKS                       R33 R33 K19 ["BrushSettings"]
      224 GETTABLE                         R32 R1 R33
      225 GETUPVAL                         R33 8
      226 GETTABLEKS                       R33 R33 K26 ["IgnoreWater"]
      228 GETTABLE                         R31 R32 R33
      229 GETUPVAL                         R34 6
      230 GETTABLEKS                       R34 R34 K19 ["BrushSettings"]
      232 GETTABLE                         R33 R1 R34
      233 GETUPVAL                         R34 8
      234 GETTABLEKS                       R34 R34 K27 ["Snapping"]
      236 GETTABLE                         R32 R33 R34
      237 GETUPVAL                         R35 6
      238 GETTABLEKS                       R35 R35 K19 ["BrushSettings"]
      240 GETTABLE                         R34 R1 R35
      241 GETUPVAL                         R35 8
      242 GETTABLEKS                       R35 R35 K28 ["FixedYPlane"]
      244 GETTABLE                         R33 R34 R35
      245 GETUPVAL                         R36 6
      246 GETTABLEKS                       R36 R36 K19 ["BrushSettings"]
      248 GETTABLE                         R35 R1 R36
      249 GETUPVAL                         R36 8
      250 GETTABLEKS                       R36 R36 K29 ["FixedYPlanePosition"]
      252 GETTABLE                         R34 R35 R36
      253 GETUPVAL                         R37 6
      254 GETTABLEKS                       R37 R37 K19 ["BrushSettings"]
      256 GETTABLE                         R36 R1 R37
      257 GETUPVAL                         R37 8
      258 GETTABLEKS                       R37 R37 K30 ["PlaneTransform"]
      260 GETTABLE                         R35 R36 R37
      261 GETUPVAL                         R38 6
      262 GETTABLEKS                       R38 R38 K19 ["BrushSettings"]
      264 GETTABLE                         R37 R1 R38
      265 GETUPVAL                         R38 8
      266 GETTABLEKS                       R38 R38 K22 ["PlaneLock"]
      268 GETTABLE                         R36 R37 R38
      269 MOVE                             R37 R0
      270 SETLIST                          R25 R26 12 [1]
      272 CALL                             R23 2 1
      273 GETUPVAL                         R24 25
      274 GETTABLEKS                       R25 R4 K31 ["Button1Down"]
      276 NEWCLOSURE                       R26 P6
      277 CAPTURE                          VAL R20
      278 CAPTURE                          VAL R12
      279 CAPTURE                          UPVAL U17
      280 CAPTURE                          VAL R5
      281 CAPTURE                          VAL R19
      282 CAPTURE                          VAL R15
      283 CAPTURE                          UPVAL U20
      284 NEWTABLE                         R27 0 1
      286 MOVE                             R28 R5
      287 SETLIST                          R27 R28 1 [1]
      289 CALL                             R24 3 0
      290 GETUPVAL                         R24 25
      291 GETTABLEKS                       R25 R4 K32 ["Button1Up"]
      293 NEWCLOSURE                       R26 P7
      294 CAPTURE                          VAL R11
      295 CAPTURE                          UPVAL U17
      296 CAPTURE                          VAL R12
      297 CAPTURE                          VAL R15
      298 NEWTABLE                         R27 0 1
      300 MOVE                             R28 R11
      301 SETLIST                          R27 R28 1 [1]
      303 CALL                             R24 3 0
      304 GETUPVAL                         R24 25
      305 GETTABLEKS                       R25 R3 K33 ["MouseMoveAction"]
      307 NEWCLOSURE                       R26 P8
      308 CAPTURE                          VAL R13
      309 CAPTURE                          VAL R14
      310 NEWTABLE                         R27 0 1
      312 MOVE                             R28 R13
      313 SETLIST                          R27 R28 1 [1]
      315 CALL                             R24 3 0
      316 GETUPVAL                         R24 2
      317 NEWCLOSURE                       R25 P9
      318 CAPTURE                          VAL R22
      319 CAPTURE                          VAL R23
      320 CAPTURE                          VAL R3
      321 CAPTURE                          UPVAL U26
      322 CAPTURE                          VAL R13
      323 CAPTURE                          VAL R14
      324 NEWTABLE                         R26 0 4
      326 GETUPVAL                         R28 16
      327 CALL                             R28 0 1
      328 JUMPIFNOT                        R28 ; [+2]
      329 MOVE                             R27 R23
      330 JUMP                             ; [+1]
      331 LOADB                            R27 1
      332 MOVE                             R28 R22
      333 MOVE                             R29 R13
      334 MOVE                             R30 R3
      335 SETLIST                          R26 R27 4 [1]
      337 CALL                             R24 2 0
      338 MOVE                             R24 R5
      339 MOVE                             R25 R7
      340 GETTABLEKS                       R26 R16 K34 ["current"]
      342 RETURN                           R24 3

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
       42 GETTABLEKS                       R9 R9 K16 ["Flags"]
       44 GETTABLEKS                       R9 R9 K17 ["getFFlagTerrainEditorOptimizeRaycastUpdates"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K13 ["Src"]
       51 GETTABLEKS                       R10 R10 K18 ["Hooks"]
       53 GETTABLEKS                       R10 R10 K19 ["useEventConnection"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R0 K13 ["Src"]
       60 GETTABLEKS                       R11 R11 K18 ["Hooks"]
       62 GETTABLEKS                       R11 R11 K20 ["useTerrain"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R12 R0 K13 ["Src"]
       69 GETTABLEKS                       R12 R12 K21 ["Resources"]
       71 GETTABLEKS                       R12 R12 K22 ["Constants"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R13 R0 K13 ["Src"]
       78 GETTABLEKS                       R13 R13 K23 ["Util"]
       80 GETTABLEKS                       R13 R13 K24 ["ApplyPlaneLock"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R14 R0 K13 ["Src"]
       87 GETTABLEKS                       R14 R14 K23 ["Util"]
       89 GETTABLEKS                       R14 R14 K25 ["ConvertForPivot"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETTABLEKS                       R15 R0 K13 ["Src"]
       96 GETTABLEKS                       R15 R15 K23 ["Util"]
       98 GETTABLEKS                       R15 R15 K26 ["getCameraLookPlane"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R16 R0 K13 ["Src"]
      105 GETTABLEKS                       R16 R16 K23 ["Util"]
      107 GETTABLEKS                       R16 R16 K27 ["getPlaneIntersection"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K13 ["Src"]
      114 GETTABLEKS                       R17 R17 K23 ["Util"]
      116 GETTABLEKS                       R17 R17 K28 ["getSnappedToVoxel"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K30 [game]
      121 LOADK                            R19 K31 ["CoreGui"]
      122 NAMECALL                         R17 R17 K32 ["GetService"]
      124 CALL                             R17 2 1
      125 GETIMPORT                        R18 K30 [game]
      127 LOADK                            R20 K33 ["Players"]
      128 NAMECALL                         R18 R18 K32 ["GetService"]
      130 CALL                             R18 2 1
      131 GETIMPORT                        R19 K30 [game]
      133 LOADK                            R21 K34 ["RunService"]
      134 NAMECALL                         R19 R19 K32 ["GetService"]
      136 CALL                             R19 2 1
      137 GETIMPORT                        R20 K30 [game]
      139 LOADK                            R22 K35 ["Workspace"]
      140 NAMECALL                         R20 R20 K32 ["GetService"]
      142 CALL                             R20 2 1
      143 GETIMPORT                        R21 K5 [require]
      145 GETTABLEKS                       R22 R0 K13 ["Src"]
      147 GETTABLEKS                       R22 R22 K36 ["Types"]
      149 CALL                             R21 1 1
      150 GETTABLEKS                       R22 R21 K37 ["BrushSettings"]
      152 GETTABLEKS                       R23 R21 K38 ["BrushShape"]
      154 GETTABLEKS                       R24 R21 K39 ["Category"]
      156 GETTABLEKS                       R25 R21 K40 ["MaterialSettings"]
      158 GETTABLEKS                       R26 R21 K41 ["PlaneLock"]
      160 GETTABLEKS                       R27 R21 K42 ["RaycastType"]
      162 GETTABLEKS                       R28 R21 K43 ["Snapping"]
      164 GETTABLEKS                       R29 R21 K44 ["Tool"]
      166 DUPCLOSURE                       R30 K45 [PROTO_14]
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R14
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R22
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R29
      178 CAPTURE                          VAL R25
      179 CAPTURE                          VAL R26
      180 CAPTURE                          VAL R23
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R20
      185 CAPTURE                          VAL R18
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R27
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R12
      190 CAPTURE                          VAL R28
      191 CAPTURE                          VAL R16
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R19
      194 RETURN                           R30 1
