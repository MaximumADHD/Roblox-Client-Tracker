PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["Transform"]
        4 GETTABLE                         R2 R3 R4
        5 GETTABLEKS                       R1 R2 K1 ["Rotation"]
        7 GETTABLEN                        R4 R0 1
        8 GETTABLEN                        R5 R0 2
        9 GETTABLEN                        R6 R0 3
       10 FASTCALL                         VECTOR ; [+2]
       11 GETIMPORT                        R3 K4 [Vector3.new]
       13 CALL                             R3 3 1
       14 ADD                              R2 R1 R3
       15 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 NEWTABLE                         R2 0 3
        4 GETTABLEKS                       R3 R1 K1 ["X"]
        6 GETTABLEKS                       R4 R1 K2 ["Y"]
        8 GETTABLEKS                       R5 R1 K3 ["Z"]
       10 SETLIST                          R2 R3 3 [1]
       12 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Tool"]
        3 NAMECALL                         R1 R1 K1 ["getPayload"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R3 R0 K2 ["Position"]
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+9]
       11 GETIMPORT                        R2 K6 [Enum.PropertyStatus.Error]
       13 GETUPVAL                         R3 2
       14 LOADK                            R5 K7 ["SelectionWarning"]
       15 LOADK                            R6 K8 ["NaN"]
       16 NAMECALL                         R3 R3 K9 ["getText"]
       18 CALL                             R3 3 -1
       19 RETURN                           R2 -1
       20 GETUPVAL                         R2 3
       21 MOVE                             R3 R0
       22 GETUPVAL                         R6 4
       23 GETTABLE                         R5 R1 R6
       24 GETUPVAL                         R7 5
       25 GETTABLEKS                       R6 R7 K10 ["Size"]
       27 GETTABLE                         R4 R5 R6
       28 CALL                             R2 2 1
       29 JUMPIF                           R2 ; [+9]
       30 GETIMPORT                        R2 K6 [Enum.PropertyStatus.Error]
       32 GETUPVAL                         R3 2
       33 LOADK                            R5 K7 ["SelectionWarning"]
       34 LOADK                            R6 K11 ["OutOfBounds"]
       35 NAMECALL                         R3 R3 K9 ["getText"]
       37 CALL                             R3 3 -1
       38 RETURN                           R2 -1
       39 GETIMPORT                        R2 K13 [Enum.PropertyStatus.Ok]
       41 LOADK                            R3 K14 [""]
       42 RETURN                           R2 2

PROTO_3:
        0 GETTABLEN                        R2 R0 1
        1 GETTABLEN                        R3 R0 2
        2 GETTABLEN                        R4 R0 3
        3 FASTCALL                         VECTOR ; [+2]
        4 GETIMPORT                        R1 K2 [Vector3.new]
        6 CALL                             R1 3 1
        7 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 0 3
        2 GETTABLEKS                       R2 R0 K0 ["X"]
        4 GETTABLEKS                       R3 R0 K1 ["Y"]
        6 GETTABLEKS                       R4 R0 K2 ["Z"]
        8 SETLIST                          R1 R2 3 [1]
       10 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K4 ["SelectionWarning"]
        8 LOADK                            R5 K5 ["NaN"]
        9 NAMECALL                         R2 R2 K6 ["getText"]
       11 CALL                             R2 3 -1
       12 RETURN                           R1 -1
       13 GETTABLEKS                       R1 R0 K7 ["X"]
       15 LOADN                            R2 4
       16 JUMPIFLT                         R1 R2 ; [+11]
       18 GETTABLEKS                       R1 R0 K8 ["Y"]
       20 LOADN                            R2 4
       21 JUMPIFLT                         R1 R2 ; [+6]
       23 GETTABLEKS                       R1 R0 K9 ["Z"]
       25 LOADN                            R2 4
       26 JUMPIFNOTLT                      R1 R2 ; [+10]
       28 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
       30 GETUPVAL                         R2 1
       31 LOADK                            R4 K4 ["SelectionWarning"]
       32 LOADK                            R5 K10 ["Size"]
       33 NAMECALL                         R2 R2 K6 ["getText"]
       35 CALL                             R2 3 -1
       36 RETURN                           R1 -1
       37 GETTABLEKS                       R3 R0 K7 ["X"]
       39 GETTABLEKS                       R4 R0 K8 ["Y"]
       41 MUL                              R2 R3 R4
       42 GETTABLEKS                       R3 R0 K9 ["Z"]
       44 MUL                              R1 R2 R3
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R3 R4 K12 ["MaxBuildRegion"]
       48 POWK                             R2 R3 K11 [3]
       49 JUMPIFNOTLT                      R2 R1 ; [+10]
       51 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
       53 GETUPVAL                         R2 1
       54 LOADK                            R4 K4 ["SelectionWarning"]
       55 LOADK                            R5 K13 ["Volume"]
       56 NAMECALL                         R2 R2 K6 ["getText"]
       58 CALL                             R2 3 -1
       59 RETURN                           R1 -1
       60 GETIMPORT                        R1 K15 [Enum.PropertyStatus.Ok]
       62 LOADK                            R2 K16 [""]
       63 RETURN                           R1 2

