PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["ensure"]
        7 GETTABLEKS                       R2 R0 K1 ["_pluginController"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["MaterialSettings"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K3 ["SourceMaterialSlot"]
       15 CALL                             R1 3 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K0 ["ensure"]
       19 GETTABLEKS                       R2 R0 K1 ["_pluginController"]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K2 ["MaterialSettings"]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K4 ["TargetMaterialSlot"]
       27 CALL                             R1 3 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 SETTABLE                         R0 R1 R2
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K0 ["InvalidSourceMode"]
        9 LOADB                            R3 0
       10 SETTABLE                         R3 R1 R2
       11 GETUPVAL                         R2 3
       12 NEWTABLE                         R4 1 0
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K1 ["MaterialSettings"]
       17 SETTABLE                         R1 R4 R5
       18 NAMECALL                         R2 R2 K2 ["setPayload"]
       20 CALL                             R2 2 0
       21 GETIMPORT                        R2 K5 [task.spawn]
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          UPVAL U3
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 1 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["MaterialSettings"]
        6 NEWTABLE                         R5 1 0
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K1 ["InvalidSourceMode"]
       11 SETTABLE                         R0 R5 R6
       12 SETTABLE                         R5 R3 R4
       13 NAMECALL                         R1 R1 K2 ["setPayload"]
       15 CALL                             R1 2 0
       16 GETIMPORT                        R1 K5 [task.spawn]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["getPayload"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["MaterialSettings"]
        7 GETTABLE                         R1 R2 R3
        8 GETUPVAL                         R2 2
        9 JUMPIFNOT                        R2 ; [+11]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K2 ["MaterialMode"]
       13 GETTABLE                         R3 R1 R4
       14 GETUPVAL                         R4 4
       15 GETTABLEKS                       R4 R4 K3 ["Replace"]
       17 JUMPIFEQ                         R3 R4 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 MOVE                             R3 R2
       22 JUMPIFNOT                        R3 ; [+8]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K4 ["InvalidSourceMode"]
       26 GETTABLE                         R4 R1 R5
       27 JUMPIFEQKB                       R4 TRUE ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 GETUPVAL                         R4 5
       32 DUPTABLE                         R6 K12 [{["allowAir"] = True, ["allowInvalidSource"], ["allowWater"] = True, ["anchorWidgetUri"], ["invalidSourceSelected"], ["selectedSlotIndex"]}]
       33 SETTABLEKS                       R2 R6 K7 ["allowInvalidSource"]
       35 SETTABLEKS                       R0 R6 K9 ["anchorWidgetUri"]
       37 SETTABLEKS                       R3 R6 K10 ["invalidSourceSelected"]
       39 GETUPVAL                         R8 6
       40 GETTABLE                         R7 R1 R8
       41 SETTABLEKS                       R7 R6 K11 ["selectedSlotIndex"]
       43 NAMECALL                         R4 R4 K13 ["request"]
       45 CALL                             R4 2 0
       46 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R3
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 LOADNIL                          R6
       10 JUMPIFNOT                        R3 ; [+5]
       11 NEWCLOSURE                       R7 P1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R7
       17 CALL                             R4 3 1
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K1 ["_terrainMaterialPickerRequesters"]
       21 SETTABLE                         R4 R5 R0
       22 DUPTABLE                         R5 K11 [{["DataId"], ["UseDataIdValueOnly"] = True, ["ValueWhenNil"] = False, ["Height"] = 24, ["Layout"], ["Schema"]}]
       23 SETTABLEKS                       R1 R5 K2 ["DataId"]
       25 GETIMPORT                        R6 K15 [Enum.FillDirection.Horizontal]
       27 SETTABLEKS                       R6 R5 K9 ["Layout"]
       29 DUPTABLE                         R6 K23 [{["AllowAir"] = True, ["AllowWater"] = True, ["OnClear"], ["OnActivated"], ["PickerId"], ["Type"] = "TerrainMaterialPicker"}]
       30 NEWCLOSURE                       R7 P2
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U4
       35 SETTABLEKS                       R7 R6 K18 ["OnClear"]
       37 NEWCLOSURE                       R7 P3
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R3
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R7 R6 K19 ["OnActivated"]
       47 SETTABLEKS                       R2 R6 K20 ["PickerId"]
       49 SETTABLEKS                       R6 R5 K10 ["Schema"]
       51 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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
       26 JUMPIFNOT                        R4 ; [+42]
       27 NEWTABLE                         R4 0 0
       29 SETTABLEKS                       R4 R0 K1 ["_terrainMaterialPickerRequesters"]
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          UPVAL U6
       38 NEWTABLE                         R5 2 0
       40 GETUPVAL                         R6 3
       41 GETTABLEKS                       R6 R6 K3 ["SourceMaterial"]
       43 MOVE                             R7 R4
       44 GETUPVAL                         R8 3
       45 GETTABLEKS                       R8 R8 K3 ["SourceMaterial"]
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R9 R9 K4 ["SourceMaterialSlot"]
       50 LOADK                            R10 K5 ["Paint/SourceMaterial"]
       51 LOADB                            R11 1
       52 CALL                             R7 4 1
       53 SETTABLE                         R7 R5 R6
       54 GETUPVAL                         R6 3
       55 GETTABLEKS                       R6 R6 K6 ["TargetMaterial"]
       57 MOVE                             R7 R4
       58 GETUPVAL                         R8 3
       59 GETTABLEKS                       R8 R8 K6 ["TargetMaterial"]
       61 GETUPVAL                         R9 3
       62 GETTABLEKS                       R9 R9 K7 ["TargetMaterialSlot"]
       64 LOADK                            R10 K8 ["Paint/TargetMaterial"]
       65 LOADB                            R11 0
       66 CALL                             R7 4 1
       67 SETTABLE                         R7 R5 R6
       68 MOVE                             R3 R5
       69 NEWTABLE                         R4 2 0
       71 GETUPVAL                         R5 4
       72 GETTABLEKS                       R5 R5 K9 ["BrushSettings"]
       74 NEWTABLE                         R6 1 0
       76 GETUPVAL                         R7 7
       77 GETTABLEKS                       R7 R7 K10 ["ManualPlaneLock"]
       79 DUPTABLE                         R8 K12 [{"Schema"}]
       80 DUPTABLE                         R9 K14 [{"OnReset"}]
       81 NEWCLOSURE                       R10 P1
       82 CAPTURE                          UPVAL U8
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U7
       86 CAPTURE                          UPVAL U9
       87 SETTABLEKS                       R10 R9 K13 ["OnReset"]
       89 SETTABLEKS                       R9 R8 K11 ["Schema"]
       91 SETTABLE                         R8 R6 R7
       92 SETTABLE                         R6 R4 R5
       93 GETUPVAL                         R5 4
       94 GETTABLEKS                       R5 R5 K15 ["MaterialSettings"]
       96 SETTABLE                         R3 R4 R5
       97 SETTABLEKS                       R4 R0 K16 ["_overrides"]
       99 LOADN                            R4 0
      100 SETTABLEKS                       R4 R0 K17 ["_brushTime"]
      102 LOADN                            R4 0
      103 SETTABLEKS                       R4 R0 K18 ["_brushUsages"]
      105 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MaterialSettings"]
        3 GETTABLE                         R2 R1 R3
        4 JUMPIFNOT                        R2 ; [+32]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["MaterialMode"]
        8 GETTABLE                         R3 R2 R4
        9 JUMPIFEQKNIL                     R3 ; [+27]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K1 ["MaterialMode"]
       14 GETTABLE                         R3 R2 R4
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K2 ["Replace"]
       18 JUMPIFEQ                         R3 R4 ; [+18]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K3 ["InvalidSourceMode"]
       23 LOADB                            R4 0
       24 SETTABLE                         R4 R2 R3
       25 GETTABLEKS                       R3 R0 K4 ["_terrainMaterialPickerRequesters"]
       27 JUMPIFNOT                        R3 ; [+9]
       28 GETTABLEKS                       R4 R0 K4 ["_terrainMaterialPickerRequesters"]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K5 ["SourceMaterial"]
       33 GETTABLE                         R3 R4 R5
       34 NAMECALL                         R3 R3 K6 ["cancel"]
       36 CALL                             R3 1 0
       37 GETUPVAL                         R3 3
       38 GETTABLEKS                       R3 R3 K7 ["saveForm"]
       40 MOVE                             R4 R0
       41 MOVE                             R5 R1
       42 CALL                             R3 2 0
       43 GETTABLEKS                       R3 R0 K8 ["_operation"]
       45 JUMPIFNOT                        R3 ; [+8]
       46 GETTABLEKS                       R3 R0 K8 ["_operation"]
       48 NAMECALL                         R5 R0 K9 ["getPayload"]
       50 CALL                             R5 1 -1
       51 NAMECALL                         R3 R3 K10 ["updatePayload"]
       53 CALL                             R3 -1 0
       54 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 JUMP                             ; [+24]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["ensure"]
        7 GETTABLEKS                       R2 R0 K1 ["_pluginController"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["MaterialSettings"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K3 ["SourceMaterialSlot"]
       15 CALL                             R1 3 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K0 ["ensure"]
       19 GETTABLEKS                       R2 R0 K1 ["_pluginController"]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K2 ["MaterialSettings"]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K4 ["TargetMaterialSlot"]
       27 CALL                             R1 3 0
       28 GETUPVAL                         R1 4
       29 GETTABLEKS                       R1 R1 K5 ["activate"]
       31 MOVE                             R2 R0
       32 CALL                             R1 1 0
       33 GETTABLEKS                       R1 R0 K6 ["_shortcutController"]
       35 NAMECALL                         R1 R1 K7 ["getMouse"]
       37 CALL                             R1 1 1
       38 GETTABLEKS                       R2 R0 K6 ["_shortcutController"]
       40 GETTABLEKS                       R2 R2 K8 ["MouseDownAction"]
       42 NEWCLOSURE                       R4 P0
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U6
       47 NAMECALL                         R2 R2 K9 ["Connect"]
       49 CALL                             R2 2 1
       50 SETTABLEKS                       R2 R0 K10 ["_mouseDownConnection"]
       52 GETTABLEKS                       R2 R1 K11 ["Button1Up"]
       54 NEWCLOSURE                       R4 P1
       55 CAPTURE                          VAL R0
       56 NAMECALL                         R2 R2 K9 ["Connect"]
       58 CALL                             R2 2 1
       59 SETTABLEKS                       R2 R0 K12 ["_mouseUpConnection"]
       61 GETTABLEKS                       R2 R0 K13 ["_analytics"]
       63 LOADK                            R4 K14 ["Activated"]
       64 GETUPVAL                         R5 7
       65 GETTABLEKS                       R5 R5 K15 ["Paint"]
       67 NAMECALL                         R2 R2 K16 ["report"]
       69 CALL                             R2 3 0
       70 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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
       88 GETTABLEKS                       R10 R9 K20 ["BrushSettings"]
       90 GETTABLEKS                       R11 R9 K21 ["BrushShape"]
       92 GETTABLEKS                       R12 R9 K22 ["Category"]
       94 GETTABLEKS                       R13 R9 K23 ["Gizmo"]
       96 GETTABLEKS                       R14 R9 K24 ["MaterialMode"]
       98 GETTABLEKS                       R15 R9 K25 ["MaterialSettings"]
      100 GETTABLEKS                       R16 R9 K26 ["PivotPosition"]
      102 GETTABLEKS                       R17 R9 K27 ["PlaneLock"]
      104 GETTABLEKS                       R18 R9 K28 ["Snapping"]
      106 GETTABLEKS                       R19 R9 K29 ["Storage"]
      108 GETTABLEKS                       R20 R9 K30 ["Tab"]
      110 GETTABLEKS                       R21 R9 K31 ["Tool"]
      112 NEWTABLE                         R22 0 2
      114 DUPTABLE                         R23 K34 [{"Defaults", "Id"}]
      115 NEWTABLE                         R24 8 0
      117 GETTABLEKS                       R25 R10 K21 ["BrushShape"]
      119 GETTABLEKS                       R26 R11 K35 ["Sphere"]
      121 SETTABLE                         R26 R24 R25
      122 GETTABLEKS                       R25 R10 K36 ["BrushSize"]
      124 DUPTABLE                         R26 K42 [{["Height"] = 6, ["Locked"] = True, ["Size"] = 6}]
      125 SETTABLE                         R26 R24 R25
      126 GETTABLEKS                       R25 R10 K26 ["PivotPosition"]
      128 GETTABLEKS                       R26 R16 K43 ["Center"]
      130 SETTABLE                         R26 R24 R25
      131 GETTABLEKS                       R25 R10 K28 ["Snapping"]
      133 GETTABLEKS                       R26 R18 K44 ["Off"]
      135 SETTABLE                         R26 R24 R25
      136 GETTABLEKS                       R25 R10 K45 ["State"]
      138 DUPTABLE                         R26 K48 [{["Position"] = {0, 0, 0}}]
      139 SETTABLE                         R26 R24 R25
      140 GETTABLEKS                       R25 R10 K49 ["IgnoreWater"]
      142 LOADB                            R26 0
      143 SETTABLE                         R26 R24 R25
      144 GETTABLEKS                       R25 R10 K50 ["IgnoreParts"]
      146 LOADB                            R26 1
      147 SETTABLE                         R26 R24 R25
      148 SETTABLEKS                       R24 R23 K32 ["Defaults"]
      150 GETTABLEKS                       R24 R12 K20 ["BrushSettings"]
      152 SETTABLEKS                       R24 R23 K33 ["Id"]
      154 DUPTABLE                         R24 K34 [{"Defaults", "Id"}]
      155 NEWTABLE                         R25 4 0
      157 GETTABLEKS                       R26 R15 K51 ["InvalidSourceMode"]
      159 LOADB                            R27 0
      160 SETTABLE                         R27 R25 R26
      161 GETTABLEKS                       R26 R15 K24 ["MaterialMode"]
      163 GETTABLEKS                       R27 R14 K52 ["Paint"]
      165 SETTABLE                         R27 R25 R26
      166 GETTABLEKS                       R26 R15 K53 ["SourceMaterial"]
      168 GETIMPORT                        R27 K57 [Enum.Material.Grass]
      170 SETTABLE                         R27 R25 R26
      171 GETTABLEKS                       R26 R15 K58 ["TargetMaterial"]
      173 GETIMPORT                        R27 K57 [Enum.Material.Grass]
      175 SETTABLE                         R27 R25 R26
      176 SETTABLEKS                       R25 R24 K32 ["Defaults"]
      178 GETTABLEKS                       R25 R12 K25 ["MaterialSettings"]
      180 SETTABLEKS                       R25 R24 K33 ["Id"]
      182 SETLIST                          R22 R23 2 [1]
      184 NEWTABLE                         R23 0 2
      186 DUPTABLE                         R24 K60 [{"Id", "Schema"}]
      187 GETTABLEKS                       R25 R13 K61 ["Brush"]
      189 SETTABLEKS                       R25 R24 K33 ["Id"]
      191 DUPTABLE                         R25 K63 [{"Type"}]
      192 GETTABLEKS                       R26 R13 K61 ["Brush"]
      194 SETTABLEKS                       R26 R25 K62 ["Type"]
      196 SETTABLEKS                       R25 R24 K59 ["Schema"]
      198 DUPTABLE                         R25 K60 [{"Id", "Schema"}]
      199 GETTABLEKS                       R26 R13 K64 ["Plane"]
      201 SETTABLEKS                       R26 R25 K33 ["Id"]
      203 DUPTABLE                         R26 K63 [{"Type"}]
      204 GETTABLEKS                       R27 R13 K64 ["Plane"]
      206 SETTABLEKS                       R27 R26 K62 ["Type"]
      208 SETTABLEKS                       R26 R25 K59 ["Schema"]
      210 SETLIST                          R23 R24 2 [1]
      212 GETTABLEKS                       R26 R21 K52 ["Paint"]
      214 GETTABLEKS                       R27 R20 K65 ["Edit"]
      216 MOVE                             R28 R22
      217 MOVE                             R29 R23
      218 NAMECALL                         R24 R1 K66 ["new"]
      220 CALL                             R24 5 1
      221 DUPCLOSURE                       R25 K67 [PROTO_0]
      222 CAPTURE                          VAL R8
      223 CAPTURE                          VAL R6
      224 CAPTURE                          VAL R12
      225 CAPTURE                          VAL R15
      226 DUPCLOSURE                       R26 K68 [PROTO_11]
      227 CAPTURE                          VAL R1
      228 CAPTURE                          VAL R8
      229 CAPTURE                          VAL R7
      230 CAPTURE                          VAL R15
      231 CAPTURE                          VAL R12
      232 CAPTURE                          VAL R19
      233 CAPTURE                          VAL R14
      234 CAPTURE                          VAL R10
      235 CAPTURE                          VAL R5
      236 CAPTURE                          VAL R3
      237 SETTABLEKS                       R26 R24 K69 ["init"]
      239 DUPCLOSURE                       R26 K70 [PROTO_12]
      240 CAPTURE                          VAL R12
      241 CAPTURE                          VAL R15
      242 CAPTURE                          VAL R14
      243 CAPTURE                          VAL R1
      244 SETTABLEKS                       R26 R24 K71 ["saveForm"]
      246 DUPCLOSURE                       R26 K72 [PROTO_13]
      247 CAPTURE                          VAL R1
      248 SETTABLEKS                       R26 R24 K73 ["saveGizmos"]
      250 DUPCLOSURE                       R26 K74 [PROTO_14]
      251 CAPTURE                          VAL R4
      252 SETTABLEKS                       R26 R24 K75 ["startOperation"]
      254 DUPCLOSURE                       R26 K76 [PROTO_17]
      255 CAPTURE                          VAL R8
      256 CAPTURE                          VAL R6
      257 CAPTURE                          VAL R12
      258 CAPTURE                          VAL R15
      259 CAPTURE                          VAL R1
      260 CAPTURE                          VAL R10
      261 CAPTURE                          VAL R17
      262 CAPTURE                          VAL R21
      263 SETTABLEKS                       R26 R24 K77 ["activate"]
      265 DUPCLOSURE                       R26 K78 [PROTO_18]
      266 CAPTURE                          VAL R1
      267 SETTABLEKS                       R26 R24 K79 ["deactivate"]
      269 DUPCLOSURE                       R26 K80 [PROTO_19]
      270 CAPTURE                          VAL R2
      271 CAPTURE                          VAL R21
      272 SETTABLEKS                       R26 R24 K81 ["reportToolAnalytics"]
      274 RETURN                           R24 1
