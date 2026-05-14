PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Set"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["BrushSettings"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["_pluginController"]
        9 NEWTABLE                         R3 1 0
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K3 ["PlaneTransform"]
       14 GETUPVAL                         R5 4
       15 CALL                             R5 0 1
       16 SETTABLE                         R5 R3 R4
       17 CALL                             R0 3 0
       18 GETIMPORT                        R0 K6 [task.spawn]
       20 NEWCLOSURE                       R1 P0
       21 CAPTURE                          UPVAL U2
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 NEWTABLE                         R3 1 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K1 ["BrushSettings"]
       12 NEWTABLE                         R5 1 0
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K2 ["ManualPlaneLock"]
       17 DUPTABLE                         R7 K4 [{"Schema"}]
       18 DUPTABLE                         R8 K6 [{"OnReset"}]
       19 NEWCLOSURE                       R9 P0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U4
       25 SETTABLEKS                       R9 R8 K5 ["OnReset"]
       27 SETTABLEKS                       R8 R7 K3 ["Schema"]
       29 SETTABLE                         R7 R5 R6
       30 SETTABLE                         R5 R3 R4
       31 SETTABLEKS                       R3 R0 K7 ["_overrides"]
       33 LOADN                            R3 0
       34 SETTABLEKS                       R3 R0 K8 ["_brushTime"]
       36 LOADN                            R3 0
       37 SETTABLEKS                       R3 R0 K9 ["_brushUsages"]
       39 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["saveForm"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETTABLEKS                       R2 R0 K1 ["_operation"]
        8 JUMPIFNOT                        R2 ; [+8]
        9 GETTABLEKS                       R2 R0 K1 ["_operation"]
       11 NAMECALL                         R4 R0 K2 ["getPayload"]
       13 CALL                             R4 1 -1
       14 NAMECALL                         R2 R2 K3 ["updatePayload"]
       16 CALL                             R2 -1 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["saveGizmos"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETTABLEKS                       R2 R0 K1 ["_operation"]
        8 JUMPIFNOT                        R2 ; [+8]
        9 GETTABLEKS                       R2 R0 K1 ["_operation"]
       11 NAMECALL                         R4 R0 K2 ["getPayload"]
       13 CALL                             R4 1 -1
       14 NAMECALL                         R2 R2 K3 ["updatePayload"]
       16 CALL                             R2 -1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Paint"]
        2 GETTABLEKS                       R4 R0 K1 ["_services"]
        4 CALL                             R2 2 1
        5 SETTABLEKS                       R2 R0 K2 ["_operation"]
        7 GETTABLEKS                       R2 R0 K2 ["_operation"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["join"]
       12 DUPTABLE                         R5 K5 [{"Payload"}]
       13 NAMECALL                         R6 R0 K6 ["getPayload"]
       15 CALL                             R6 1 1
       16 SETTABLEKS                       R6 R5 K4 ["Payload"]
       18 MOVE                             R6 R1
       19 CALL                             R4 2 -1
       20 NAMECALL                         R2 R2 K7 ["start"]
       22 CALL                             R2 -1 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getPayload"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["BrushSettings"]
        7 GETTABLE                         R2 R0 R3
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["ManualPlaneLock"]
       11 GETTABLE                         R1 R2 R3
       12 JUMPIFNOT                        R1 ; [+13]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K1 ["BrushSettings"]
       16 GETTABLE                         R2 R0 R3
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K3 ["PlaneLock"]
       20 GETTABLE                         R1 R2 R3
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R2 R2 K4 ["Manual"]
       24 JUMPIFEQ                         R1 R2 ; [+5]
       26 GETUPVAL                         R1 0
       27 NAMECALL                         R1 R1 K5 ["startOperation"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_operation"]
        3 JUMPIFNOT                        R0 ; [+50]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["_operation"]
        7 NAMECALL                         R0 R0 K1 ["isRunning"]
        9 CALL                             R0 1 1
       10 JUMPIFNOT                        R0 ; [+43]
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R1 R0 K2 ["_brushUsages"]
       14 ADDK                             R1 R1 K3 [1]
       15 SETTABLEKS                       R1 R0 K2 ["_brushUsages"]
       17 GETUPVAL                         R0 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K0 ["_operation"]
       21 NAMECALL                         R2 R2 K4 ["getCurrentTimeTaken"]
       23 CALL                             R2 1 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K0 ["_operation"]
       27 NAMECALL                         R3 R3 K5 ["getStepsTaken"]
       29 CALL                             R3 1 1
       30 DIV                              R1 R2 R3
       31 SETTABLEKS                       R1 R0 K6 ["_brushTime"]
       33 GETUPVAL                         R0 0
       34 GETTABLEKS                       R0 R0 K0 ["_operation"]
       36 NAMECALL                         R0 R0 K7 ["getTimeStatistic"]
       38 CALL                             R0 1 1
       39 JUMPIFNOT                        R0 ; [+8]
       40 GETUPVAL                         R1 0
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K9 ["_brushStatistic"]
       44 ORK                              R3 R4 K8 [0]
       45 ADD                              R2 R3 R0
       46 SETTABLEKS                       R2 R1 K9 ["_brushStatistic"]
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R1 R1 K0 ["_operation"]
       51 NAMECALL                         R1 R1 K10 ["destroy"]
       53 CALL                             R1 1 0
       54 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["activate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K1 ["_shortcutController"]
        7 NAMECALL                         R1 R1 K2 ["getMouse"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R0 K1 ["_shortcutController"]
       12 GETTABLEKS                       R2 R2 K3 ["MouseDownAction"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 NAMECALL                         R2 R2 K4 ["Connect"]
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R0 K5 ["_mouseDownConnection"]
       24 GETTABLEKS                       R2 R1 K6 ["Button1Up"]
       26 NEWCLOSURE                       R4 P1
       27 CAPTURE                          VAL R0
       28 NAMECALL                         R2 R2 K4 ["Connect"]
       30 CALL                             R2 2 1
       31 SETTABLEKS                       R2 R0 K7 ["_mouseUpConnection"]
       33 GETTABLEKS                       R2 R0 K8 ["_analytics"]
       35 LOADK                            R4 K9 ["Activated"]
       36 GETUPVAL                         R5 4
       37 GETTABLEKS                       R5 R5 K10 ["Paint"]
       39 NAMECALL                         R2 R2 K11 ["report"]
       41 CALL                             R2 3 0
       42 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_mouseDownConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["_mouseUpConnection"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K3 ["_operation"]
       12 JUMPIFNOT                        R1 ; [+41]
       13 GETTABLEKS                       R1 R0 K3 ["_operation"]
       15 NAMECALL                         R1 R1 K4 ["isRunning"]
       17 CALL                             R1 1 1
       18 JUMPIFNOT                        R1 ; [+35]
       19 GETTABLEKS                       R1 R0 K5 ["_brushUsages"]
       21 ADDK                             R1 R1 K6 [1]
       22 SETTABLEKS                       R1 R0 K5 ["_brushUsages"]
       24 GETTABLEKS                       R2 R0 K3 ["_operation"]
       26 NAMECALL                         R2 R2 K7 ["getCurrentTimeTaken"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R3 R0 K3 ["_operation"]
       31 NAMECALL                         R3 R3 K8 ["getStepsTaken"]
       33 CALL                             R3 1 1
       34 DIV                              R1 R2 R3
       35 SETTABLEKS                       R1 R0 K9 ["_brushTime"]
       37 GETTABLEKS                       R1 R0 K3 ["_operation"]
       39 NAMECALL                         R1 R1 K10 ["getTimeStatistic"]
       41 CALL                             R1 1 1
       42 JUMPIFNOT                        R1 ; [+6]
       43 GETTABLEKS                       R4 R0 K12 ["_brushStatistic"]
       45 ORK                              R3 R4 K11 [0]
       46 ADD                              R2 R3 R1
       47 SETTABLEKS                       R2 R0 K12 ["_brushStatistic"]
       49 GETTABLEKS                       R2 R0 K3 ["_operation"]
       51 NAMECALL                         R2 R2 K13 ["destroy"]
       53 CALL                             R2 1 0
       54 GETUPVAL                         R1 0
       55 GETTABLEKS                       R1 R1 K14 ["deactivate"]
       57 MOVE                             R2 R0
       58 CALL                             R1 1 0
       59 RETURN                           R0 0

PROTO_10:
        0 NAMECALL                         R1 R0 K0 ["getPayload"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R0 K1 ["_brushTime"]
        5 JUMPIFNOT                        R2 ; [+68]
        6 GETTABLEKS                       R2 R0 K1 ["_brushTime"]
        8 LOADN                            R3 0
        9 JUMPIFNOTLT                      R3 R2 ; [+64]
       11 GETTABLEKS                       R2 R0 K2 ["_analytics"]
       13 LOADK                            R4 K3 ["BrushProperties"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["getBrushPayload"]
       17 MOVE                             R6 R1
       18 GETTABLEKS                       R7 R0 K1 ["_brushTime"]
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K5 ["Paint"]
       23 CALL                             R5 3 -1
       24 NAMECALL                         R2 R2 K6 ["report"]
       26 CALL                             R2 -1 0
       27 GETTABLEKS                       R2 R0 K2 ["_analytics"]
       29 LOADK                            R4 K7 ["MaterialProperties"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K8 ["getMaterialPayload"]
       33 MOVE                             R6 R1
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K5 ["Paint"]
       37 CALL                             R5 2 -1
       38 NAMECALL                         R2 R2 K6 ["report"]
       40 CALL                             R2 -1 0
       41 GETTABLEKS                       R2 R0 K2 ["_analytics"]
       43 LOADK                            R4 K9 ["Usage"]
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R5 R5 K5 ["Paint"]
       47 GETTABLEKS                       R6 R0 K10 ["_brushUsages"]
       49 NAMECALL                         R2 R2 K6 ["report"]
       51 CALL                             R2 4 0
       52 GETTABLEKS                       R2 R0 K11 ["_brushStatistic"]
       54 JUMPIFNOT                        R2 ; [+19]
       55 GETTABLEKS                       R2 R0 K10 ["_brushUsages"]
       57 LOADN                            R3 0
       58 JUMPIFNOTLT                      R3 R2 ; [+15]
       60 GETTABLEKS                       R2 R0 K2 ["_analytics"]
       62 LOADK                            R4 K12 ["Performance"]
       63 GETUPVAL                         R5 1
       64 GETTABLEKS                       R5 R5 K5 ["Paint"]
       66 GETTABLEKS                       R7 R0 K11 ["_brushStatistic"]
       68 GETTABLEKS                       R8 R0 K10 ["_brushUsages"]
       70 DIV                              R6 R7 R8
       71 NAMECALL                         R2 R2 K6 ["report"]
       73 CALL                             R2 4 0
       74 LOADN                            R2 0
       75 SETTABLEKS                       R2 R0 K10 ["_brushUsages"]
       77 LOADN                            R2 0
       78 SETTABLEKS                       R2 R0 K1 ["_brushTime"]
       80 LOADN                            R2 0
       81 SETTABLEKS                       R2 R0 K11 ["_brushStatistic"]
       83 RETURN                           R0 0

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
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["BaseTool"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["AnalyticsHelper"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["getPlaneFromCamera"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K10 ["Src"]
       45 GETTABLEKS                       R6 R6 K11 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["Operations"]
       49 GETTABLEKS                       R6 R6 K15 ["PaintOperation"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K10 ["Src"]
       56 GETTABLEKS                       R7 R7 K11 ["Util"]
       58 GETTABLEKS                       R7 R7 K16 ["SettingsHelper"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K10 ["Src"]
       65 GETTABLEKS                       R8 R8 K17 ["Types"]
       67 CALL                             R7 1 1
       68 GETTABLEKS                       R8 R7 K18 ["BrushSettings"]
       70 GETTABLEKS                       R9 R7 K19 ["BrushShape"]
       72 GETTABLEKS                       R10 R7 K20 ["Category"]
       74 GETTABLEKS                       R11 R7 K21 ["Gizmo"]
       76 GETTABLEKS                       R12 R7 K22 ["MaterialMode"]
       78 GETTABLEKS                       R13 R7 K23 ["MaterialSettings"]
       80 GETTABLEKS                       R14 R7 K24 ["PivotPosition"]
       82 GETTABLEKS                       R15 R7 K25 ["PlaneLock"]
       84 GETTABLEKS                       R16 R7 K26 ["Snapping"]
       86 GETTABLEKS                       R17 R7 K27 ["Tab"]
       88 GETTABLEKS                       R18 R7 K28 ["Tool"]
       90 NEWTABLE                         R19 0 2
       92 DUPTABLE                         R20 K31 [{"Defaults", "Id"}]
       93 NEWTABLE                         R21 8 0
       95 GETTABLEKS                       R22 R8 K19 ["BrushShape"]
       97 GETTABLEKS                       R23 R9 K32 ["Sphere"]
       99 SETTABLE                         R23 R21 R22
      100 GETTABLEKS                       R22 R8 K33 ["BrushSize"]
      102 DUPTABLE                         R23 K37 [{"Height", "Locked", "Size"}]
      103 LOADN                            R24 6
      104 SETTABLEKS                       R24 R23 K34 ["Height"]
      106 LOADB                            R24 1
      107 SETTABLEKS                       R24 R23 K35 ["Locked"]
      109 LOADN                            R24 6
      110 SETTABLEKS                       R24 R23 K36 ["Size"]
      112 SETTABLE                         R23 R21 R22
      113 GETTABLEKS                       R22 R8 K24 ["PivotPosition"]
      115 GETTABLEKS                       R23 R14 K38 ["Center"]
      117 SETTABLE                         R23 R21 R22
      118 GETTABLEKS                       R22 R8 K26 ["Snapping"]
      120 GETTABLEKS                       R23 R16 K39 ["Off"]
      122 SETTABLE                         R23 R21 R22
      123 GETTABLEKS                       R22 R8 K40 ["State"]
      125 DUPTABLE                         R23 K42 [{"Position"}]
      126 LOADK                            R24 K43 [{0, 0, 0}]
      127 SETTABLEKS                       R24 R23 K41 ["Position"]
      129 SETTABLE                         R23 R21 R22
      130 GETTABLEKS                       R22 R8 K44 ["IgnoreWater"]
      132 LOADB                            R23 0
      133 SETTABLE                         R23 R21 R22
      134 GETTABLEKS                       R22 R8 K45 ["IgnoreParts"]
      136 LOADB                            R23 1
      137 SETTABLE                         R23 R21 R22
      138 SETTABLEKS                       R21 R20 K29 ["Defaults"]
      140 GETTABLEKS                       R21 R10 K18 ["BrushSettings"]
      142 SETTABLEKS                       R21 R20 K30 ["Id"]
      144 DUPTABLE                         R21 K31 [{"Defaults", "Id"}]
      145 NEWTABLE                         R22 4 0
      147 GETTABLEKS                       R23 R13 K22 ["MaterialMode"]
      149 GETTABLEKS                       R24 R12 K46 ["Paint"]
      151 SETTABLE                         R24 R22 R23
      152 GETTABLEKS                       R23 R13 K47 ["SourceMaterial"]
      154 GETIMPORT                        R24 K51 [Enum.Material.Grass]
      156 SETTABLE                         R24 R22 R23
      157 GETTABLEKS                       R23 R13 K52 ["TargetMaterial"]
      159 GETIMPORT                        R24 K51 [Enum.Material.Grass]
      161 SETTABLE                         R24 R22 R23
      162 SETTABLEKS                       R22 R21 K29 ["Defaults"]
      164 GETTABLEKS                       R22 R10 K23 ["MaterialSettings"]
      166 SETTABLEKS                       R22 R21 K30 ["Id"]
      168 SETLIST                          R19 R20 2 [1]
      170 NEWTABLE                         R20 0 2
      172 DUPTABLE                         R21 K54 [{"Id", "Schema"}]
      173 GETTABLEKS                       R22 R11 K55 ["Brush"]
      175 SETTABLEKS                       R22 R21 K30 ["Id"]
      177 DUPTABLE                         R22 K57 [{"Type"}]
      178 GETTABLEKS                       R23 R11 K55 ["Brush"]
      180 SETTABLEKS                       R23 R22 K56 ["Type"]
      182 SETTABLEKS                       R22 R21 K53 ["Schema"]
      184 DUPTABLE                         R22 K54 [{"Id", "Schema"}]
      185 GETTABLEKS                       R23 R11 K58 ["Plane"]
      187 SETTABLEKS                       R23 R22 K30 ["Id"]
      189 DUPTABLE                         R23 K57 [{"Type"}]
      190 GETTABLEKS                       R24 R11 K58 ["Plane"]
      192 SETTABLEKS                       R24 R23 K56 ["Type"]
      194 SETTABLEKS                       R23 R22 K53 ["Schema"]
      196 SETLIST                          R20 R21 2 [1]
      198 GETTABLEKS                       R23 R18 K46 ["Paint"]
      200 GETTABLEKS                       R24 R17 K59 ["Edit"]
      202 MOVE                             R25 R19
      203 MOVE                             R26 R20
      204 NAMECALL                         R21 R2 K60 ["new"]
      206 CALL                             R21 5 1
      207 DUPCLOSURE                       R22 K61 [PROTO_2]
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R10
      210 CAPTURE                          VAL R8
      211 CAPTURE                          VAL R6
      212 CAPTURE                          VAL R4
      213 SETTABLEKS                       R22 R21 K62 ["init"]
      215 DUPCLOSURE                       R22 K63 [PROTO_3]
      216 CAPTURE                          VAL R2
      217 SETTABLEKS                       R22 R21 K64 ["saveForm"]
      219 DUPCLOSURE                       R22 K65 [PROTO_4]
      220 CAPTURE                          VAL R2
      221 SETTABLEKS                       R22 R21 K66 ["saveGizmos"]
      223 DUPCLOSURE                       R22 K67 [PROTO_5]
      224 CAPTURE                          VAL R5
      225 CAPTURE                          VAL R1
      226 SETTABLEKS                       R22 R21 K68 ["startOperation"]
      228 DUPCLOSURE                       R22 K69 [PROTO_8]
      229 CAPTURE                          VAL R2
      230 CAPTURE                          VAL R10
      231 CAPTURE                          VAL R8
      232 CAPTURE                          VAL R15
      233 CAPTURE                          VAL R18
      234 SETTABLEKS                       R22 R21 K70 ["activate"]
      236 DUPCLOSURE                       R22 K71 [PROTO_9]
      237 CAPTURE                          VAL R2
      238 SETTABLEKS                       R22 R21 K72 ["deactivate"]
      240 DUPCLOSURE                       R22 K73 [PROTO_10]
      241 CAPTURE                          VAL R3
      242 CAPTURE                          VAL R18
      243 SETTABLEKS                       R22 R21 K74 ["reportAnalytics"]
      245 RETURN                           R21 1
