PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 1 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["MaterialSettings"]
        6 NEWTABLE                         R5 1 0
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K1 ["SourceMaterialSlot"]
       11 SETTABLE                         R0 R5 R6
       12 SETTABLE                         R5 R3 R4
       13 NAMECALL                         R1 R1 K2 ["setPayload"]
       15 CALL                             R1 2 0
       16 GETIMPORT                        R1 K5 [task.spawn]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["getPayload"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["MaterialSettings"]
        7 GETTABLE                         R1 R2 R3
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["_terrainMaterialPickerRequester"]
       11 DUPTABLE                         R4 K9 [{["allowAir"] = False, ["allowWater"] = True, ["anchorWidgetUri"], ["selectedSlotIndex"]}]
       12 SETTABLEKS                       R0 R4 K7 ["anchorWidgetUri"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K10 ["SourceMaterialSlot"]
       17 GETTABLE                         R5 R1 R6
       18 SETTABLEKS                       R5 R4 K8 ["selectedSlotIndex"]
       20 NAMECALL                         R2 R2 K11 ["request"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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
       21 JUMPIFNOT                        R4 ; [+52]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K3 ["new"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 CALL                             R4 1 1
       30 SETTABLEKS                       R4 R0 K1 ["_terrainMaterialPickerRequester"]
       32 DUPTABLE                         R4 K10 [{["DataId"], ["Height"] = 24, ["Label"], ["Layout"], ["Schema"]}]
       33 GETUPVAL                         R5 4
       34 GETTABLEKS                       R5 R5 K11 ["SourceMaterialSlot"]
       36 SETTABLEKS                       R5 R4 K4 ["DataId"]
       38 GETTABLEKS                       R5 R0 K12 ["_localization"]
       40 LOADK                            R7 K13 ["Brush"]
       41 LOADK                            R8 K14 ["Material"]
       42 NAMECALL                         R5 R5 K15 ["getText"]
       44 CALL                             R5 3 1
       45 SETTABLEKS                       R5 R4 K7 ["Label"]
       47 GETIMPORT                        R5 K19 [Enum.FillDirection.Horizontal]
       49 SETTABLEKS                       R5 R4 K8 ["Layout"]
       51 DUPTABLE                         R5 K30 [{["AllowAir"] = False, ["AllowWater"] = True, ["OnClear"], ["OnActivated"], ["PickerId"] = "Sculpt/SourceMaterial", ["Type"] = "TerrainMaterialPicker"}]
       52 NEWCLOSURE                       R6 P1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          UPVAL U5
       57 SETTABLEKS                       R6 R5 K24 ["OnClear"]
       59 NEWCLOSURE                       R6 P2
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          UPVAL U4
       63 SETTABLEKS                       R6 R5 K25 ["OnActivated"]
       65 SETTABLEKS                       R5 R4 K9 ["Schema"]
       67 NEWTABLE                         R5 1 0
       69 GETUPVAL                         R6 4
       70 GETTABLEKS                       R6 R6 K31 ["SourceMaterial"]
       72 SETTABLE                         R4 R5 R6
       73 MOVE                             R3 R5
       74 NEWTABLE                         R4 2 0
       76 GETUPVAL                         R5 3
       77 GETTABLEKS                       R5 R5 K32 ["BrushSettings"]
       79 NEWTABLE                         R6 1 0
       81 GETUPVAL                         R7 6
       82 GETTABLEKS                       R7 R7 K33 ["ManualPlaneLock"]
       84 DUPTABLE                         R8 K34 [{"Schema"}]
       85 DUPTABLE                         R9 K36 [{"OnReset"}]
       86 NEWCLOSURE                       R10 P3
       87 CAPTURE                          UPVAL U7
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          VAL R0
       90 CAPTURE                          UPVAL U6
       91 CAPTURE                          UPVAL U8
       92 SETTABLEKS                       R10 R9 K35 ["OnReset"]
       94 SETTABLEKS                       R9 R8 K9 ["Schema"]
       96 SETTABLE                         R8 R6 R7
       97 SETTABLE                         R6 R4 R5
       98 GETUPVAL                         R5 3
       99 GETTABLEKS                       R5 R5 K37 ["MaterialSettings"]
      101 SETTABLE                         R3 R4 R5
      102 SETTABLEKS                       R4 R0 K38 ["_overrides"]
      104 LOADN                            R4 0
      105 SETTABLEKS                       R4 R0 K39 ["_brushTime"]
      107 LOADN                            R4 0
      108 SETTABLEKS                       R4 R0 K40 ["_brushUsages"]
      110 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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
       60 GETTABLEKS                       R7 R7 K15 ["TerrainMaterialPickerRequester"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K8 ["Src"]
       67 GETTABLEKS                       R8 R8 K16 ["Flags"]
       69 GETTABLEKS                       R8 R8 K17 ["getFFlagEnableTerrainPalette"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K8 ["Src"]
       76 GETTABLEKS                       R9 R9 K18 ["Types"]
       78 CALL                             R8 1 1
       79 GETTABLEKS                       R9 R8 K19 ["BrushMode"]
       81 GETTABLEKS                       R10 R8 K20 ["BrushSettings"]
       83 GETTABLEKS                       R11 R8 K21 ["BrushShape"]
       85 GETTABLEKS                       R12 R8 K22 ["Category"]
       87 GETTABLEKS                       R13 R8 K23 ["Gizmo"]
       89 GETTABLEKS                       R14 R8 K24 ["PivotPosition"]
       91 GETTABLEKS                       R15 R8 K25 ["PlaneLock"]
       93 GETTABLEKS                       R16 R8 K26 ["MaterialSettings"]
       95 GETTABLEKS                       R17 R8 K27 ["Storage"]
       97 GETTABLEKS                       R18 R8 K28 ["Tab"]
       99 GETTABLEKS                       R19 R8 K29 ["Tool"]
      101 NEWTABLE                         R20 0 2
      103 DUPTABLE                         R21 K32 [{"Defaults", "Id"}]
      104 NEWTABLE                         R22 16 0
      106 GETTABLEKS                       R23 R10 K19 ["BrushMode"]
      108 GETTABLEKS                       R24 R9 K33 ["Add"]
      110 SETTABLE                         R24 R22 R23
      111 GETTABLEKS                       R23 R10 K21 ["BrushShape"]
      113 GETTABLEKS                       R24 R11 K34 ["Sphere"]
      115 SETTABLE                         R24 R22 R23
      116 GETTABLEKS                       R23 R10 K35 ["BrushSize"]
      118 DUPTABLE                         R24 K41 [{["Height"] = 6, ["Locked"] = True, ["Size"] = 6}]
      119 SETTABLE                         R24 R22 R23
      120 GETTABLEKS                       R23 R10 K24 ["PivotPosition"]
      122 GETTABLEKS                       R24 R14 K42 ["Center"]
      124 SETTABLE                         R24 R22 R23
      125 GETTABLEKS                       R23 R10 K43 ["Strength"]
      127 LOADN                            R24 1
      128 SETTABLE                         R24 R22 R23
      129 GETTABLEKS                       R23 R10 K44 ["State"]
      131 DUPTABLE                         R24 K47 [{["Position"] = {0, 0, 0}}]
      132 SETTABLE                         R24 R22 R23
      133 GETTABLEKS                       R23 R10 K48 ["IgnoreWater"]
      135 LOADB                            R24 0
      136 SETTABLE                         R24 R22 R23
      137 GETTABLEKS                       R23 R10 K49 ["IgnoreParts"]
      139 LOADB                            R24 1
      140 SETTABLE                         R24 R22 R23
      141 GETTABLEKS                       R23 R10 K50 ["TemporarySmooth"]
      143 LOADB                            R24 0
      144 SETTABLE                         R24 R22 R23
      145 GETTABLEKS                       R23 R10 K51 ["WaterAutofill"]
      147 LOADB                            R24 0
      148 SETTABLE                         R24 R22 R23
      149 SETTABLEKS                       R22 R21 K30 ["Defaults"]
      151 GETTABLEKS                       R22 R12 K20 ["BrushSettings"]
      153 SETTABLEKS                       R22 R21 K31 ["Id"]
      155 DUPTABLE                         R22 K32 [{"Defaults", "Id"}]
      156 NEWTABLE                         R23 2 0
      158 GETTABLEKS                       R24 R16 K52 ["AutoMaterial"]
      160 LOADB                            R25 0
      161 SETTABLE                         R25 R23 R24
      162 GETTABLEKS                       R24 R16 K53 ["SourceMaterial"]
      164 GETIMPORT                        R25 K57 [Enum.Material.Grass]
      166 SETTABLE                         R25 R23 R24
      167 SETTABLEKS                       R23 R22 K30 ["Defaults"]
      169 GETTABLEKS                       R23 R12 K26 ["MaterialSettings"]
      171 SETTABLEKS                       R23 R22 K31 ["Id"]
      173 SETLIST                          R20 R21 2 [1]
      175 NEWTABLE                         R21 0 2
      177 DUPTABLE                         R22 K59 [{"Id", "Schema"}]
      178 GETTABLEKS                       R23 R13 K60 ["Brush"]
      180 SETTABLEKS                       R23 R22 K31 ["Id"]
      182 DUPTABLE                         R23 K62 [{"Type"}]
      183 GETTABLEKS                       R24 R13 K60 ["Brush"]
      185 SETTABLEKS                       R24 R23 K61 ["Type"]
      187 SETTABLEKS                       R23 R22 K58 ["Schema"]
      189 DUPTABLE                         R23 K59 [{"Id", "Schema"}]
      190 GETTABLEKS                       R24 R13 K63 ["Plane"]
      192 SETTABLEKS                       R24 R23 K31 ["Id"]
      194 DUPTABLE                         R24 K62 [{"Type"}]
      195 GETTABLEKS                       R25 R13 K63 ["Plane"]
      197 SETTABLEKS                       R25 R24 K61 ["Type"]
      199 SETTABLEKS                       R24 R23 K58 ["Schema"]
      201 SETLIST                          R21 R22 2 [1]
      203 GETTABLEKS                       R24 R19 K64 ["Sculpt"]
      205 GETTABLEKS                       R25 R18 K65 ["Edit"]
      207 MOVE                             R26 R20
      208 MOVE                             R27 R21
      209 NAMECALL                         R22 R1 K66 ["new"]
      211 CALL                             R22 5 1
      212 DUPCLOSURE                       R23 K67 [PROTO_7]
      213 CAPTURE                          VAL R1
      214 CAPTURE                          VAL R7
      215 CAPTURE                          VAL R6
      216 CAPTURE                          VAL R12
      217 CAPTURE                          VAL R16
      218 CAPTURE                          VAL R17
      219 CAPTURE                          VAL R10
      220 CAPTURE                          VAL R5
      221 CAPTURE                          VAL R3
      222 SETTABLEKS                       R23 R22 K68 ["init"]
      224 DUPCLOSURE                       R23 K69 [PROTO_8]
      225 CAPTURE                          VAL R1
      226 SETTABLEKS                       R23 R22 K70 ["saveForm"]
      228 DUPCLOSURE                       R23 K71 [PROTO_9]
      229 CAPTURE                          VAL R1
      230 SETTABLEKS                       R23 R22 K72 ["saveGizmos"]
      232 DUPCLOSURE                       R23 K73 [PROTO_10]
      233 CAPTURE                          VAL R4
      234 SETTABLEKS                       R23 R22 K74 ["startOperation"]
      236 DUPCLOSURE                       R23 K75 [PROTO_13]
      237 CAPTURE                          VAL R1
      238 CAPTURE                          VAL R12
      239 CAPTURE                          VAL R10
      240 CAPTURE                          VAL R15
      241 CAPTURE                          VAL R19
      242 SETTABLEKS                       R23 R22 K76 ["activate"]
      244 DUPCLOSURE                       R23 K77 [PROTO_14]
      245 CAPTURE                          VAL R1
      246 SETTABLEKS                       R23 R22 K78 ["deactivate"]
      248 DUPCLOSURE                       R23 K79 [PROTO_15]
      249 CAPTURE                          VAL R2
      250 CAPTURE                          VAL R19
      251 SETTABLEKS                       R23 R22 K80 ["reportToolAnalytics"]
      253 RETURN                           R22 1
