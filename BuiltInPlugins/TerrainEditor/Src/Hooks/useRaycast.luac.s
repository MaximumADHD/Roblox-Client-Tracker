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
       47 JUMP                             ; [+38]
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
       71 GETUPVAL                         R7 5
       72 GETTABLEKS                       R6 R7 K22 ["Terrain"]
       74 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       76 MOVE                             R5 R3
       77 GETIMPORT                        R4 K13 [table.insert]
       79 CALL                             R4 2 0
       80 GETIMPORT                        R4 K24 [Enum.RaycastFilterType.Blacklist]
       82 SETTABLEKS                       R4 R2 K18 ["FilterType"]
       84 SETTABLEKS                       R3 R2 K19 ["FilterDescendantsInstances"]
       86 GETUPVAL                         R5 1
       87 GETUPVAL                         R7 2
       88 GETTABLEKS                       R6 R7 K7 ["BrushSettings"]
       90 GETTABLE                         R4 R5 R6
       91 GETUPVAL                         R6 3
       92 GETTABLEKS                       R5 R6 K25 ["IgnoreWater"]
       94 GETTABLE                         R3 R4 R5
       95 SETTABLEKS                       R3 R2 K25 ["IgnoreWater"]
       97 LOADB                            R3 1
       98 SETTABLEKS                       R3 R2 K26 ["BruteForceAllSlow"]
      100 GETUPVAL                         R3 5
      101 MOVE                             R5 R0
      102 GETUPVAL                         R8 7
      103 GETTABLEKS                       R7 R8 K27 ["RayLength"]
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
      122 GETUPVAL                         R5 10
      123 GETTABLEKS                       R4 R5 K1 ["Position"]
      125 GETUPVAL                         R7 11
      126 GETTABLEKS                       R6 R7 K30 ["CachePoint"]
      128 SUB                              R5 R4 R6
      129 GETTABLEKS                       R6 R5 K31 ["magnitude"]
      131 GETUPVAL                         R8 11
      132 GETTABLEKS                       R7 R8 K32 ["CacheID"]
      134 GETUPVAL                         R9 12
      135 CALL                             R9 0 1
      136 GETUPVAL                         R11 7
      137 GETTABLEKS                       R10 R11 K33 ["TerrainCacheUpdateThreshold"]
      139 MUL                              R8 R9 R10
      140 JUMPIFLT                         R8 R6 ; [+2]
      142 JUMPIF                           R7 ; [+18]
      143 GETUPVAL                         R8 5
      144 GETUPVAL                         R12 11
      145 GETTABLEKS                       R11 R12 K32 ["CacheID"]
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
      162 GETUPVAL                         R12 2
      163 GETTABLEKS                       R11 R12 K7 ["BrushSettings"]
      165 GETTABLE                         R9 R10 R11
      166 GETUPVAL                         R11 3
      167 GETTABLEKS                       R10 R11 K8 ["IgnoreParts"]
      169 GETTABLE                         R8 R9 R10
      170 JUMPIF                           R8 ; [+25]
      171 GETUPVAL                         R8 5
      172 MOVE                             R10 R7
      173 MOVE                             R11 R0
      174 GETUPVAL                         R14 7
      175 GETTABLEKS                       R13 R14 K27 ["RayLength"]
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
      199 GETUPVAL                         R14 7
      200 GETTABLEKS                       R13 R14 K27 ["RayLength"]
      202 MUL                              R12 R1 R13
      203 LOADB                            R13 1
      204 MOVE                             R14 R2
      205 NAMECALL                         R8 R8 K36 ["RaycastCachedTerrain"]
      207 CALL                             R8 6 1
      208 MOVE                             R3 R8
      209 CLOSEUPVALS                      R7
      210 JUMPIFNOT                        R3 ; [+40]
      211 DUPTABLE                         R4 K41 [{"Distance", "Instance", "Material", "Normal", "Position"}]
      212 GETTABLEKS                       R7 R3 K1 ["Position"]
      214 SUB                              R6 R7 R0
      215 GETTABLEKS                       R5 R6 K42 ["Magnitude"]
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
      236 GETUPVAL                         R5 15
      237 GETTABLEKS                       R4 R5 K43 ["current"]
      239 GETUPVAL                         R6 16
      240 GETTABLEKS                       R5 R6 K44 ["Pending"]
      242 JUMPIFNOTEQ                      R4 R5 ; [+86]
      244 GETUPVAL                         R4 15
      245 GETUPVAL                         R6 16
      246 GETTABLEKS                       R5 R6 K45 ["Active"]
      248 SETTABLEKS                       R5 R4 K43 ["current"]
      250 JUMP                             ; [+78]
      251 GETUPVAL                         R5 15
      252 GETTABLEKS                       R4 R5 K43 ["current"]
      254 JUMPIFNOTEQKS                    R4 K45 ["Active"] ; [+19]
      256 DUPTABLE                         R4 K41 [{"Distance", "Instance", "Material", "Normal", "Position"}]
      257 LOADN                            R5 255
      258 SETTABLEKS                       R5 R4 K37 ["Distance"]
      260 LOADNIL                          R5
      261 SETTABLEKS                       R5 R4 K38 ["Instance"]
      263 GETIMPORT                        R5 K47 [Enum.Material.Air]
      265 SETTABLEKS                       R5 R4 K39 ["Material"]
      267 LOADK                            R5 K48 [{0, 1, 0}]
      268 SETTABLEKS                       R5 R4 K40 ["Normal"]
      270 LOADK                            R5 K49 [{0, 0, 0}]
      271 SETTABLEKS                       R5 R4 K1 ["Position"]
      273 RETURN                           R4 1
      274 GETUPVAL                         R4 17
      275 CALL                             R4 0 1
      276 GETUPVAL                         R5 18
      277 MOVE                             R6 R0
      278 MOVE                             R7 R1
      279 LOADK                            R8 K49 [{0, 0, 0}]
      280 LOADK                            R9 K48 [{0, 1, 0}]
      281 CALL                             R5 4 2
      282 JUMPIFNOT                        R5 ; [+16]
      283 JUMPIFNOT                        R6 ; [+15]
      284 LOADN                            R7 0
      285 JUMPIFNOTLE                      R7 R6 ; [+13]
      287 DUPTABLE                         R7 K50 [{"Distance", "Normal", "Position"}]
      288 SUB                              R9 R5 R0
      289 GETTABLEKS                       R8 R9 K42 ["Magnitude"]
      291 SETTABLEKS                       R8 R7 K37 ["Distance"]
      293 SETTABLEKS                       R4 R7 K40 ["Normal"]
      295 SETTABLEKS                       R5 R7 K1 ["Position"]
      297 MOVE                             R3 R7
      298 JUMP                             ; [+16]
      299 GETUPVAL                         R10 7
      300 GETTABLEKS                       R9 R10 K27 ["RayLength"]
      302 MUL                              R8 R1 R9
      303 ADD                              R7 R0 R8
      304 DUPTABLE                         R8 K50 [{"Distance", "Normal", "Position"}]
      305 SUB                              R10 R7 R0
      306 GETTABLEKS                       R9 R10 K42 ["Magnitude"]
      308 SETTABLEKS                       R9 R8 K37 ["Distance"]
      310 SETTABLEKS                       R4 R8 K40 ["Normal"]
      312 SETTABLEKS                       R7 R8 K1 ["Position"]
      314 MOVE                             R3 R8
      315 GETUPVAL                         R8 15
      316 GETTABLEKS                       R7 R8 K43 ["current"]
      318 GETUPVAL                         R9 16
      319 GETTABLEKS                       R8 R9 K44 ["Pending"]
      321 JUMPIFNOTEQ                      R7 R8 ; [+7]
      323 GETUPVAL                         R7 15
      324 GETUPVAL                         R9 16
      325 GETTABLEKS                       R8 R9 K51 ["Inactive"]
      327 SETTABLEKS                       R8 R7 K43 ["current"]
      329 GETUPVAL                         R4 19
      330 GETUPVAL                         R5 1
      331 GETUPVAL                         R7 8
      332 NAMECALL                         R7 R7 K29 ["IsMouseDown"]
      334 CALL                             R7 1 1
      335 JUMPIFNOT                        R7 ; [+2]
      336 GETUPVAL                         R6 20
      337 JUMP                             ; [+10]
      338 GETIMPORT                        R6 K54 [CFrame.lookAt]
      340 GETTABLEKS                       R7 R3 K1 ["Position"]
      342 GETTABLEKS                       R9 R3 K1 ["Position"]
      344 GETUPVAL                         R10 17
      345 CALL                             R10 0 1
      346 ADD                              R8 R9 R10
      347 CALL                             R6 2 1
      348 GETUPVAL                         R7 0
      349 GETUPVAL                         R8 21
      350 CALL                             R4 4 1
      351 JUMPIFNOT                        R4 ; [+1]
      352 MOVE                             R3 R4
      353 GETUPVAL                         R7 1
      354 GETUPVAL                         R9 2
      355 GETTABLEKS                       R8 R9 K7 ["BrushSettings"]
      357 GETTABLE                         R6 R7 R8
      358 GETUPVAL                         R8 3
      359 GETTABLEKS                       R7 R8 K55 ["Snapping"]
      361 GETTABLE                         R5 R6 R7
      362 GETUPVAL                         R6 22
      363 GETIMPORT                        R7 K57 [table.clone]
      365 MOVE                             R8 R3
      366 CALL                             R7 1 -1
      367 CALL                             R6 -1 0
      368 JUMPIFEQKNIL                     R5 ; [+45]
      370 GETUPVAL                         R7 23
      371 GETTABLEKS                       R6 R7 K58 ["Off"]
      373 JUMPIFEQ                         R5 R6 ; [+40]
      375 GETUPVAL                         R6 24
      376 GETTABLEKS                       R7 R3 K1 ["Position"]
      378 CALL                             R6 1 1
      379 GETUPVAL                         R9 1
      380 GETUPVAL                         R11 2
      381 GETTABLEKS                       R10 R11 K7 ["BrushSettings"]
      383 GETTABLE                         R8 R9 R10
      384 GETUPVAL                         R10 3
      385 GETTABLEKS                       R9 R10 K59 ["FixedYPlane"]
      387 GETTABLE                         R7 R8 R9
      388 JUMPIFNOT                        R7 ; [+18]
      389 GETTABLEKS                       R8 R6 K60 ["X"]
      391 GETUPVAL                         R11 1
      392 GETUPVAL                         R13 2
      393 GETTABLEKS                       R12 R13 K7 ["BrushSettings"]
      395 GETTABLE                         R10 R11 R12
      396 GETUPVAL                         R12 3
      397 GETTABLEKS                       R11 R12 K61 ["FixedYPlanePosition"]
      399 GETTABLE                         R9 R10 R11
      400 GETTABLEKS                       R10 R6 K62 ["Z"]
      402 FASTCALL                         VECTOR ; [+2]
      403 GETIMPORT                        R7 K64 [Vector3.new]
      405 CALL                             R7 3 1
      406 MOVE                             R6 R7
      407 SUB                              R8 R6 R0
      408 GETTABLEKS                       R7 R8 K42 ["Magnitude"]
      410 SETTABLEKS                       R7 R3 K37 ["Distance"]
      412 SETTABLEKS                       R6 R3 K1 ["Position"]
      414 GETUPVAL                         R6 25
      415 GETTABLEKS                       R7 R3 K1 ["Position"]
      417 SETTABLEKS                       R7 R6 K43 ["current"]
      419 RETURN                           R3 1

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
      192 CAPTURE                          UPVAL U9
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R20
      195 CAPTURE                          VAL R5
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R19
      198 CAPTURE                          VAL R12
      199 CAPTURE                          UPVAL U18
      200 CAPTURE                          VAL R15
      201 CAPTURE                          UPVAL U19
      202 CAPTURE                          UPVAL U3
      203 CAPTURE                          UPVAL U20
      204 CAPTURE                          UPVAL U21
      205 CAPTURE                          VAL R9
      206 CAPTURE                          VAL R0
      207 CAPTURE                          VAL R8
      208 CAPTURE                          UPVAL U22
      209 CAPTURE                          UPVAL U23
      210 CAPTURE                          VAL R16
      211 NEWTABLE                         R25 0 12
      213 NAMECALL                         R27 R3 K23 ["IsMouseDown"]
      215 CALL                             R27 1 1
      216 JUMPIFNOT                        R27 ; [+2]
      217 MOVE                             R26 R9
      218 JUMP                             ; [+1]
      219 LOADB                            R26 1
      220 MOVE                             R27 R11
      221 MOVE                             R28 R19
      222 MOVE                             R29 R20
      223 GETUPVAL                         R33 6
      224 GETTABLEKS                       R32 R33 K18 ["BrushSettings"]
      226 GETTABLE                         R31 R1 R32
      227 GETUPVAL                         R33 8
      228 GETTABLEKS                       R32 R33 K24 ["IgnoreParts"]
      230 GETTABLE                         R30 R31 R32
      231 GETUPVAL                         R34 6
      232 GETTABLEKS                       R33 R34 K18 ["BrushSettings"]
      234 GETTABLE                         R32 R1 R33
      235 GETUPVAL                         R34 8
      236 GETTABLEKS                       R33 R34 K25 ["IgnoreWater"]
      238 GETTABLE                         R31 R32 R33
      239 GETUPVAL                         R35 6
      240 GETTABLEKS                       R34 R35 K18 ["BrushSettings"]
      242 GETTABLE                         R33 R1 R34
      243 GETUPVAL                         R35 8
      244 GETTABLEKS                       R34 R35 K26 ["Snapping"]
      246 GETTABLE                         R32 R33 R34
      247 GETUPVAL                         R36 6
      248 GETTABLEKS                       R35 R36 K18 ["BrushSettings"]
      250 GETTABLE                         R34 R1 R35
      251 GETUPVAL                         R36 8
      252 GETTABLEKS                       R35 R36 K27 ["FixedYPlane"]
      254 GETTABLE                         R33 R34 R35
      255 GETUPVAL                         R37 6
      256 GETTABLEKS                       R36 R37 K18 ["BrushSettings"]
      258 GETTABLE                         R35 R1 R36
      259 GETUPVAL                         R37 8
      260 GETTABLEKS                       R36 R37 K28 ["FixedYPlanePosition"]
      262 GETTABLE                         R34 R35 R36
      263 GETUPVAL                         R38 6
      264 GETTABLEKS                       R37 R38 K18 ["BrushSettings"]
      266 GETTABLE                         R36 R1 R37
      267 GETUPVAL                         R38 8
      268 GETTABLEKS                       R37 R38 K29 ["PlaneTransform"]
      270 GETTABLE                         R35 R36 R37
      271 GETUPVAL                         R39 6
      272 GETTABLEKS                       R38 R39 K18 ["BrushSettings"]
      274 GETTABLE                         R37 R1 R38
      275 GETUPVAL                         R39 8
      276 GETTABLEKS                       R38 R39 K21 ["PlaneLock"]
      278 GETTABLE                         R36 R37 R38
      279 MOVE                             R37 R0
      280 SETLIST                          R25 R26 12 [1]
      282 CALL                             R23 2 1
      283 GETUPVAL                         R24 24
      284 GETTABLEKS                       R25 R4 K30 ["Button1Down"]
      286 NEWCLOSURE                       R26 P6
      287 CAPTURE                          VAL R20
      288 CAPTURE                          VAL R12
      289 CAPTURE                          UPVAL U16
      290 CAPTURE                          VAL R5
      291 CAPTURE                          VAL R19
      292 CAPTURE                          VAL R15
      293 CAPTURE                          UPVAL U19
      294 NEWTABLE                         R27 0 1
      296 MOVE                             R28 R5
      297 SETLIST                          R27 R28 1 [1]
      299 CALL                             R24 3 0
      300 GETUPVAL                         R24 24
      301 GETTABLEKS                       R25 R4 K31 ["Button1Up"]
      303 NEWCLOSURE                       R26 P7
      304 CAPTURE                          VAL R11
      305 CAPTURE                          UPVAL U16
      306 CAPTURE                          VAL R12
      307 CAPTURE                          VAL R15
      308 NEWTABLE                         R27 0 1
      310 MOVE                             R28 R11
      311 SETLIST                          R27 R28 1 [1]
      313 CALL                             R24 3 0
      314 GETUPVAL                         R24 24
      315 GETTABLEKS                       R25 R3 K32 ["MouseMoveAction"]
      317 NEWCLOSURE                       R26 P8
      318 CAPTURE                          VAL R13
      319 CAPTURE                          VAL R14
      320 NEWTABLE                         R27 0 1
      322 MOVE                             R28 R13
      323 SETLIST                          R27 R28 1 [1]
      325 CALL                             R24 3 0
      326 GETUPVAL                         R24 2
      327 NEWCLOSURE                       R25 P9
      328 CAPTURE                          UPVAL U25
      329 CAPTURE                          VAL R3
      330 CAPTURE                          VAL R22
      331 CAPTURE                          VAL R23
      332 CAPTURE                          VAL R13
      333 CAPTURE                          VAL R14
      334 NEWTABLE                         R26 0 1
      336 MOVE                             R27 R22
      337 SETLIST                          R26 R27 1 [1]
      339 CALL                             R24 2 0
      340 MOVE                             R24 R5
      341 MOVE                             R25 R7
      342 GETTABLEKS                       R26 R16 K33 ["current"]
      344 RETURN                           R24 3

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
