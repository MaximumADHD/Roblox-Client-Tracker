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
        1 LOADK                            R3 K0 ["Sculpt"]
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
       37 GETTABLEKS                       R5 R5 K10 ["Sculpt"]
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
       21 GETTABLEKS                       R8 R8 K5 ["Sculpt"]
       23 CALL                             R5 3 -1
       24 NAMECALL                         R2 R2 K6 ["report"]
       26 CALL                             R2 -1 0
       27 GETTABLEKS                       R2 R0 K2 ["_analytics"]
       29 LOADK                            R4 K7 ["MaterialProperties"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K8 ["getMaterialPayload"]
       33 MOVE                             R6 R1
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K5 ["Sculpt"]
       37 CALL                             R5 2 -1
       38 NAMECALL                         R2 R2 K6 ["report"]
       40 CALL                             R2 -1 0
       41 GETTABLEKS                       R2 R0 K2 ["_analytics"]
       43 LOADK                            R4 K9 ["Usage"]
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R5 R5 K5 ["Sculpt"]
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
       64 GETTABLEKS                       R5 R5 K5 ["Sculpt"]
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
       49 GETTABLEKS                       R6 R6 K15 ["SculptOperation"]
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
       68 GETTABLEKS                       R8 R7 K18 ["BrushMode"]
       70 GETTABLEKS                       R9 R7 K19 ["BrushSettings"]
       72 GETTABLEKS                       R10 R7 K20 ["BrushShape"]
       74 GETTABLEKS                       R11 R7 K21 ["Category"]
       76 GETTABLEKS                       R12 R7 K22 ["Gizmo"]
       78 GETTABLEKS                       R13 R7 K23 ["PivotPosition"]
       80 GETTABLEKS                       R14 R7 K24 ["PlaneLock"]
       82 GETTABLEKS                       R15 R7 K25 ["MaterialSettings"]
       84 GETTABLEKS                       R16 R7 K26 ["Tab"]
       86 GETTABLEKS                       R17 R7 K27 ["Tool"]
       88 NEWTABLE                         R18 0 2
       90 DUPTABLE                         R19 K30 [{"Defaults", "Id"}]
       91 NEWTABLE                         R20 16 0
       93 GETTABLEKS                       R21 R9 K18 ["BrushMode"]
       95 GETTABLEKS                       R22 R8 K31 ["Add"]
       97 SETTABLE                         R22 R20 R21
       98 GETTABLEKS                       R21 R9 K20 ["BrushShape"]
      100 GETTABLEKS                       R22 R10 K32 ["Sphere"]
      102 SETTABLE                         R22 R20 R21
      103 GETTABLEKS                       R21 R9 K33 ["BrushSize"]
      105 DUPTABLE                         R22 K37 [{"Height", "Locked", "Size"}]
      106 LOADN                            R23 6
      107 SETTABLEKS                       R23 R22 K34 ["Height"]
      109 LOADB                            R23 1
      110 SETTABLEKS                       R23 R22 K35 ["Locked"]
      112 LOADN                            R23 6
      113 SETTABLEKS                       R23 R22 K36 ["Size"]
      115 SETTABLE                         R22 R20 R21
      116 GETTABLEKS                       R21 R9 K23 ["PivotPosition"]
      118 GETTABLEKS                       R22 R13 K38 ["Center"]
      120 SETTABLE                         R22 R20 R21
      121 GETTABLEKS                       R21 R9 K39 ["Strength"]
      123 LOADN                            R22 1
      124 SETTABLE                         R22 R20 R21
      125 GETTABLEKS                       R21 R9 K40 ["State"]
      127 DUPTABLE                         R22 K42 [{"Position"}]
      128 LOADK                            R23 K43 [{0, 0, 0}]
      129 SETTABLEKS                       R23 R22 K41 ["Position"]
      131 SETTABLE                         R22 R20 R21
      132 GETTABLEKS                       R21 R9 K44 ["IgnoreWater"]
      134 LOADB                            R22 0
      135 SETTABLE                         R22 R20 R21
      136 GETTABLEKS                       R21 R9 K45 ["IgnoreParts"]
      138 LOADB                            R22 1
      139 SETTABLE                         R22 R20 R21
      140 GETTABLEKS                       R21 R9 K46 ["TemporarySmooth"]
      142 LOADB                            R22 0
      143 SETTABLE                         R22 R20 R21
      144 GETTABLEKS                       R21 R9 K47 ["WaterAutofill"]
      146 LOADB                            R22 0
      147 SETTABLE                         R22 R20 R21
      148 SETTABLEKS                       R20 R19 K28 ["Defaults"]
      150 GETTABLEKS                       R20 R11 K19 ["BrushSettings"]
      152 SETTABLEKS                       R20 R19 K29 ["Id"]
      154 DUPTABLE                         R20 K30 [{"Defaults", "Id"}]
      155 NEWTABLE                         R21 2 0
      157 GETTABLEKS                       R22 R15 K48 ["AutoMaterial"]
      159 LOADB                            R23 0
      160 SETTABLE                         R23 R21 R22
      161 GETTABLEKS                       R22 R15 K49 ["SourceMaterial"]
      163 GETIMPORT                        R23 K53 [Enum.Material.Grass]
      165 SETTABLE                         R23 R21 R22
      166 SETTABLEKS                       R21 R20 K28 ["Defaults"]
      168 GETTABLEKS                       R21 R11 K25 ["MaterialSettings"]
      170 SETTABLEKS                       R21 R20 K29 ["Id"]
      172 SETLIST                          R18 R19 2 [1]
      174 NEWTABLE                         R19 0 2
      176 DUPTABLE                         R20 K55 [{"Id", "Schema"}]
      177 GETTABLEKS                       R21 R12 K56 ["Brush"]
      179 SETTABLEKS                       R21 R20 K29 ["Id"]
      181 DUPTABLE                         R21 K58 [{"Type"}]
      182 GETTABLEKS                       R22 R12 K56 ["Brush"]
      184 SETTABLEKS                       R22 R21 K57 ["Type"]
      186 SETTABLEKS                       R21 R20 K54 ["Schema"]
      188 DUPTABLE                         R21 K55 [{"Id", "Schema"}]
      189 GETTABLEKS                       R22 R12 K59 ["Plane"]
      191 SETTABLEKS                       R22 R21 K29 ["Id"]
      193 DUPTABLE                         R22 K58 [{"Type"}]
      194 GETTABLEKS                       R23 R12 K59 ["Plane"]
      196 SETTABLEKS                       R23 R22 K57 ["Type"]
      198 SETTABLEKS                       R22 R21 K54 ["Schema"]
      200 SETLIST                          R19 R20 2 [1]
      202 GETTABLEKS                       R22 R17 K60 ["Sculpt"]
      204 GETTABLEKS                       R23 R16 K61 ["Edit"]
      206 MOVE                             R24 R18
      207 MOVE                             R25 R19
      208 NAMECALL                         R20 R2 K62 ["new"]
      210 CALL                             R20 5 1
      211 DUPCLOSURE                       R21 K63 [PROTO_2]
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R6
      216 CAPTURE                          VAL R4
      217 SETTABLEKS                       R21 R20 K64 ["init"]
      219 DUPCLOSURE                       R21 K65 [PROTO_3]
      220 CAPTURE                          VAL R2
      221 SETTABLEKS                       R21 R20 K66 ["saveForm"]
      223 DUPCLOSURE                       R21 K67 [PROTO_4]
      224 CAPTURE                          VAL R2
      225 SETTABLEKS                       R21 R20 K68 ["saveGizmos"]
      227 DUPCLOSURE                       R21 K69 [PROTO_5]
      228 CAPTURE                          VAL R5
      229 CAPTURE                          VAL R1
      230 SETTABLEKS                       R21 R20 K70 ["startOperation"]
      232 DUPCLOSURE                       R21 K71 [PROTO_8]
      233 CAPTURE                          VAL R2
      234 CAPTURE                          VAL R11
      235 CAPTURE                          VAL R9
      236 CAPTURE                          VAL R14
      237 CAPTURE                          VAL R17
      238 SETTABLEKS                       R21 R20 K72 ["activate"]
      240 DUPCLOSURE                       R21 K73 [PROTO_9]
      241 CAPTURE                          VAL R2
      242 SETTABLEKS                       R21 R20 K74 ["deactivate"]
      244 DUPCLOSURE                       R21 K75 [PROTO_10]
      245 CAPTURE                          VAL R3
      246 CAPTURE                          VAL R17
      247 SETTABLEKS                       R21 R20 K76 ["reportAnalytics"]
      249 RETURN                           R20 1
