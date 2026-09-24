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
        9 SETTABLE                         R0 R5 R6
       10 SETTABLE                         R5 R3 R4
       11 NAMECALL                         R1 R1 K1 ["setPayload"]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K4 [task.spawn]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

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
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R4 R4 K2 ["PlacePersistent"]
       10 NAMECALL                         R0 R0 K3 ["clearGlobal"]
       12 CALL                             R0 4 0
       13 GETIMPORT                        R0 K6 [task.spawn]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          UPVAL U0
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["getPayload"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["MaterialSettings"]
        7 GETTABLE                         R1 R2 R3
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R4 K7 [{["allowAir"] = True, ["allowWater"] = True, ["anchorWidgetUri"], ["selectedSlotIndex"]}]
       10 SETTABLEKS                       R0 R4 K5 ["anchorWidgetUri"]
       12 GETUPVAL                         R6 3
       13 GETTABLE                         R5 R1 R6
       14 SETTABLEKS                       R5 R4 K6 ["selectedSlotIndex"]
       16 NAMECALL                         R2 R2 K8 ["request"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["_terrainMaterialPickerRequesters"]
       11 SETTABLE                         R3 R4 R0
       12 DUPTABLE                         R4 K7 [{["DataId"], ["Height"] = 24, ["Layout"], ["Schema"]}]
       13 SETTABLEKS                       R1 R4 K2 ["DataId"]
       15 GETIMPORT                        R5 K11 [Enum.FillDirection.Horizontal]
       17 SETTABLEKS                       R5 R4 K5 ["Layout"]
       19 DUPTABLE                         R5 K20 [{["AllowAir"] = True, ["AllowWater"] = True, ["OnClear"], ["OnActivated"], ["PickerId"], ["Type"] = "TerrainMaterialPicker"}]
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U3
       25 SETTABLEKS                       R6 R5 K15 ["OnClear"]
       27 NEWCLOSURE                       R6 P2
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R6 R5 K16 ["OnActivated"]
       34 SETTABLEKS                       R2 R5 K17 ["PickerId"]
       36 SETTABLEKS                       R5 R4 K6 ["Schema"]
       38 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 GETTABLEKS                       R3 R0 K1 ["_terrainMaterialPickerRequesters"]
        9 JUMPIFNOT                        R3 ; [+10]
       10 GETTABLEKS                       R3 R0 K1 ["_terrainMaterialPickerRequesters"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 NAMECALL                         R8 R7 K2 ["destroy"]
       17 CALL                             R8 1 0
       18 FORGLOOP                         R3 2 ; [-4]
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R0 K1 ["_terrainMaterialPickerRequesters"]
       23 LOADNIL                          R3
       24 GETUPVAL                         R4 1
       25 CALL                             R4 0 1
       26 JUMPIFNOT                        R4 ; [+38]
       27 NEWTABLE                         R4 0 0
       29 SETTABLEKS                       R4 R0 K1 ["_terrainMaterialPickerRequesters"]
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 NEWTABLE                         R5 2 0
       38 GETUPVAL                         R6 5
       39 GETTABLEKS                       R6 R6 K3 ["SourceMaterial"]
       41 MOVE                             R7 R4
       42 GETUPVAL                         R8 5
       43 GETTABLEKS                       R8 R8 K3 ["SourceMaterial"]
       45 GETUPVAL                         R9 5
       46 GETTABLEKS                       R9 R9 K4 ["SourceMaterialSlot"]
       48 LOADK                            R10 K5 ["Paint/SourceMaterial"]
       49 CALL                             R7 3 1
       50 SETTABLE                         R7 R5 R6
       51 GETUPVAL                         R6 5
       52 GETTABLEKS                       R6 R6 K6 ["TargetMaterial"]
       54 MOVE                             R7 R4
       55 GETUPVAL                         R8 5
       56 GETTABLEKS                       R8 R8 K6 ["TargetMaterial"]
       58 GETUPVAL                         R9 5
       59 GETTABLEKS                       R9 R9 K7 ["TargetMaterialSlot"]
       61 LOADK                            R10 K8 ["Paint/TargetMaterial"]
       62 CALL                             R7 3 1
       63 SETTABLE                         R7 R5 R6
       64 MOVE                             R3 R5
       65 NEWTABLE                         R4 2 0
       67 GETUPVAL                         R5 3
       68 GETTABLEKS                       R5 R5 K9 ["BrushSettings"]
       70 NEWTABLE                         R6 1 0
       72 GETUPVAL                         R7 6
       73 GETTABLEKS                       R7 R7 K10 ["ManualPlaneLock"]
       75 DUPTABLE                         R8 K12 [{"Schema"}]
       76 DUPTABLE                         R9 K14 [{"OnReset"}]
       77 NEWCLOSURE                       R10 P1
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          UPVAL U3
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U6
       82 CAPTURE                          UPVAL U8
       83 SETTABLEKS                       R10 R9 K13 ["OnReset"]
       85 SETTABLEKS                       R9 R8 K11 ["Schema"]
       87 SETTABLE                         R8 R6 R7
       88 SETTABLE                         R6 R4 R5
       89 GETUPVAL                         R5 3
       90 GETTABLEKS                       R5 R5 K15 ["MaterialSettings"]
       92 SETTABLE                         R3 R4 R5
       93 SETTABLEKS                       R4 R0 K16 ["_overrides"]
       95 LOADN                            R4 0
       96 SETTABLEKS                       R4 R0 K17 ["_brushTime"]
       98 LOADN                            R4 0
       99 SETTABLEKS                       R4 R0 K18 ["_brushUsages"]
      101 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Paint"]
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_terrainMaterialPickerRequesters"]
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETTABLEKS                       R1 R0 K0 ["_terrainMaterialPickerRequesters"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 NAMECALL                         R6 R5 K1 ["cancel"]
       10 CALL                             R6 1 0
       11 FORGLOOP                         R1 2 ; [-4]
       13 GETTABLEKS                       R1 R0 K2 ["_mouseDownConnection"]
       15 NAMECALL                         R1 R1 K3 ["Disconnect"]
       17 CALL                             R1 1 0
       18 GETTABLEKS                       R1 R0 K4 ["_mouseUpConnection"]
       20 NAMECALL                         R1 R1 K3 ["Disconnect"]
       22 CALL                             R1 1 0
       23 GETTABLEKS                       R1 R0 K5 ["_operation"]
       25 JUMPIFNOT                        R1 ; [+41]
       26 GETTABLEKS                       R1 R0 K5 ["_operation"]
       28 NAMECALL                         R1 R1 K6 ["isRunning"]
       30 CALL                             R1 1 1
       31 JUMPIFNOT                        R1 ; [+35]
       32 GETTABLEKS                       R1 R0 K7 ["_brushUsages"]
       34 ADDK                             R1 R1 K8 [1]
       35 SETTABLEKS                       R1 R0 K7 ["_brushUsages"]
       37 GETTABLEKS                       R2 R0 K5 ["_operation"]
       39 NAMECALL                         R2 R2 K9 ["getCurrentTimeTaken"]
       41 CALL                             R2 1 1
       42 GETTABLEKS                       R3 R0 K5 ["_operation"]
       44 NAMECALL                         R3 R3 K10 ["getStepsTaken"]
       46 CALL                             R3 1 1
       47 DIV                              R1 R2 R3
       48 SETTABLEKS                       R1 R0 K11 ["_brushTime"]
       50 GETTABLEKS                       R1 R0 K5 ["_operation"]
       52 NAMECALL                         R1 R1 K12 ["getTimeStatistic"]
       54 CALL                             R1 1 1
       55 JUMPIFNOT                        R1 ; [+6]
       56 GETTABLEKS                       R4 R0 K14 ["_brushStatistic"]
       58 ORK                              R3 R4 K13 [0]
       59 ADD                              R2 R3 R1
       60 SETTABLEKS                       R2 R0 K14 ["_brushStatistic"]
       62 GETTABLEKS                       R2 R0 K5 ["_operation"]
       64 NAMECALL                         R2 R2 K15 ["destroy"]
       66 CALL                             R2 1 0
       67 GETUPVAL                         R1 0
       68 GETTABLEKS                       R1 R1 K16 ["deactivate"]
       70 MOVE                             R2 R0
       71 CALL                             R1 1 0
       72 RETURN                           R0 0

PROTO_16:
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
       21 GETTABLEKS                       R8 R8 K5 ["Paint"]
       23 CALL                             R5 3 -1
       24 NAMECALL                         R2 R2 K6 ["report"]
       26 CALL                             R2 -1 0
       27 GETTABLEKS                       R2 R0 K2 ["_analytics"]
       29 LOADK                            R4 K7 ["Usage"]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K5 ["Paint"]
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
       50 GETTABLEKS                       R5 R5 K5 ["Paint"]
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
       42 GETTABLEKS                       R5 R5 K13 ["PaintOperation"]
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
       79 GETTABLEKS                       R9 R8 K19 ["BrushSettings"]
       81 GETTABLEKS                       R10 R8 K20 ["BrushShape"]
       83 GETTABLEKS                       R11 R8 K21 ["Category"]
       85 GETTABLEKS                       R12 R8 K22 ["Gizmo"]
       87 GETTABLEKS                       R13 R8 K23 ["MaterialMode"]
       89 GETTABLEKS                       R14 R8 K24 ["MaterialSettings"]
       91 GETTABLEKS                       R15 R8 K25 ["PivotPosition"]
       93 GETTABLEKS                       R16 R8 K26 ["PlaneLock"]
       95 GETTABLEKS                       R17 R8 K27 ["Snapping"]
       97 GETTABLEKS                       R18 R8 K28 ["Storage"]
       99 GETTABLEKS                       R19 R8 K29 ["Tab"]
      101 GETTABLEKS                       R20 R8 K30 ["Tool"]
      103 NEWTABLE                         R21 0 2
      105 DUPTABLE                         R22 K33 [{"Defaults", "Id"}]
      106 NEWTABLE                         R23 8 0
      108 GETTABLEKS                       R24 R9 K20 ["BrushShape"]
      110 GETTABLEKS                       R25 R10 K34 ["Sphere"]
      112 SETTABLE                         R25 R23 R24
      113 GETTABLEKS                       R24 R9 K35 ["BrushSize"]
      115 DUPTABLE                         R25 K41 [{["Height"] = 6, ["Locked"] = True, ["Size"] = 6}]
      116 SETTABLE                         R25 R23 R24
      117 GETTABLEKS                       R24 R9 K25 ["PivotPosition"]
      119 GETTABLEKS                       R25 R15 K42 ["Center"]
      121 SETTABLE                         R25 R23 R24
      122 GETTABLEKS                       R24 R9 K27 ["Snapping"]
      124 GETTABLEKS                       R25 R17 K43 ["Off"]
      126 SETTABLE                         R25 R23 R24
      127 GETTABLEKS                       R24 R9 K44 ["State"]
      129 DUPTABLE                         R25 K47 [{["Position"] = {0, 0, 0}}]
      130 SETTABLE                         R25 R23 R24
      131 GETTABLEKS                       R24 R9 K48 ["IgnoreWater"]
      133 LOADB                            R25 0
      134 SETTABLE                         R25 R23 R24
      135 GETTABLEKS                       R24 R9 K49 ["IgnoreParts"]
      137 LOADB                            R25 1
      138 SETTABLE                         R25 R23 R24
      139 SETTABLEKS                       R23 R22 K31 ["Defaults"]
      141 GETTABLEKS                       R23 R11 K19 ["BrushSettings"]
      143 SETTABLEKS                       R23 R22 K32 ["Id"]
      145 DUPTABLE                         R23 K33 [{"Defaults", "Id"}]
      146 NEWTABLE                         R24 4 0
      148 GETTABLEKS                       R25 R14 K23 ["MaterialMode"]
      150 GETTABLEKS                       R26 R13 K50 ["Paint"]
      152 SETTABLE                         R26 R24 R25
      153 GETTABLEKS                       R25 R14 K51 ["SourceMaterial"]
      155 GETIMPORT                        R26 K55 [Enum.Material.Grass]
      157 SETTABLE                         R26 R24 R25
      158 GETTABLEKS                       R25 R14 K56 ["TargetMaterial"]
      160 GETIMPORT                        R26 K55 [Enum.Material.Grass]
      162 SETTABLE                         R26 R24 R25
      163 SETTABLEKS                       R24 R23 K31 ["Defaults"]
      165 GETTABLEKS                       R24 R11 K24 ["MaterialSettings"]
      167 SETTABLEKS                       R24 R23 K32 ["Id"]
      169 SETLIST                          R21 R22 2 [1]
      171 NEWTABLE                         R22 0 2
      173 DUPTABLE                         R23 K58 [{"Id", "Schema"}]
      174 GETTABLEKS                       R24 R12 K59 ["Brush"]
      176 SETTABLEKS                       R24 R23 K32 ["Id"]
      178 DUPTABLE                         R24 K61 [{"Type"}]
      179 GETTABLEKS                       R25 R12 K59 ["Brush"]
      181 SETTABLEKS                       R25 R24 K60 ["Type"]
      183 SETTABLEKS                       R24 R23 K57 ["Schema"]
      185 DUPTABLE                         R24 K58 [{"Id", "Schema"}]
      186 GETTABLEKS                       R25 R12 K62 ["Plane"]
      188 SETTABLEKS                       R25 R24 K32 ["Id"]
      190 DUPTABLE                         R25 K61 [{"Type"}]
      191 GETTABLEKS                       R26 R12 K62 ["Plane"]
      193 SETTABLEKS                       R26 R25 K60 ["Type"]
      195 SETTABLEKS                       R25 R24 K57 ["Schema"]
      197 SETLIST                          R22 R23 2 [1]
      199 GETTABLEKS                       R25 R20 K50 ["Paint"]
      201 GETTABLEKS                       R26 R19 K63 ["Edit"]
      203 MOVE                             R27 R21
      204 MOVE                             R28 R22
      205 NAMECALL                         R23 R1 K64 ["new"]
      207 CALL                             R23 5 1
      208 DUPCLOSURE                       R24 K65 [PROTO_8]
      209 CAPTURE                          VAL R1
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R6
      212 CAPTURE                          VAL R11
      213 CAPTURE                          VAL R18
      214 CAPTURE                          VAL R14
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R5
      217 CAPTURE                          VAL R3
      218 SETTABLEKS                       R24 R23 K66 ["init"]
      220 DUPCLOSURE                       R24 K67 [PROTO_9]
      221 CAPTURE                          VAL R1
      222 SETTABLEKS                       R24 R23 K68 ["saveForm"]
      224 DUPCLOSURE                       R24 K69 [PROTO_10]
      225 CAPTURE                          VAL R1
      226 SETTABLEKS                       R24 R23 K70 ["saveGizmos"]
      228 DUPCLOSURE                       R24 K71 [PROTO_11]
      229 CAPTURE                          VAL R4
      230 SETTABLEKS                       R24 R23 K72 ["startOperation"]
      232 DUPCLOSURE                       R24 K73 [PROTO_14]
      233 CAPTURE                          VAL R1
      234 CAPTURE                          VAL R11
      235 CAPTURE                          VAL R9
      236 CAPTURE                          VAL R16
      237 CAPTURE                          VAL R20
      238 SETTABLEKS                       R24 R23 K74 ["activate"]
      240 DUPCLOSURE                       R24 K75 [PROTO_15]
      241 CAPTURE                          VAL R1
      242 SETTABLEKS                       R24 R23 K76 ["deactivate"]
      244 DUPCLOSURE                       R24 K77 [PROTO_16]
      245 CAPTURE                          VAL R2
      246 CAPTURE                          VAL R20
      247 SETTABLEKS                       R24 R23 K78 ["reportToolAnalytics"]
      249 RETURN                           R23 1
