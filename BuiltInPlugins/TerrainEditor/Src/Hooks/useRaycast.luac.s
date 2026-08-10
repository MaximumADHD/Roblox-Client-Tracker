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
       23 JUMPIFNOT                        R5 ; [+31]
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
       42 GETUPVAL                         R7 6
       43 CALL                             R7 0 1
       44 JUMPIFNOT                        R7 ; [+3]
       45 SETTABLEKS                       R5 R4 K14 ["IncludeInstances"]
       47 JUMP                             ; [+62]
       48 GETIMPORT                        R7 K18 [Enum.RaycastFilterType.Whitelist]
       50 SETTABLEKS                       R7 R4 K19 ["FilterType"]
       52 SETTABLEKS                       R5 R4 K20 ["FilterDescendantsInstances"]
       54 JUMP                             ; [+55]
       55 NEWTABLE                         R5 0 0
       57 GETUPVAL                         R6 7
       58 GETTABLEKS                       R6 R6 K21 ["LocalPlayer"]
       60 JUMPIFNOT                        R6 ; [+17]
       61 GETUPVAL                         R6 7
       62 GETTABLEKS                       R6 R6 K21 ["LocalPlayer"]
       64 GETTABLEKS                       R6 R6 K22 ["Character"]
       66 JUMPIFNOT                        R6 ; [+11]
       67 GETUPVAL                         R8 7
       68 GETTABLEKS                       R8 R8 K21 ["LocalPlayer"]
       70 GETTABLEKS                       R8 R8 K22 ["Character"]
       72 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       74 MOVE                             R7 R5
       75 GETIMPORT                        R6 K13 [table.insert]
       77 CALL                             R6 2 0
       78 GETUPVAL                         R6 6
       79 CALL                             R6 0 1
       80 JUMPIFNOT                        R6 ; [+14]
       81 JUMPIF                           R3 ; [+10]
       82 GETUPVAL                         R6 8
       83 CALL                             R6 0 1
       84 JUMPIFNOT                        R6 ; [+7]
       85 GETUPVAL                         R8 4
       86 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       88 MOVE                             R7 R5
       89 GETIMPORT                        R6 K13 [table.insert]
       91 CALL                             R6 2 0
       92 SETTABLEKS                       R5 R4 K23 ["ExcludeInstances"]
       94 JUMP                             ; [+15]
       95 GETUPVAL                         R8 5
       96 GETTABLEKS                       R8 R8 K24 ["Terrain"]
       98 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      100 MOVE                             R7 R5
      101 GETIMPORT                        R6 K13 [table.insert]
      103 CALL                             R6 2 0
      104 GETIMPORT                        R6 K26 [Enum.RaycastFilterType.Blacklist]
      106 SETTABLEKS                       R6 R4 K19 ["FilterType"]
      108 SETTABLEKS                       R5 R4 K20 ["FilterDescendantsInstances"]
      110 GETUPVAL                         R7 1
      111 GETUPVAL                         R8 2
      112 GETTABLEKS                       R8 R8 K7 ["BrushSettings"]
      114 GETTABLE                         R6 R7 R8
      115 GETUPVAL                         R7 3
      116 GETTABLEKS                       R7 R7 K27 ["IgnoreWater"]
      118 GETTABLE                         R5 R6 R7
      119 SETTABLEKS                       R5 R4 K27 ["IgnoreWater"]
      121 LOADB                            R5 1
      122 SETTABLEKS                       R5 R4 K28 ["BruteForceAllSlow"]
      124 GETUPVAL                         R5 5
      125 MOVE                             R7 R1
      126 GETUPVAL                         R9 9
      127 GETTABLEKS                       R9 R9 K29 ["RayLength"]
      129 MUL                              R8 R2 R9
      130 MOVE                             R9 R4
      131 NAMECALL                         R5 R5 K30 ["Raycast"]
      133 CALL                             R5 4 1
      134 GETUPVAL                         R6 10
      135 NAMECALL                         R6 R6 K31 ["IsMouseDown"]
      137 CALL                             R6 1 1
      138 JUMPIFNOT                        R6 ; [+109]
      139 GETUPVAL                         R6 8
      140 CALL                             R6 0 1
      141 JUMPIFNOT                        R6 ; [+106]
      142 JUMPIFNOT                        R5 ; [+3]
      143 GETTABLEKS                       R6 R5 K1 ["Position"]
      145 JUMP                             ; [+3]
      146 GETUPVAL                         R6 11
      147 GETTABLEKS                       R6 R6 K1 ["Position"]
      149 GETUPVAL                         R7 6
      150 CALL                             R7 0 1
      151 JUMPIFNOT                        R7 ; [+13]
      152 GETUPVAL                         R9 1
      153 GETUPVAL                         R10 2
      154 GETTABLEKS                       R10 R10 K7 ["BrushSettings"]
      156 GETTABLE                         R8 R9 R10
      157 GETUPVAL                         R9 3
      158 GETTABLEKS                       R9 R9 K8 ["IgnoreParts"]
      160 GETTABLE                         R7 R8 R9
      161 JUMPIF                           R7 ; [+3]
      162 GETUPVAL                         R7 12
      163 GETTABLEKS                       R6 R7 K32 ["current"]
      165 GETUPVAL                         R8 13
      166 GETTABLEKS                       R8 R8 K33 ["CachePoint"]
      168 SUB                              R7 R6 R8
      169 GETTABLEKS                       R8 R7 K34 ["magnitude"]
      171 GETUPVAL                         R9 13
      172 GETTABLEKS                       R9 R9 K35 ["CacheID"]
      174 GETUPVAL                         R11 14
      175 CALL                             R11 0 1
      176 GETUPVAL                         R12 9
      177 GETTABLEKS                       R12 R12 K36 ["TerrainCacheUpdateThreshold"]
      179 MUL                              R10 R11 R12
      180 JUMPIFLT                         R10 R8 ; [+2]
      182 JUMPIF                           R9 ; [+18]
      183 GETUPVAL                         R10 5
      184 GETUPVAL                         R13 13
      185 GETTABLEKS                       R13 R13 K35 ["CacheID"]
      187 ORK                              R12 R13 K37 [""]
      188 MOVE                             R13 R6
      189 GETUPVAL                         R14 14
      190 CALL                             R14 0 -1
      191 NAMECALL                         R10 R10 K38 ["CacheCurrentTerrain"]
      193 CALL                             R10 -1 1
      194 MOVE                             R9 R10
      195 GETUPVAL                         R10 15
      196 NEWCLOSURE                       R11 P0
      197 CAPTURE                          UPVAL U16
      198 CAPTURE                          REF R9
      199 CAPTURE                          REF R6
      200 CALL                             R10 1 0
      201 GETUPVAL                         R12 1
      202 GETUPVAL                         R13 2
      203 GETTABLEKS                       R13 R13 K7 ["BrushSettings"]
      205 GETTABLE                         R11 R12 R13
      206 GETUPVAL                         R12 3
      207 GETTABLEKS                       R12 R12 K8 ["IgnoreParts"]
      209 GETTABLE                         R10 R11 R12
      210 JUMPIF                           R10 ; [+24]
      211 GETUPVAL                         R10 5
      212 MOVE                             R12 R9
      213 MOVE                             R13 R1
      214 GETUPVAL                         R15 9
      215 GETTABLEKS                       R15 R15 K29 ["RayLength"]
      217 MUL                              R14 R2 R15
      218 LOADB                            R15 1
      219 NAMECALL                         R10 R10 K39 ["RaycastCachedTerrain"]
      221 CALL                             R10 5 1
      222 JUMPIFNOT                        R5 ; [+9]
      223 JUMPIFNOT                        R10 ; [+8]
      224 GETTABLEKS                       R11 R10 K40 ["Distance"]
      226 GETTABLEKS                       R12 R5 K40 ["Distance"]
      228 JUMPIFNOTLT                      R11 R12 ; [+18]
      230 MOVE                             R5 R10
      231 JUMP                             ; [+15]
      232 JUMPIFNOT                        R10 ; [+14]
      233 MOVE                             R5 R10
      234 JUMP                             ; [+12]
      235 GETUPVAL                         R10 5
      236 MOVE                             R12 R9
      237 MOVE                             R13 R1
      238 GETUPVAL                         R15 9
      239 GETTABLEKS                       R15 R15 K29 ["RayLength"]
      241 MUL                              R14 R2 R15
      242 LOADB                            R15 1
      243 NAMECALL                         R10 R10 K39 ["RaycastCachedTerrain"]
      245 CALL                             R10 5 1
      246 MOVE                             R5 R10
      247 CLOSEUPVALS                      R6
      248 JUMPIFNOT                        R5 ; [+40]
      249 DUPTABLE                         R6 K44 [{"Distance", "Instance", "Material", "Normal", "Position"}]
      250 GETTABLEKS                       R8 R5 K1 ["Position"]
      252 SUB                              R7 R8 R1
      253 GETTABLEKS                       R7 R7 K45 ["Magnitude"]
      255 SETTABLEKS                       R7 R6 K40 ["Distance"]
      257 GETTABLEKS                       R7 R5 K41 ["Instance"]
      259 SETTABLEKS                       R7 R6 K41 ["Instance"]
      261 GETTABLEKS                       R7 R5 K42 ["Material"]
      263 SETTABLEKS                       R7 R6 K42 ["Material"]
      265 GETTABLEKS                       R7 R5 K43 ["Normal"]
      267 SETTABLEKS                       R7 R6 K43 ["Normal"]
      269 GETTABLEKS                       R7 R5 K1 ["Position"]
      271 SETTABLEKS                       R7 R6 K1 ["Position"]
      273 MOVE                             R5 R6
      274 GETUPVAL                         R6 17
      275 GETTABLEKS                       R6 R6 K32 ["current"]
      277 GETUPVAL                         R7 18
      278 GETTABLEKS                       R7 R7 K46 ["Pending"]
      280 JUMPIFNOTEQ                      R6 R7 ; [+74]
      282 GETUPVAL                         R6 17
      283 GETUPVAL                         R7 18
      284 GETTABLEKS                       R7 R7 K47 ["Active"]
      286 SETTABLEKS                       R7 R6 K32 ["current"]
      288 JUMP                             ; [+66]
      289 GETUPVAL                         R6 17
      290 GETTABLEKS                       R6 R6 K32 ["current"]
      292 JUMPIFNOTEQKS                    R6 K47 ["Active"] ; [+7]
      294 DUPTABLE                         R6 K52 [{["Distance"] = -1, ["Instance"] = , ["Material"], ["Normal"] = {0, 1, 0}, ["Position"] = {0, 0, 0}}]
      295 GETIMPORT                        R7 K54 [Enum.Material.Air]
      297 SETTABLEKS                       R7 R6 K42 ["Material"]
      299 RETURN                           R6 1
      300 GETUPVAL                         R6 19
      301 CALL                             R6 0 1
      302 GETUPVAL                         R7 20
      303 MOVE                             R8 R1
      304 MOVE                             R9 R2
      305 LOADK                            R10 K51 [{0, 0, 0}]
      306 LOADK                            R11 K50 [{0, 1, 0}]
      307 CALL                             R7 4 2
      308 JUMPIFNOT                        R7 ; [+16]
      309 JUMPIFNOT                        R8 ; [+15]
      310 LOADN                            R9 0
      311 JUMPIFNOTLE                      R9 R8 ; [+13]
      313 DUPTABLE                         R9 K55 [{"Distance", "Normal", "Position"}]
      314 SUB                              R10 R7 R1
      315 GETTABLEKS                       R10 R10 K45 ["Magnitude"]
      317 SETTABLEKS                       R10 R9 K40 ["Distance"]
      319 SETTABLEKS                       R6 R9 K43 ["Normal"]
      321 SETTABLEKS                       R7 R9 K1 ["Position"]
      323 MOVE                             R5 R9
      324 JUMP                             ; [+16]
      325 GETUPVAL                         R11 9
      326 GETTABLEKS                       R11 R11 K29 ["RayLength"]
      328 MUL                              R10 R2 R11
      329 ADD                              R9 R1 R10
      330 DUPTABLE                         R10 K55 [{"Distance", "Normal", "Position"}]
      331 SUB                              R11 R9 R1
      332 GETTABLEKS                       R11 R11 K45 ["Magnitude"]
      334 SETTABLEKS                       R11 R10 K40 ["Distance"]
      336 SETTABLEKS                       R6 R10 K43 ["Normal"]
      338 SETTABLEKS                       R9 R10 K1 ["Position"]
      340 MOVE                             R5 R10
      341 GETUPVAL                         R9 17
      342 GETTABLEKS                       R9 R9 K32 ["current"]
      344 GETUPVAL                         R10 18
      345 GETTABLEKS                       R10 R10 K46 ["Pending"]
      347 JUMPIFNOTEQ                      R9 R10 ; [+7]
      349 GETUPVAL                         R9 17
      350 GETUPVAL                         R10 18
      351 GETTABLEKS                       R10 R10 K56 ["Inactive"]
      353 SETTABLEKS                       R10 R9 K32 ["current"]
      355 GETUPVAL                         R6 21
      356 GETUPVAL                         R7 1
      357 GETUPVAL                         R9 10
      358 NAMECALL                         R9 R9 K31 ["IsMouseDown"]
      360 CALL                             R9 1 1
      361 JUMPIFNOT                        R9 ; [+2]
      362 GETUPVAL                         R8 22
      363 JUMP                             ; [+10]
      364 GETIMPORT                        R8 K59 [CFrame.lookAt]
      366 GETTABLEKS                       R9 R5 K1 ["Position"]
      368 GETTABLEKS                       R11 R5 K1 ["Position"]
      370 GETUPVAL                         R12 19
      371 CALL                             R12 0 1
      372 ADD                              R10 R11 R12
      373 CALL                             R8 2 1
      374 GETUPVAL                         R9 0
      375 GETUPVAL                         R10 23
      376 CALL                             R6 4 1
      377 JUMPIFNOT                        R6 ; [+1]
      378 MOVE                             R5 R6
      379 GETUPVAL                         R9 1
      380 GETUPVAL                         R10 2
      381 GETTABLEKS                       R10 R10 K7 ["BrushSettings"]
      383 GETTABLE                         R8 R9 R10
      384 GETUPVAL                         R9 3
      385 GETTABLEKS                       R9 R9 K60 ["Snapping"]
      387 GETTABLE                         R7 R8 R9
      388 GETUPVAL                         R8 24
      389 GETIMPORT                        R9 K62 [table.clone]
      391 MOVE                             R10 R5
      392 CALL                             R9 1 -1
      393 CALL                             R8 -1 0
      394 JUMPIFEQKNIL                     R7 ; [+45]
      396 GETUPVAL                         R8 25
      397 GETTABLEKS                       R8 R8 K63 ["Off"]
      399 JUMPIFEQ                         R7 R8 ; [+40]
      401 GETUPVAL                         R8 26
      402 GETTABLEKS                       R9 R5 K1 ["Position"]
      404 CALL                             R8 1 1
      405 GETUPVAL                         R11 1
      406 GETUPVAL                         R12 2
      407 GETTABLEKS                       R12 R12 K7 ["BrushSettings"]
      409 GETTABLE                         R10 R11 R12
      410 GETUPVAL                         R11 3
      411 GETTABLEKS                       R11 R11 K64 ["FixedYPlane"]
      413 GETTABLE                         R9 R10 R11
      414 JUMPIFNOT                        R9 ; [+18]
      415 GETTABLEKS                       R10 R8 K65 ["X"]
      417 GETUPVAL                         R13 1
      418 GETUPVAL                         R14 2
      419 GETTABLEKS                       R14 R14 K7 ["BrushSettings"]
      421 GETTABLE                         R12 R13 R14
      422 GETUPVAL                         R13 3
      423 GETTABLEKS                       R13 R13 K66 ["FixedYPlanePosition"]
      425 GETTABLE                         R11 R12 R13
      426 GETTABLEKS                       R12 R8 K67 ["Z"]
      428 FASTCALL                         VECTOR ; [+2]
      429 GETIMPORT                        R9 K69 [Vector3.new]
      431 CALL                             R9 3 1
      432 MOVE                             R8 R9
      433 SUB                              R9 R8 R1
      434 GETTABLEKS                       R9 R9 K45 ["Magnitude"]
      436 SETTABLEKS                       R9 R5 K40 ["Distance"]
      438 SETTABLEKS                       R8 R5 K1 ["Position"]
      440 GETUPVAL                         R8 12
      441 GETTABLEKS                       R9 R5 K1 ["Position"]
      443 SETTABLEKS                       R9 R8 K32 ["current"]
      445 RETURN                           R5 1

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
      172 CAPTURE                          UPVAL U18
      173 CAPTURE                          VAL R20
      174 CAPTURE                          UPVAL U9
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R16
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R19
      180 CAPTURE                          VAL R12
      181 CAPTURE                          UPVAL U19
      182 CAPTURE                          VAL R15
      183 CAPTURE                          UPVAL U20
      184 CAPTURE                          UPVAL U3
      185 CAPTURE                          UPVAL U21
      186 CAPTURE                          UPVAL U22
      187 CAPTURE                          VAL R9
      188 CAPTURE                          VAL R0
      189 CAPTURE                          VAL R8
      190 CAPTURE                          UPVAL U23
      191 CAPTURE                          UPVAL U24
      192 NEWTABLE                         R25 0 12
      194 NAMECALL                         R27 R3 K24 ["IsMouseDown"]
      196 CALL                             R27 1 1
      197 JUMPIFNOT                        R27 ; [+2]
      198 MOVE                             R26 R9
      199 JUMP                             ; [+1]
      200 LOADB                            R26 1
      201 MOVE                             R27 R11
      202 MOVE                             R28 R19
      203 MOVE                             R29 R20
      204 GETUPVAL                         R32 6
      205 GETTABLEKS                       R32 R32 K19 ["BrushSettings"]
      207 GETTABLE                         R31 R1 R32
      208 GETUPVAL                         R32 8
      209 GETTABLEKS                       R32 R32 K25 ["IgnoreParts"]
      211 GETTABLE                         R30 R31 R32
      212 GETUPVAL                         R33 6
      213 GETTABLEKS                       R33 R33 K19 ["BrushSettings"]
      215 GETTABLE                         R32 R1 R33
      216 GETUPVAL                         R33 8
      217 GETTABLEKS                       R33 R33 K26 ["IgnoreWater"]
      219 GETTABLE                         R31 R32 R33
      220 GETUPVAL                         R34 6
      221 GETTABLEKS                       R34 R34 K19 ["BrushSettings"]
      223 GETTABLE                         R33 R1 R34
      224 GETUPVAL                         R34 8
      225 GETTABLEKS                       R34 R34 K27 ["Snapping"]
      227 GETTABLE                         R32 R33 R34
      228 GETUPVAL                         R35 6
      229 GETTABLEKS                       R35 R35 K19 ["BrushSettings"]
      231 GETTABLE                         R34 R1 R35
      232 GETUPVAL                         R35 8
      233 GETTABLEKS                       R35 R35 K28 ["FixedYPlane"]
      235 GETTABLE                         R33 R34 R35
      236 GETUPVAL                         R36 6
      237 GETTABLEKS                       R36 R36 K19 ["BrushSettings"]
      239 GETTABLE                         R35 R1 R36
      240 GETUPVAL                         R36 8
      241 GETTABLEKS                       R36 R36 K29 ["FixedYPlanePosition"]
      243 GETTABLE                         R34 R35 R36
      244 GETUPVAL                         R37 6
      245 GETTABLEKS                       R37 R37 K19 ["BrushSettings"]
      247 GETTABLE                         R36 R1 R37
      248 GETUPVAL                         R37 8
      249 GETTABLEKS                       R37 R37 K30 ["PlaneTransform"]
      251 GETTABLE                         R35 R36 R37
      252 GETUPVAL                         R38 6
      253 GETTABLEKS                       R38 R38 K19 ["BrushSettings"]
      255 GETTABLE                         R37 R1 R38
      256 GETUPVAL                         R38 8
      257 GETTABLEKS                       R38 R38 K22 ["PlaneLock"]
      259 GETTABLE                         R36 R37 R38
      260 MOVE                             R37 R0
      261 SETLIST                          R25 R26 12 [1]
      263 CALL                             R23 2 1
      264 GETUPVAL                         R24 25
      265 GETTABLEKS                       R25 R4 K31 ["Button1Down"]
      267 NEWCLOSURE                       R26 P6
      268 CAPTURE                          VAL R20
      269 CAPTURE                          VAL R12
      270 CAPTURE                          UPVAL U16
      271 CAPTURE                          VAL R5
      272 CAPTURE                          VAL R19
      273 CAPTURE                          VAL R15
      274 CAPTURE                          UPVAL U20
      275 NEWTABLE                         R27 0 1
      277 MOVE                             R28 R5
      278 SETLIST                          R27 R28 1 [1]
      280 CALL                             R24 3 0
      281 GETUPVAL                         R24 25
      282 GETTABLEKS                       R25 R4 K32 ["Button1Up"]
      284 NEWCLOSURE                       R26 P7
      285 CAPTURE                          VAL R11
      286 CAPTURE                          UPVAL U16
      287 CAPTURE                          VAL R12
      288 CAPTURE                          VAL R15
      289 NEWTABLE                         R27 0 1
      291 MOVE                             R28 R11
      292 SETLIST                          R27 R28 1 [1]
      294 CALL                             R24 3 0
      295 GETUPVAL                         R24 25
      296 GETTABLEKS                       R25 R3 K33 ["MouseMoveAction"]
      298 NEWCLOSURE                       R26 P8
      299 CAPTURE                          VAL R13
      300 CAPTURE                          VAL R14
      301 NEWTABLE                         R27 0 1
      303 MOVE                             R28 R13
      304 SETLIST                          R27 R28 1 [1]
      306 CALL                             R24 3 0
      307 GETUPVAL                         R24 2
      308 NEWCLOSURE                       R25 P9
      309 CAPTURE                          VAL R22
      310 CAPTURE                          VAL R23
      311 CAPTURE                          VAL R3
      312 CAPTURE                          UPVAL U26
      313 CAPTURE                          VAL R13
      314 CAPTURE                          VAL R14
      315 NEWTABLE                         R26 0 1
      317 MOVE                             R27 R22
      318 SETLIST                          R26 R27 1 [1]
      320 CALL                             R24 2 0
      321 MOVE                             R24 R5
      322 MOVE                             R25 R7
      323 GETTABLEKS                       R26 R16 K34 ["current"]
      325 RETURN                           R24 3

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
      157 GETIMPORT                        R29 K5 [require]
      159 GETTABLEKS                       R30 R0 K13 ["Src"]
      161 GETTABLEKS                       R30 R30 K43 ["Flags"]
      163 GETTABLEKS                       R30 R30 K44 ["getFFlagTerrainEditorRaycastCachedTerrain"]
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
      184 CAPTURE                          VAL R29
      185 CAPTURE                          VAL R17
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R26
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R27
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R18
      194 RETURN                           R30 1
