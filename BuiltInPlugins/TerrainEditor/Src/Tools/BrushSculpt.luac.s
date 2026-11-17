PROTO_0:
        0 NEWTABLE                         R4 1 0
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K0 ["MaterialSettings"]
        5 NEWTABLE                         R6 1 0
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K1 ["SourceMaterialSlot"]
       10 SETTABLE                         R1 R6 R7
       11 SETTABLE                         R6 R4 R5
       12 NAMECALL                         R2 R0 K2 ["setPayload"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["ensure"]
        6 GETTABLEKS                       R2 R0 K1 ["_pluginController"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["MaterialSettings"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K3 ["SourceMaterialSlot"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 GETIMPORT                        R1 K2 [task.spawn]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_pluginController"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["MaterialSettings"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K2 ["SourceMaterialSlot"]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K3 ["PlacePersistent"]
       12 NAMECALL                         R0 R0 K4 ["clearGlobal"]
       14 CALL                             R0 4 0
       15 GETIMPORT                        R0 K7 [task.spawn]
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          UPVAL U0
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["ensure"]
        7 GETTABLEKS                       R3 R1 K1 ["_pluginController"]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K2 ["MaterialSettings"]
       12 GETUPVAL                         R5 4
       13 GETTABLEKS                       R5 R5 K3 ["SourceMaterialSlot"]
       15 CALL                             R2 3 0
       16 GETUPVAL                         R2 0
       17 NAMECALL                         R2 R2 K4 ["getPayload"]
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K2 ["MaterialSettings"]
       23 GETTABLE                         R1 R2 R3
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K5 ["_terrainMaterialPickerRequester"]
       27 DUPTABLE                         R4 K14 [{["allowAir"] = False, ["allowInvalidSource"] = False, ["allowWater"] = True, ["anchorWidgetUri"], ["invalidSourceSelected"] = False, ["selectedSlotIndex"]}]
       28 SETTABLEKS                       R0 R4 K11 ["anchorWidgetUri"]
       30 GETUPVAL                         R6 4
       31 GETTABLEKS                       R6 R6 K3 ["SourceMaterialSlot"]
       33 GETTABLE                         R5 R1 R6
       34 SETTABLEKS                       R5 R4 K13 ["selectedSlotIndex"]
       36 NAMECALL                         R2 R2 K15 ["request"]
       38 CALL                             R2 2 0
       39 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 GETTABLEKS                       R3 R0 K1 ["_terrainMaterialPickerRequester"]
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETTABLEKS                       R3 R0 K1 ["_terrainMaterialPickerRequester"]
       12 NAMECALL                         R3 R3 K2 ["destroy"]
       14 CALL                             R3 1 0
       15 LOADNIL                          R3
       16 SETTABLEKS                       R3 R0 K1 ["_terrainMaterialPickerRequester"]
       18 LOADNIL                          R3
       19 GETUPVAL                         R4 1
       20 CALL                             R4 0 1
       21 JUMPIFNOT                        R4 ; [+53]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K3 ["new"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R0
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R0 K1 ["_terrainMaterialPickerRequester"]
       31 DUPTABLE                         R4 K14 [{["DataId"], ["UseDataIdValueOnly"] = True, ["ValueWhenNil"] = False, ["Height"] = 24, ["Label"], ["Layout"], ["Schema"]}]
       32 GETUPVAL                         R5 4
       33 GETTABLEKS                       R5 R5 K15 ["SourceMaterialSlot"]
       35 SETTABLEKS                       R5 R4 K4 ["DataId"]
       37 GETTABLEKS                       R5 R0 K16 ["_localization"]
       39 LOADK                            R7 K17 ["Brush"]
       40 LOADK                            R8 K18 ["Material"]
       41 NAMECALL                         R5 R5 K19 ["getText"]
       43 CALL                             R5 3 1
       44 SETTABLEKS                       R5 R4 K11 ["Label"]
       46 GETIMPORT                        R5 K23 [Enum.FillDirection.Horizontal]
       48 SETTABLEKS                       R5 R4 K12 ["Layout"]
       50 DUPTABLE                         R5 K32 [{["AllowAir"] = False, ["AllowWater"] = True, ["OnClear"], ["OnActivated"], ["PickerId"] = "Sculpt/SourceMaterial", ["Type"] = "TerrainMaterialPicker"}]
       51 NEWCLOSURE                       R6 P1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U6
       56 SETTABLEKS                       R6 R5 K26 ["OnClear"]
       58 NEWCLOSURE                       R6 P2
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          UPVAL U4
       64 SETTABLEKS                       R6 R5 K27 ["OnActivated"]
       66 SETTABLEKS                       R5 R4 K13 ["Schema"]
       68 NEWTABLE                         R5 1 0
       70 GETUPVAL                         R6 4
       71 GETTABLEKS                       R6 R6 K33 ["SourceMaterial"]
       73 SETTABLE                         R4 R5 R6
       74 MOVE                             R3 R5
       75 NEWTABLE                         R4 2 0
       77 GETUPVAL                         R5 5
       78 GETTABLEKS                       R5 R5 K34 ["BrushSettings"]
       80 NEWTABLE                         R6 1 0
       82 GETUPVAL                         R7 8
       83 GETTABLEKS                       R7 R7 K35 ["ManualPlaneLock"]
       85 DUPTABLE                         R8 K36 [{"Schema"}]
       86 DUPTABLE                         R9 K38 [{"OnReset"}]
       87 NEWCLOSURE                       R10 P3
       88 CAPTURE                          UPVAL U9
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U8
       92 CAPTURE                          UPVAL U10
       93 SETTABLEKS                       R10 R9 K37 ["OnReset"]
       95 SETTABLEKS                       R9 R8 K13 ["Schema"]
       97 SETTABLE                         R8 R6 R7
       98 SETTABLE                         R6 R4 R5
       99 GETUPVAL                         R5 5
      100 GETTABLEKS                       R5 R5 K39 ["MaterialSettings"]
      102 SETTABLE                         R3 R4 R5
      103 SETTABLEKS                       R4 R0 K40 ["_overrides"]
      105 LOADN                            R4 0
      106 SETTABLEKS                       R4 R0 K41 ["_brushTime"]
      108 LOADN                            R4 0
      109 SETTABLEKS                       R4 R0 K42 ["_brushUsages"]
      111 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["saveGizmos"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R0 K1 ["_operation"]
        8 JUMPIFNOT                        R3 ; [+8]
        9 GETTABLEKS                       R3 R0 K1 ["_operation"]
       11 NAMECALL                         R5 R0 K2 ["getPayload"]
       13 CALL                             R5 1 -1
       14 NAMECALL                         R3 R3 K3 ["updatePayload"]
       16 CALL                             R3 -1 0
       17 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Sculpt"]
        2 GETTABLEKS                       R4 R0 K1 ["_services"]
        4 CALL                             R2 2 1
        5 SETTABLEKS                       R2 R0 K2 ["_operation"]
        7 GETTABLEKS                       R4 R0 K2 ["_operation"]
        9 NAMECALL                         R5 R0 K3 ["getPayload"]
       11 CALL                             R5 1 1
       12 MOVE                             R6 R1
       13 NAMECALL                         R2 R0 K4 ["startMaterialOperation"]
       15 CALL                             R2 4 0
       16 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["ensure"]
        6 GETTABLEKS                       R2 R0 K1 ["_pluginController"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["MaterialSettings"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K3 ["SourceMaterialSlot"]
       14 CALL                             R1 3 0
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K4 ["activate"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R1 R0 K5 ["_shortcutController"]
       22 NAMECALL                         R1 R1 K6 ["getMouse"]
       24 CALL                             R1 1 1
       25 GETTABLEKS                       R2 R0 K5 ["_shortcutController"]
       27 GETTABLEKS                       R2 R2 K7 ["MouseDownAction"]
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 NAMECALL                         R2 R2 K8 ["Connect"]
       36 CALL                             R2 2 1
       37 SETTABLEKS                       R2 R0 K9 ["_mouseDownConnection"]
       39 GETTABLEKS                       R2 R1 K10 ["Button1Up"]
       41 NEWCLOSURE                       R4 P1
       42 CAPTURE                          VAL R0
       43 NAMECALL                         R2 R2 K8 ["Connect"]
       45 CALL                             R2 2 1
       46 SETTABLEKS                       R2 R0 K11 ["_mouseUpConnection"]
       48 GETTABLEKS                       R2 R0 K12 ["_analytics"]
       50 LOADK                            R4 K13 ["Activated"]
       51 GETUPVAL                         R5 7
       52 GETTABLEKS                       R5 R5 K14 ["Sculpt"]
       54 NAMECALL                         R2 R2 K15 ["report"]
       56 CALL                             R2 3 0
       57 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_terrainMaterialPickerRequester"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_terrainMaterialPickerRequester"]
        5 NAMECALL                         R1 R1 K1 ["cancel"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["_mouseDownConnection"]
       10 NAMECALL                         R1 R1 K3 ["Disconnect"]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R1 R0 K4 ["_mouseUpConnection"]
       15 NAMECALL                         R1 R1 K3 ["Disconnect"]
       17 CALL                             R1 1 0
       18 GETTABLEKS                       R1 R0 K5 ["_operation"]
       20 JUMPIFNOT                        R1 ; [+41]
       21 GETTABLEKS                       R1 R0 K5 ["_operation"]
       23 NAMECALL                         R1 R1 K6 ["isRunning"]
       25 CALL                             R1 1 1
       26 JUMPIFNOT                        R1 ; [+35]
       27 GETTABLEKS                       R1 R0 K7 ["_brushUsages"]
       29 ADDK                             R1 R1 K8 [1]
       30 SETTABLEKS                       R1 R0 K7 ["_brushUsages"]
       32 GETTABLEKS                       R2 R0 K5 ["_operation"]
       34 NAMECALL                         R2 R2 K9 ["getCurrentTimeTaken"]
       36 CALL                             R2 1 1
       37 GETTABLEKS                       R3 R0 K5 ["_operation"]
       39 NAMECALL                         R3 R3 K10 ["getStepsTaken"]
       41 CALL                             R3 1 1
       42 DIV                              R1 R2 R3
       43 SETTABLEKS                       R1 R0 K11 ["_brushTime"]
       45 GETTABLEKS                       R1 R0 K5 ["_operation"]
       47 NAMECALL                         R1 R1 K12 ["getTimeStatistic"]
       49 CALL                             R1 1 1
       50 JUMPIFNOT                        R1 ; [+6]
       51 GETTABLEKS                       R4 R0 K14 ["_brushStatistic"]
       53 ORK                              R3 R4 K13 [0]
       54 ADD                              R2 R3 R1
       55 SETTABLEKS                       R2 R0 K14 ["_brushStatistic"]
       57 GETTABLEKS                       R2 R0 K5 ["_operation"]
       59 NAMECALL                         R2 R2 K15 ["destroy"]
       61 CALL                             R2 1 0
       62 GETUPVAL                         R1 0
       63 GETTABLEKS                       R1 R1 K16 ["deactivate"]
       65 MOVE                             R2 R0
       66 CALL                             R1 1 0
       67 RETURN                           R0 0

PROTO_17:
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
       21 GETTABLEKS                       R8 R8 K5 ["Sculpt"]
       23 CALL                             R5 3 -1
       24 NAMECALL                         R2 R2 K6 ["report"]
       26 CALL                             R2 -1 0
       27 GETTABLEKS                       R2 R0 K2 ["_analytics"]
       29 LOADK                            R4 K7 ["Usage"]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K5 ["Sculpt"]
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
       50 GETTABLEKS                       R5 R5 K5 ["Sculpt"]
       52 GETTABLEKS                       R7 R0 K9 ["_brushStatistic"]
       54 GETTABLEKS                       R8 R0 K8 ["_brushUsages"]
       56 DIV                              R6 R7 R8
       57 NAMECALL                         R2 R2 K6 ["report"]
       59 CALL                             R2 4 0
       60 LOADN                            R2 0
       61 SETTABLEKS                       R2 R0 K8 ["_brushUsages"]
       63 LOADN                            R2 0
       64 SETTABLEKS                       R2 R0 K1 ["_brushTime"]
       66 LOADN                            R2 0
       67 SETTABLEKS                       R2 R0 K9 ["_brushStatistic"]
       69 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["BaseTool"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["AnalyticsHelper"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["getPlaneFromCamera"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K8 ["Src"]
       38 GETTABLEKS                       R5 R5 K9 ["Util"]
       40 GETTABLEKS                       R5 R5 K12 ["Operations"]
       42 GETTABLEKS                       R5 R5 K13 ["SculptOperation"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K8 ["Src"]
       49 GETTABLEKS                       R6 R6 K9 ["Util"]
       51 GETTABLEKS                       R6 R6 K14 ["SettingsHelper"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K8 ["Src"]
       58 GETTABLEKS                       R7 R7 K9 ["Util"]
       60 GETTABLEKS                       R7 R7 K15 ["DefaultTerrainMaterialSlot"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K8 ["Src"]
       67 GETTABLEKS                       R8 R8 K9 ["Util"]
       69 GETTABLEKS                       R8 R8 K16 ["TerrainMaterialPickerRequester"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K8 ["Src"]
       76 GETTABLEKS                       R9 R9 K17 ["Flags"]
       78 GETTABLEKS                       R9 R9 K18 ["getFFlagEnableTerrainPalette"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K8 ["Src"]
       85 GETTABLEKS                       R10 R10 K19 ["Types"]
       87 CALL                             R9 1 1
       88 GETTABLEKS                       R10 R9 K20 ["BrushMode"]
       90 GETTABLEKS                       R11 R9 K21 ["BrushSettings"]
       92 GETTABLEKS                       R12 R9 K22 ["BrushShape"]
       94 GETTABLEKS                       R13 R9 K23 ["Category"]
       96 GETTABLEKS                       R14 R9 K24 ["Gizmo"]
       98 GETTABLEKS                       R15 R9 K25 ["PivotPosition"]
      100 GETTABLEKS                       R16 R9 K26 ["PlaneLock"]
      102 GETTABLEKS                       R17 R9 K27 ["MaterialSettings"]
      104 GETTABLEKS                       R18 R9 K28 ["Storage"]
      106 GETTABLEKS                       R19 R9 K29 ["Tab"]
      108 GETTABLEKS                       R20 R9 K30 ["Tool"]
      110 NEWTABLE                         R21 0 2
      112 DUPTABLE                         R22 K33 [{"Defaults", "Id"}]
      113 NEWTABLE                         R23 16 0
      115 GETTABLEKS                       R24 R11 K20 ["BrushMode"]
      117 GETTABLEKS                       R25 R10 K34 ["Add"]
      119 SETTABLE                         R25 R23 R24
      120 GETTABLEKS                       R24 R11 K22 ["BrushShape"]
      122 GETTABLEKS                       R25 R12 K35 ["Sphere"]
      124 SETTABLE                         R25 R23 R24
      125 GETTABLEKS                       R24 R11 K36 ["BrushSize"]
      127 DUPTABLE                         R25 K42 [{["Height"] = 6, ["Locked"] = True, ["Size"] = 6}]
      128 SETTABLE                         R25 R23 R24
      129 GETTABLEKS                       R24 R11 K25 ["PivotPosition"]
      131 GETTABLEKS                       R25 R15 K43 ["Center"]
      133 SETTABLE                         R25 R23 R24
      134 GETTABLEKS                       R24 R11 K44 ["Strength"]
      136 LOADN                            R25 1
      137 SETTABLE                         R25 R23 R24
      138 GETTABLEKS                       R24 R11 K45 ["State"]
      140 DUPTABLE                         R25 K48 [{["Position"] = {0, 0, 0}}]
      141 SETTABLE                         R25 R23 R24
      142 GETTABLEKS                       R24 R11 K49 ["IgnoreWater"]
      144 LOADB                            R25 0
      145 SETTABLE                         R25 R23 R24
      146 GETTABLEKS                       R24 R11 K50 ["IgnoreParts"]
      148 LOADB                            R25 1
      149 SETTABLE                         R25 R23 R24
      150 GETTABLEKS                       R24 R11 K51 ["TemporarySmooth"]
      152 LOADB                            R25 0
      153 SETTABLE                         R25 R23 R24
      154 GETTABLEKS                       R24 R11 K52 ["WaterAutofill"]
      156 LOADB                            R25 0
      157 SETTABLE                         R25 R23 R24
      158 SETTABLEKS                       R23 R22 K31 ["Defaults"]
      160 GETTABLEKS                       R23 R13 K21 ["BrushSettings"]
      162 SETTABLEKS                       R23 R22 K32 ["Id"]
      164 DUPTABLE                         R23 K33 [{"Defaults", "Id"}]
      165 NEWTABLE                         R24 2 0
      167 GETTABLEKS                       R25 R17 K53 ["AutoMaterial"]
      169 LOADB                            R26 0
      170 SETTABLE                         R26 R24 R25
      171 GETTABLEKS                       R25 R17 K54 ["SourceMaterial"]
      173 GETIMPORT                        R26 K58 [Enum.Material.Grass]
      175 SETTABLE                         R26 R24 R25
      176 SETTABLEKS                       R24 R23 K31 ["Defaults"]
      178 GETTABLEKS                       R24 R13 K27 ["MaterialSettings"]
      180 SETTABLEKS                       R24 R23 K32 ["Id"]
      182 SETLIST                          R21 R22 2 [1]
      184 NEWTABLE                         R22 0 2
      186 DUPTABLE                         R23 K60 [{"Id", "Schema"}]
      187 GETTABLEKS                       R24 R14 K61 ["Brush"]
      189 SETTABLEKS                       R24 R23 K32 ["Id"]
      191 DUPTABLE                         R24 K63 [{"Type"}]
      192 GETTABLEKS                       R25 R14 K61 ["Brush"]
      194 SETTABLEKS                       R25 R24 K62 ["Type"]
      196 SETTABLEKS                       R24 R23 K59 ["Schema"]
      198 DUPTABLE                         R24 K60 [{"Id", "Schema"}]
      199 GETTABLEKS                       R25 R14 K64 ["Plane"]
      201 SETTABLEKS                       R25 R24 K32 ["Id"]
      203 DUPTABLE                         R25 K63 [{"Type"}]
      204 GETTABLEKS                       R26 R14 K64 ["Plane"]
      206 SETTABLEKS                       R26 R25 K62 ["Type"]
      208 SETTABLEKS                       R25 R24 K59 ["Schema"]
      210 SETLIST                          R22 R23 2 [1]
      212 GETTABLEKS                       R25 R20 K65 ["Sculpt"]
      214 GETTABLEKS                       R26 R19 K66 ["Edit"]
      216 MOVE                             R27 R21
      217 MOVE                             R28 R22
      218 NAMECALL                         R23 R1 K67 ["new"]
      220 CALL                             R23 5 1
      221 DUPCLOSURE                       R24 K68 [PROTO_0]
      222 CAPTURE                          VAL R13
      223 CAPTURE                          VAL R17
      224 DUPCLOSURE                       R25 K69 [PROTO_1]
      225 CAPTURE                          VAL R8
      226 CAPTURE                          VAL R6
      227 CAPTURE                          VAL R13
      228 CAPTURE                          VAL R17
      229 DUPCLOSURE                       R26 K70 [PROTO_9]
      230 CAPTURE                          VAL R1
      231 CAPTURE                          VAL R8
      232 CAPTURE                          VAL R7
      233 CAPTURE                          VAL R24
      234 CAPTURE                          VAL R17
      235 CAPTURE                          VAL R13
      236 CAPTURE                          VAL R18
      237 CAPTURE                          VAL R6
      238 CAPTURE                          VAL R11
      239 CAPTURE                          VAL R5
      240 CAPTURE                          VAL R3
      241 SETTABLEKS                       R26 R23 K71 ["init"]
      243 DUPCLOSURE                       R26 K72 [PROTO_10]
      244 CAPTURE                          VAL R1
      245 SETTABLEKS                       R26 R23 K73 ["saveForm"]
      247 DUPCLOSURE                       R26 K74 [PROTO_11]
      248 CAPTURE                          VAL R1
      249 SETTABLEKS                       R26 R23 K75 ["saveGizmos"]
      251 DUPCLOSURE                       R26 K76 [PROTO_12]
      252 CAPTURE                          VAL R4
      253 SETTABLEKS                       R26 R23 K77 ["startOperation"]
      255 DUPCLOSURE                       R26 K78 [PROTO_15]
      256 CAPTURE                          VAL R8
      257 CAPTURE                          VAL R6
      258 CAPTURE                          VAL R13
      259 CAPTURE                          VAL R17
      260 CAPTURE                          VAL R1
      261 CAPTURE                          VAL R11
      262 CAPTURE                          VAL R16
      263 CAPTURE                          VAL R20
      264 SETTABLEKS                       R26 R23 K79 ["activate"]
      266 DUPCLOSURE                       R26 K80 [PROTO_16]
      267 CAPTURE                          VAL R1
      268 SETTABLEKS                       R26 R23 K81 ["deactivate"]
      270 DUPCLOSURE                       R26 K82 [PROTO_17]
      271 CAPTURE                          VAL R2
      272 CAPTURE                          VAL R20
      273 SETTABLEKS                       R26 R23 K83 ["reportToolAnalytics"]
      275 RETURN                           R23 1
