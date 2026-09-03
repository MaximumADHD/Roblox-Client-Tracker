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
        5 CALL                             R2 2 0
        6 GETTABLEKS                       R2 R0 K1 ["_operation"]
        8 JUMPIFNOT                        R2 ; [+8]
        9 GETTABLEKS                       R2 R0 K1 ["_operation"]
       11 NAMECALL                         R4 R0 K2 ["getPayload"]
       13 CALL                             R4 1 -1
       14 NAMECALL                         R2 R2 K3 ["updatePayload"]
       16 CALL                             R2 -1 0
       17 RETURN                           R0 0

PROTO_10:
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
       65 GETTABLEKS                       R8 R8 K11 ["Util"]
       67 GETTABLEKS                       R8 R8 K17 ["TerrainMaterialPickerRequester"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K10 ["Src"]
       74 GETTABLEKS                       R9 R9 K18 ["Flags"]
       76 GETTABLEKS                       R9 R9 K19 ["getFFlagEnableTerrainPalette"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K10 ["Src"]
       83 GETTABLEKS                       R10 R10 K20 ["Types"]
       85 CALL                             R9 1 1
       86 GETTABLEKS                       R10 R9 K21 ["BrushMode"]
       88 GETTABLEKS                       R11 R9 K22 ["BrushSettings"]
       90 GETTABLEKS                       R12 R9 K23 ["BrushShape"]
       92 GETTABLEKS                       R13 R9 K24 ["Category"]
       94 GETTABLEKS                       R14 R9 K25 ["Gizmo"]
       96 GETTABLEKS                       R15 R9 K26 ["PivotPosition"]
       98 GETTABLEKS                       R16 R9 K27 ["PlaneLock"]
      100 GETTABLEKS                       R17 R9 K28 ["MaterialSettings"]
      102 GETTABLEKS                       R18 R9 K29 ["Storage"]
      104 GETTABLEKS                       R19 R9 K30 ["Tab"]
      106 GETTABLEKS                       R20 R9 K31 ["Tool"]
      108 NEWTABLE                         R21 0 2
      110 DUPTABLE                         R22 K34 [{"Defaults", "Id"}]
      111 NEWTABLE                         R23 16 0
      113 GETTABLEKS                       R24 R11 K21 ["BrushMode"]
      115 GETTABLEKS                       R25 R10 K35 ["Add"]
      117 SETTABLE                         R25 R23 R24
      118 GETTABLEKS                       R24 R11 K23 ["BrushShape"]
      120 GETTABLEKS                       R25 R12 K36 ["Sphere"]
      122 SETTABLE                         R25 R23 R24
      123 GETTABLEKS                       R24 R11 K37 ["BrushSize"]
      125 DUPTABLE                         R25 K43 [{["Height"] = 6, ["Locked"] = True, ["Size"] = 6}]
      126 SETTABLE                         R25 R23 R24
      127 GETTABLEKS                       R24 R11 K26 ["PivotPosition"]
      129 GETTABLEKS                       R25 R15 K44 ["Center"]
      131 SETTABLE                         R25 R23 R24
      132 GETTABLEKS                       R24 R11 K45 ["Strength"]
      134 LOADN                            R25 1
      135 SETTABLE                         R25 R23 R24
      136 GETTABLEKS                       R24 R11 K46 ["State"]
      138 DUPTABLE                         R25 K49 [{["Position"] = {0, 0, 0}}]
      139 SETTABLE                         R25 R23 R24
      140 GETTABLEKS                       R24 R11 K50 ["IgnoreWater"]
      142 LOADB                            R25 0
      143 SETTABLE                         R25 R23 R24
      144 GETTABLEKS                       R24 R11 K51 ["IgnoreParts"]
      146 LOADB                            R25 1
      147 SETTABLE                         R25 R23 R24
      148 GETTABLEKS                       R24 R11 K52 ["TemporarySmooth"]
      150 LOADB                            R25 0
      151 SETTABLE                         R25 R23 R24
      152 GETTABLEKS                       R24 R11 K53 ["WaterAutofill"]
      154 LOADB                            R25 0
      155 SETTABLE                         R25 R23 R24
      156 SETTABLEKS                       R23 R22 K32 ["Defaults"]
      158 GETTABLEKS                       R23 R13 K22 ["BrushSettings"]
      160 SETTABLEKS                       R23 R22 K33 ["Id"]
      162 DUPTABLE                         R23 K34 [{"Defaults", "Id"}]
      163 NEWTABLE                         R24 2 0
      165 GETTABLEKS                       R25 R17 K54 ["AutoMaterial"]
      167 LOADB                            R26 0
      168 SETTABLE                         R26 R24 R25
      169 GETTABLEKS                       R25 R17 K55 ["SourceMaterial"]
      171 GETIMPORT                        R26 K59 [Enum.Material.Grass]
      173 SETTABLE                         R26 R24 R25
      174 SETTABLEKS                       R24 R23 K32 ["Defaults"]
      176 GETTABLEKS                       R24 R13 K28 ["MaterialSettings"]
      178 SETTABLEKS                       R24 R23 K33 ["Id"]
      180 SETLIST                          R21 R22 2 [1]
      182 NEWTABLE                         R22 0 2
      184 DUPTABLE                         R23 K61 [{"Id", "Schema"}]
      185 GETTABLEKS                       R24 R14 K62 ["Brush"]
      187 SETTABLEKS                       R24 R23 K33 ["Id"]
      189 DUPTABLE                         R24 K64 [{"Type"}]
      190 GETTABLEKS                       R25 R14 K62 ["Brush"]
      192 SETTABLEKS                       R25 R24 K63 ["Type"]
      194 SETTABLEKS                       R24 R23 K60 ["Schema"]
      196 DUPTABLE                         R24 K61 [{"Id", "Schema"}]
      197 GETTABLEKS                       R25 R14 K65 ["Plane"]
      199 SETTABLEKS                       R25 R24 K33 ["Id"]
      201 DUPTABLE                         R25 K64 [{"Type"}]
      202 GETTABLEKS                       R26 R14 K65 ["Plane"]
      204 SETTABLEKS                       R26 R25 K63 ["Type"]
      206 SETTABLEKS                       R25 R24 K60 ["Schema"]
      208 SETLIST                          R22 R23 2 [1]
      210 GETTABLEKS                       R25 R20 K66 ["Sculpt"]
      212 GETTABLEKS                       R26 R19 K67 ["Edit"]
      214 MOVE                             R27 R21
      215 MOVE                             R28 R22
      216 NAMECALL                         R23 R2 K68 ["new"]
      218 CALL                             R23 5 1
      219 DUPCLOSURE                       R24 K69 [PROTO_7]
      220 CAPTURE                          VAL R2
      221 CAPTURE                          VAL R8
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R13
      224 CAPTURE                          VAL R17
      225 CAPTURE                          VAL R18
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R6
      228 CAPTURE                          VAL R4
      229 SETTABLEKS                       R24 R23 K70 ["init"]
      231 DUPCLOSURE                       R24 K71 [PROTO_8]
      232 CAPTURE                          VAL R2
      233 SETTABLEKS                       R24 R23 K72 ["saveForm"]
      235 DUPCLOSURE                       R24 K73 [PROTO_9]
      236 CAPTURE                          VAL R2
      237 SETTABLEKS                       R24 R23 K74 ["saveGizmos"]
      239 DUPCLOSURE                       R24 K75 [PROTO_10]
      240 CAPTURE                          VAL R5
      241 CAPTURE                          VAL R1
      242 SETTABLEKS                       R24 R23 K76 ["startOperation"]
      244 DUPCLOSURE                       R24 K77 [PROTO_13]
      245 CAPTURE                          VAL R2
      246 CAPTURE                          VAL R13
      247 CAPTURE                          VAL R11
      248 CAPTURE                          VAL R16
      249 CAPTURE                          VAL R20
      250 SETTABLEKS                       R24 R23 K78 ["activate"]
      252 DUPCLOSURE                       R24 K79 [PROTO_14]
      253 CAPTURE                          VAL R2
      254 SETTABLEKS                       R24 R23 K80 ["deactivate"]
      256 DUPCLOSURE                       R24 K81 [PROTO_15]
      257 CAPTURE                          VAL R3
      258 CAPTURE                          VAL R20
      259 SETTABLEKS                       R24 R23 K82 ["reportAnalytics"]
      261 RETURN                           R23 1
