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
       51 DUPTABLE                         R5 K30 [{["AllowAir"] = False, ["AllowWater"] = True, ["OnClear"], ["OnActivated"], ["PickerId"] = "Draw/SourceMaterial", ["Type"] = "TerrainMaterialPicker"}]
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
       37 GETTABLEKS                       R5 R5 K10 ["Draw"]
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
       59 GETTABLEKS                       R14 R4 K24 ["Storage"]
       61 GETTABLEKS                       R15 R4 K25 ["Tab"]
       63 GETTABLEKS                       R16 R4 K26 ["Tool"]
       65 GETIMPORT                        R17 K5 [require]
       67 GETTABLEKS                       R18 R0 K10 ["Src"]
       69 GETTABLEKS                       R18 R18 K11 ["Util"]
       71 GETTABLEKS                       R18 R18 K27 ["AnalyticsHelper"]
       73 CALL                             R17 1 1
       74 GETIMPORT                        R18 K5 [require]
       76 GETTABLEKS                       R19 R0 K10 ["Src"]
       78 GETTABLEKS                       R19 R19 K11 ["Util"]
       80 GETTABLEKS                       R19 R19 K28 ["getPlaneFromCamera"]
       82 CALL                             R18 1 1
       83 GETIMPORT                        R19 K5 [require]
       85 GETTABLEKS                       R20 R0 K10 ["Src"]
       87 GETTABLEKS                       R20 R20 K11 ["Util"]
       89 GETTABLEKS                       R20 R20 K29 ["SettingsHelper"]
       91 CALL                             R19 1 1
       92 GETIMPORT                        R20 K5 [require]
       94 GETTABLEKS                       R21 R0 K10 ["Src"]
       96 GETTABLEKS                       R21 R21 K11 ["Util"]
       98 GETTABLEKS                       R21 R21 K30 ["TerrainMaterialPickerRequester"]
      100 CALL                             R20 1 1
      101 GETIMPORT                        R21 K5 [require]
      103 GETTABLEKS                       R22 R0 K10 ["Src"]
      105 GETTABLEKS                       R22 R22 K31 ["Flags"]
      107 GETTABLEKS                       R22 R22 K32 ["getFFlagEnableTerrainPalette"]
      109 CALL                             R21 1 1
      110 NEWTABLE                         R22 0 2
      112 DUPTABLE                         R23 K35 [{"Defaults", "Id"}]
      113 NEWTABLE                         R24 16 0
      115 GETTABLEKS                       R25 R6 K15 ["BrushMode"]
      117 GETTABLEKS                       R26 R5 K36 ["Add"]
      119 SETTABLE                         R26 R24 R25
      120 GETTABLEKS                       R25 R6 K17 ["BrushShape"]
      122 GETTABLEKS                       R26 R7 K37 ["Sphere"]
      124 SETTABLE                         R26 R24 R25
      125 GETTABLEKS                       R25 R6 K38 ["BrushSize"]
      127 DUPTABLE                         R26 K44 [{["Height"] = 6, ["Locked"] = True, ["Size"] = 6}]
      128 SETTABLE                         R26 R24 R25
      129 GETTABLEKS                       R25 R6 K21 ["PivotPosition"]
      131 GETTABLEKS                       R26 R11 K45 ["Center"]
      133 SETTABLE                         R26 R24 R25
      134 GETTABLEKS                       R25 R6 K23 ["Snapping"]
      136 GETTABLEKS                       R26 R13 K46 ["Off"]
      138 SETTABLE                         R26 R24 R25
      139 GETTABLEKS                       R25 R6 K47 ["State"]
      141 DUPTABLE                         R26 K50 [{["Position"] = {0, 0, 0}}]
      142 SETTABLE                         R26 R24 R25
      143 GETTABLEKS                       R25 R6 K51 ["IgnoreWater"]
      145 LOADB                            R26 0
      146 SETTABLE                         R26 R24 R25
      147 GETTABLEKS                       R25 R6 K52 ["IgnoreParts"]
      149 LOADB                            R26 1
      150 SETTABLE                         R26 R24 R25
      151 GETTABLEKS                       R25 R6 K53 ["TemporarySmooth"]
      153 LOADB                            R26 0
      154 SETTABLE                         R26 R24 R25
      155 GETTABLEKS                       R25 R6 K54 ["WaterAutofill"]
      157 LOADB                            R26 0
      158 SETTABLE                         R26 R24 R25
      159 SETTABLEKS                       R24 R23 K33 ["Defaults"]
      161 GETTABLEKS                       R24 R8 K16 ["BrushSettings"]
      163 SETTABLEKS                       R24 R23 K34 ["Id"]
      165 DUPTABLE                         R24 K35 [{"Defaults", "Id"}]
      166 NEWTABLE                         R25 2 0
      168 GETTABLEKS                       R26 R10 K55 ["AutoMaterial"]
      170 LOADB                            R27 0
      171 SETTABLE                         R27 R25 R26
      172 GETTABLEKS                       R26 R10 K56 ["SourceMaterial"]
      174 GETIMPORT                        R27 K60 [Enum.Material.Grass]
      176 SETTABLE                         R27 R25 R26
      177 SETTABLEKS                       R25 R24 K33 ["Defaults"]
      179 GETTABLEKS                       R25 R8 K20 ["MaterialSettings"]
      181 SETTABLEKS                       R25 R24 K34 ["Id"]
      183 SETLIST                          R22 R23 2 [1]
      185 NEWTABLE                         R23 0 2
      187 DUPTABLE                         R24 K62 [{"Id", "Schema"}]
      188 GETTABLEKS                       R25 R9 K63 ["Plane"]
      190 SETTABLEKS                       R25 R24 K34 ["Id"]
      192 DUPTABLE                         R25 K65 [{"Type"}]
      193 GETTABLEKS                       R26 R9 K63 ["Plane"]
      195 SETTABLEKS                       R26 R25 K64 ["Type"]
      197 SETTABLEKS                       R25 R24 K61 ["Schema"]
      199 DUPTABLE                         R25 K62 [{"Id", "Schema"}]
      200 GETTABLEKS                       R26 R9 K66 ["Brush"]
      202 SETTABLEKS                       R26 R25 K34 ["Id"]
      204 DUPTABLE                         R26 K65 [{"Type"}]
      205 GETTABLEKS                       R27 R9 K66 ["Brush"]
      207 SETTABLEKS                       R27 R26 K64 ["Type"]
      209 SETTABLEKS                       R26 R25 K61 ["Schema"]
      211 SETLIST                          R23 R24 2 [1]
      213 GETTABLEKS                       R26 R16 K67 ["Draw"]
      215 GETTABLEKS                       R27 R15 K68 ["Edit"]
      217 MOVE                             R28 R22
      218 MOVE                             R29 R23
      219 NAMECALL                         R24 R2 K69 ["new"]
      221 CALL                             R24 5 1
      222 DUPCLOSURE                       R25 K70 [PROTO_7]
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R21
      225 CAPTURE                          VAL R20
      226 CAPTURE                          VAL R8
      227 CAPTURE                          VAL R10
      228 CAPTURE                          VAL R14
      229 CAPTURE                          VAL R6
      230 CAPTURE                          VAL R19
      231 CAPTURE                          VAL R18
      232 SETTABLEKS                       R25 R24 K71 ["init"]
      234 DUPCLOSURE                       R25 K72 [PROTO_8]
      235 CAPTURE                          VAL R2
      236 SETTABLEKS                       R25 R24 K73 ["saveForm"]
      238 DUPCLOSURE                       R25 K74 [PROTO_9]
      239 CAPTURE                          VAL R2
      240 SETTABLEKS                       R25 R24 K75 ["saveGizmos"]
      242 DUPCLOSURE                       R25 K76 [PROTO_10]
      243 CAPTURE                          VAL R3
      244 CAPTURE                          VAL R1
      245 SETTABLEKS                       R25 R24 K77 ["startOperation"]
      247 DUPCLOSURE                       R25 K78 [PROTO_13]
      248 CAPTURE                          VAL R2
      249 CAPTURE                          VAL R8
      250 CAPTURE                          VAL R6
      251 CAPTURE                          VAL R12
      252 CAPTURE                          VAL R16
      253 SETTABLEKS                       R25 R24 K79 ["activate"]
      255 DUPCLOSURE                       R25 K80 [PROTO_14]
      256 CAPTURE                          VAL R2
      257 SETTABLEKS                       R25 R24 K81 ["deactivate"]
      259 DUPCLOSURE                       R25 K82 [PROTO_15]
      260 CAPTURE                          VAL R17
      261 CAPTURE                          VAL R16
      262 SETTABLEKS                       R25 R24 K83 ["reportAnalytics"]
      264 RETURN                           R24 1
