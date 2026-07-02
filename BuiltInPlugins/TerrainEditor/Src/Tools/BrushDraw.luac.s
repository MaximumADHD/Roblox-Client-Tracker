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
        1 LOADK                            R3 K0 ["Draw"]
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
       37 GETTABLEKS                       R5 R5 K10 ["Draw"]
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
       21 GETTABLEKS                       R8 R8 K5 ["Draw"]
       23 CALL                             R5 3 -1
       24 NAMECALL                         R2 R2 K6 ["report"]
       26 CALL                             R2 -1 0
       27 GETTABLEKS                       R2 R0 K2 ["_analytics"]
       29 LOADK                            R4 K7 ["MaterialProperties"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K8 ["getMaterialPayload"]
       33 MOVE                             R6 R1
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K5 ["Draw"]
       37 CALL                             R5 2 -1
       38 NAMECALL                         R2 R2 K6 ["report"]
       40 CALL                             R2 -1 0
       41 GETTABLEKS                       R2 R0 K2 ["_analytics"]
       43 LOADK                            R4 K9 ["Usage"]
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R5 R5 K5 ["Draw"]
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
       64 GETTABLEKS                       R5 R5 K5 ["Draw"]
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
       29 GETTABLEKS                       R4 R4 K12 ["Operations"]
       31 GETTABLEKS                       R4 R4 K13 ["DrawOperation"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K10 ["Src"]
       38 GETTABLEKS                       R5 R5 K14 ["Types"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K15 ["BrushMode"]
       43 GETTABLEKS                       R6 R4 K16 ["BrushSettings"]
       45 GETTABLEKS                       R7 R4 K17 ["BrushShape"]
       47 GETTABLEKS                       R8 R4 K18 ["Category"]
       49 GETTABLEKS                       R9 R4 K19 ["Gizmo"]
       51 GETTABLEKS                       R10 R4 K20 ["MaterialSettings"]
       53 GETTABLEKS                       R11 R4 K21 ["PivotPosition"]
       55 GETTABLEKS                       R12 R4 K22 ["PlaneLock"]
       57 GETTABLEKS                       R13 R4 K23 ["Snapping"]
       59 GETTABLEKS                       R14 R4 K24 ["Tab"]
       61 GETTABLEKS                       R15 R4 K25 ["Tool"]
       63 GETIMPORT                        R16 K5 [require]
       65 GETTABLEKS                       R17 R0 K10 ["Src"]
       67 GETTABLEKS                       R17 R17 K11 ["Util"]
       69 GETTABLEKS                       R17 R17 K26 ["AnalyticsHelper"]
       71 CALL                             R16 1 1
       72 GETIMPORT                        R17 K5 [require]
       74 GETTABLEKS                       R18 R0 K10 ["Src"]
       76 GETTABLEKS                       R18 R18 K11 ["Util"]
       78 GETTABLEKS                       R18 R18 K27 ["getPlaneFromCamera"]
       80 CALL                             R17 1 1
       81 GETIMPORT                        R18 K5 [require]
       83 GETTABLEKS                       R19 R0 K10 ["Src"]
       85 GETTABLEKS                       R19 R19 K11 ["Util"]
       87 GETTABLEKS                       R19 R19 K28 ["SettingsHelper"]
       89 CALL                             R18 1 1
       90 NEWTABLE                         R19 0 2
       92 DUPTABLE                         R20 K31 [{"Defaults", "Id"}]
       93 NEWTABLE                         R21 16 0
       95 GETTABLEKS                       R22 R6 K15 ["BrushMode"]
       97 GETTABLEKS                       R23 R5 K32 ["Add"]
       99 SETTABLE                         R23 R21 R22
      100 GETTABLEKS                       R22 R6 K17 ["BrushShape"]
      102 GETTABLEKS                       R23 R7 K33 ["Sphere"]
      104 SETTABLE                         R23 R21 R22
      105 GETTABLEKS                       R22 R6 K34 ["BrushSize"]
      107 DUPTABLE                         R23 K40 [{["Height"] = 6, ["Locked"] = True, ["Size"] = 6}]
      108 SETTABLE                         R23 R21 R22
      109 GETTABLEKS                       R22 R6 K21 ["PivotPosition"]
      111 GETTABLEKS                       R23 R11 K41 ["Center"]
      113 SETTABLE                         R23 R21 R22
      114 GETTABLEKS                       R22 R6 K23 ["Snapping"]
      116 GETTABLEKS                       R23 R13 K42 ["Off"]
      118 SETTABLE                         R23 R21 R22
      119 GETTABLEKS                       R22 R6 K43 ["State"]
      121 DUPTABLE                         R23 K46 [{["Position"] = {0, 0, 0}}]
      122 SETTABLE                         R23 R21 R22
      123 GETTABLEKS                       R22 R6 K47 ["IgnoreWater"]
      125 LOADB                            R23 0
      126 SETTABLE                         R23 R21 R22
      127 GETTABLEKS                       R22 R6 K48 ["IgnoreParts"]
      129 LOADB                            R23 1
      130 SETTABLE                         R23 R21 R22
      131 GETTABLEKS                       R22 R6 K49 ["TemporarySmooth"]
      133 LOADB                            R23 0
      134 SETTABLE                         R23 R21 R22
      135 GETTABLEKS                       R22 R6 K50 ["WaterAutofill"]
      137 LOADB                            R23 0
      138 SETTABLE                         R23 R21 R22
      139 SETTABLEKS                       R21 R20 K29 ["Defaults"]
      141 GETTABLEKS                       R21 R8 K16 ["BrushSettings"]
      143 SETTABLEKS                       R21 R20 K30 ["Id"]
      145 DUPTABLE                         R21 K31 [{"Defaults", "Id"}]
      146 NEWTABLE                         R22 2 0
      148 GETTABLEKS                       R23 R10 K51 ["AutoMaterial"]
      150 LOADB                            R24 0
      151 SETTABLE                         R24 R22 R23
      152 GETTABLEKS                       R23 R10 K52 ["SourceMaterial"]
      154 GETIMPORT                        R24 K56 [Enum.Material.Grass]
      156 SETTABLE                         R24 R22 R23
      157 SETTABLEKS                       R22 R21 K29 ["Defaults"]
      159 GETTABLEKS                       R22 R8 K20 ["MaterialSettings"]
      161 SETTABLEKS                       R22 R21 K30 ["Id"]
      163 SETLIST                          R19 R20 2 [1]
      165 NEWTABLE                         R20 0 2
      167 DUPTABLE                         R21 K58 [{"Id", "Schema"}]
      168 GETTABLEKS                       R22 R9 K59 ["Plane"]
      170 SETTABLEKS                       R22 R21 K30 ["Id"]
      172 DUPTABLE                         R22 K61 [{"Type"}]
      173 GETTABLEKS                       R23 R9 K59 ["Plane"]
      175 SETTABLEKS                       R23 R22 K60 ["Type"]
      177 SETTABLEKS                       R22 R21 K57 ["Schema"]
      179 DUPTABLE                         R22 K58 [{"Id", "Schema"}]
      180 GETTABLEKS                       R23 R9 K62 ["Brush"]
      182 SETTABLEKS                       R23 R22 K30 ["Id"]
      184 DUPTABLE                         R23 K61 [{"Type"}]
      185 GETTABLEKS                       R24 R9 K62 ["Brush"]
      187 SETTABLEKS                       R24 R23 K60 ["Type"]
      189 SETTABLEKS                       R23 R22 K57 ["Schema"]
      191 SETLIST                          R20 R21 2 [1]
      193 GETTABLEKS                       R23 R15 K63 ["Draw"]
      195 GETTABLEKS                       R24 R14 K64 ["Edit"]
      197 MOVE                             R25 R19
      198 MOVE                             R26 R20
      199 NAMECALL                         R21 R2 K65 ["new"]
      201 CALL                             R21 5 1
      202 DUPCLOSURE                       R22 K66 [PROTO_2]
      203 CAPTURE                          VAL R2
      204 CAPTURE                          VAL R8
      205 CAPTURE                          VAL R6
      206 CAPTURE                          VAL R18
      207 CAPTURE                          VAL R17
      208 SETTABLEKS                       R22 R21 K67 ["init"]
      210 DUPCLOSURE                       R22 K68 [PROTO_3]
      211 CAPTURE                          VAL R2
      212 SETTABLEKS                       R22 R21 K69 ["saveForm"]
      214 DUPCLOSURE                       R22 K70 [PROTO_4]
      215 CAPTURE                          VAL R2
      216 SETTABLEKS                       R22 R21 K71 ["saveGizmos"]
      218 DUPCLOSURE                       R22 K72 [PROTO_5]
      219 CAPTURE                          VAL R3
      220 CAPTURE                          VAL R1
      221 SETTABLEKS                       R22 R21 K73 ["startOperation"]
      223 DUPCLOSURE                       R22 K74 [PROTO_8]
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R8
      226 CAPTURE                          VAL R6
      227 CAPTURE                          VAL R12
      228 CAPTURE                          VAL R15
      229 SETTABLEKS                       R22 R21 K75 ["activate"]
      231 DUPCLOSURE                       R22 K76 [PROTO_9]
      232 CAPTURE                          VAL R2
      233 SETTABLEKS                       R22 R21 K77 ["deactivate"]
      235 DUPCLOSURE                       R22 K78 [PROTO_10]
      236 CAPTURE                          VAL R16
      237 CAPTURE                          VAL R15
      238 SETTABLEKS                       R22 R21 K79 ["reportAnalytics"]
      240 RETURN                           R21 1
