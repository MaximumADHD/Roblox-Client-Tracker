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
       34 DUPTABLE                         R10 K13 [{["Height"] = 52, ["Id"], ["Schema"]}]
       35 GETUPVAL                         R11 1
       36 GETTABLEKS                       R11 R11 K14 ["BrushShape"]
       38 SETTABLEKS                       R11 R10 K2 ["Id"]
       40 DUPTABLE                         R11 K15 [{["Type"] = "SingleSelectButton", ["Items"]}]
       41 GETUPVAL                         R12 3
       42 LOADNIL                          R13
       43 MOVE                             R14 R5
       44 GETUPVAL                         R15 4
       45 GETTABLEKS                       R15 R15 K14 ["BrushShape"]
       47 CALL                             R12 3 1
       48 SETTABLEKS                       R12 R11 K7 ["Items"]
       50 SETTABLEKS                       R11 R10 K3 ["Schema"]
       52 DUPTABLE                         R11 K13 [{["Height"] = 52, ["Id"], ["Schema"]}]
       53 GETUPVAL                         R12 1
       54 GETTABLEKS                       R12 R12 K16 ["FlattenMode"]
       56 SETTABLEKS                       R12 R11 K2 ["Id"]
       58 DUPTABLE                         R12 K15 [{["Type"] = "SingleSelectButton", ["Items"]}]
       59 GETUPVAL                         R13 3
       60 LOADNIL                          R14
       61 MOVE                             R15 R5
       62 GETUPVAL                         R16 4
       63 GETTABLEKS                       R16 R16 K16 ["FlattenMode"]
       65 CALL                             R13 3 1
       66 SETTABLEKS                       R13 R12 K7 ["Items"]
       68 SETTABLEKS                       R12 R11 K3 ["Schema"]
       70 DUPTABLE                         R12 K4 [{"Id", "Schema"}]
       71 GETUPVAL                         R13 1
       72 GETTABLEKS                       R13 R13 K17 ["BrushSize"]
       74 SETTABLEKS                       R13 R12 K2 ["Id"]
       76 DUPTABLE                         R13 K19 [{["Shape"], ["Type"] = "BrushSize"}]
       77 GETUPVAL                         R15 1
       78 GETTABLEKS                       R15 R15 K14 ["BrushShape"]
       80 GETTABLE                         R14 R1 R15
       81 SETTABLEKS                       R14 R13 K18 ["Shape"]
       83 SETTABLEKS                       R13 R12 K3 ["Schema"]
       85 DUPTABLE                         R13 K4 [{"Id", "Schema"}]
       86 GETUPVAL                         R14 1
       87 GETTABLEKS                       R14 R14 K20 ["Strength"]
       89 SETTABLEKS                       R14 R13 K2 ["Id"]
       91 DUPTABLE                         R14 K30 [{["Type"] = "Slider", ["Min"] = 0, ["Max"] = 1, ["ShowInput"] = True, ["SnapIncrement"] = 0.01}]
       92 SETTABLEKS                       R14 R13 K3 ["Schema"]
       94 DUPTABLE                         R14 K4 [{"Id", "Schema"}]
       95 GETUPVAL                         R15 1
       96 GETTABLEKS                       R15 R15 K31 ["PivotPosition"]
       98 SETTABLEKS                       R15 R14 K2 ["Id"]
      100 DUPTABLE                         R15 K8 [{"Type", "Items"}]
      101 GETUPVAL                         R17 2
      102 CALL                             R17 0 1
      103 JUMPIFNOT                        R17 ; [+2]
      104 LOADK                            R16 K9 ["SegmentedControl"]
      105 JUMP                             ; [+1]
      106 LOADK                            R16 K10 ["SingleSelectButton"]
      107 SETTABLEKS                       R16 R15 K6 ["Type"]
      109 GETUPVAL                         R16 3
      110 MOVE                             R17 R4
      111 LOADNIL                          R18
      112 GETUPVAL                         R19 4
      113 GETTABLEKS                       R19 R19 K31 ["PivotPosition"]
      115 CALL                             R16 3 1
      116 SETTABLEKS                       R16 R15 K7 ["Items"]
      118 SETTABLEKS                       R15 R14 K3 ["Schema"]
      120 DUPTABLE                         R15 K4 [{"Id", "Schema"}]
      121 GETUPVAL                         R16 1
      122 GETTABLEKS                       R16 R16 K32 ["Snapping"]
      124 SETTABLEKS                       R16 R15 K2 ["Id"]
      126 DUPTABLE                         R16 K8 [{"Type", "Items"}]
      127 GETUPVAL                         R18 2
      128 CALL                             R18 0 1
      129 JUMPIFNOT                        R18 ; [+2]
      130 LOADK                            R17 K9 ["SegmentedControl"]
      131 JUMP                             ; [+1]
      132 LOADK                            R17 K10 ["SingleSelectButton"]
      133 SETTABLEKS                       R17 R16 K6 ["Type"]
      135 GETUPVAL                         R17 3
      136 MOVE                             R18 R4
      137 LOADNIL                          R19
      138 GETUPVAL                         R20 4
      139 GETTABLEKS                       R20 R20 K32 ["Snapping"]
      141 CALL                             R17 3 1
      142 SETTABLEKS                       R17 R16 K7 ["Items"]
      144 SETTABLEKS                       R16 R15 K3 ["Schema"]
      146 DUPTABLE                         R16 K4 [{"Id", "Schema"}]
      147 GETUPVAL                         R17 1
      148 GETTABLEKS                       R17 R17 K33 ["FlattenPlane"]
      150 SETTABLEKS                       R17 R16 K2 ["Id"]
      152 DUPTABLE                         R17 K8 [{"Type", "Items"}]
      153 GETUPVAL                         R19 2
      154 CALL                             R19 0 1
      155 JUMPIFNOT                        R19 ; [+2]
      156 LOADK                            R18 K9 ["SegmentedControl"]
      157 JUMP                             ; [+1]
      158 LOADK                            R18 K10 ["SingleSelectButton"]
      159 SETTABLEKS                       R18 R17 K6 ["Type"]
      161 GETUPVAL                         R18 3
      162 MOVE                             R19 R4
      163 LOADNIL                          R20
      164 GETUPVAL                         R21 4
      165 GETTABLEKS                       R21 R21 K33 ["FlattenPlane"]
      167 CALL                             R18 3 1
      168 SETTABLEKS                       R18 R17 K7 ["Items"]
      170 SETTABLEKS                       R17 R16 K3 ["Schema"]
      172 DUPTABLE                         R17 K35 [{"Hidden", "Id", "Schema"}]
      173 GETUPVAL                         R20 1
      174 GETTABLEKS                       R20 R20 K33 ["FlattenPlane"]
      176 GETTABLE                         R19 R1 R20
      177 GETUPVAL                         R20 5
      178 GETTABLEKS                       R20 R20 K36 ["Auto"]
      180 JUMPIFEQ                         R19 R20 ; [+2]
      182 LOADB                            R18 0 +1
      183 LOADB                            R18 1
      184 SETTABLEKS                       R18 R17 K34 ["Hidden"]
      186 GETUPVAL                         R18 1
      187 GETTABLEKS                       R18 R18 K37 ["FixedYPlane"]
      189 SETTABLEKS                       R18 R17 K2 ["Id"]
      191 DUPTABLE                         R18 K39 [{["Type"] = "Number"}]
      192 SETTABLEKS                       R18 R17 K3 ["Schema"]
      194 DUPTABLE                         R18 K4 [{"Id", "Schema"}]
      195 GETUPVAL                         R19 1
      196 GETTABLEKS                       R19 R19 K40 ["PlaneLock"]
      198 SETTABLEKS                       R19 R18 K2 ["Id"]
      200 DUPTABLE                         R19 K8 [{"Type", "Items"}]
      201 GETUPVAL                         R21 2
      202 CALL                             R21 0 1
      203 JUMPIFNOT                        R21 ; [+2]
      204 LOADK                            R20 K9 ["SegmentedControl"]
      205 JUMP                             ; [+1]
      206 LOADK                            R20 K10 ["SingleSelectButton"]
      207 SETTABLEKS                       R20 R19 K6 ["Type"]
      209 GETUPVAL                         R20 3
      210 MOVE                             R21 R4
      211 LOADNIL                          R22
      212 GETUPVAL                         R23 4
      213 GETTABLEKS                       R23 R23 K40 ["PlaneLock"]
      215 CALL                             R20 3 1
      216 SETTABLEKS                       R20 R19 K7 ["Items"]
      218 SETTABLEKS                       R19 R18 K3 ["Schema"]
      220 DUPTABLE                         R19 K35 [{"Hidden", "Id", "Schema"}]
      221 GETUPVAL                         R22 1
      222 GETTABLEKS                       R22 R22 K40 ["PlaneLock"]
      224 GETTABLE                         R21 R1 R22
      225 GETUPVAL                         R22 6
      226 GETTABLEKS                       R22 R22 K41 ["Manual"]
      228 JUMPIFNOTEQ                      R21 R22 ; [+2]
      230 LOADB                            R20 0 +1
      231 LOADB                            R20 1
      232 SETTABLEKS                       R20 R19 K34 ["Hidden"]
      234 GETUPVAL                         R20 1
      235 GETTABLEKS                       R20 R20 K42 ["ManualPlaneLock"]
      237 SETTABLEKS                       R20 R19 K2 ["Id"]
      239 DUPTABLE                         R20 K46 [{["ApplyLabel"], ["EditLabel"], ["OnReset"], ["Type"] = "PlaneLock"}]
      240 GETUPVAL                         R23 7
      241 GETTABLEKS                       R23 R23 K47 ["BrushSettings"]
      243 LOADK                            R24 K48 ["Apply"]
      244 NAMECALL                         R21 R4 K49 ["getText"]
      246 CALL                             R21 3 1
      247 SETTABLEKS                       R21 R20 K43 ["ApplyLabel"]
      249 GETUPVAL                         R23 7
      250 GETTABLEKS                       R23 R23 K47 ["BrushSettings"]
      252 LOADK                            R24 K50 ["Edit"]
      253 NAMECALL                         R21 R4 K49 ["getText"]
      255 CALL                             R21 3 1
      256 SETTABLEKS                       R21 R20 K44 ["EditLabel"]
      258 DUPCLOSURE                       R21 K51 [PROTO_0]
      259 SETTABLEKS                       R21 R20 K45 ["OnReset"]
      261 SETTABLEKS                       R20 R19 K3 ["Schema"]
      263 DUPTABLE                         R20 K55 [{["DataId"], ["Id"], ["Height"] = 26, ["Hidden"], ["Schema"], ["Value"]}]
      264 GETUPVAL                         R21 1
      265 GETTABLEKS                       R21 R21 K56 ["PlaneTransform"]
      267 SETTABLEKS                       R21 R20 K52 ["DataId"]
      269 GETUPVAL                         R21 1
      270 GETTABLEKS                       R21 R21 K57 ["PlanePosition"]
      272 SETTABLEKS                       R21 R20 K2 ["Id"]
      274 LOADB                            R21 1
      275 GETUPVAL                         R23 1
      276 GETTABLEKS                       R23 R23 K40 ["PlaneLock"]
      278 GETTABLE                         R22 R1 R23
      279 GETUPVAL                         R23 6
      280 GETTABLEKS                       R23 R23 K41 ["Manual"]
      282 JUMPIFNOTEQ                      R22 R23 ; [+6]
      284 GETUPVAL                         R23 1
      285 GETTABLEKS                       R23 R23 K42 ["ManualPlaneLock"]
      287 GETTABLE                         R22 R1 R23
      288 NOT                              R21 R22
      289 SETTABLEKS                       R21 R20 K34 ["Hidden"]
      291 DUPTABLE                         R21 K62 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetComponents"]}]
      292 NEWTABLE                         R22 0 3
      294 LOADK                            R23 K63 ["X"]
      295 LOADK                            R24 K64 ["Y"]
      296 LOADK                            R25 K65 ["Z"]
      297 SETLIST                          R22 R23 3 [1]
      299 SETTABLEKS                       R22 R21 K59 ["Components"]
      301 NEWCLOSURE                       R22 P1
      302 CAPTURE                          VAL R1
      303 CAPTURE                          UPVAL U1
      304 SETTABLEKS                       R22 R21 K60 ["GetValue"]
      306 DUPCLOSURE                       R22 K66 [PROTO_2]
      307 SETTABLEKS                       R22 R21 K61 ["GetComponents"]
      309 SETTABLEKS                       R21 R20 K3 ["Schema"]
      311 GETUPVAL                         R22 1
      312 GETTABLEKS                       R22 R22 K56 ["PlaneTransform"]
      314 GETTABLE                         R21 R1 R22
      315 SETTABLEKS                       R21 R20 K54 ["Value"]
      317 DUPTABLE                         R21 K55 [{["DataId"], ["Id"], ["Height"] = 26, ["Hidden"], ["Schema"], ["Value"]}]
      318 GETUPVAL                         R22 1
      319 GETTABLEKS                       R22 R22 K56 ["PlaneTransform"]
      321 SETTABLEKS                       R22 R21 K52 ["DataId"]
      323 GETUPVAL                         R22 1
      324 GETTABLEKS                       R22 R22 K67 ["PlaneRotation"]
      326 SETTABLEKS                       R22 R21 K2 ["Id"]
      328 LOADB                            R22 1
      329 GETUPVAL                         R24 1
      330 GETTABLEKS                       R24 R24 K40 ["PlaneLock"]
      332 GETTABLE                         R23 R1 R24
      333 GETUPVAL                         R24 6
      334 GETTABLEKS                       R24 R24 K41 ["Manual"]
      336 JUMPIFNOTEQ                      R23 R24 ; [+6]
      338 GETUPVAL                         R24 1
      339 GETTABLEKS                       R24 R24 K42 ["ManualPlaneLock"]
      341 GETTABLE                         R23 R1 R24
      342 NOT                              R22 R23
      343 SETTABLEKS                       R22 R21 K34 ["Hidden"]
      345 DUPTABLE                         R22 K62 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetComponents"]}]
      346 NEWTABLE                         R23 0 3
      348 LOADK                            R24 K63 ["X"]
      349 LOADK                            R25 K64 ["Y"]
      350 LOADK                            R26 K65 ["Z"]
      351 SETLIST                          R23 R24 3 [1]
      353 SETTABLEKS                       R23 R22 K59 ["Components"]
      355 NEWCLOSURE                       R23 P3
      356 CAPTURE                          VAL R1
      357 CAPTURE                          UPVAL U1
      358 SETTABLEKS                       R23 R22 K60 ["GetValue"]
      360 DUPCLOSURE                       R23 K68 [PROTO_4]
      361 SETTABLEKS                       R23 R22 K61 ["GetComponents"]
      363 SETTABLEKS                       R22 R21 K3 ["Schema"]
      365 GETUPVAL                         R23 1
      366 GETTABLEKS                       R23 R23 K56 ["PlaneTransform"]
      368 GETTABLE                         R22 R1 R23
      369 SETTABLEKS                       R22 R21 K54 ["Value"]
      371 DUPTABLE                         R22 K4 [{"Id", "Schema"}]
      372 GETUPVAL                         R23 1
      373 GETTABLEKS                       R23 R23 K69 ["IgnoreWater"]
      375 SETTABLEKS                       R23 R22 K2 ["Id"]
      377 DUPTABLE                         R23 K71 [{["Type"] = "Checkbox"}]
      378 SETTABLEKS                       R23 R22 K3 ["Schema"]
      380 DUPTABLE                         R23 K4 [{"Id", "Schema"}]
      381 GETUPVAL                         R24 1
      382 GETTABLEKS                       R24 R24 K72 ["IgnoreParts"]
      384 SETTABLEKS                       R24 R23 K2 ["Id"]
      386 DUPTABLE                         R24 K71 [{["Type"] = "Checkbox"}]
      387 SETTABLEKS                       R24 R23 K3 ["Schema"]
      389 SETLIST                          R8 R9 15 [1]
      391 DUPTABLE                         R9 K76 [{"Category", "Data", "Overrides"}]
      392 GETUPVAL                         R10 8
      393 SETTABLEKS                       R10 R9 K73 ["Category"]
      395 SETTABLEKS                       R1 R9 K74 ["Data"]
      397 SETTABLEKS                       R3 R9 K75 ["Overrides"]
      399 CALL                             R6 3 -1
      400 RETURN                           R6 -1

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
       38 GETTABLEKS                       R5 R5 K12 ["getFFlagTerrainEditorMigrateFoundationFonts"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R1 K13 ["BrushSettings"]
       43 GETTABLEKS                       R6 R1 K14 ["BrushMode"]
       45 GETTABLEKS                       R7 R1 K15 ["Category"]
       47 GETTABLEKS                       R8 R1 K16 ["EnumType"]
       49 GETTABLEKS                       R9 R1 K17 ["FlattenPlane"]
       51 GETTABLEKS                       R10 R1 K18 ["PlaneLock"]
       53 GETTABLEKS                       R11 R1 K19 ["Storage"]
       55 GETTABLEKS                       R12 R7 K13 ["BrushSettings"]
       57 NEWTABLE                         R13 2 0
       59 NEWTABLE                         R14 32 0
       61 GETTABLEKS                       R15 R5 K14 ["BrushMode"]
       63 GETTABLEKS                       R16 R11 K20 ["LocalPersistent"]
       65 SETTABLE                         R16 R14 R15
       66 GETTABLEKS                       R15 R5 K21 ["BrushShape"]
       68 GETTABLEKS                       R16 R11 K20 ["LocalPersistent"]
       70 SETTABLE                         R16 R14 R15
       71 GETTABLEKS                       R15 R5 K22 ["BrushSize"]
       73 GETTABLEKS                       R16 R11 K20 ["LocalPersistent"]
       75 SETTABLE                         R16 R14 R15
       76 GETTABLEKS                       R15 R5 K23 ["Strength"]
       78 GETTABLEKS                       R16 R11 K20 ["LocalPersistent"]
       80 SETTABLE                         R16 R14 R15
       81 GETTABLEKS                       R15 R5 K24 ["FixedYPlane"]
       83 GETTABLEKS                       R16 R11 K20 ["LocalPersistent"]
       85 SETTABLE                         R16 R14 R15
       86 GETTABLEKS                       R15 R5 K17 ["FlattenPlane"]
       88 GETTABLEKS                       R16 R11 K20 ["LocalPersistent"]
       90 SETTABLE                         R16 R14 R15
       91 GETTABLEKS                       R15 R5 K25 ["FlattenMode"]
       93 GETTABLEKS                       R16 R11 K20 ["LocalPersistent"]
       95 SETTABLE                         R16 R14 R15
       96 GETTABLEKS                       R15 R5 K26 ["PivotPosition"]
       98 GETTABLEKS                       R16 R11 K20 ["LocalPersistent"]
      100 SETTABLE                         R16 R14 R15
      101 GETTABLEKS                       R15 R5 K18 ["PlaneLock"]
      103 GETTABLEKS                       R16 R11 K27 ["GlobalPersistent"]
      105 SETTABLE                         R16 R14 R15
      106 GETTABLEKS                       R15 R5 K28 ["ManualPlaneLock"]
      108 GETTABLEKS                       R16 R11 K27 ["GlobalPersistent"]
      110 SETTABLE                         R16 R14 R15
      111 GETTABLEKS                       R15 R5 K29 ["PlaneTransform"]
      113 GETTABLEKS                       R16 R11 K27 ["GlobalPersistent"]
      115 SETTABLE                         R16 R14 R15
      116 GETTABLEKS                       R15 R5 K30 ["Snapping"]
      118 GETTABLEKS                       R16 R11 K20 ["LocalPersistent"]
      120 SETTABLE                         R16 R14 R15
      121 GETTABLEKS                       R15 R5 K31 ["State"]
      123 GETTABLEKS                       R16 R11 K32 ["LocalSession"]
      125 SETTABLE                         R16 R14 R15
      126 GETTABLEKS                       R15 R5 K33 ["IgnoreWater"]
      128 GETTABLEKS                       R16 R11 K20 ["LocalPersistent"]
      130 SETTABLE                         R16 R14 R15
      131 GETTABLEKS                       R15 R5 K34 ["IgnoreParts"]
      133 GETTABLEKS                       R16 R11 K20 ["LocalPersistent"]
      135 SETTABLE                         R16 R14 R15
      136 GETTABLEKS                       R15 R5 K35 ["PullTerrain"]
      138 GETTABLEKS                       R16 R11 K20 ["LocalPersistent"]
      140 SETTABLE                         R16 R14 R15
      141 GETTABLEKS                       R15 R5 K36 ["TemporarySmooth"]
      143 GETTABLEKS                       R16 R11 K32 ["LocalSession"]
      145 SETTABLE                         R16 R14 R15
      146 GETTABLEKS                       R15 R5 K37 ["WaterAutofill"]
      148 GETTABLEKS                       R16 R11 K20 ["LocalPersistent"]
      150 SETTABLE                         R16 R14 R15
      151 SETTABLEKS                       R14 R13 K19 ["Storage"]
      153 DUPCLOSURE                       R14 K38 [PROTO_5]
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R12
      163 SETTABLEKS                       R14 R13 K39 ["Generator"]
      165 RETURN                           R13 1
