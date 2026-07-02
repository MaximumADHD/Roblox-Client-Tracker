PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 NEWTABLE                         R3 1 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K1 ["BrushSettings"]
       12 NEWTABLE                         R5 2 0
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K2 ["PlaneLock"]
       17 DUPTABLE                         R7 K5 [{["Hidden"] = True}]
       18 SETTABLE                         R7 R5 R6
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K6 ["ManualPlaneLock"]
       22 DUPTABLE                         R7 K5 [{["Hidden"] = True}]
       23 SETTABLE                         R7 R5 R6
       24 SETTABLE                         R5 R3 R4
       25 SETTABLEKS                       R3 R0 K7 ["_overrides"]
       27 LOADN                            R3 0
       28 SETTABLEKS                       R3 R0 K8 ["_brushUsages"]
       30 LOADN                            R3 0
       31 SETTABLEKS                       R3 R0 K9 ["_brushTime"]
       33 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Flatten"]
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["startOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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
       16 NAMECALL                         R2 R2 K4 ["Connect"]
       18 CALL                             R2 2 1
       19 SETTABLEKS                       R2 R0 K5 ["_mouseDownConnection"]
       21 GETTABLEKS                       R2 R1 K6 ["Button1Up"]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R2 R2 K4 ["Connect"]
       27 CALL                             R2 2 1
       28 SETTABLEKS                       R2 R0 K7 ["_mouseUpConnection"]
       30 GETTABLEKS                       R2 R0 K8 ["_analytics"]
       32 LOADK                            R4 K9 ["Activated"]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K10 ["Flatten"]
       36 NAMECALL                         R2 R2 K11 ["report"]
       38 CALL                             R2 3 0
       39 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_mouseDownConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["_mouseUpConnection"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K3 ["_operation"]
       12 JUMPIFNOT                        R1 ; [+44]
       13 GETTABLEKS                       R1 R0 K3 ["_operation"]
       15 NAMECALL                         R1 R1 K4 ["isRunning"]
       17 CALL                             R1 1 1
       18 JUMPIFNOT                        R1 ; [+38]
       19 GETTABLEKS                       R1 R0 K5 ["_brushUsages"]
       21 ADDK                             R1 R1 K6 [1]
       22 SETTABLEKS                       R1 R0 K5 ["_brushUsages"]
       24 GETTABLEKS                       R1 R0 K7 ["_brushTime"]
       26 GETTABLEKS                       R3 R0 K3 ["_operation"]
       28 NAMECALL                         R3 R3 K8 ["getCurrentTimeTaken"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R0 K3 ["_operation"]
       33 NAMECALL                         R4 R4 K9 ["getStepsTaken"]
       35 CALL                             R4 1 1
       36 DIV                              R2 R3 R4
       37 ADD                              R1 R1 R2
       38 SETTABLEKS                       R1 R0 K7 ["_brushTime"]
       40 GETTABLEKS                       R1 R0 K3 ["_operation"]
       42 NAMECALL                         R1 R1 K10 ["getTimeStatistic"]
       44 CALL                             R1 1 1
       45 JUMPIFNOT                        R1 ; [+6]
       46 GETTABLEKS                       R4 R0 K12 ["_brushStatistic"]
       48 ORK                              R3 R4 K11 [0]
       49 ADD                              R2 R3 R1
       50 SETTABLEKS                       R2 R0 K12 ["_brushStatistic"]
       52 GETTABLEKS                       R2 R0 K3 ["_operation"]
       54 NAMECALL                         R2 R2 K13 ["destroy"]
       56 CALL                             R2 1 0
       57 GETUPVAL                         R1 0
       58 GETTABLEKS                       R1 R1 K14 ["deactivate"]
       60 MOVE                             R2 R0
       61 CALL                             R1 1 0
       62 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["getPayload"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R0 K1 ["_brushTime"]
        5 JUMPIFNOT                        R2 ; [+54]
        6 GETTABLEKS                       R2 R0 K1 ["_brushTime"]
        8 LOADN                            R3 0
        9 JUMPIFNOTLT                      R3 R2 ; [+50]
       11 GETTABLEKS                       R2 R0 K2 ["_analytics"]
       13 LOADK                            R4 K3 ["BrushProperties"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["getBrushPayload"]
       17 MOVE                             R6 R1
       18 GETTABLEKS                       R7 R0 K1 ["_brushTime"]
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K5 ["Flatten"]
       23 CALL                             R5 3 -1
       24 NAMECALL                         R2 R2 K6 ["report"]
       26 CALL                             R2 -1 0
       27 GETTABLEKS                       R2 R0 K2 ["_analytics"]
       29 LOADK                            R4 K7 ["Usage"]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K5 ["Flatten"]
       33 GETTABLEKS                       R6 R0 K8 ["_brushUsages"]
       35 NAMECALL                         R2 R2 K6 ["report"]
       37 CALL                             R2 4 0
       38 GETTABLEKS                       R2 R0 K9 ["_brushStatistic"]
       40 JUMPIFNOT                        R2 ; [+19]
       41 GETTABLEKS                       R2 R0 K8 ["_brushUsages"]
       43 LOADN                            R3 0
       44 JUMPIFNOTLT                      R3 R2 ; [+15]
       46 GETTABLEKS                       R2 R0 K2 ["_analytics"]
       48 LOADK                            R4 K10 ["Performance"]
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K5 ["Flatten"]
       52 GETTABLEKS                       R7 R0 K9 ["_brushStatistic"]
       54 GETTABLEKS                       R8 R0 K8 ["_brushUsages"]
       56 DIV                              R6 R7 R8
       57 NAMECALL                         R2 R2 K6 ["report"]
       59 CALL                             R2 4 0
       60 LOADN                            R2 0
       61 SETTABLEKS                       R2 R0 K9 ["_brushStatistic"]
       63 LOADN                            R2 0
       64 SETTABLEKS                       R2 R0 K8 ["_brushUsages"]
       66 LOADN                            R2 0
       67 SETTABLEKS                       R2 R0 K1 ["_brushTime"]
       69 RETURN                           R0 0

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
       38 GETTABLEKS                       R5 R5 K13 ["Operations"]
       40 GETTABLEKS                       R5 R5 K14 ["FlattenOperation"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K10 ["Src"]
       47 GETTABLEKS                       R6 R6 K15 ["Types"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R5 K16 ["BrushSettings"]
       52 GETTABLEKS                       R7 R5 K17 ["BrushShape"]
       54 GETTABLEKS                       R8 R5 K18 ["Category"]
       56 GETTABLEKS                       R9 R5 K19 ["FlattenMode"]
       58 GETTABLEKS                       R10 R5 K20 ["FlattenPlane"]
       60 GETTABLEKS                       R11 R5 K21 ["Gizmo"]
       62 GETTABLEKS                       R12 R5 K22 ["PivotPosition"]
       64 GETTABLEKS                       R13 R5 K23 ["Snapping"]
       66 GETTABLEKS                       R14 R5 K24 ["Tab"]
       68 GETTABLEKS                       R15 R5 K25 ["Tool"]
       70 NEWTABLE                         R16 0 1
       72 DUPTABLE                         R17 K28 [{"Defaults", "Id"}]
       73 NEWTABLE                         R18 16 0
       75 GETTABLEKS                       R19 R6 K17 ["BrushShape"]
       77 GETTABLEKS                       R20 R7 K29 ["Sphere"]
       79 SETTABLE                         R20 R18 R19
       80 GETTABLEKS                       R19 R6 K30 ["BrushSize"]
       82 DUPTABLE                         R20 K36 [{["Height"] = 6, ["Locked"] = True, ["Size"] = 6}]
       83 SETTABLE                         R20 R18 R19
       84 GETTABLEKS                       R19 R6 K37 ["Strength"]
       86 LOADN                            R20 1
       87 SETTABLE                         R20 R18 R19
       88 GETTABLEKS                       R19 R6 K38 ["FixedYPlane"]
       90 LOADN                            R20 0
       91 SETTABLE                         R20 R18 R19
       92 GETTABLEKS                       R19 R6 K19 ["FlattenMode"]
       94 GETTABLEKS                       R20 R9 K39 ["Both"]
       96 SETTABLE                         R20 R18 R19
       97 GETTABLEKS                       R19 R6 K20 ["FlattenPlane"]
       99 GETTABLEKS                       R20 R10 K40 ["Auto"]
      101 SETTABLE                         R20 R18 R19
      102 GETTABLEKS                       R19 R6 K22 ["PivotPosition"]
      104 GETTABLEKS                       R20 R12 K41 ["Center"]
      106 SETTABLE                         R20 R18 R19
      107 GETTABLEKS                       R19 R6 K23 ["Snapping"]
      109 GETTABLEKS                       R20 R13 K42 ["Off"]
      111 SETTABLE                         R20 R18 R19
      112 GETTABLEKS                       R19 R6 K43 ["State"]
      114 DUPTABLE                         R20 K46 [{["Position"] = {0, 0, 0}}]
      115 SETTABLE                         R20 R18 R19
      116 GETTABLEKS                       R19 R6 K47 ["IgnoreWater"]
      118 LOADB                            R20 0
      119 SETTABLE                         R20 R18 R19
      120 GETTABLEKS                       R19 R6 K48 ["IgnoreParts"]
      122 LOADB                            R20 1
      123 SETTABLE                         R20 R18 R19
      124 GETTABLEKS                       R19 R6 K49 ["PullTerrain"]
      126 LOADB                            R20 1
      127 SETTABLE                         R20 R18 R19
      128 GETTABLEKS                       R19 R6 K50 ["WaterAutofill"]
      130 LOADB                            R20 0
      131 SETTABLE                         R20 R18 R19
      132 SETTABLEKS                       R18 R17 K26 ["Defaults"]
      134 GETTABLEKS                       R18 R8 K16 ["BrushSettings"]
      136 SETTABLEKS                       R18 R17 K27 ["Id"]
      138 SETLIST                          R16 R17 1 [1]
      140 NEWTABLE                         R17 0 2
      142 DUPTABLE                         R18 K52 [{"Id", "Schema"}]
      143 GETTABLEKS                       R19 R11 K53 ["Plane"]
      145 SETTABLEKS                       R19 R18 K27 ["Id"]
      147 DUPTABLE                         R19 K55 [{"Type"}]
      148 GETTABLEKS                       R20 R11 K53 ["Plane"]
      150 SETTABLEKS                       R20 R19 K54 ["Type"]
      152 SETTABLEKS                       R19 R18 K51 ["Schema"]
      154 DUPTABLE                         R19 K52 [{"Id", "Schema"}]
      155 GETTABLEKS                       R20 R11 K56 ["Brush"]
      157 SETTABLEKS                       R20 R19 K27 ["Id"]
      159 DUPTABLE                         R20 K55 [{"Type"}]
      160 GETTABLEKS                       R21 R11 K56 ["Brush"]
      162 SETTABLEKS                       R21 R20 K54 ["Type"]
      164 SETTABLEKS                       R20 R19 K51 ["Schema"]
      166 SETLIST                          R17 R18 2 [1]
      168 GETTABLEKS                       R20 R15 K57 ["Flatten"]
      170 GETTABLEKS                       R21 R14 K58 ["Edit"]
      172 MOVE                             R22 R16
      173 MOVE                             R23 R17
      174 NAMECALL                         R18 R2 K59 ["new"]
      176 CALL                             R18 5 1
      177 DUPCLOSURE                       R19 K60 [PROTO_0]
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R8
      180 CAPTURE                          VAL R6
      181 SETTABLEKS                       R19 R18 K61 ["init"]
      183 DUPCLOSURE                       R19 K62 [PROTO_1]
      184 CAPTURE                          VAL R2
      185 SETTABLEKS                       R19 R18 K63 ["saveForm"]
      187 DUPCLOSURE                       R19 K64 [PROTO_2]
      188 CAPTURE                          VAL R2
      189 SETTABLEKS                       R19 R18 K65 ["saveGizmos"]
      191 DUPCLOSURE                       R19 K66 [PROTO_3]
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R1
      194 SETTABLEKS                       R19 R18 K67 ["startOperation"]
      196 DUPCLOSURE                       R19 K68 [PROTO_6]
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R15
      199 SETTABLEKS                       R19 R18 K69 ["activate"]
      201 DUPCLOSURE                       R19 K70 [PROTO_7]
      202 CAPTURE                          VAL R2
      203 SETTABLEKS                       R19 R18 K71 ["deactivate"]
      205 DUPCLOSURE                       R19 K72 [PROTO_8]
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R15
      208 SETTABLEKS                       R19 R18 K73 ["reportAnalytics"]
      210 RETURN                           R18 1
