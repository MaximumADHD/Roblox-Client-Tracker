PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PlaneTransform"]
        4 GETTABLE                         R1 R2 R3
        5 GETTABLEKS                       R1 R1 K1 ["Rotation"]
        7 GETTABLEN                        R4 R0 1
        8 GETTABLEN                        R5 R0 2
        9 GETTABLEN                        R6 R0 3
       10 FASTCALL                         VECTOR ; [+2]
       11 GETIMPORT                        R3 K4 [Vector3.new]
       13 CALL                             R3 3 1
       14 ADD                              R2 R1 R3
       15 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 NEWTABLE                         R2 0 3
        4 GETTABLEKS                       R3 R1 K1 ["X"]
        6 GETTABLEKS                       R4 R1 K2 ["Y"]
        8 GETTABLEKS                       R5 R1 K3 ["Z"]
       10 SETLIST                          R2 R3 3 [1]
       12 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [CFrame.fromEulerAnglesXYZ]
        2 GETTABLEN                        R3 R0 1
        3 FASTCALL1                        MATH_RAD R3 ; [+2]
        4 GETIMPORT                        R2 K5 [math.rad]
        6 CALL                             R2 1 1
        7 GETTABLEN                        R4 R0 2
        8 FASTCALL1                        MATH_RAD R4 ; [+2]
        9 GETIMPORT                        R3 K5 [math.rad]
       11 CALL                             R3 1 1
       12 GETTABLEN                        R5 R0 3
       13 FASTCALL1                        MATH_RAD R5 ; [+2]
       14 GETIMPORT                        R4 K5 [math.rad]
       16 CALL                             R4 1 1
       17 CALL                             R1 3 1
       18 GETUPVAL                         R4 0
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K6 ["PlaneTransform"]
       22 GETTABLE                         R3 R4 R5
       23 GETTABLEKS                       R3 R3 K7 ["Position"]
       25 ADD                              R2 R1 R3
       26 RETURN                           R2 1

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["ToEulerAnglesXYZ"]
        2 CALL                             R1 1 3
        3 NEWTABLE                         R4 0 3
        5 FASTCALL1                        MATH_DEG R1 ; [+3]
        6 MOVE                             R6 R1
        7 GETIMPORT                        R5 K3 [math.deg]
        9 CALL                             R5 1 1
       10 FASTCALL1                        MATH_DEG R2 ; [+3]
       11 MOVE                             R7 R2
       12 GETIMPORT                        R6 K3 [math.deg]
       14 CALL                             R6 1 1
       15 FASTCALL1                        MATH_DEG R3 ; [+3]
       16 MOVE                             R8 R3
       17 GETIMPORT                        R7 K3 [math.deg]
       19 CALL                             R7 1 1
       20 SETLIST                          R4 R5 3 [1]
       22 RETURN                           R4 1

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["Localization"]
        2 GETTABLEKS                       R5 R0 K1 ["Stylizer"]
        4 GETUPVAL                         R6 0
        5 MOVE                             R7 R0
        6 NEWTABLE                         R8 0 15
        8 DUPTABLE                         R9 K4 [{"Id", "Schema"}]
        9 GETUPVAL                         R10 1
       10 GETTABLEKS                       R10 R10 K5 ["BrushMode"]
       12 SETTABLEKS                       R10 R9 K2 ["Id"]
       14 DUPTABLE                         R10 K8 [{"Type", "Items"}]
       15 GETUPVAL                         R12 2
       16 CALL                             R12 0 1
       17 JUMPIFNOT                        R12 ; [+2]
       18 LOADK                            R11 K9 ["SegmentedControl"]
       19 JUMP                             ; [+1]
       20 LOADK                            R11 K10 ["SingleSelectButton"]
       21 SETTABLEKS                       R11 R10 K6 ["Type"]
       23 GETUPVAL                         R11 3
       24 MOVE                             R12 R4
       25 LOADNIL                          R13
       26 GETUPVAL                         R14 4
       27 GETTABLEKS                       R14 R14 K5 ["BrushMode"]
       29 CALL                             R11 3 1
       30 SETTABLEKS                       R11 R10 K7 ["Items"]
       32 SETTABLEKS                       R10 R9 K3 ["Schema"]
       34 DUPTABLE                         R10 K12 [{"Height", "Id", "Schema"}]
       35 LOADN                            R11 52
       36 SETTABLEKS                       R11 R10 K11 ["Height"]
       38 GETUPVAL                         R11 1
       39 GETTABLEKS                       R11 R11 K13 ["BrushShape"]
       41 SETTABLEKS                       R11 R10 K2 ["Id"]
       43 DUPTABLE                         R11 K8 [{"Type", "Items"}]
       44 LOADK                            R12 K10 ["SingleSelectButton"]
       45 SETTABLEKS                       R12 R11 K6 ["Type"]
       47 GETUPVAL                         R12 3
       48 LOADNIL                          R13
       49 MOVE                             R14 R5
       50 GETUPVAL                         R15 4
       51 GETTABLEKS                       R15 R15 K13 ["BrushShape"]
       53 CALL                             R12 3 1
       54 SETTABLEKS                       R12 R11 K7 ["Items"]
       56 SETTABLEKS                       R11 R10 K3 ["Schema"]
       58 DUPTABLE                         R11 K12 [{"Height", "Id", "Schema"}]
       59 LOADN                            R12 52
       60 SETTABLEKS                       R12 R11 K11 ["Height"]
       62 GETUPVAL                         R12 1
       63 GETTABLEKS                       R12 R12 K14 ["FlattenMode"]
       65 SETTABLEKS                       R12 R11 K2 ["Id"]
       67 DUPTABLE                         R12 K8 [{"Type", "Items"}]
       68 LOADK                            R13 K10 ["SingleSelectButton"]
       69 SETTABLEKS                       R13 R12 K6 ["Type"]
       71 GETUPVAL                         R13 3
       72 LOADNIL                          R14
       73 MOVE                             R15 R5
       74 GETUPVAL                         R16 4
       75 GETTABLEKS                       R16 R16 K14 ["FlattenMode"]
       77 CALL                             R13 3 1
       78 SETTABLEKS                       R13 R12 K7 ["Items"]
       80 SETTABLEKS                       R12 R11 K3 ["Schema"]
       82 DUPTABLE                         R12 K4 [{"Id", "Schema"}]
       83 GETUPVAL                         R13 1
       84 GETTABLEKS                       R13 R13 K15 ["BrushSize"]
       86 SETTABLEKS                       R13 R12 K2 ["Id"]
       88 DUPTABLE                         R13 K17 [{"Shape", "Type"}]
       89 GETUPVAL                         R15 1
       90 GETTABLEKS                       R15 R15 K13 ["BrushShape"]
       92 GETTABLE                         R14 R1 R15
       93 SETTABLEKS                       R14 R13 K16 ["Shape"]
       95 LOADK                            R14 K15 ["BrushSize"]
       96 SETTABLEKS                       R14 R13 K6 ["Type"]
       98 SETTABLEKS                       R13 R12 K3 ["Schema"]
      100 DUPTABLE                         R13 K4 [{"Id", "Schema"}]
      101 GETUPVAL                         R14 1
      102 GETTABLEKS                       R14 R14 K18 ["Strength"]
      104 SETTABLEKS                       R14 R13 K2 ["Id"]
      106 DUPTABLE                         R14 K23 [{"Type", "Min", "Max", "ShowInput", "SnapIncrement"}]
      107 LOADK                            R15 K24 ["Slider"]
      108 SETTABLEKS                       R15 R14 K6 ["Type"]
      110 LOADN                            R15 0
      111 SETTABLEKS                       R15 R14 K19 ["Min"]
      113 LOADN                            R15 1
      114 SETTABLEKS                       R15 R14 K20 ["Max"]
      116 LOADB                            R15 1
      117 SETTABLEKS                       R15 R14 K21 ["ShowInput"]
      119 LOADK                            R15 K25 [0.01]
      120 SETTABLEKS                       R15 R14 K22 ["SnapIncrement"]
      122 SETTABLEKS                       R14 R13 K3 ["Schema"]
      124 DUPTABLE                         R14 K4 [{"Id", "Schema"}]
      125 GETUPVAL                         R15 1
      126 GETTABLEKS                       R15 R15 K26 ["PivotPosition"]
      128 SETTABLEKS                       R15 R14 K2 ["Id"]
      130 DUPTABLE                         R15 K8 [{"Type", "Items"}]
      131 GETUPVAL                         R17 2
      132 CALL                             R17 0 1
      133 JUMPIFNOT                        R17 ; [+2]
      134 LOADK                            R16 K9 ["SegmentedControl"]
      135 JUMP                             ; [+1]
      136 LOADK                            R16 K10 ["SingleSelectButton"]
      137 SETTABLEKS                       R16 R15 K6 ["Type"]
      139 GETUPVAL                         R16 3
      140 MOVE                             R17 R4
      141 LOADNIL                          R18
      142 GETUPVAL                         R19 4
      143 GETTABLEKS                       R19 R19 K26 ["PivotPosition"]
      145 CALL                             R16 3 1
      146 SETTABLEKS                       R16 R15 K7 ["Items"]
      148 SETTABLEKS                       R15 R14 K3 ["Schema"]
      150 DUPTABLE                         R15 K4 [{"Id", "Schema"}]
      151 GETUPVAL                         R16 1
      152 GETTABLEKS                       R16 R16 K27 ["Snapping"]
      154 SETTABLEKS                       R16 R15 K2 ["Id"]
      156 DUPTABLE                         R16 K8 [{"Type", "Items"}]
      157 GETUPVAL                         R18 2
      158 CALL                             R18 0 1
      159 JUMPIFNOT                        R18 ; [+2]
      160 LOADK                            R17 K9 ["SegmentedControl"]
      161 JUMP                             ; [+1]
      162 LOADK                            R17 K10 ["SingleSelectButton"]
      163 SETTABLEKS                       R17 R16 K6 ["Type"]
      165 GETUPVAL                         R17 3
      166 MOVE                             R18 R4
      167 LOADNIL                          R19
      168 GETUPVAL                         R20 4
      169 GETTABLEKS                       R20 R20 K27 ["Snapping"]
      171 CALL                             R17 3 1
      172 SETTABLEKS                       R17 R16 K7 ["Items"]
      174 SETTABLEKS                       R16 R15 K3 ["Schema"]
      176 DUPTABLE                         R16 K4 [{"Id", "Schema"}]
      177 GETUPVAL                         R17 1
      178 GETTABLEKS                       R17 R17 K28 ["FlattenPlane"]
      180 SETTABLEKS                       R17 R16 K2 ["Id"]
      182 DUPTABLE                         R17 K8 [{"Type", "Items"}]
      183 GETUPVAL                         R19 2
      184 CALL                             R19 0 1
      185 JUMPIFNOT                        R19 ; [+2]
      186 LOADK                            R18 K9 ["SegmentedControl"]
      187 JUMP                             ; [+1]
      188 LOADK                            R18 K10 ["SingleSelectButton"]
      189 SETTABLEKS                       R18 R17 K6 ["Type"]
      191 GETUPVAL                         R18 3
      192 MOVE                             R19 R4
      193 LOADNIL                          R20
      194 GETUPVAL                         R21 4
      195 GETTABLEKS                       R21 R21 K28 ["FlattenPlane"]
      197 CALL                             R18 3 1
      198 SETTABLEKS                       R18 R17 K7 ["Items"]
      200 SETTABLEKS                       R17 R16 K3 ["Schema"]
      202 DUPTABLE                         R17 K30 [{"Hidden", "Id", "Schema"}]
      203 GETUPVAL                         R20 1
      204 GETTABLEKS                       R20 R20 K28 ["FlattenPlane"]
      206 GETTABLE                         R19 R1 R20
      207 GETUPVAL                         R20 5
      208 GETTABLEKS                       R20 R20 K31 ["Auto"]
      210 JUMPIFEQ                         R19 R20 ; [+2]
      212 LOADB                            R18 0 +1
      213 LOADB                            R18 1
      214 SETTABLEKS                       R18 R17 K29 ["Hidden"]
      216 GETUPVAL                         R18 1
      217 GETTABLEKS                       R18 R18 K32 ["FixedYPlane"]
      219 SETTABLEKS                       R18 R17 K2 ["Id"]
      221 DUPTABLE                         R18 K33 [{"Type"}]
      222 LOADK                            R19 K34 ["Number"]
      223 SETTABLEKS                       R19 R18 K6 ["Type"]
      225 SETTABLEKS                       R18 R17 K3 ["Schema"]
      227 DUPTABLE                         R18 K4 [{"Id", "Schema"}]
      228 GETUPVAL                         R19 1
      229 GETTABLEKS                       R19 R19 K35 ["PlaneLock"]
      231 SETTABLEKS                       R19 R18 K2 ["Id"]
      233 DUPTABLE                         R19 K8 [{"Type", "Items"}]
      234 GETUPVAL                         R21 2
      235 CALL                             R21 0 1
      236 JUMPIFNOT                        R21 ; [+2]
      237 LOADK                            R20 K9 ["SegmentedControl"]
      238 JUMP                             ; [+1]
      239 LOADK                            R20 K10 ["SingleSelectButton"]
      240 SETTABLEKS                       R20 R19 K6 ["Type"]
      242 GETUPVAL                         R20 3
      243 MOVE                             R21 R4
      244 LOADNIL                          R22
      245 GETUPVAL                         R23 4
      246 GETTABLEKS                       R23 R23 K35 ["PlaneLock"]
      248 CALL                             R20 3 1
      249 SETTABLEKS                       R20 R19 K7 ["Items"]
      251 SETTABLEKS                       R19 R18 K3 ["Schema"]
      253 DUPTABLE                         R19 K30 [{"Hidden", "Id", "Schema"}]
      254 GETUPVAL                         R22 1
      255 GETTABLEKS                       R22 R22 K35 ["PlaneLock"]
      257 GETTABLE                         R21 R1 R22
      258 GETUPVAL                         R22 6
      259 GETTABLEKS                       R22 R22 K36 ["Manual"]
      261 JUMPIFNOTEQ                      R21 R22 ; [+2]
      263 LOADB                            R20 0 +1
      264 LOADB                            R20 1
      265 SETTABLEKS                       R20 R19 K29 ["Hidden"]
      267 GETUPVAL                         R20 1
      268 GETTABLEKS                       R20 R20 K37 ["ManualPlaneLock"]
      270 SETTABLEKS                       R20 R19 K2 ["Id"]
      272 DUPTABLE                         R20 K41 [{"ApplyLabel", "EditLabel", "OnReset", "Type"}]
      273 GETUPVAL                         R23 7
      274 GETTABLEKS                       R23 R23 K42 ["BrushSettings"]
      276 LOADK                            R24 K43 ["Apply"]
      277 NAMECALL                         R21 R4 K44 ["getText"]
      279 CALL                             R21 3 1
      280 SETTABLEKS                       R21 R20 K38 ["ApplyLabel"]
      282 GETUPVAL                         R23 7
      283 GETTABLEKS                       R23 R23 K42 ["BrushSettings"]
      285 LOADK                            R24 K45 ["Edit"]
      286 NAMECALL                         R21 R4 K44 ["getText"]
      288 CALL                             R21 3 1
      289 SETTABLEKS                       R21 R20 K39 ["EditLabel"]
      291 DUPCLOSURE                       R21 K46 [PROTO_0]
      292 SETTABLEKS                       R21 R20 K40 ["OnReset"]
      294 LOADK                            R21 K35 ["PlaneLock"]
      295 SETTABLEKS                       R21 R20 K6 ["Type"]
      297 SETTABLEKS                       R20 R19 K3 ["Schema"]
      299 DUPTABLE                         R20 K49 [{"DataId", "Id", "Height", "Hidden", "Schema", "Value"}]
      300 GETUPVAL                         R21 1
      301 GETTABLEKS                       R21 R21 K50 ["PlaneTransform"]
      303 SETTABLEKS                       R21 R20 K47 ["DataId"]
      305 GETUPVAL                         R21 1
      306 GETTABLEKS                       R21 R21 K51 ["PlanePosition"]
      308 SETTABLEKS                       R21 R20 K2 ["Id"]
      310 GETUPVAL                         R22 8
      311 CALL                             R22 0 1
      312 JUMPIFNOT                        R22 ; [+2]
      313 LOADN                            R21 26
      314 JUMP                             ; [+1]
      315 LOADNIL                          R21
      316 SETTABLEKS                       R21 R20 K11 ["Height"]
      318 LOADB                            R21 1
      319 GETUPVAL                         R23 1
      320 GETTABLEKS                       R23 R23 K35 ["PlaneLock"]
      322 GETTABLE                         R22 R1 R23
      323 GETUPVAL                         R23 6
      324 GETTABLEKS                       R23 R23 K36 ["Manual"]
      326 JUMPIFNOTEQ                      R22 R23 ; [+6]
      328 GETUPVAL                         R23 1
      329 GETTABLEKS                       R23 R23 K37 ["ManualPlaneLock"]
      331 GETTABLE                         R22 R1 R23
      332 NOT                              R21 R22
      333 SETTABLEKS                       R21 R20 K29 ["Hidden"]
      335 DUPTABLE                         R21 K55 [{"Type", "Components", "GetValue", "GetComponents"}]
      336 LOADK                            R22 K56 ["Vector"]
      337 SETTABLEKS                       R22 R21 K6 ["Type"]
      339 NEWTABLE                         R22 0 3
      341 LOADK                            R23 K57 ["X"]
      342 LOADK                            R24 K58 ["Y"]
      343 LOADK                            R25 K59 ["Z"]
      344 SETLIST                          R22 R23 3 [1]
      346 SETTABLEKS                       R22 R21 K52 ["Components"]
      348 NEWCLOSURE                       R22 P1
      349 CAPTURE                          VAL R1
      350 CAPTURE                          UPVAL U1
      351 SETTABLEKS                       R22 R21 K53 ["GetValue"]
      353 DUPCLOSURE                       R22 K60 [PROTO_2]
      354 SETTABLEKS                       R22 R21 K54 ["GetComponents"]
      356 SETTABLEKS                       R21 R20 K3 ["Schema"]
      358 GETUPVAL                         R22 1
      359 GETTABLEKS                       R22 R22 K50 ["PlaneTransform"]
      361 GETTABLE                         R21 R1 R22
      362 SETTABLEKS                       R21 R20 K48 ["Value"]
      364 DUPTABLE                         R21 K49 [{"DataId", "Id", "Height", "Hidden", "Schema", "Value"}]
      365 GETUPVAL                         R22 1
      366 GETTABLEKS                       R22 R22 K50 ["PlaneTransform"]
      368 SETTABLEKS                       R22 R21 K47 ["DataId"]
      370 GETUPVAL                         R22 1
      371 GETTABLEKS                       R22 R22 K61 ["PlaneRotation"]
      373 SETTABLEKS                       R22 R21 K2 ["Id"]
      375 GETUPVAL                         R23 8
      376 CALL                             R23 0 1
      377 JUMPIFNOT                        R23 ; [+2]
      378 LOADN                            R22 26
      379 JUMP                             ; [+1]
      380 LOADNIL                          R22
      381 SETTABLEKS                       R22 R21 K11 ["Height"]
      383 LOADB                            R22 1
      384 GETUPVAL                         R24 1
      385 GETTABLEKS                       R24 R24 K35 ["PlaneLock"]
      387 GETTABLE                         R23 R1 R24
      388 GETUPVAL                         R24 6
      389 GETTABLEKS                       R24 R24 K36 ["Manual"]
      391 JUMPIFNOTEQ                      R23 R24 ; [+6]
      393 GETUPVAL                         R24 1
      394 GETTABLEKS                       R24 R24 K37 ["ManualPlaneLock"]
      396 GETTABLE                         R23 R1 R24
      397 NOT                              R22 R23
      398 SETTABLEKS                       R22 R21 K29 ["Hidden"]
      400 DUPTABLE                         R22 K55 [{"Type", "Components", "GetValue", "GetComponents"}]
      401 LOADK                            R23 K56 ["Vector"]
      402 SETTABLEKS                       R23 R22 K6 ["Type"]
      404 NEWTABLE                         R23 0 3
      406 LOADK                            R24 K57 ["X"]
      407 LOADK                            R25 K58 ["Y"]
      408 LOADK                            R26 K59 ["Z"]
      409 SETLIST                          R23 R24 3 [1]
      411 SETTABLEKS                       R23 R22 K52 ["Components"]
      413 NEWCLOSURE                       R23 P3
      414 CAPTURE                          VAL R1
      415 CAPTURE                          UPVAL U1
      416 SETTABLEKS                       R23 R22 K53 ["GetValue"]
      418 DUPCLOSURE                       R23 K62 [PROTO_4]
      419 SETTABLEKS                       R23 R22 K54 ["GetComponents"]
      421 SETTABLEKS                       R22 R21 K3 ["Schema"]
      423 GETUPVAL                         R23 1
      424 GETTABLEKS                       R23 R23 K50 ["PlaneTransform"]
      426 GETTABLE                         R22 R1 R23
      427 SETTABLEKS                       R22 R21 K48 ["Value"]
      429 DUPTABLE                         R22 K4 [{"Id", "Schema"}]
      430 GETUPVAL                         R23 1
      431 GETTABLEKS                       R23 R23 K63 ["IgnoreWater"]
      433 SETTABLEKS                       R23 R22 K2 ["Id"]
      435 DUPTABLE                         R23 K33 [{"Type"}]
      436 LOADK                            R24 K64 ["Checkbox"]
      437 SETTABLEKS                       R24 R23 K6 ["Type"]
      439 SETTABLEKS                       R23 R22 K3 ["Schema"]
      441 DUPTABLE                         R23 K4 [{"Id", "Schema"}]
      442 GETUPVAL                         R24 1
      443 GETTABLEKS                       R24 R24 K65 ["IgnoreParts"]
      445 SETTABLEKS                       R24 R23 K2 ["Id"]
      447 DUPTABLE                         R24 K33 [{"Type"}]
      448 LOADK                            R25 K64 ["Checkbox"]
      449 SETTABLEKS                       R25 R24 K6 ["Type"]
      451 SETTABLEKS                       R24 R23 K3 ["Schema"]
      453 SETLIST                          R8 R9 15 [1]
      455 DUPTABLE                         R9 K69 [{"Category", "Data", "Overrides"}]
      456 GETUPVAL                         R10 9
      457 SETTABLEKS                       R10 R9 K66 ["Category"]
      459 SETTABLEKS                       R1 R9 K67 ["Data"]
      461 SETTABLEKS                       R3 R9 K68 ["Overrides"]
      463 CALL                             R6 3 -1
      464 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["getItems"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K8 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["ApplyById"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Flags"]
       38 GETTABLEKS                       R5 R5 K12 ["getFFlagTerrainEditorExplicitVectorHeight"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K11 ["Flags"]
       47 GETTABLEKS                       R6 R6 K13 ["getFFlagTerrainEditorMigrateFoundationFonts"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R1 K14 ["BrushSettings"]
       52 GETTABLEKS                       R7 R1 K15 ["BrushMode"]
       54 GETTABLEKS                       R8 R1 K16 ["Category"]
       56 GETTABLEKS                       R9 R1 K17 ["EnumType"]
       58 GETTABLEKS                       R10 R1 K18 ["FlattenPlane"]
       60 GETTABLEKS                       R11 R1 K19 ["PlaneLock"]
       62 GETTABLEKS                       R12 R1 K20 ["Storage"]
       64 GETTABLEKS                       R13 R8 K14 ["BrushSettings"]
       66 NEWTABLE                         R14 2 0
       68 NEWTABLE                         R15 32 0
       70 GETTABLEKS                       R16 R6 K15 ["BrushMode"]
       72 GETTABLEKS                       R17 R12 K21 ["LocalPersistent"]
       74 SETTABLE                         R17 R15 R16
       75 GETTABLEKS                       R16 R6 K22 ["BrushShape"]
       77 GETTABLEKS                       R17 R12 K21 ["LocalPersistent"]
       79 SETTABLE                         R17 R15 R16
       80 GETTABLEKS                       R16 R6 K23 ["BrushSize"]
       82 GETTABLEKS                       R17 R12 K21 ["LocalPersistent"]
       84 SETTABLE                         R17 R15 R16
       85 GETTABLEKS                       R16 R6 K24 ["Strength"]
       87 GETTABLEKS                       R17 R12 K21 ["LocalPersistent"]
       89 SETTABLE                         R17 R15 R16
       90 GETTABLEKS                       R16 R6 K25 ["FixedYPlane"]
       92 GETTABLEKS                       R17 R12 K21 ["LocalPersistent"]
       94 SETTABLE                         R17 R15 R16
       95 GETTABLEKS                       R16 R6 K18 ["FlattenPlane"]
       97 GETTABLEKS                       R17 R12 K21 ["LocalPersistent"]
       99 SETTABLE                         R17 R15 R16
      100 GETTABLEKS                       R16 R6 K26 ["FlattenMode"]
      102 GETTABLEKS                       R17 R12 K21 ["LocalPersistent"]
      104 SETTABLE                         R17 R15 R16
      105 GETTABLEKS                       R16 R6 K27 ["PivotPosition"]
      107 GETTABLEKS                       R17 R12 K21 ["LocalPersistent"]
      109 SETTABLE                         R17 R15 R16
      110 GETTABLEKS                       R16 R6 K19 ["PlaneLock"]
      112 GETTABLEKS                       R17 R12 K28 ["GlobalPersistent"]
      114 SETTABLE                         R17 R15 R16
      115 GETTABLEKS                       R16 R6 K29 ["ManualPlaneLock"]
      117 GETTABLEKS                       R17 R12 K28 ["GlobalPersistent"]
      119 SETTABLE                         R17 R15 R16
      120 GETTABLEKS                       R16 R6 K30 ["PlaneTransform"]
      122 GETTABLEKS                       R17 R12 K28 ["GlobalPersistent"]
      124 SETTABLE                         R17 R15 R16
      125 GETTABLEKS                       R16 R6 K31 ["Snapping"]
      127 GETTABLEKS                       R17 R12 K21 ["LocalPersistent"]
      129 SETTABLE                         R17 R15 R16
      130 GETTABLEKS                       R16 R6 K32 ["State"]
      132 GETTABLEKS                       R17 R12 K33 ["LocalSession"]
      134 SETTABLE                         R17 R15 R16
      135 GETTABLEKS                       R16 R6 K34 ["IgnoreWater"]
      137 GETTABLEKS                       R17 R12 K21 ["LocalPersistent"]
      139 SETTABLE                         R17 R15 R16
      140 GETTABLEKS                       R16 R6 K35 ["IgnoreParts"]
      142 GETTABLEKS                       R17 R12 K21 ["LocalPersistent"]
      144 SETTABLE                         R17 R15 R16
      145 GETTABLEKS                       R16 R6 K36 ["PullTerrain"]
      147 GETTABLEKS                       R17 R12 K21 ["LocalPersistent"]
      149 SETTABLE                         R17 R15 R16
      150 GETTABLEKS                       R16 R6 K37 ["TemporarySmooth"]
      152 GETTABLEKS                       R17 R12 K33 ["LocalSession"]
      154 SETTABLE                         R17 R15 R16
      155 GETTABLEKS                       R16 R6 K38 ["WaterAutofill"]
      157 GETTABLEKS                       R17 R12 K21 ["LocalPersistent"]
      159 SETTABLE                         R17 R15 R16
      160 SETTABLEKS                       R15 R14 K20 ["Storage"]
      162 DUPCLOSURE                       R15 K39 [PROTO_5]
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R13
      173 SETTABLEKS                       R15 R14 K40 ["Generator"]
      175 RETURN                           R14 1
