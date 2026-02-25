PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsMouseDown"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+15]
        5 GETIMPORT                        R0 K3 [CFrame.lookAt]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K4 ["Position"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K4 ["Position"]
       13 GETUPVAL                         R4 2
       14 CALL                             R4 0 1
       15 ADD                              R2 R3 R4
       16 CALL                             R0 2 1
       17 GETUPVAL                         R1 3
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R7 0
        1 GETUPVAL                         R9 1
        2 GETTABLEKS                       R8 R9 K1 ["BrushSettings"]
        4 GETTABLE                         R6 R7 R8
        5 GETUPVAL                         R8 2
        6 GETTABLEKS                       R7 R8 K2 ["BrushSize"]
        8 GETTABLE                         R5 R6 R7
        9 GETTABLEKS                       R4 R5 K3 ["Size"]
       11 DIVK                             R3 R4 K0 [2]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K4 ["VoxelResolution"]
       15 MUL                              R2 R3 R4
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R3 R4 K5 ["TerrainCacheMultiplier"]
       19 MUL                              R1 R2 R3
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R2 R3 K6 ["TerrainCacheMaxRadius"]
       23 FASTCALL2                        MATH_MIN R1 R2 ; [+3]
       25 GETIMPORT                        R0 K9 [math.min]
       27 CALL                             R0 2 1
       28 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Draw"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+11]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R3 R4 K1 ["BrushSettings"]
       10 GETTABLE                         R1 R2 R3
       11 GETUPVAL                         R3 4
       12 GETTABLEKS                       R2 R3 K2 ["TemporarySmooth"]
       14 GETTABLE                         R0 R1 R2
       15 JUMPIFNOT                        R0 ; [+26]
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K3 ["Paint"]
       20 JUMPIFNOTEQ                      R0 R1 ; [+38]
       22 GETUPVAL                         R0 5
       23 JUMPIFNOT                        R0 ; [+35]
       24 GETUPVAL                         R1 5
       25 GETUPVAL                         R3 6
       26 GETTABLEKS                       R2 R3 K4 ["TargetMaterial"]
       28 GETTABLE                         R0 R1 R2
       29 GETIMPORT                        R1 K8 [Enum.Material.Air]
       31 JUMPIFEQ                         R0 R1 ; [+10]
       33 GETUPVAL                         R1 5
       34 GETUPVAL                         R3 6
       35 GETTABLEKS                       R2 R3 K9 ["SourceMaterial"]
       37 GETTABLE                         R0 R1 R2
       38 GETIMPORT                        R1 K8 [Enum.Material.Air]
       40 JUMPIFNOTEQ                      R0 R1 ; [+18]
       42 GETUPVAL                         R3 2
       43 GETUPVAL                         R5 3
       44 GETTABLEKS                       R4 R5 K1 ["BrushSettings"]
       46 GETTABLE                         R2 R3 R4
       47 GETUPVAL                         R4 4
       48 GETTABLEKS                       R3 R4 K10 ["PlaneLock"]
       50 GETTABLE                         R1 R2 R3
       51 GETUPVAL                         R3 7
       52 GETTABLEKS                       R2 R3 K11 ["Off"]
       54 JUMPIFEQ                         R1 R2 ; [+2]
       56 LOADB                            R0 0 +1
       57 LOADB                            R0 1
       58 RETURN                           R0 1
       59 LOADB                            R0 0
       60 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["BrushSettings"]
        4 GETTABLE                         R2 R3 R4
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["BrushShape"]
        8 GETTABLE                         R1 R2 R3
        9 GETUPVAL                         R4 0
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K0 ["BrushSettings"]
       13 GETTABLE                         R3 R4 R5
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K2 ["BrushSize"]
       17 GETTABLE                         R2 R3 R4
       18 GETTABLEKS                       R4 R2 K3 ["Size"]
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R5 R6 K4 ["VoxelResolution"]
       23 MUL                              R3 R4 R5
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R5 R6 K5 ["Sphere"]
       27 JUMPIFNOTEQ                      R1 R5 ; [+3]
       29 MOVE                             R4 R3
       30 JUMP                             ; [+6]
       31 GETTABLEKS                       R5 R2 K6 ["Height"]
       33 GETUPVAL                         R7 3
       34 GETTABLEKS                       R6 R7 K4 ["VoxelResolution"]
       36 MUL                              R4 R5 R6
       37 GETUPVAL                         R5 5
       38 GETUPVAL                         R8 0
       39 GETUPVAL                         R10 1
       40 GETTABLEKS                       R9 R10 K0 ["BrushSettings"]
       42 GETTABLE                         R7 R8 R9
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R8 R9 K7 ["PivotPosition"]
       46 GETTABLE                         R6 R7 R8
       47 GETUPVAL                         R8 6
       48 GETTABLEKS                       R7 R8 K8 ["current"]
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
       65 GETUPVAL                         R10 4
       66 GETTABLEKS                       R9 R10 K12 ["Cylinder"]
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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["BrushSettings"]
        5 NEWTABLE                         R3 1 0
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K1 ["State"]
       10 SETTABLE                         R0 R3 R4
       11 SETTABLE                         R3 R1 R2
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R3 R4 K2 ["Build"]
       16 JUMPIFEQ                         R2 R3 ; [+4]
       18 GETUPVAL                         R2 4
       19 MOVE                             R3 R0
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 5
       22 MOVE                             R3 R0
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 6
       25 MOVE                             R3 R1
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["join"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K3 [{"CacheID", "CachePoint"}]
        5 GETUPVAL                         R4 1
        6 SETTABLEKS                       R4 R3 K1 ["CacheID"]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K2 ["CachePoint"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Origin"]
        3 GETTABLEKS                       R0 R1 K1 ["Position"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["UnitRay"]
        8 GETTABLEKS                       R1 R2 K3 ["Direction"]
       10 GETIMPORT                        R2 K6 [RaycastParams.new]
       12 CALL                             R2 0 1
       13 GETUPVAL                         R5 1
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K7 ["BrushSettings"]
       17 GETTABLE                         R4 R5 R6
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R5 R6 K8 ["IgnoreParts"]
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
       47 JUMP                             ; [+41]
       48 NEWTABLE                         R3 0 0
       50 GETUPVAL                         R5 6
       51 GETTABLEKS                       R4 R5 K20 ["LocalPlayer"]
       53 JUMPIFNOT                        R4 ; [+17]
       54 GETUPVAL                         R6 6
       55 GETTABLEKS                       R5 R6 K20 ["LocalPlayer"]
       57 GETTABLEKS                       R4 R5 K21 ["Character"]
       59 JUMPIFNOT                        R4 ; [+11]
       60 GETUPVAL                         R8 6
       61 GETTABLEKS                       R7 R8 K20 ["LocalPlayer"]
       63 GETTABLEKS                       R6 R7 K21 ["Character"]
       65 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       67 MOVE                             R5 R3
       68 GETIMPORT                        R4 K13 [table.insert]
       70 CALL                             R4 2 0
       71 GETUPVAL                         R4 7
       72 CALL                             R4 0 1
       73 JUMPIFNOT                        R4 ; [+9]
       74 GETUPVAL                         R7 5
       75 GETTABLEKS                       R6 R7 K22 ["Terrain"]
       77 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       79 MOVE                             R5 R3
       80 GETIMPORT                        R4 K13 [table.insert]
       82 CALL                             R4 2 0
       83 GETIMPORT                        R4 K24 [Enum.RaycastFilterType.Blacklist]
       85 SETTABLEKS                       R4 R2 K18 ["FilterType"]
       87 SETTABLEKS                       R3 R2 K19 ["FilterDescendantsInstances"]
       89 GETUPVAL                         R5 1
       90 GETUPVAL                         R7 2
       91 GETTABLEKS                       R6 R7 K7 ["BrushSettings"]
       93 GETTABLE                         R4 R5 R6
       94 GETUPVAL                         R6 3
       95 GETTABLEKS                       R5 R6 K25 ["IgnoreWater"]
       97 GETTABLE                         R3 R4 R5
       98 SETTABLEKS                       R3 R2 K25 ["IgnoreWater"]
      100 LOADB                            R3 1
      101 SETTABLEKS                       R3 R2 K26 ["BruteForceAllSlow"]
      103 GETUPVAL                         R3 5
      104 MOVE                             R5 R0
      105 GETUPVAL                         R8 8
      106 GETTABLEKS                       R7 R8 K27 ["RayLength"]
      108 MUL                              R6 R1 R7
      109 MOVE                             R7 R2
      110 NAMECALL                         R3 R3 K28 ["Raycast"]
      112 CALL                             R3 4 1
      113 GETUPVAL                         R4 9
      114 NAMECALL                         R4 R4 K29 ["IsMouseDown"]
      116 CALL                             R4 1 1
      117 JUMPIFNOT                        R4 ; [+98]
      118 GETUPVAL                         R4 10
      119 CALL                             R4 0 1
      120 JUMPIFNOT                        R4 ; [+95]
      121 JUMPIFNOT                        R3 ; [+3]
      122 GETTABLEKS                       R4 R3 K1 ["Position"]
      124 JUMP                             ; [+3]
      125 GETUPVAL                         R5 11
      126 GETTABLEKS                       R4 R5 K1 ["Position"]
      128 GETUPVAL                         R7 12
      129 GETTABLEKS                       R6 R7 K30 ["CachePoint"]
      131 SUB                              R5 R4 R6
      132 GETTABLEKS                       R6 R5 K31 ["magnitude"]
      134 GETUPVAL                         R8 12
      135 GETTABLEKS                       R7 R8 K32 ["CacheID"]
      137 GETUPVAL                         R9 13
      138 CALL                             R9 0 1
      139 GETUPVAL                         R11 8
      140 GETTABLEKS                       R10 R11 K33 ["TerrainCacheUpdateThreshold"]
      142 MUL                              R8 R9 R10
      143 JUMPIFLT                         R8 R6 ; [+2]
      145 JUMPIF                           R7 ; [+18]
      146 GETUPVAL                         R8 5
      147 GETUPVAL                         R12 12
      148 GETTABLEKS                       R11 R12 K32 ["CacheID"]
      150 ORK                              R10 R11 K34 [""]
      151 MOVE                             R11 R4
      152 GETUPVAL                         R12 13
      153 CALL                             R12 0 -1
      154 NAMECALL                         R8 R8 K35 ["CacheCurrentTerrain"]
      156 CALL                             R8 -1 1
      157 MOVE                             R7 R8
      158 GETUPVAL                         R8 14
      159 NEWCLOSURE                       R9 P0
      160 CAPTURE                          UPVAL U15
      161 CAPTURE                          REF R7
      162 CAPTURE                          VAL R4
      163 CALL                             R8 1 0
      164 GETUPVAL                         R8 7
      165 CALL                             R8 0 1
      166 JUMPIFNOT                        R8 ; [+35]
      167 GETUPVAL                         R10 1
      168 GETUPVAL                         R12 2
      169 GETTABLEKS                       R11 R12 K7 ["BrushSettings"]
      171 GETTABLE                         R9 R10 R11
      172 GETUPVAL                         R11 3
      173 GETTABLEKS                       R10 R11 K8 ["IgnoreParts"]
      175 GETTABLE                         R8 R9 R10
      176 JUMPIF                           R8 ; [+25]
      177 GETUPVAL                         R8 5
      178 MOVE                             R10 R7
      179 MOVE                             R11 R0
      180 GETUPVAL                         R14 8
      181 GETTABLEKS                       R13 R14 K27 ["RayLength"]
      183 MUL                              R12 R1 R13
      184 LOADB                            R13 1
      185 MOVE                             R14 R2
      186 NAMECALL                         R8 R8 K36 ["RaycastCachedTerrain"]
      188 CALL                             R8 6 1
      189 JUMPIFNOT                        R3 ; [+9]
      190 JUMPIFNOT                        R8 ; [+8]
      191 GETTABLEKS                       R9 R8 K37 ["Distance"]
      193 GETTABLEKS                       R10 R3 K37 ["Distance"]
      195 JUMPIFNOTLT                      R9 R10 ; [+19]
      197 MOVE                             R3 R8
      198 JUMP                             ; [+16]
      199 JUMPIFNOT                        R8 ; [+15]
      200 MOVE                             R3 R8
      201 JUMP                             ; [+13]
      202 GETUPVAL                         R8 5
      203 MOVE                             R10 R7
      204 MOVE                             R11 R0
      205 GETUPVAL                         R14 8
      206 GETTABLEKS                       R13 R14 K27 ["RayLength"]
      208 MUL                              R12 R1 R13
      209 LOADB                            R13 1
      210 MOVE                             R14 R2
      211 NAMECALL                         R8 R8 K36 ["RaycastCachedTerrain"]
      213 CALL                             R8 6 1
      214 MOVE                             R3 R8
      215 CLOSEUPVALS                      R7
      216 JUMPIFNOT                        R3 ; [+40]
      217 DUPTABLE                         R4 K41 [{"Distance", "Instance", "Material", "Normal", "Position"}]
      218 GETTABLEKS                       R7 R3 K1 ["Position"]
      220 SUB                              R6 R7 R0
      221 GETTABLEKS                       R5 R6 K42 ["Magnitude"]
      223 SETTABLEKS                       R5 R4 K37 ["Distance"]
      225 GETTABLEKS                       R5 R3 K38 ["Instance"]
      227 SETTABLEKS                       R5 R4 K38 ["Instance"]
      229 GETTABLEKS                       R5 R3 K39 ["Material"]
      231 SETTABLEKS                       R5 R4 K39 ["Material"]
      233 GETTABLEKS                       R5 R3 K40 ["Normal"]
      235 SETTABLEKS                       R5 R4 K40 ["Normal"]
      237 GETTABLEKS                       R5 R3 K1 ["Position"]
      239 SETTABLEKS                       R5 R4 K1 ["Position"]
      241 MOVE                             R3 R4
      242 GETUPVAL                         R5 16
      243 GETTABLEKS                       R4 R5 K43 ["current"]
      245 GETUPVAL                         R6 17
      246 GETTABLEKS                       R5 R6 K44 ["Pending"]
      248 JUMPIFNOTEQ                      R4 R5 ; [+86]
      250 GETUPVAL                         R4 16
      251 GETUPVAL                         R6 17
      252 GETTABLEKS                       R5 R6 K45 ["Active"]
      254 SETTABLEKS                       R5 R4 K43 ["current"]
      256 JUMP                             ; [+78]
      257 GETUPVAL                         R5 16
      258 GETTABLEKS                       R4 R5 K43 ["current"]
      260 JUMPIFNOTEQKS                    R4 K45 ["Active"] ; [+19]
      262 DUPTABLE                         R4 K41 [{"Distance", "Instance", "Material", "Normal", "Position"}]
      263 LOADN                            R5 255
      264 SETTABLEKS                       R5 R4 K37 ["Distance"]
      266 LOADNIL                          R5
      267 SETTABLEKS                       R5 R4 K38 ["Instance"]
      269 GETIMPORT                        R5 K47 [Enum.Material.Air]
      271 SETTABLEKS                       R5 R4 K39 ["Material"]
      273 LOADK                            R5 K48 [{0, 1, 0}]
      274 SETTABLEKS                       R5 R4 K40 ["Normal"]
      276 LOADK                            R5 K49 [{0, 0, 0}]
      277 SETTABLEKS                       R5 R4 K1 ["Position"]
      279 RETURN                           R4 1
      280 GETUPVAL                         R4 18
      281 CALL                             R4 0 1
      282 GETUPVAL                         R5 19
      283 MOVE                             R6 R0
      284 MOVE                             R7 R1
      285 LOADK                            R8 K49 [{0, 0, 0}]
      286 LOADK                            R9 K48 [{0, 1, 0}]
      287 CALL                             R5 4 2
      288 JUMPIFNOT                        R5 ; [+16]
      289 JUMPIFNOT                        R6 ; [+15]
      290 LOADN                            R7 0
      291 JUMPIFNOTLE                      R7 R6 ; [+13]
      293 DUPTABLE                         R7 K50 [{"Distance", "Normal", "Position"}]
      294 SUB                              R9 R5 R0
      295 GETTABLEKS                       R8 R9 K42 ["Magnitude"]
      297 SETTABLEKS                       R8 R7 K37 ["Distance"]
      299 SETTABLEKS                       R4 R7 K40 ["Normal"]
      301 SETTABLEKS                       R5 R7 K1 ["Position"]
      303 MOVE                             R3 R7
      304 JUMP                             ; [+16]
      305 GETUPVAL                         R10 8
      306 GETTABLEKS                       R9 R10 K27 ["RayLength"]
      308 MUL                              R8 R1 R9
      309 ADD                              R7 R0 R8
      310 DUPTABLE                         R8 K50 [{"Distance", "Normal", "Position"}]
      311 SUB                              R10 R7 R0
      312 GETTABLEKS                       R9 R10 K42 ["Magnitude"]
      314 SETTABLEKS                       R9 R8 K37 ["Distance"]
      316 SETTABLEKS                       R4 R8 K40 ["Normal"]
      318 SETTABLEKS                       R7 R8 K1 ["Position"]
      320 MOVE                             R3 R8
      321 GETUPVAL                         R8 16
      322 GETTABLEKS                       R7 R8 K43 ["current"]
      324 GETUPVAL                         R9 17
      325 GETTABLEKS                       R8 R9 K44 ["Pending"]
      327 JUMPIFNOTEQ                      R7 R8 ; [+7]
      329 GETUPVAL                         R7 16
      330 GETUPVAL                         R9 17
      331 GETTABLEKS                       R8 R9 K51 ["Inactive"]
      333 SETTABLEKS                       R8 R7 K43 ["current"]
      335 GETUPVAL                         R4 20
      336 GETUPVAL                         R5 1
      337 GETUPVAL                         R7 9
      338 NAMECALL                         R7 R7 K29 ["IsMouseDown"]
      340 CALL                             R7 1 1
      341 JUMPIFNOT                        R7 ; [+2]
      342 GETUPVAL                         R6 21
      343 JUMP                             ; [+10]
      344 GETIMPORT                        R6 K54 [CFrame.lookAt]
      346 GETTABLEKS                       R7 R3 K1 ["Position"]
      348 GETTABLEKS                       R9 R3 K1 ["Position"]
      350 GETUPVAL                         R10 18
      351 CALL                             R10 0 1
      352 ADD                              R8 R9 R10
      353 CALL                             R6 2 1
      354 GETUPVAL                         R7 0
      355 GETUPVAL                         R8 22
      356 CALL                             R4 4 1
      357 JUMPIFNOT                        R4 ; [+1]
      358 MOVE                             R3 R4
      359 GETUPVAL                         R7 1
      360 GETUPVAL                         R9 2
      361 GETTABLEKS                       R8 R9 K7 ["BrushSettings"]
      363 GETTABLE                         R6 R7 R8
      364 GETUPVAL                         R8 3
      365 GETTABLEKS                       R7 R8 K55 ["Snapping"]
      367 GETTABLE                         R5 R6 R7
      368 GETUPVAL                         R6 23
      369 GETIMPORT                        R7 K57 [table.clone]
      371 MOVE                             R8 R3
      372 CALL                             R7 1 -1
      373 CALL                             R6 -1 0
      374 JUMPIFEQKNIL                     R5 ; [+45]
      376 GETUPVAL                         R7 24
      377 GETTABLEKS                       R6 R7 K58 ["Off"]
      379 JUMPIFEQ                         R5 R6 ; [+40]
      381 GETUPVAL                         R6 25
      382 GETTABLEKS                       R7 R3 K1 ["Position"]
      384 CALL                             R6 1 1
      385 GETUPVAL                         R9 1
      386 GETUPVAL                         R11 2
      387 GETTABLEKS                       R10 R11 K7 ["BrushSettings"]
      389 GETTABLE                         R8 R9 R10
      390 GETUPVAL                         R10 3
      391 GETTABLEKS                       R9 R10 K59 ["FixedYPlane"]
      393 GETTABLE                         R7 R8 R9
      394 JUMPIFNOT                        R7 ; [+18]
      395 GETTABLEKS                       R8 R6 K60 ["X"]
      397 GETUPVAL                         R11 1
      398 GETUPVAL                         R13 2
      399 GETTABLEKS                       R12 R13 K7 ["BrushSettings"]
      401 GETTABLE                         R10 R11 R12
      402 GETUPVAL                         R12 3
      403 GETTABLEKS                       R11 R12 K61 ["FixedYPlanePosition"]
      405 GETTABLE                         R9 R10 R11
      406 GETTABLEKS                       R10 R6 K62 ["Z"]
      408 FASTCALL                         VECTOR ; [+2]
      409 GETIMPORT                        R7 K64 [Vector3.new]
      411 CALL                             R7 3 1
      412 MOVE                             R6 R7
      413 SUB                              R8 R6 R0
      414 GETTABLEKS                       R7 R8 K42 ["Magnitude"]
      416 SETTABLEKS                       R7 R3 K37 ["Distance"]
      418 SETTABLEKS                       R6 R3 K1 ["Position"]
      420 GETUPVAL                         R6 26
      421 GETTABLEKS                       R7 R3 K1 ["Position"]
      423 SETTABLEKS                       R7 R6 K43 ["current"]
      425 RETURN                           R3 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["CacheID"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 1
        4 DUPTABLE                         R1 K2 [{"CacheID", "CachePoint"}]
        5 GETUPVAL                         R2 0
        6 LOADK                            R4 K3 [""]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K4 ["Position"]
       10 GETUPVAL                         R6 2
       11 CALL                             R6 0 -1
       12 NAMECALL                         R2 R2 K5 ["CacheCurrentTerrain"]
       14 CALL                             R2 -1 1
       15 SETTABLEKS                       R2 R1 K0 ["CacheID"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K4 ["Position"]
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
       10 GETUPVAL                         R2 6
       11 GETTABLEKS                       R1 R2 K0 ["Pending"]
       13 SETTABLEKS                       R1 R0 K1 ["current"]
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["CacheID"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["CacheID"]
        8 NAMECALL                         R0 R0 K1 ["ClearCachedTerrain"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 2
       12 DUPTABLE                         R1 K3 [{"CachePoint"}]
       13 LOADK                            R2 K4 [{0, 0, 0}]
       14 SETTABLEKS                       R2 R1 K2 ["CachePoint"]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 3
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K5 ["current"]
       21 RETURN                           R0 0

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
        8 DUPTABLE                         R6 K5 [{"Distance", "Normal", "Position"}]
        9 GETTABLEKS                       R9 R4 K6 ["Origin"]
       11 GETTABLEKS                       R8 R9 K4 ["Position"]
       13 GETTABLEKS                       R7 R8 K7 ["Magnitude"]
       15 SETTABLEKS                       R7 R6 K2 ["Distance"]
       17 LOADK                            R7 K8 [{0, 1, 0}]
       18 SETTABLEKS                       R7 R6 K3 ["Normal"]
       20 LOADK                            R7 K9 [{0, 0, 0}]
       21 SETTABLEKS                       R7 R6 K4 ["Position"]
       23 CALL                             R5 1 2
       24 GETUPVAL                         R7 1
       25 DUPTABLE                         R8 K5 [{"Distance", "Normal", "Position"}]
       26 GETTABLEKS                       R11 R4 K6 ["Origin"]
       28 GETTABLEKS                       R10 R11 K4 ["Position"]
       30 GETTABLEKS                       R9 R10 K7 ["Magnitude"]
       32 SETTABLEKS                       R9 R8 K2 ["Distance"]
       34 LOADK                            R9 K8 [{0, 1, 0}]
       35 SETTABLEKS                       R9 R8 K3 ["Normal"]
       37 LOADK                            R9 K9 [{0, 0, 0}]
       38 SETTABLEKS                       R9 R8 K4 ["Position"]
       40 CALL                             R7 1 2
       41 GETUPVAL                         R9 1
       42 GETIMPORT                        R10 K12 [CFrame.lookAt]
       44 GETTABLEKS                       R11 R5 K4 ["Position"]
       46 GETTABLEKS                       R13 R5 K4 ["Position"]
       48 LOADK                            R14 K8 [{0, 1, 0}]
       49 ADD                              R12 R13 R14
       50 CALL                             R10 2 -1
       51 CALL                             R9 -1 2
       52 GETUPVAL                         R11 2
       53 NEWCLOSURE                       R12 P0
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R5
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          VAL R10
       58 NEWTABLE                         R13 0 2
       60 MOVE                             R14 R0
       61 MOVE                             R15 R5
       62 SETLIST                          R13 R14 2 [1]
       64 CALL                             R11 2 0
       65 GETUPVAL                         R11 1
       66 DUPTABLE                         R12 K15 [{"CacheID", "CachePoint"}]
       67 LOADNIL                          R13
       68 SETTABLEKS                       R13 R12 K13 ["CacheID"]
       70 LOADK                            R13 K9 [{0, 0, 0}]
       71 SETTABLEKS                       R13 R12 K14 ["CachePoint"]
       73 CALL                             R11 1 2
       74 GETUPVAL                         R13 1
       75 NAMECALL                         R14 R3 K16 ["isMouseMoveReserved"]
       77 CALL                             R14 1 -1
       78 CALL                             R13 -1 2
       79 GETUPVAL                         R15 4
       80 LOADNIL                          R16
       81 CALL                             R15 1 1
       82 GETUPVAL                         R16 4
       83 LOADK                            R17 K9 [{0, 0, 0}]
       84 CALL                             R16 1 1
       85 GETUPVAL                         R17 5
       86 CALL                             R17 0 1
       87 GETUPVAL                         R20 6
       88 GETTABLEKS                       R19 R20 K17 ["MaterialSettings"]
       90 GETTABLE                         R18 R1 R19
       91 GETUPVAL                         R19 7
       92 NEWCLOSURE                       R20 P1
       93 CAPTURE                          VAL R1
       94 CAPTURE                          UPVAL U6
       95 CAPTURE                          UPVAL U8
       96 CAPTURE                          UPVAL U9
       97 NEWTABLE                         R21 0 1
       99 GETUPVAL                         R25 6
      100 GETTABLEKS                       R24 R25 K18 ["BrushSettings"]
      102 GETTABLE                         R23 R1 R24
      103 GETUPVAL                         R25 8
      104 GETTABLEKS                       R24 R25 K19 ["BrushSize"]
      106 GETTABLE                         R22 R23 R24
      107 SETLIST                          R21 R22 1 [1]
      109 CALL                             R19 2 1
      110 GETUPVAL                         R20 7
      111 NEWCLOSURE                       R21 P2
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U10
      114 CAPTURE                          VAL R1
      115 CAPTURE                          UPVAL U6
      116 CAPTURE                          UPVAL U8
      117 CAPTURE                          VAL R18
      118 CAPTURE                          UPVAL U11
      119 CAPTURE                          UPVAL U12
      120 NEWTABLE                         R22 0 4
      122 GETUPVAL                         R26 6
      123 GETTABLEKS                       R25 R26 K18 ["BrushSettings"]
      125 GETTABLE                         R24 R1 R25
      126 GETUPVAL                         R26 8
      127 GETTABLEKS                       R25 R26 K20 ["TemporarySmooth"]
      129 GETTABLE                         R23 R24 R25
      130 GETUPVAL                         R27 6
      131 GETTABLEKS                       R26 R27 K18 ["BrushSettings"]
      133 GETTABLE                         R25 R1 R26
      134 GETUPVAL                         R27 8
      135 GETTABLEKS                       R26 R27 K21 ["PlaneLock"]
      137 GETTABLE                         R24 R25 R26
      138 JUMPIFNOT                        R18 ; [+5]
      139 GETUPVAL                         R27 11
      140 GETTABLEKS                       R26 R27 K22 ["TargetMaterial"]
      142 GETTABLE                         R25 R18 R26
      143 JUMP                             ; [+1]
      144 LOADB                            R25 1
      145 MOVE                             R26 R0
      146 SETLIST                          R22 R23 4 [1]
      148 CALL                             R20 2 1
      149 GETUPVAL                         R21 7
      150 NEWCLOSURE                       R22 P3
      151 CAPTURE                          VAL R1
      152 CAPTURE                          UPVAL U6
      153 CAPTURE                          UPVAL U8
      154 CAPTURE                          UPVAL U9
      155 CAPTURE                          UPVAL U13
      156 CAPTURE                          UPVAL U14
      157 CAPTURE                          VAL R16
      158 CAPTURE                          UPVAL U15
      159 NEWTABLE                         R23 0 1
      161 MOVE                             R24 R1
      162 SETLIST                          R23 R24 1 [1]
      164 CALL                             R21 2 1
      165 GETUPVAL                         R22 7
      166 NEWCLOSURE                       R23 P4
      167 CAPTURE                          UPVAL U6
      168 CAPTURE                          UPVAL U8
      169 CAPTURE                          VAL R0
      170 CAPTURE                          UPVAL U10
      171 CAPTURE                          VAL R21
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R2
      174 NEWTABLE                         R24 0 4
      176 MOVE                             R25 R9
      177 MOVE                             R26 R2
      178 MOVE                             R27 R0
      179 MOVE                             R28 R21
      180 SETLIST                          R24 R25 4 [1]
      182 CALL                             R22 2 1
      183 GETUPVAL                         R23 7
      184 NEWCLOSURE                       R24 P5
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R1
      187 CAPTURE                          UPVAL U6
      188 CAPTURE                          UPVAL U8
      189 CAPTURE                          VAL R17
      190 CAPTURE                          UPVAL U16
      191 CAPTURE                          UPVAL U17
      192 CAPTURE                          UPVAL U18
      193 CAPTURE                          UPVAL U9
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R20
      196 CAPTURE                          VAL R5
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R12
      200 CAPTURE                          UPVAL U19
      201 CAPTURE                          VAL R15
      202 CAPTURE                          UPVAL U20
      203 CAPTURE                          UPVAL U3
      204 CAPTURE                          UPVAL U21
      205 CAPTURE                          UPVAL U22
      206 CAPTURE                          VAL R9
      207 CAPTURE                          VAL R0
      208 CAPTURE                          VAL R8
      209 CAPTURE                          UPVAL U23
      210 CAPTURE                          UPVAL U24
      211 CAPTURE                          VAL R16
      212 NEWTABLE                         R25 0 12
      214 NAMECALL                         R27 R3 K23 ["IsMouseDown"]
      216 CALL                             R27 1 1
      217 JUMPIFNOT                        R27 ; [+2]
      218 MOVE                             R26 R9
      219 JUMP                             ; [+1]
      220 LOADB                            R26 1
      221 MOVE                             R27 R11
      222 MOVE                             R28 R19
      223 MOVE                             R29 R20
      224 GETUPVAL                         R33 6
      225 GETTABLEKS                       R32 R33 K18 ["BrushSettings"]
      227 GETTABLE                         R31 R1 R32
      228 GETUPVAL                         R33 8
      229 GETTABLEKS                       R32 R33 K24 ["IgnoreParts"]
      231 GETTABLE                         R30 R31 R32
      232 GETUPVAL                         R34 6
      233 GETTABLEKS                       R33 R34 K18 ["BrushSettings"]
      235 GETTABLE                         R32 R1 R33
      236 GETUPVAL                         R34 8
      237 GETTABLEKS                       R33 R34 K25 ["IgnoreWater"]
      239 GETTABLE                         R31 R32 R33
      240 GETUPVAL                         R35 6
      241 GETTABLEKS                       R34 R35 K18 ["BrushSettings"]
      243 GETTABLE                         R33 R1 R34
      244 GETUPVAL                         R35 8
      245 GETTABLEKS                       R34 R35 K26 ["Snapping"]
      247 GETTABLE                         R32 R33 R34
      248 GETUPVAL                         R36 6
      249 GETTABLEKS                       R35 R36 K18 ["BrushSettings"]
      251 GETTABLE                         R34 R1 R35
      252 GETUPVAL                         R36 8
      253 GETTABLEKS                       R35 R36 K27 ["FixedYPlane"]
      255 GETTABLE                         R33 R34 R35
      256 GETUPVAL                         R37 6
      257 GETTABLEKS                       R36 R37 K18 ["BrushSettings"]
      259 GETTABLE                         R35 R1 R36
      260 GETUPVAL                         R37 8
      261 GETTABLEKS                       R36 R37 K28 ["FixedYPlanePosition"]
      263 GETTABLE                         R34 R35 R36
      264 GETUPVAL                         R38 6
      265 GETTABLEKS                       R37 R38 K18 ["BrushSettings"]
      267 GETTABLE                         R36 R1 R37
      268 GETUPVAL                         R38 8
      269 GETTABLEKS                       R37 R38 K29 ["PlaneTransform"]
      271 GETTABLE                         R35 R36 R37
      272 GETUPVAL                         R39 6
      273 GETTABLEKS                       R38 R39 K18 ["BrushSettings"]
      275 GETTABLE                         R37 R1 R38
      276 GETUPVAL                         R39 8
      277 GETTABLEKS                       R38 R39 K21 ["PlaneLock"]
      279 GETTABLE                         R36 R37 R38
      280 MOVE                             R37 R0
      281 SETLIST                          R25 R26 12 [1]
      283 CALL                             R23 2 1
      284 GETUPVAL                         R24 25
      285 GETTABLEKS                       R25 R4 K30 ["Button1Down"]
      287 NEWCLOSURE                       R26 P6
      288 CAPTURE                          VAL R20
      289 CAPTURE                          VAL R12
      290 CAPTURE                          UPVAL U16
      291 CAPTURE                          VAL R5
      292 CAPTURE                          VAL R19
      293 CAPTURE                          VAL R15
      294 CAPTURE                          UPVAL U20
      295 NEWTABLE                         R27 0 1
      297 MOVE                             R28 R5
      298 SETLIST                          R27 R28 1 [1]
      300 CALL                             R24 3 0
      301 GETUPVAL                         R24 25
      302 GETTABLEKS                       R25 R4 K31 ["Button1Up"]
      304 NEWCLOSURE                       R26 P7
      305 CAPTURE                          VAL R11
      306 CAPTURE                          UPVAL U16
      307 CAPTURE                          VAL R12
      308 CAPTURE                          VAL R15
      309 NEWTABLE                         R27 0 1
      311 MOVE                             R28 R11
      312 SETLIST                          R27 R28 1 [1]
      314 CALL                             R24 3 0
      315 GETUPVAL                         R24 25
      316 GETTABLEKS                       R25 R3 K32 ["MouseMoveAction"]
      318 NEWCLOSURE                       R26 P8
      319 CAPTURE                          VAL R13
      320 CAPTURE                          VAL R14
      321 NEWTABLE                         R27 0 1
      323 MOVE                             R28 R13
      324 SETLIST                          R27 R28 1 [1]
      326 CALL                             R24 3 0
      327 GETUPVAL                         R24 2
      328 NEWCLOSURE                       R25 P9
      329 CAPTURE                          UPVAL U26
      330 CAPTURE                          VAL R3
      331 CAPTURE                          VAL R22
      332 CAPTURE                          VAL R23
      333 CAPTURE                          VAL R13
      334 CAPTURE                          VAL R14
      335 NEWTABLE                         R26 0 1
      337 MOVE                             R27 R22
      338 SETLIST                          R26 R27 1 [1]
      340 CALL                             R24 2 0
      341 MOVE                             R24 R5
      342 MOVE                             R25 R7
      343 GETTABLEKS                       R26 R16 K33 ["current"]
      345 RETURN                           R24 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       23 GETTABLEKS                       R4 R2 K10 ["useEffect"]
       25 GETTABLEKS                       R5 R2 K11 ["useRef"]
       27 GETTABLEKS                       R6 R2 K12 ["useState"]
       29 GETIMPORT                        R7 K5 [require]
       31 GETTABLEKS                       R10 R0 K13 ["Src"]
       33 GETTABLEKS                       R9 R10 K14 ["Controllers"]
       35 GETTABLEKS                       R8 R9 K15 ["ShortcutController"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R11 R0 K13 ["Src"]
       42 GETTABLEKS                       R10 R11 K16 ["Hooks"]
       44 GETTABLEKS                       R9 R10 K17 ["useEventConnection"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R12 R0 K13 ["Src"]
       51 GETTABLEKS                       R11 R12 K16 ["Hooks"]
       53 GETTABLEKS                       R10 R11 K18 ["useTerrain"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R13 R0 K13 ["Src"]
       60 GETTABLEKS                       R12 R13 K19 ["Resources"]
       62 GETTABLEKS                       R11 R12 K20 ["Constants"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R14 R0 K13 ["Src"]
       69 GETTABLEKS                       R13 R14 K21 ["Util"]
       71 GETTABLEKS                       R12 R13 K22 ["ApplyPlaneLock"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R15 R0 K13 ["Src"]
       78 GETTABLEKS                       R14 R15 K21 ["Util"]
       80 GETTABLEKS                       R13 R14 K23 ["ConvertForPivot"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R16 R0 K13 ["Src"]
       87 GETTABLEKS                       R15 R16 K21 ["Util"]
       89 GETTABLEKS                       R14 R15 K24 ["getCameraLookPlane"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETTABLEKS                       R17 R0 K13 ["Src"]
       96 GETTABLEKS                       R16 R17 K21 ["Util"]
       98 GETTABLEKS                       R15 R16 K25 ["getPlaneIntersection"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R18 R0 K13 ["Src"]
      105 GETTABLEKS                       R17 R18 K21 ["Util"]
      107 GETTABLEKS                       R16 R17 K26 ["getSnappedToVoxel"]
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
      136 GETTABLEKS                       R22 R0 K13 ["Src"]
      138 GETTABLEKS                       R21 R22 K34 ["Types"]
      140 CALL                             R20 1 1
      141 GETTABLEKS                       R21 R20 K35 ["BrushSettings"]
      143 GETTABLEKS                       R22 R20 K36 ["BrushShape"]
      145 GETTABLEKS                       R23 R20 K37 ["Category"]
      147 GETTABLEKS                       R24 R20 K38 ["MaterialSettings"]
      149 GETTABLEKS                       R25 R20 K39 ["PlaneLock"]
      151 GETTABLEKS                       R26 R20 K40 ["RaycastType"]
      153 GETTABLEKS                       R27 R20 K41 ["Snapping"]
      155 GETTABLEKS                       R28 R20 K42 ["Tool"]
      157 GETIMPORT                        R29 K5 [require]
      159 GETTABLEKS                       R32 R0 K13 ["Src"]
      161 GETTABLEKS                       R31 R32 K43 ["Flags"]
      163 GETTABLEKS                       R30 R31 K44 ["getFFlagTerrainEditorPartsInFrontOfCacheFix"]
      165 CALL                             R29 1 1
      166 DUPCLOSURE                       R30 K45 [PROTO_14]
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R28
      178 CAPTURE                          VAL R24
      179 CAPTURE                          VAL R25
      180 CAPTURE                          VAL R22
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R19
      184 CAPTURE                          VAL R17
      185 CAPTURE                          VAL R29
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R26
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R27
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R18
      194 RETURN                           R30 1
