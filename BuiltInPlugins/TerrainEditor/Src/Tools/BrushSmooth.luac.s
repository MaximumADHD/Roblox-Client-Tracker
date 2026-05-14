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
        1 LOADK                            R3 K0 ["Smooth"]
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
       37 GETTABLEKS                       R5 R5 K10 ["Smooth"]
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
        5 JUMPIFNOT                        R2 ; [+49]
        6 GETTABLEKS                       R2 R0 K2 ["_analytics"]
        8 LOADK                            R4 K3 ["BrushProperties"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K4 ["getBrushPayload"]
       12 MOVE                             R6 R1
       13 GETTABLEKS                       R7 R0 K1 ["_brushTime"]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K5 ["Smooth"]
       18 CALL                             R5 3 -1
       19 NAMECALL                         R2 R2 K6 ["report"]
       21 CALL                             R2 -1 0
       22 GETTABLEKS                       R2 R0 K2 ["_analytics"]
       24 LOADK                            R4 K7 ["Usage"]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K5 ["Smooth"]
       28 GETTABLEKS                       R6 R0 K8 ["_brushUsages"]
       30 NAMECALL                         R2 R2 K6 ["report"]
       32 CALL                             R2 4 0
       33 GETTABLEKS                       R2 R0 K9 ["_brushStatistic"]
       35 JUMPIFNOT                        R2 ; [+19]
       36 GETTABLEKS                       R2 R0 K8 ["_brushUsages"]
       38 LOADN                            R3 0
       39 JUMPIFNOTLT                      R3 R2 ; [+15]
       41 GETTABLEKS                       R2 R0 K2 ["_analytics"]
       43 LOADK                            R4 K10 ["Performance"]
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R5 R5 K5 ["Smooth"]
       47 GETTABLEKS                       R7 R0 K9 ["_brushStatistic"]
       49 GETTABLEKS                       R8 R0 K8 ["_brushUsages"]
       51 DIV                              R6 R7 R8
       52 NAMECALL                         R2 R2 K6 ["report"]
       54 CALL                             R2 4 0
       55 LOADN                            R2 0
       56 SETTABLEKS                       R2 R0 K8 ["_brushUsages"]
       58 LOADN                            R2 0
       59 SETTABLEKS                       R2 R0 K1 ["_brushTime"]
       61 LOADN                            R2 0
       62 SETTABLEKS                       R2 R0 K9 ["_brushStatistic"]
       64 RETURN                           R0 0

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
       49 GETTABLEKS                       R6 R6 K15 ["SmoothOperation"]
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
       76 GETTABLEKS                       R12 R7 K22 ["PivotPosition"]
       78 GETTABLEKS                       R13 R7 K23 ["PlaneLock"]
       80 GETTABLEKS                       R14 R7 K24 ["Snapping"]
       82 GETTABLEKS                       R15 R7 K25 ["Tab"]
       84 GETTABLEKS                       R16 R7 K26 ["Tool"]
       86 NEWTABLE                         R17 0 1
       88 DUPTABLE                         R18 K29 [{"Defaults", "Id"}]
       89 NEWTABLE                         R19 8 0
       91 GETTABLEKS                       R20 R8 K19 ["BrushShape"]
       93 GETTABLEKS                       R21 R9 K30 ["Sphere"]
       95 SETTABLE                         R21 R19 R20
       96 GETTABLEKS                       R20 R8 K31 ["BrushSize"]
       98 DUPTABLE                         R21 K35 [{"Height", "Locked", "Size"}]
       99 LOADN                            R22 6
      100 SETTABLEKS                       R22 R21 K32 ["Height"]
      102 LOADB                            R22 1
      103 SETTABLEKS                       R22 R21 K33 ["Locked"]
      105 LOADN                            R22 6
      106 SETTABLEKS                       R22 R21 K34 ["Size"]
      108 SETTABLE                         R21 R19 R20
      109 GETTABLEKS                       R20 R8 K36 ["Strength"]
      111 LOADN                            R21 1
      112 SETTABLE                         R21 R19 R20
      113 GETTABLEKS                       R20 R8 K22 ["PivotPosition"]
      115 GETTABLEKS                       R21 R12 K37 ["Center"]
      117 SETTABLE                         R21 R19 R20
      118 GETTABLEKS                       R20 R8 K24 ["Snapping"]
      120 GETTABLEKS                       R21 R14 K38 ["Off"]
      122 SETTABLE                         R21 R19 R20
      123 GETTABLEKS                       R20 R8 K39 ["State"]
      125 DUPTABLE                         R21 K41 [{"Position"}]
      126 LOADK                            R22 K42 [{0, 0, 0}]
      127 SETTABLEKS                       R22 R21 K40 ["Position"]
      129 SETTABLE                         R21 R19 R20
      130 GETTABLEKS                       R20 R8 K43 ["IgnoreWater"]
      132 LOADB                            R21 0
      133 SETTABLE                         R21 R19 R20
      134 GETTABLEKS                       R20 R8 K44 ["IgnoreParts"]
      136 LOADB                            R21 1
      137 SETTABLE                         R21 R19 R20
      138 SETTABLEKS                       R19 R18 K27 ["Defaults"]
      140 GETTABLEKS                       R19 R10 K18 ["BrushSettings"]
      142 SETTABLEKS                       R19 R18 K28 ["Id"]
      144 SETLIST                          R17 R18 1 [1]
      146 NEWTABLE                         R18 0 2
      148 DUPTABLE                         R19 K46 [{"Id", "Schema"}]
      149 GETTABLEKS                       R20 R11 K47 ["Brush"]
      151 SETTABLEKS                       R20 R19 K28 ["Id"]
      153 DUPTABLE                         R20 K49 [{"Type"}]
      154 GETTABLEKS                       R21 R11 K47 ["Brush"]
      156 SETTABLEKS                       R21 R20 K48 ["Type"]
      158 SETTABLEKS                       R20 R19 K45 ["Schema"]
      160 DUPTABLE                         R20 K46 [{"Id", "Schema"}]
      161 GETTABLEKS                       R21 R11 K50 ["Plane"]
      163 SETTABLEKS                       R21 R20 K28 ["Id"]
      165 DUPTABLE                         R21 K49 [{"Type"}]
      166 GETTABLEKS                       R22 R11 K50 ["Plane"]
      168 SETTABLEKS                       R22 R21 K48 ["Type"]
      170 SETTABLEKS                       R21 R20 K45 ["Schema"]
      172 SETLIST                          R18 R19 2 [1]
      174 GETTABLEKS                       R21 R16 K51 ["Smooth"]
      176 GETTABLEKS                       R22 R15 K52 ["Edit"]
      178 MOVE                             R23 R17
      179 MOVE                             R24 R18
      180 NAMECALL                         R19 R2 K53 ["new"]
      182 CALL                             R19 5 1
      183 DUPCLOSURE                       R20 K54 [PROTO_2]
      184 CAPTURE                          VAL R2
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R6
      188 CAPTURE                          VAL R4
      189 SETTABLEKS                       R20 R19 K55 ["init"]
      191 DUPCLOSURE                       R20 K56 [PROTO_3]
      192 CAPTURE                          VAL R2
      193 SETTABLEKS                       R20 R19 K57 ["saveForm"]
      195 DUPCLOSURE                       R20 K58 [PROTO_4]
      196 CAPTURE                          VAL R2
      197 SETTABLEKS                       R20 R19 K59 ["saveGizmos"]
      199 DUPCLOSURE                       R20 K60 [PROTO_5]
      200 CAPTURE                          VAL R5
      201 CAPTURE                          VAL R1
      202 SETTABLEKS                       R20 R19 K61 ["startOperation"]
      204 DUPCLOSURE                       R20 K62 [PROTO_8]
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R16
      210 SETTABLEKS                       R20 R19 K63 ["activate"]
      212 DUPCLOSURE                       R20 K64 [PROTO_9]
      213 CAPTURE                          VAL R2
      214 SETTABLEKS                       R20 R19 K65 ["deactivate"]
      216 DUPCLOSURE                       R20 K66 [PROTO_10]
      217 CAPTURE                          VAL R3
      218 CAPTURE                          VAL R16
      219 SETTABLEKS                       R20 R19 K67 ["reportAnalytics"]
      221 RETURN                           R19 1