PROTO_6:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEN                        R2 R0 1
        3 GETTABLEN                        R3 R0 2
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+1]
        9 RETURN                           R1 1
       10 GETTABLEKS                       R3 R1 K3 ["X"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K4 ["MinNoiseValue"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K5 ["MaxNoiseValue"]
       18 FASTCALL                         MATH_CLAMP ; [+2]
       19 GETIMPORT                        R2 K8 [math.clamp]
       21 CALL                             R2 3 1
       22 GETTABLEKS                       R4 R1 K9 ["Y"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R5 R6 K4 ["MinNoiseValue"]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R6 R7 K5 ["MaxNoiseValue"]
       30 FASTCALL                         MATH_CLAMP ; [+2]
       31 GETIMPORT                        R3 K8 [math.clamp]
       33 CALL                             R3 3 1
       34 GETIMPORT                        R4 K2 [Vector2.new]
       36 MOVE                             R5 R2
       37 MOVE                             R6 R3
       38 CALL                             R4 2 -1
       39 RETURN                           R4 -1

PROTO_7:
        0 NEWTABLE                         R1 0 2
        2 GETTABLEKS                       R2 R0 K0 ["X"]
        4 GETTABLEKS                       R3 R0 K1 ["Y"]
        6 SETLIST                          R1 R2 2 [1]
        8 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K4 ["SelectionWarning"]
        8 LOADK                            R5 K5 ["NaN"]
        9 NAMECALL                         R2 R2 K6 ["getText"]
       11 CALL                             R2 3 -1
       12 RETURN                           R1 -1
       13 GETIMPORT                        R1 K8 [Enum.PropertyStatus.Ok]
       15 LOADK                            R2 K9 [""]
       16 RETURN                           R1 2

PROTO_9:
        0 JUMPIFNOTEQ                      R0 R0 ; [+2]
        2 JUMPIF                           R0 ; [+9]
        3 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
        5 GETUPVAL                         R2 0
        6 LOADK                            R4 K4 ["NumberWarning"]
        7 LOADK                            R5 K5 ["NaN"]
        8 NAMECALL                         R2 R2 K6 ["getText"]
       10 CALL                             R2 3 -1
       11 RETURN                           R1 -1
       12 GETIMPORT                        R1 K8 [Enum.PropertyStatus.Ok]
       14 LOADK                            R2 K9 [""]
       15 RETURN                           R1 2

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["Localization"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R0
        4 NEWTABLE                         R7 0 18
        6 DUPTABLE                         R8 K4 [{"Id", "Layout", "Schema"}]
        7 GETUPVAL                         R10 1
        8 GETTABLEKS                       R9 R10 K5 ["TerrainType"]
       10 SETTABLEKS                       R9 R8 K1 ["Id"]
       12 GETIMPORT                        R9 K9 [Enum.FillDirection.Vertical]
       14 SETTABLEKS                       R9 R8 K2 ["Layout"]
       16 DUPTABLE                         R9 K11 [{"Type"}]
       17 LOADK                            R10 K5 ["TerrainType"]
       18 SETTABLEKS                       R10 R9 K10 ["Type"]
       20 SETTABLEKS                       R9 R8 K3 ["Schema"]
       22 DUPTABLE                         R9 K17 [{"DataId", "Hidden", "Id", "Height", "Schema", "Validate", "Value"}]
       23 GETUPVAL                         R11 1
       24 GETTABLEKS                       R10 R11 K18 ["Transform"]
       26 SETTABLEKS                       R10 R9 K12 ["DataId"]
       28 LOADB                            R10 0
       29 SETTABLEKS                       R10 R9 K13 ["Hidden"]
       31 GETUPVAL                         R11 1
       32 GETTABLEKS                       R10 R11 K19 ["Position"]
       34 SETTABLEKS                       R10 R9 K1 ["Id"]
       36 GETUPVAL                         R11 2
       37 CALL                             R11 0 1
       38 JUMPIFNOT                        R11 ; [+2]
       39 LOADN                            R10 26
       40 JUMP                             ; [+1]
       41 LOADNIL                          R10
       42 SETTABLEKS                       R10 R9 K14 ["Height"]
       44 DUPTABLE                         R10 K23 [{"Type", "Components", "GetValue", "GetComponents"}]
       45 LOADK                            R11 K24 ["Vector"]
       46 SETTABLEKS                       R11 R10 K10 ["Type"]
       48 NEWTABLE                         R11 0 3
       50 LOADK                            R12 K25 ["X"]
       51 LOADK                            R13 K26 ["Y"]
       52 LOADK                            R14 K27 ["Z"]
       53 SETLIST                          R11 R12 3 [1]
       55 SETTABLEKS                       R11 R10 K20 ["Components"]
       57 NEWCLOSURE                       R11 P0
       58 CAPTURE                          VAL R1
       59 CAPTURE                          UPVAL U1
       60 SETTABLEKS                       R11 R10 K21 ["GetValue"]
       62 DUPCLOSURE                       R11 K28 [PROTO_1]
       63 SETTABLEKS                       R11 R10 K22 ["GetComponents"]
       65 SETTABLEKS                       R10 R9 K3 ["Schema"]
       67 NEWCLOSURE                       R10 P2
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          VAL R4
       71 CAPTURE                          UPVAL U4
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          UPVAL U1
       74 SETTABLEKS                       R10 R9 K15 ["Validate"]
       76 GETUPVAL                         R12 1
       77 GETTABLEKS                       R11 R12 K18 ["Transform"]
       79 GETTABLE                         R10 R1 R11
       80 SETTABLEKS                       R10 R9 K16 ["Value"]
       82 DUPTABLE                         R10 K29 [{"Id", "Height", "Schema", "Validate"}]
       83 GETUPVAL                         R12 1
       84 GETTABLEKS                       R11 R12 K30 ["Size"]
       86 SETTABLEKS                       R11 R10 K1 ["Id"]
       88 GETUPVAL                         R12 2
       89 CALL                             R12 0 1
       90 JUMPIFNOT                        R12 ; [+2]
       91 LOADN                            R11 26
       92 JUMP                             ; [+1]
       93 LOADNIL                          R11
       94 SETTABLEKS                       R11 R10 K14 ["Height"]
       96 DUPTABLE                         R11 K23 [{"Type", "Components", "GetValue", "GetComponents"}]
       97 LOADK                            R12 K24 ["Vector"]
       98 SETTABLEKS                       R12 R11 K10 ["Type"]
      100 NEWTABLE                         R12 0 3
      102 LOADK                            R13 K25 ["X"]
      103 LOADK                            R14 K26 ["Y"]
      104 LOADK                            R15 K27 ["Z"]
      105 SETLIST                          R12 R13 3 [1]
      107 SETTABLEKS                       R12 R11 K20 ["Components"]
      109 DUPCLOSURE                       R12 K31 [PROTO_3]
      110 SETTABLEKS                       R12 R11 K21 ["GetValue"]
      112 DUPCLOSURE                       R12 K32 [PROTO_4]
      113 SETTABLEKS                       R12 R11 K22 ["GetComponents"]
      115 SETTABLEKS                       R11 R10 K3 ["Schema"]
      117 NEWCLOSURE                       R11 P5
      118 CAPTURE                          UPVAL U3
      119 CAPTURE                          VAL R4
      120 CAPTURE                          UPVAL U6
      121 SETTABLEKS                       R11 R10 K15 ["Validate"]
      123 DUPTABLE                         R11 K33 [{"Id", "Schema"}]
      124 GETUPVAL                         R13 1
      125 GETTABLEKS                       R12 R13 K34 ["CraterDepth"]
      127 SETTABLEKS                       R12 R11 K1 ["Id"]
      129 GETUPVAL                         R12 7
      130 SETTABLEKS                       R12 R11 K3 ["Schema"]
      132 DUPTABLE                         R12 K33 [{"Id", "Schema"}]
      133 GETUPVAL                         R14 1
      134 GETTABLEKS                       R13 R14 K35 ["CraterRadius"]
      136 SETTABLEKS                       R13 R12 K1 ["Id"]
      138 GETUPVAL                         R13 7
      139 SETTABLEKS                       R13 R12 K3 ["Schema"]
      141 DUPTABLE                         R13 K33 [{"Id", "Schema"}]
      142 GETUPVAL                         R15 1
      143 GETTABLEKS                       R14 R15 K36 ["TopRadius"]
      145 SETTABLEKS                       R14 R13 K1 ["Id"]
      147 GETUPVAL                         R14 7
      148 SETTABLEKS                       R14 R13 K3 ["Schema"]
      150 DUPTABLE                         R14 K33 [{"Id", "Schema"}]
      151 GETUPVAL                         R16 1
      152 GETTABLEKS                       R15 R16 K37 ["FillBottom"]
      154 SETTABLEKS                       R15 R14 K1 ["Id"]
      156 GETUPVAL                         R15 7
      157 SETTABLEKS                       R15 R14 K3 ["Schema"]
      159 DUPTABLE                         R15 K33 [{"Id", "Schema"}]
      160 GETUPVAL                         R17 1
      161 GETTABLEKS                       R16 R17 K38 ["WaterLevel"]
      163 SETTABLEKS                       R16 R15 K1 ["Id"]
      165 GETUPVAL                         R16 7
      166 SETTABLEKS                       R16 R15 K3 ["Schema"]
      168 DUPTABLE                         R16 K33 [{"Id", "Schema"}]
      169 GETUPVAL                         R18 1
      170 GETTABLEKS                       R17 R18 K39 ["BankSize"]
      172 SETTABLEKS                       R17 R16 K1 ["Id"]
      174 GETUPVAL                         R17 7
      175 SETTABLEKS                       R17 R16 K3 ["Schema"]
      177 DUPTABLE                         R17 K33 [{"Id", "Schema"}]
      178 GETUPVAL                         R19 1
      179 GETTABLEKS                       R18 R19 K40 ["RimHeight"]
      181 SETTABLEKS                       R18 R17 K1 ["Id"]
      183 GETUPVAL                         R18 7
      184 SETTABLEKS                       R18 R17 K3 ["Schema"]
      186 DUPTABLE                         R18 K33 [{"Id", "Schema"}]
      187 GETUPVAL                         R20 1
      188 GETTABLEKS                       R19 R20 K41 ["TalusHeight"]
      190 SETTABLEKS                       R19 R18 K1 ["Id"]
      192 GETUPVAL                         R19 7
      193 SETTABLEKS                       R19 R18 K3 ["Schema"]
      195 DUPTABLE                         R19 K33 [{"Id", "Schema"}]
      196 GETUPVAL                         R21 1
      197 GETTABLEKS                       R20 R21 K42 ["CliffSlope"]
      199 SETTABLEKS                       R20 R19 K1 ["Id"]
      201 DUPTABLE                         R20 K47 [{"Type", "Min", "Max", "ShowInput", "SnapIncrement"}]
      202 LOADK                            R21 K48 ["DelayedSlider"]
      203 SETTABLEKS                       R21 R20 K10 ["Type"]
      205 LOADN                            R21 0
      206 SETTABLEKS                       R21 R20 K43 ["Min"]
      208 LOADN                            R21 90
      209 SETTABLEKS                       R21 R20 K44 ["Max"]
      211 LOADB                            R21 1
      212 SETTABLEKS                       R21 R20 K45 ["ShowInput"]
      214 LOADN                            R21 1
      215 SETTABLEKS                       R21 R20 K46 ["SnapIncrement"]
      217 SETTABLEKS                       R20 R19 K3 ["Schema"]
      219 DUPTABLE                         R20 K33 [{"Id", "Schema"}]
      220 GETUPVAL                         R22 1
      221 GETTABLEKS                       R21 R22 K49 ["NoiseScale"]
      223 SETTABLEKS                       R21 R20 K1 ["Id"]
      225 GETUPVAL                         R21 7
      226 SETTABLEKS                       R21 R20 K3 ["Schema"]
      228 DUPTABLE                         R21 K33 [{"Id", "Schema"}]
      229 GETUPVAL                         R23 1
      230 GETTABLEKS                       R22 R23 K50 ["NoiseStrength"]
      232 SETTABLEKS                       R22 R21 K1 ["Id"]
      234 GETUPVAL                         R22 7
      235 SETTABLEKS                       R22 R21 K3 ["Schema"]
      237 DUPTABLE                         R22 K52 [{"Children", "Id", "Schema", "Value"}]
      238 NEWTABLE                         R23 0 3
      240 DUPTABLE                         R24 K29 [{"Id", "Height", "Schema", "Validate"}]
      241 GETUPVAL                         R26 1
      242 GETTABLEKS                       R25 R26 K53 ["Offset"]
      244 SETTABLEKS                       R25 R24 K1 ["Id"]
      246 GETUPVAL                         R26 2
      247 CALL                             R26 0 1
      248 JUMPIFNOT                        R26 ; [+2]
      249 LOADN                            R25 26
      250 JUMP                             ; [+1]
      251 LOADNIL                          R25
      252 SETTABLEKS                       R25 R24 K14 ["Height"]
      254 DUPTABLE                         R25 K23 [{"Type", "Components", "GetValue", "GetComponents"}]
      255 LOADK                            R26 K24 ["Vector"]
      256 SETTABLEKS                       R26 R25 K10 ["Type"]
      258 NEWTABLE                         R26 0 2
      260 LOADK                            R27 K25 ["X"]
      261 LOADK                            R28 K26 ["Y"]
      262 SETLIST                          R26 R27 2 [1]
      264 SETTABLEKS                       R26 R25 K20 ["Components"]
      266 DUPCLOSURE                       R26 K54 [PROTO_6]
      267 CAPTURE                          UPVAL U3
      268 CAPTURE                          UPVAL U6
      269 SETTABLEKS                       R26 R25 K21 ["GetValue"]
      271 DUPCLOSURE                       R26 K55 [PROTO_7]
      272 SETTABLEKS                       R26 R25 K22 ["GetComponents"]
      274 SETTABLEKS                       R25 R24 K3 ["Schema"]
      276 NEWCLOSURE                       R25 P8
      277 CAPTURE                          UPVAL U3
      278 CAPTURE                          VAL R4
      279 SETTABLEKS                       R25 R24 K15 ["Validate"]
      281 DUPTABLE                         R25 K33 [{"Id", "Schema"}]
      282 GETUPVAL                         R27 1
      283 GETTABLEKS                       R26 R27 K56 ["Rotation"]
      285 SETTABLEKS                       R26 R25 K1 ["Id"]
      287 DUPTABLE                         R26 K47 [{"Type", "Min", "Max", "ShowInput", "SnapIncrement"}]
      288 LOADK                            R27 K48 ["DelayedSlider"]
      289 SETTABLEKS                       R27 R26 K10 ["Type"]
      291 LOADN                            R27 0
      292 SETTABLEKS                       R27 R26 K43 ["Min"]
      294 LOADN                            R27 104
      295 SETTABLEKS                       R27 R26 K44 ["Max"]
      297 LOADB                            R27 1
      298 SETTABLEKS                       R27 R26 K45 ["ShowInput"]
      300 LOADN                            R27 1
      301 SETTABLEKS                       R27 R26 K46 ["SnapIncrement"]
      303 SETTABLEKS                       R26 R25 K3 ["Schema"]
      305 DUPTABLE                         R26 K57 [{"Id", "Schema", "Validate"}]
      306 GETUPVAL                         R28 1
      307 GETTABLEKS                       R27 R28 K58 ["Seed"]
      309 SETTABLEKS                       R27 R26 K1 ["Id"]
      311 DUPTABLE                         R27 K11 [{"Type"}]
      312 LOADK                            R28 K58 ["Seed"]
      313 SETTABLEKS                       R28 R27 K10 ["Type"]
      315 SETTABLEKS                       R27 R26 K3 ["Schema"]
      317 NEWCLOSURE                       R27 P9
      318 CAPTURE                          VAL R4
      319 SETTABLEKS                       R27 R26 K15 ["Validate"]
      321 SETLIST                          R23 R24 3 [1]
      323 SETTABLEKS                       R23 R22 K51 ["Children"]
      325 GETUPVAL                         R24 1
      326 GETTABLEKS                       R23 R24 K59 ["AdvancedNoise"]
      328 SETTABLEKS                       R23 R22 K1 ["Id"]
      330 DUPTABLE                         R23 K61 [{"Text", "Type"}]
      331 LOADK                            R24 K62 [""]
      332 SETTABLEKS                       R24 R23 K60 ["Text"]
      334 LOADK                            R24 K63 ["Label"]
      335 SETTABLEKS                       R24 R23 K10 ["Type"]
      337 SETTABLEKS                       R23 R22 K3 ["Schema"]
      339 GETUPVAL                         R26 1
      340 GETTABLEKS                       R25 R26 K5 ["TerrainType"]
      342 GETTABLE                         R24 R1 R25
      343 GETUPVAL                         R26 8
      344 GETTABLEKS                       R25 R26 K64 ["None"]
      346 JUMPIFEQ                         R24 R25 ; [+3]
      348 LOADB                            R23 1
      349 JUMP                             ; [+1]
      350 LOADNIL                          R23
      351 SETTABLEKS                       R23 R22 K16 ["Value"]
      353 DUPTABLE                         R23 K33 [{"Id", "Schema"}]
      354 GETUPVAL                         R25 1
      355 GETTABLEKS                       R24 R25 K65 ["Material"]
      357 SETTABLEKS                       R24 R23 K1 ["Id"]
      359 DUPTABLE                         R24 K66 [{"Height", "Type"}]
      360 GETUPVAL                         R28 1
      361 GETTABLEKS                       R27 R28 K30 ["Size"]
      363 GETTABLE                         R26 R1 R27
      364 JUMPIFNOT                        R26 ; [+7]
      365 GETUPVAL                         R28 1
      366 GETTABLEKS                       R27 R28 K30 ["Size"]
      368 GETTABLE                         R26 R1 R27
      369 GETTABLEKS                       R25 R26 K26 ["Y"]
      371 JUMP                             ; [+1]
      372 LOADN                            R25 1
      373 SETTABLEKS                       R25 R24 K14 ["Height"]
      375 LOADK                            R25 K67 ["MaterialRanges"]
      376 SETTABLEKS                       R25 R24 K10 ["Type"]
      378 SETTABLEKS                       R24 R23 K3 ["Schema"]
      380 SETLIST                          R7 R8 16 [1]
      382 DUPTABLE                         R8 K33 [{"Id", "Schema"}]
      383 GETUPVAL                         R10 1
      384 GETTABLEKS                       R9 R10 K68 ["BlendingEdge"]
      386 SETTABLEKS                       R9 R8 K1 ["Id"]
      388 GETUPVAL                         R9 7
      389 SETTABLEKS                       R9 R8 K3 ["Schema"]
      391 DUPTABLE                         R9 K69 [{"Id", "Layout", "Schema", "Value"}]
      392 GETUPVAL                         R25 1
      393 GETTABLEKS                       R24 R25 K70 ["Confirm"]
      395 SETTABLEKS                       R24 R9 K1 ["Id"]
      397 GETIMPORT                        R24 K9 [Enum.FillDirection.Vertical]
      399 SETTABLEKS                       R24 R9 K2 ["Layout"]
      401 DUPTABLE                         R24 K73 [{"CanConfirm", "CanRegenerate", "Label", "Type"}]
      402 LOADB                            R25 0
      403 SETTABLEKS                       R25 R24 K71 ["CanConfirm"]
      405 LOADB                            R25 0
      406 SETTABLEKS                       R25 R24 K72 ["CanRegenerate"]
      408 GETUPVAL                         R27 5
      409 GETUPVAL                         R29 1
      410 GETTABLEKS                       R28 R29 K70 ["Confirm"]
      412 NAMECALL                         R25 R4 K74 ["getText"]
      414 CALL                             R25 3 1
      415 SETTABLEKS                       R25 R24 K63 ["Label"]
      417 LOADK                            R25 K75 ["ConfirmGeneration"]
      418 SETTABLEKS                       R25 R24 K10 ["Type"]
      420 SETTABLEKS                       R24 R9 K3 ["Schema"]
      422 LOADB                            R24 1
      423 SETTABLEKS                       R24 R9 K16 ["Value"]
      425 SETLIST                          R7 R8 2 [17]
      427 DUPTABLE                         R8 K79 [{"Category", "Data", "Overrides"}]
      428 GETUPVAL                         R9 5
      429 SETTABLEKS                       R9 R8 K76 ["Category"]
      431 SETTABLEKS                       R1 R8 K77 ["Data"]
      433 SETTABLEKS                       R3 R8 K78 ["Overrides"]
      435 CALL                             R5 3 -1
      436 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["ApplyById"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["Category"]
       25 GETTABLEKS                       R4 R2 K11 ["BuildSettings"]
       27 GETTABLEKS                       R5 R2 K12 ["Storage"]
       29 GETTABLEKS                       R6 R2 K13 ["TerrainType"]
       31 GETIMPORT                        R7 K5 [require]
       33 GETTABLEKS                       R10 R0 K6 ["Src"]
       35 GETTABLEKS                       R9 R10 K14 ["Resources"]
       37 GETTABLEKS                       R8 R9 K15 ["Constants"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R11 R0 K6 ["Src"]
       44 GETTABLEKS                       R10 R11 K7 ["Util"]
       46 GETTABLEKS                       R9 R10 K16 ["getWithinTerrainBounds"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R12 R0 K6 ["Src"]
       53 GETTABLEKS                       R11 R12 K7 ["Util"]
       55 GETTABLEKS                       R10 R11 K17 ["isVectorNaNOrInf"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R13 R0 K6 ["Src"]
       62 GETTABLEKS                       R12 R13 K18 ["Flags"]
       64 GETTABLEKS                       R11 R12 K19 ["getFFlagTerrainEditorExplicitVectorHeight"]
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R11 R3 K11 ["BuildSettings"]
       69 NEWTABLE                         R12 2 0
       71 NEWTABLE                         R13 32 0
       73 GETTABLEKS                       R14 R4 K20 ["AdvancedNoise"]
       75 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
       77 SETTABLE                         R15 R13 R14
       78 GETTABLEKS                       R14 R4 K22 ["NoiseStrength"]
       80 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
       82 SETTABLE                         R15 R13 R14
       83 GETTABLEKS                       R14 R4 K23 ["BankSize"]
       85 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
       87 SETTABLE                         R15 R13 R14
       88 GETTABLEKS                       R14 R4 K24 ["BlendingEdge"]
       90 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
       92 SETTABLE                         R15 R13 R14
       93 GETTABLEKS                       R14 R4 K25 ["CliffSlope"]
       95 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
       97 SETTABLE                         R15 R13 R14
       98 GETTABLEKS                       R14 R4 K26 ["Confirm"]
      100 GETTABLEKS                       R15 R5 K27 ["LocalSession"]
      102 SETTABLE                         R15 R13 R14
      103 GETTABLEKS                       R14 R4 K28 ["CraterDepth"]
      105 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
      107 SETTABLE                         R15 R13 R14
      108 GETTABLEKS                       R14 R4 K29 ["CraterRadius"]
      110 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
      112 SETTABLE                         R15 R13 R14
      113 GETTABLEKS                       R14 R4 K30 ["FillBottom"]
      115 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
      117 SETTABLE                         R15 R13 R14
      118 GETTABLEKS                       R14 R4 K31 ["Material"]
      120 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
      122 SETTABLE                         R15 R13 R14
      123 GETTABLEKS                       R14 R4 K32 ["MaterialLUT"]
      125 GETTABLEKS                       R15 R5 K27 ["LocalSession"]
      127 SETTABLE                         R15 R13 R14
      128 GETTABLEKS                       R14 R4 K33 ["NoiseScale"]
      130 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
      132 SETTABLE                         R15 R13 R14
      133 GETTABLEKS                       R14 R4 K34 ["Offset"]
      135 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
      137 SETTABLE                         R15 R13 R14
      138 GETTABLEKS                       R14 R4 K35 ["PlacementMode"]
      140 GETTABLEKS                       R15 R5 K27 ["LocalSession"]
      142 SETTABLE                         R15 R13 R14
      143 GETTABLEKS                       R14 R4 K36 ["Position"]
      145 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
      147 SETTABLE                         R15 R13 R14
      148 GETTABLEKS                       R14 R4 K37 ["RimHeight"]
      150 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
      152 SETTABLE                         R15 R13 R14
      153 GETTABLEKS                       R14 R4 K38 ["TalusHeight"]
      155 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
      157 SETTABLE                         R15 R13 R14
      158 GETTABLEKS                       R14 R4 K39 ["Rotation"]
      160 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
      162 SETTABLE                         R15 R13 R14
      163 GETTABLEKS                       R14 R4 K40 ["Seed"]
      165 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
      167 SETTABLE                         R15 R13 R14
      168 GETTABLEKS                       R14 R4 K41 ["Size"]
      170 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
      172 SETTABLE                         R15 R13 R14
      173 GETTABLEKS                       R14 R4 K42 ["SnapToVoxels"]
      175 GETTABLEKS                       R15 R5 K27 ["LocalSession"]
      177 SETTABLE                         R15 R13 R14
      178 GETTABLEKS                       R14 R4 K13 ["TerrainType"]
      180 GETTABLEKS                       R15 R5 K43 ["GlobalSession"]
      182 SETTABLE                         R15 R13 R14
      183 GETTABLEKS                       R14 R4 K44 ["TopRadius"]
      185 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
      187 SETTABLE                         R15 R13 R14
      188 GETTABLEKS                       R14 R4 K45 ["Transform"]
      190 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
      192 SETTABLE                         R15 R13 R14
      193 GETTABLEKS                       R14 R4 K46 ["WaterLevel"]
      195 GETTABLEKS                       R15 R5 K21 ["LocalPersistent"]
      197 SETTABLE                         R15 R13 R14
      198 SETTABLEKS                       R13 R12 K12 ["Storage"]
      200 DUPTABLE                         R13 K52 [{"Type", "Min", "Max", "ShowInput", "SnapIncrement"}]
      201 LOADK                            R14 K53 ["DelayedSlider"]
      202 SETTABLEKS                       R14 R13 K47 ["Type"]
      204 LOADN                            R14 0
      205 SETTABLEKS                       R14 R13 K48 ["Min"]
      207 LOADN                            R14 1
      208 SETTABLEKS                       R14 R13 K49 ["Max"]
      210 LOADB                            R14 1
      211 SETTABLEKS                       R14 R13 K50 ["ShowInput"]
      213 LOADK                            R14 K54 [0.01]
      214 SETTABLEKS                       R14 R13 K51 ["SnapIncrement"]
      216 DUPCLOSURE                       R14 K55 [PROTO_10]
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R10
      220 CAPTURE                          VAL R9
      221 CAPTURE                          VAL R8
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R7
      224 CAPTURE                          VAL R13
      225 CAPTURE                          VAL R6
      226 SETTABLEKS                       R14 R12 K56 ["Generator"]
      228 RETURN                           R12 1
