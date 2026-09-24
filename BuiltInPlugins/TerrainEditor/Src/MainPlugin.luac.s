PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["isRestartingExpandedTerrainPlace"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K4 [{["showExpandedTerrainRestartDialog"] = False}]
        9 NAMECALL                         R0 R0 K5 ["setState"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PlaceSessionContextBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R1 R0 K2 ["GetPlaceIsPersistedToCloudAsync"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 1
        6 DUPTABLE                         R4 K3 [{"expandedTerrainPlaceKind"}]
        7 JUMPIFNOT                        R0 ; [+3]
        8 JUMPIFNOT                        R1 ; [+2]
        9 LOADK                            R5 K4 ["Cloud"]
       10 JUMP                             ; [+1]
       11 LOADK                            R5 K5 ["Local"]
       12 SETTABLEKS                       R5 R4 K2 ["expandedTerrainPlaceKind"]
       14 NAMECALL                         R2 R2 K6 ["setState"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R1 R0 K2 ["ActivateAsync"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+15]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R4 K4 ["Failed to close place for Expanded Terrain: "]
       10 FASTCALL1                        TOSTRING R1 ; [+3]
       11 MOVE                             R6 R1
       12 GETIMPORT                        R5 K6 [tostring]
       14 CALL                             R5 1 1
       15 CONCAT                           R3 R4 R5
       16 CALL                             R2 1 0
       17 GETUPVAL                         R2 2
       18 DUPTABLE                         R4 K9 [{["showExpandedTerrainRestartDialog"] = True}]
       19 NAMECALL                         R2 R2 K10 ["setState"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["closeExpandedTerrainRestartDialog"]
        3 CALL                             R0 0 0
        4 GETIMPORT                        R0 K3 [task.spawn]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PlaceSessionContextBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R1 R0 K2 ["GetPlaceIsPersistedToCloudAsync"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R2 R0 K3 ["GetPlaceIdAsync"]
       10 CALL                             R2 1 1
       11 NAMECALL                         R3 R0 K4 ["GetUniverseIdAsync"]
       13 CALL                             R3 1 1
       14 MOVE                             R5 R1
       15 JUMPIFNOT                        R5 ; [+3]
       16 MOVE                             R5 R2
       17 JUMPIFNOT                        R5 ; [+1]
       18 MOVE                             R5 R3
       19 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       21 LOADK                            R6 K5 ["Current place is not persisted to cloud"]
       22 GETIMPORT                        R4 K7 [assert]
       24 CALL                             R4 2 0
       25 GETUPVAL                         R4 0
       26 LOADK                            R6 K8 ["PublishMediator"]
       27 NAMECALL                         R4 R4 K1 ["GetPluginComponent"]
       29 CALL                             R4 2 1
       30 DUPTABLE                         R7 K14 [{["ForceSave"] = True, ["PersistToEdgeIfTeamCreate"] = True, ["PublishType"], ["WaitUntilCanPublish"] = True}]
       31 GETIMPORT                        R8 K18 [Enum.PlacePublishType.Save]
       33 SETTABLEKS                       R8 R7 K12 ["PublishType"]
       35 NAMECALL                         R5 R4 K19 ["SavePlaceAsync"]
       37 CALL                             R5 2 0
       38 GETUPVAL                         R5 0
       39 LOADK                            R7 K20 ["PlaceOpener"]
       40 NAMECALL                         R5 R5 K1 ["GetPluginComponent"]
       42 CALL                             R5 2 1
       43 DUPTABLE                         R8 K22 [{"PlaceLaunchInfo"}]
       44 DUPTABLE                         R9 K25 [{"PlaceId", "UniverseId"}]
       45 SETTABLEKS                       R2 R9 K23 ["PlaceId"]
       47 SETTABLEKS                       R3 R9 K24 ["UniverseId"]
       49 SETTABLEKS                       R9 R8 K21 ["PlaceLaunchInfo"]
       51 LOADB                            R9 1
       52 NAMECALL                         R6 R5 K26 ["ReplacePlaceAsync"]
       54 CALL                             R6 3 0
       55 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+15]
        6 GETIMPORT                        R2 K3 [warn]
        8 LOADK                            R4 K4 ["Failed to save and reopen place for Expanded Terrain: "]
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R6 R1
       11 GETIMPORT                        R5 K6 [tostring]
       13 CALL                             R5 1 1
       14 CONCAT                           R3 R4 R5
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 1
       17 DUPTABLE                         R4 K9 [{["isRestartingExpandedTerrainPlace"] = False}]
       18 NAMECALL                         R2 R2 K10 ["setState"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETIMPORT                        R0 K6 [task.spawn]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["expandedTerrainPlaceKind"]
        5 JUMPIFNOTEQKS                    R0 K2 ["Cloud"] ; [+6]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K3 ["restartCloudExpandedTerrainPlace"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["state"]
       15 GETTABLEKS                       R0 R0 K1 ["expandedTerrainPlaceKind"]
       17 JUMPIFNOTEQKS                    R0 K4 ["Local"] ; [+5]
       19 GETUPVAL                         R0 0
       20 GETTABLEKS                       R0 R0 K5 ["closeLocalExpandedTerrainPlace"]
       22 CALL                             R0 0 0
       23 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["onClose"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K3 ["onRestore"]
       14 LOADB                            R1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["toolController"]
        8 JUMPIFNOT                        R0 ; [+43]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K4 ["toolController"]
       12 NAMECALL                         R0 R0 K5 ["getTool"]
       14 CALL                             R0 1 1
       15 GETTABLEKS                       R0 R0 K6 ["_name"]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K7 ["Empty"]
       20 JUMPIFEQ                         R0 R1 ; [+31]
       22 GETUPVAL                         R0 0
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K4 ["toolController"]
       26 NAMECALL                         R1 R1 K8 ["getToolIndex"]
       28 CALL                             R1 1 1
       29 SETTABLEKS                       R1 R0 K9 ["toolIndex"]
       31 GETUPVAL                         R0 0
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K4 ["toolController"]
       35 NAMECALL                         R1 R1 K10 ["getTabIndex"]
       37 CALL                             R1 1 1
       38 SETTABLEKS                       R1 R0 K11 ["tabIndex"]
       40 GETUPVAL                         R0 0
       41 GETTABLEKS                       R0 R0 K4 ["toolController"]
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K11 ["tabIndex"]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R3 R3 K9 ["toolIndex"]
       49 NAMECALL                         R0 R0 K12 ["setTabAndToolIndex"]
       51 CALL                             R0 3 0
       52 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        5 JUMPIFNOT                        R0 ; [+28]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
       11 GETTABLEKS                       R0 R0 K2 ["mainButton"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["state"]
       16 GETTABLEKS                       R2 R2 K4 ["enabled"]
       18 NAMECALL                         R0 R0 K5 ["SetActive"]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K0 ["props"]
       24 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
       26 GETTABLEKS                       R0 R0 K6 ["mainButtonClickedSignal"]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K7 ["toggleEnabled"]
       31 NAMECALL                         R0 R0 K8 ["Connect"]
       33 CALL                             R0 2 0
       34 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["toolController"]
       10 JUMPIFNOT                        R1 ; [+28]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K4 ["tabIndex"]
       14 JUMPIFNOT                        R1 ; [+24]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K5 ["toolIndex"]
       18 JUMPIFNOT                        R1 ; [+20]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K3 ["toolController"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K4 ["tabIndex"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K5 ["toolIndex"]
       28 NAMECALL                         R1 R1 K6 ["setTabAndToolIndex"]
       30 CALL                             R1 3 0
       31 GETUPVAL                         R1 0
       32 LOADNIL                          R2
       33 SETTABLEKS                       R2 R1 K5 ["toolIndex"]
       35 GETUPVAL                         R1 0
       36 LOADNIL                          R2
       37 SETTABLEKS                       R2 R1 K4 ["tabIndex"]
       39 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["onRestore"]
        6 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["onClose"]
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["terrainMaterialTelemetry"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pluginController"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["MaterialSettings"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K2 ["SourceMaterialSlot"]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K3 ["PlacePersistent"]
       12 NAMECALL                         R0 R0 K4 ["getGlobal"]
       14 CALL                             R0 4 1
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K5 ["isValidSlotIndex"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 1
       20 JUMPIFNOT                        R1 ; [+12]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K6 ["terrainPaletteCommunication"]
       24 GETUPVAL                         R3 5
       25 GETTABLEKS                       R3 R3 K7 ["CPC_EVENTS"]
       27 GETTABLEKS                       R3 R3 K8 ["TERRAIN_EDITOR_SOURCE_MATERIAL_CHANGED"]
       29 MOVE                             R4 R0
       30 NAMECALL                         R1 R1 K9 ["Fire"]
       32 CALL                             R1 3 0
       33 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toolController"]
        3 NAMECALL                         R0 R0 K1 ["getTool"]
        5 CALL                             R0 1 1
        6 GETTABLEKS                       R0 R0 K2 ["OnInternalsChanged"]
        8 NAMECALL                         R0 R0 K3 ["Fire"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isValidSlotIndex"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["pluginController"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["MaterialSettings"]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K3 ["SourceMaterialSlot"]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K4 ["PlacePersistent"]
       19 NAMECALL                         R1 R1 K5 ["getGlobal"]
       21 CALL                             R1 4 1
       22 JUMPIFNOTEQ                      R1 R0 ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K1 ["pluginController"]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K2 ["MaterialSettings"]
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R5 R5 K3 ["SourceMaterialSlot"]
       34 MOVE                             R6 R0
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K4 ["PlacePersistent"]
       38 NAMECALL                         R2 R2 K6 ["setGlobal"]
       40 CALL                             R2 5 0
       41 GETIMPORT                        R2 K9 [task.spawn]
       43 NEWCLOSURE                       R3 P0
       44 CAPTURE                          UPVAL U1
       45 CALL                             R2 1 0
       46 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["MaterialSettings"]
        3 JUMPIFNOTEQ                      R0 R4 ; [+21]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["SourceMaterialSlot"]
        8 JUMPIFNOTEQ                      R1 R4 ; [+16]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["PlacePersistent"]
       13 JUMPIFNOTEQ                      R3 R4 ; [+11]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K3 ["isValidSlotIndex"]
       18 MOVE                             R5 R2
       19 CALL                             R4 1 1
       20 JUMPIFNOT                        R4 ; [+4]
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K4 ["publishSourceMaterial"]
       24 CALL                             R4 0 0
       25 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pluginController"]
        3 NAMECALL                         R0 R0 K1 ["resume"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pluginController"]
        3 NAMECALL                         R0 R0 K1 ["pause"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 LOADB                            R3 0
        3 GETTABLEKS                       R4 R1 K1 ["PluginLoaderContext"]
        5 JUMPIFNOT                        R4 ; [+10]
        6 GETTABLEKS                       R4 R1 K1 ["PluginLoaderContext"]
        8 GETTABLEKS                       R4 R4 K2 ["mainDockWidget"]
       10 LOADB                            R5 0
       11 JUMPIFEQKNIL                     R4 ; [+3]
       13 GETTABLEKS                       R5 R4 K3 ["Enabled"]
       15 MOVE                             R3 R5
       16 DUPTABLE                         R6 K10 [{["expandedTerrainPlaceKind"] = , ["enabled"], ["isRestartingExpandedTerrainPlace"] = False, ["showExpandedTerrainRestartDialog"] = False}]
       17 SETTABLEKS                       R3 R6 K6 ["enabled"]
       19 NAMECALL                         R4 R0 K11 ["setState"]
       21 CALL                             R4 2 0
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R4 R0 K12 ["closeExpandedTerrainRestartDialog"]
       26 NEWCLOSURE                       R4 P1
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R4 R0 K13 ["resolveExpandedTerrainPlaceKind"]
       31 NEWCLOSURE                       R4 P2
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U0
       35 SETTABLEKS                       R4 R0 K14 ["closeLocalExpandedTerrainPlace"]
       37 NEWCLOSURE                       R4 P3
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R4 R0 K15 ["restartCloudExpandedTerrainPlace"]
       42 NEWCLOSURE                       R4 P4
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R4 R0 K16 ["restartExpandedTerrainPlace"]
       46 NEWCLOSURE                       R4 P5
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R4 R0 K17 ["toggleEnabled"]
       50 NEWCLOSURE                       R4 P6
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U1
       53 SETTABLEKS                       R4 R0 K18 ["onClose"]
       55 NEWCLOSURE                       R4 P7
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R4 R0 K19 ["onCreated"]
       59 NEWCLOSURE                       R4 P8
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R4 R0 K20 ["onRestore"]
       63 NEWCLOSURE                       R4 P9
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R4 R0 K21 ["onWidgetEnabledChanged"]
       67 GETUPVAL                         R4 2
       68 GETTABLEKS                       R4 R4 K22 ["Localization"]
       70 GETTABLEKS                       R4 R4 K23 ["new"]
       72 DUPTABLE                         R5 K29 [{["libraries"], ["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "TerrainEditor"}]
       73 NEWTABLE                         R6 2 0
       75 GETUPVAL                         R7 3
       76 GETTABLEKS                       R7 R7 K30 ["Resources"]
       78 GETTABLEKS                       R7 R7 K31 ["LOCALIZATION_PROJECT_NAME"]
       80 DUPTABLE                         R8 K32 [{"stringResourceTable", "translationResourceTable"}]
       81 GETUPVAL                         R9 3
       82 GETTABLEKS                       R9 R9 K30 ["Resources"]
       84 GETTABLEKS                       R9 R9 K33 ["SourceStrings"]
       86 SETTABLEKS                       R9 R8 K25 ["stringResourceTable"]
       88 GETUPVAL                         R9 3
       89 GETTABLEKS                       R9 R9 K30 ["Resources"]
       91 GETTABLEKS                       R9 R9 K34 ["LocalizedStrings"]
       93 SETTABLEKS                       R9 R8 K26 ["translationResourceTable"]
       95 SETTABLE                         R8 R6 R7
       96 GETUPVAL                         R7 4
       97 GETTABLEKS                       R7 R7 K30 ["Resources"]
       99 GETTABLEKS                       R7 R7 K31 ["LOCALIZATION_PROJECT_NAME"]
      101 DUPTABLE                         R8 K32 [{"stringResourceTable", "translationResourceTable"}]
      102 GETUPVAL                         R9 4
      103 GETTABLEKS                       R9 R9 K30 ["Resources"]
      105 GETTABLEKS                       R9 R9 K33 ["SourceStrings"]
      107 SETTABLEKS                       R9 R8 K25 ["stringResourceTable"]
      109 GETUPVAL                         R9 4
      110 GETTABLEKS                       R9 R9 K30 ["Resources"]
      112 GETTABLEKS                       R9 R9 K34 ["LocalizedStrings"]
      114 SETTABLEKS                       R9 R8 K26 ["translationResourceTable"]
      116 SETTABLE                         R8 R6 R7
      117 SETTABLEKS                       R6 R5 K24 ["libraries"]
      119 GETUPVAL                         R6 5
      120 SETTABLEKS                       R6 R5 K25 ["stringResourceTable"]
      122 GETUPVAL                         R6 6
      123 SETTABLEKS                       R6 R5 K26 ["translationResourceTable"]
      125 CALL                             R4 1 1
      126 SETTABLEKS                       R4 R0 K35 ["localization"]
      128 GETUPVAL                         R4 7
      129 GETTABLEKS                       R4 R4 K23 ["new"]
      131 GETTABLEKS                       R5 R1 K36 ["Telemetry"]
      133 JUMPIF                           R5 ; [+3]
      134 GETUPVAL                         R5 8
      135 GETTABLEKS                       R5 R5 K37 ["TelemetryServiceInterface"]
      137 CALL                             R4 1 1
      138 SETTABLEKS                       R4 R0 K38 ["terrainMaterialTelemetry"]
      140 GETUPVAL                         R4 2
      141 GETTABLEKS                       R4 R4 K39 ["Analytics"]
      143 GETTABLEKS                       R4 R4 K23 ["new"]
      145 NEWCLOSURE                       R5 P10
      146 CAPTURE                          UPVAL U9
      147 CAPTURE                          VAL R0
      148 CALL                             R4 1 1
      149 SETTABLEKS                       R4 R0 K40 ["analytics"]
      151 GETUPVAL                         R4 10
      152 GETTABLEKS                       R4 R4 K23 ["new"]
      154 MOVE                             R5 R2
      155 GETTABLEKS                       R6 R0 K35 ["localization"]
      157 CALL                             R4 2 1
      158 SETTABLEKS                       R4 R0 K41 ["shortcutController"]
      160 GETUPVAL                         R4 11
      161 GETTABLEKS                       R4 R4 K23 ["new"]
      163 MOVE                             R5 R2
      164 CALL                             R4 1 1
      165 SETTABLEKS                       R4 R0 K42 ["pluginController"]
      167 GETUPVAL                         R4 12
      168 GETTABLEKS                       R4 R4 K23 ["new"]
      170 CALL                             R4 0 1
      171 SETTABLEKS                       R4 R0 K43 ["studioServices"]
      173 GETUPVAL                         R4 13
      174 CALL                             R4 0 1
      175 SETTABLEKS                       R4 R0 K44 ["stylizer"]
      177 GETUPVAL                         R4 14
      178 GETTABLEKS                       R4 R4 K23 ["new"]
      180 GETTABLEKS                       R5 R0 K42 ["pluginController"]
      182 GETTABLEKS                       R6 R0 K41 ["shortcutController"]
      184 GETTABLEKS                       R7 R0 K40 ["analytics"]
      186 GETTABLEKS                       R8 R0 K35 ["localization"]
      188 GETTABLEKS                       R9 R0 K44 ["stylizer"]
      190 CALL                             R4 5 1
      191 SETTABLEKS                       R4 R0 K45 ["toolController"]
      193 GETUPVAL                         R4 15
      194 CALL                             R4 0 1
      195 JUMPIFNOT                        R4 ; [+78]
      196 GETUPVAL                         R4 16
      197 GETTABLEKS                       R4 R4 K23 ["new"]
      199 GETUPVAL                         R5 17
      200 GETTABLEKS                       R5 R5 K46 ["EDITOR_CPC_ID"]
      202 CALL                             R4 1 1
      203 SETTABLEKS                       R4 R0 K47 ["terrainPaletteCommunication"]
      205 NEWCLOSURE                       R4 P11
      206 CAPTURE                          VAL R0
      207 CAPTURE                          UPVAL U18
      208 CAPTURE                          UPVAL U19
      209 CAPTURE                          UPVAL U20
      210 CAPTURE                          UPVAL U21
      211 CAPTURE                          UPVAL U17
      212 SETTABLEKS                       R4 R0 K48 ["publishSourceMaterial"]
      214 GETTABLEKS                       R4 R0 K47 ["terrainPaletteCommunication"]
      216 GETUPVAL                         R6 17
      217 GETTABLEKS                       R6 R6 K49 ["CPC_EVENTS"]
      219 GETTABLEKS                       R6 R6 K50 ["TERRAIN_PALETTE_SELECTION_CHANGED"]
      221 NEWCLOSURE                       R7 P12
      222 CAPTURE                          UPVAL U21
      223 CAPTURE                          VAL R0
      224 CAPTURE                          UPVAL U18
      225 CAPTURE                          UPVAL U19
      226 CAPTURE                          UPVAL U20
      227 NAMECALL                         R4 R4 K51 ["Connect"]
      229 CALL                             R4 3 1
      230 SETTABLEKS                       R4 R0 K52 ["terrainPaletteSelectionChangedConnection"]
      232 GETTABLEKS                       R4 R0 K42 ["pluginController"]
      234 GETTABLEKS                       R4 R4 K53 ["GlobalChanged"]
      236 NEWCLOSURE                       R6 P13
      237 CAPTURE                          UPVAL U18
      238 CAPTURE                          UPVAL U19
      239 CAPTURE                          UPVAL U20
      240 CAPTURE                          UPVAL U21
      241 CAPTURE                          VAL R0
      242 NAMECALL                         R4 R4 K51 ["Connect"]
      244 CALL                             R4 2 1
      245 SETTABLEKS                       R4 R0 K54 ["sourceMaterialChangedConnection"]
      247 GETTABLEKS                       R4 R0 K47 ["terrainPaletteCommunication"]
      249 GETUPVAL                         R6 17
      250 GETTABLEKS                       R6 R6 K49 ["CPC_EVENTS"]
      252 GETTABLEKS                       R6 R6 K55 ["TERRAIN_PALETTE_EDITOR_READY"]
      254 GETTABLEKS                       R7 R0 K48 ["publishSourceMaterial"]
      256 NAMECALL                         R4 R4 K51 ["Connect"]
      258 CALL                             R4 3 1
      259 SETTABLEKS                       R4 R0 K56 ["terrainPaletteEditorReadyConnection"]
      261 GETTABLEKS                       R4 R0 K48 ["publishSourceMaterial"]
      263 CALL                             R4 0 0
      264 GETTABLEKS                       R4 R0 K47 ["terrainPaletteCommunication"]
      266 GETUPVAL                         R6 17
      267 GETTABLEKS                       R6 R6 K49 ["CPC_EVENTS"]
      269 GETTABLEKS                       R6 R6 K57 ["TERRAIN_EDITOR_READY"]
      271 NAMECALL                         R4 R4 K58 ["Fire"]
      273 CALL                             R4 2 0
      274 NEWCLOSURE                       R4 P14
      275 CAPTURE                          VAL R0
      276 SETTABLEKS                       R4 R0 K59 ["onFocused"]
      278 NEWCLOSURE                       R4 P15
      279 CAPTURE                          VAL R0
      280 SETTABLEKS                       R4 R0 K60 ["onUnfocused"]
      282 GETTABLEKS                       R5 R0 K61 ["props"]
      284 GETTABLEKS                       R5 R5 K1 ["PluginLoaderContext"]
      286 JUMPIFNOT                        R5 ; [+7]
      287 GETTABLEKS                       R4 R0 K61 ["props"]
      289 GETTABLEKS                       R4 R4 K1 ["PluginLoaderContext"]
      291 GETTABLEKS                       R4 R4 K62 ["mainButton"]
      293 JUMP                             ; [+1]
      294 LOADNIL                          R4
      295 SETTABLEKS                       R4 R0 K63 ["button"]
      297 GETUPVAL                         R4 22
      298 GETTABLEKS                       R4 R4 K64 ["Util"]
      300 GETTABLEKS                       R4 R4 K65 ["createFoundationDesignBinding"]
      302 CALL                             R4 0 2
      303 SETTABLEKS                       R5 R0 K66 ["onFoundationStyleSheetChange"]
      305 GETUPVAL                         R6 23
      306 GETTABLEKS                       R7 R1 K0 ["Plugin"]
      308 LOADNIL                          R8
      309 LOADNIL                          R9
      310 NEWTABLE                         R10 0 1
      312 MOVE                             R11 R4
      313 SETLIST                          R10 R11 1 [1]
      315 CALL                             R6 4 1
      316 SETTABLEKS                       R6 R0 K67 ["design"]
      318 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K4 [{[1] = , ["showExpandedTerrainRestartDialog"] = True}]
        2 NAMECALL                         R0 R0 K5 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K6 ["resolveExpandedTerrainPlaceKind"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_25:
        0 GETIMPORT                        R2 K1 [workspace]
        2 GETTABLEKS                       R2 R2 K2 ["Terrain"]
        4 FASTCALL2K                       ASSERT R2 K3 ; [+4]
        6 LOADK                            R3 K3 ["Workspace must contain Terrain"]
        7 GETIMPORT                        R1 K5 [assert]
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R3 R0 K6 ["props"]
       12 GETTABLEKS                       R3 R3 K7 ["PluginLoaderContext"]
       14 JUMPIFNOT                        R3 ; [+9]
       15 GETTABLEKS                       R2 R0 K6 ["props"]
       17 GETTABLEKS                       R2 R2 K7 ["PluginLoaderContext"]
       19 GETTABLEKS                       R2 R2 K8 ["signals"]
       21 GETTABLEKS                       R2 R2 K9 ["GridBackendReloadRequired"]
       23 JUMP                             ; [+2]
       24 GETTABLEKS                       R2 R1 K9 ["GridBackendReloadRequired"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          VAL R0
       28 NAMECALL                         R3 R2 K10 ["Connect"]
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R0 K11 ["gridBackendReloadRequiredConnection"]
       33 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["button"]
        2 GETTABLEKS                       R3 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R3 K2 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["SetActive"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["gridBackendReloadRequiredConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["gridBackendReloadRequiredConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["sourceMaterialChangedConnection"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["sourceMaterialChangedConnection"]
       13 NAMECALL                         R1 R1 K1 ["Disconnect"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K3 ["terrainPaletteSelectionChangedConnection"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R1 R0 K3 ["terrainPaletteSelectionChangedConnection"]
       21 NAMECALL                         R1 R1 K1 ["Disconnect"]
       23 CALL                             R1 1 0
       24 GETTABLEKS                       R1 R0 K4 ["terrainPaletteEditorReadyConnection"]
       26 JUMPIFNOT                        R1 ; [+5]
       27 GETTABLEKS                       R1 R0 K4 ["terrainPaletteEditorReadyConnection"]
       29 NAMECALL                         R1 R1 K1 ["Disconnect"]
       31 CALL                             R1 1 0
       32 GETTABLEKS                       R1 R0 K5 ["pluginController"]
       34 NAMECALL                         R1 R1 K6 ["destroy"]
       36 CALL                             R1 1 0
       37 GETTABLEKS                       R1 R0 K7 ["toolController"]
       39 NAMECALL                         R1 R1 K6 ["destroy"]
       41 CALL                             R1 1 0
       42 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 NEWTABLE                         R5 0 9
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K4 ["new"]
       13 MOVE                             R7 R3
       14 CALL                             R6 1 1
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K4 ["new"]
       18 NAMECALL                         R8 R3 K5 ["getMouse"]
       20 CALL                             R8 1 -1
       21 CALL                             R7 -1 1
       22 GETTABLEKS                       R8 R0 K6 ["stylizer"]
       24 GETTABLEKS                       R9 R0 K7 ["localization"]
       26 GETTABLEKS                       R10 R0 K8 ["analytics"]
       28 GETTABLEKS                       R11 R0 K9 ["shortcutController"]
       30 GETTABLEKS                       R12 R0 K10 ["pluginController"]
       32 GETTABLEKS                       R13 R0 K11 ["studioServices"]
       34 GETTABLEKS                       R14 R0 K12 ["toolController"]
       36 SETLIST                          R5 R6 9 [1]
       38 MOVE                             R7 R5
       39 GETUPVAL                         R8 2
       40 GETTABLEKS                       R8 R8 K4 ["new"]
       42 GETTABLEKS                       R9 R0 K13 ["design"]
       44 CALL                             R8 1 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R6 K16 [table.insert]
       48 CALL                             R6 -1 0
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R6 R6 K17 ["provide"]
       52 MOVE                             R7 R5
       53 DUPTABLE                         R8 K20 [{"ExpandedTerrainRestartDialog", "MainWidget"}]
       54 GETTABLEKS                       R10 R2 K21 ["showExpandedTerrainRestartDialog"]
       56 JUMPIFNOT                        R10 ; [+43]
       57 GETTABLEKS                       R10 R2 K22 ["expandedTerrainPlaceKind"]
       59 JUMPIFEQKNIL                     R10 ; [+40]
       61 GETUPVAL                         R9 4
       62 GETTABLEKS                       R9 R9 K23 ["createElement"]
       64 GETUPVAL                         R10 5
       65 DUPTABLE                         R11 K25 [{"overlayGui"}]
       66 GETTABLEKS                       R13 R1 K26 ["PluginLoaderContext"]
       68 JUMPIFNOT                        R13 ; [+5]
       69 GETTABLEKS                       R12 R1 K26 ["PluginLoaderContext"]
       71 GETTABLEKS                       R12 R12 K27 ["mainDockWidget"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R12
       75 SETTABLEKS                       R12 R11 K24 ["overlayGui"]
       77 DUPTABLE                         R12 K29 [{"Dialog"}]
       78 GETUPVAL                         R13 4
       79 GETTABLEKS                       R13 R13 K23 ["createElement"]
       81 GETUPVAL                         R14 6
       82 DUPTABLE                         R15 K33 [{"IsRestarting", "OnClose", "OnRestart"}]
       83 GETTABLEKS                       R16 R2 K34 ["isRestartingExpandedTerrainPlace"]
       85 SETTABLEKS                       R16 R15 K30 ["IsRestarting"]
       87 GETTABLEKS                       R16 R0 K35 ["closeExpandedTerrainRestartDialog"]
       89 SETTABLEKS                       R16 R15 K31 ["OnClose"]
       91 GETTABLEKS                       R16 R0 K36 ["restartExpandedTerrainPlace"]
       93 SETTABLEKS                       R16 R15 K32 ["OnRestart"]
       95 CALL                             R13 2 1
       96 SETTABLEKS                       R13 R12 K28 ["Dialog"]
       98 CALL                             R9 3 1
       99 JUMP                             ; [+1]
      100 LOADNIL                          R9
      101 SETTABLEKS                       R9 R8 K18 ["ExpandedTerrainRestartDialog"]
      103 GETUPVAL                         R9 4
      104 GETTABLEKS                       R9 R9 K23 ["createElement"]
      106 GETUPVAL                         R10 7
      107 NEWTABLE                         R11 16 0
      109 LOADK                            R12 K37 ["TerrainEditor"]
      110 SETTABLEKS                       R12 R11 K38 ["Id"]
      112 SETTABLEKS                       R4 R11 K39 ["Enabled"]
      114 GETTABLEKS                       R12 R0 K7 ["localization"]
      116 LOADK                            R14 K2 ["Plugin"]
      117 LOADK                            R15 K40 ["Name"]
      118 NAMECALL                         R12 R12 K41 ["getText"]
      120 CALL                             R12 3 1
      121 SETTABLEKS                       R12 R11 K42 ["Title"]
      123 GETIMPORT                        R12 K46 [Enum.ZIndexBehavior.Sibling]
      125 SETTABLEKS                       R12 R11 K44 ["ZIndexBehavior"]
      127 GETIMPORT                        R12 K49 [Enum.InitialDockState.Left]
      129 SETTABLEKS                       R12 R11 K47 ["InitialDockState"]
      131 GETIMPORT                        R12 K51 [Vector2.new]
      133 LOADN                            R13 640
      134 LOADN                            R14 480
      135 CALL                             R12 2 1
      136 SETTABLEKS                       R12 R11 K52 ["Size"]
      138 GETIMPORT                        R12 K51 [Vector2.new]
      140 LOADN                            R13 350
      141 LOADN                            R14 200
      142 CALL                             R12 2 1
      143 SETTABLEKS                       R12 R11 K53 ["MinSize"]
      145 GETTABLEKS                       R12 R0 K54 ["onClose"]
      147 SETTABLEKS                       R12 R11 K31 ["OnClose"]
      149 LOADB                            R12 1
      150 SETTABLEKS                       R12 R11 K55 ["ShouldRestore"]
      152 GETTABLEKS                       R12 R0 K56 ["onCreated"]
      154 SETTABLEKS                       R12 R11 K57 ["OnWidgetCreated"]
      156 GETTABLEKS                       R12 R0 K58 ["onFocused"]
      158 SETTABLEKS                       R12 R11 K59 ["OnWidgetFocused"]
      160 GETTABLEKS                       R12 R0 K60 ["onUnfocused"]
      162 SETTABLEKS                       R12 R11 K61 ["OnWidgetFocusReleased"]
      164 GETTABLEKS                       R12 R0 K62 ["onRestore"]
      166 SETTABLEKS                       R12 R11 K63 ["OnWidgetRestored"]
      168 GETTABLEKS                       R13 R0 K0 ["props"]
      170 GETTABLEKS                       R13 R13 K26 ["PluginLoaderContext"]
      172 JUMPIFNOT                        R13 ; [+7]
      173 GETTABLEKS                       R12 R0 K0 ["props"]
      175 GETTABLEKS                       R12 R12 K26 ["PluginLoaderContext"]
      177 GETTABLEKS                       R12 R12 K27 ["mainDockWidget"]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R12
      181 SETTABLEKS                       R12 R11 K64 ["Widget"]
      183 GETUPVAL                         R12 8
      184 GETTABLEKS                       R12 R12 K65 ["Change"]
      186 GETTABLEKS                       R12 R12 K39 ["Enabled"]
      188 GETTABLEKS                       R13 R0 K66 ["onWidgetEnabledChanged"]
      190 SETTABLE                         R13 R11 R12
      191 GETUPVAL                         R13 9
      192 CALL                             R13 0 1
      193 JUMPIF                           R13 ; [+3]
      194 GETUPVAL                         R13 10
      195 CALL                             R13 0 1
      196 JUMPIFNOT                        R13 ; [+22]
      197 DUPTABLE                         R12 K68 [{"Provider"}]
      198 GETUPVAL                         R13 4
      199 GETTABLEKS                       R13 R13 K23 ["createElement"]
      201 GETUPVAL                         R14 5
      202 DUPTABLE                         R15 K70 [{"onStyleSheetChange"}]
      203 GETTABLEKS                       R16 R0 K71 ["onFoundationStyleSheetChange"]
      205 SETTABLEKS                       R16 R15 K69 ["onStyleSheetChange"]
      207 DUPTABLE                         R16 K73 [{"App"}]
      208 GETUPVAL                         R17 4
      209 GETTABLEKS                       R17 R17 K23 ["createElement"]
      211 GETUPVAL                         R18 11
      212 CALL                             R17 1 1
      213 SETTABLEKS                       R17 R16 K72 ["App"]
      215 CALL                             R13 3 1
      216 SETTABLEKS                       R13 R12 K67 ["Provider"]
      218 JUMP                             ; [+8]
      219 DUPTABLE                         R12 K73 [{"App"}]
      220 GETUPVAL                         R13 4
      221 GETTABLEKS                       R13 R13 K23 ["createElement"]
      223 GETUPVAL                         R14 11
      224 CALL                             R13 1 1
      225 SETTABLEKS                       R13 R12 K72 ["App"]
      227 CALL                             R9 3 1
      228 SETTABLEKS                       R9 R8 K19 ["MainWidget"]
      230 LOADB                            R9 1
      231 CALL                             R6 3 -1
      232 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Packages"]
       25 GETTABLEKS                       R4 R4 K8 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K5 ["Packages"]
       32 GETTABLEKS                       R5 R5 K9 ["SharedPluginConstants"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K5 ["Packages"]
       39 GETTABLEKS                       R6 R6 K10 ["StudioFoundation"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K5 ["Packages"]
       46 GETTABLEKS                       R7 R7 K11 ["TerrainPalette"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R5 K12 ["Components"]
       51 GETTABLEKS                       R7 R7 K13 ["FoundationProviderAdapter"]
       53 GETIMPORT                        R8 K4 [require]
       55 GETTABLEKS                       R9 R0 K5 ["Packages"]
       57 GETTABLEKS                       R9 R9 K14 ["Framework"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K4 [require]
       62 GETTABLEKS                       R10 R0 K5 ["Packages"]
       64 GETTABLEKS                       R10 R10 K15 ["MaterialFramework"]
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R10 R8 K16 ["UI"]
       69 GETTABLEKS                       R11 R10 K17 ["DockWidget"]
       71 GETTABLEKS                       R12 R8 K18 ["ContextServices"]
       73 GETTABLEKS                       R13 R12 K19 ["Plugin"]
       75 GETTABLEKS                       R14 R12 K20 ["Mouse"]
       77 GETTABLEKS                       R15 R12 K21 ["Design"]
       79 GETTABLEKS                       R16 R8 K22 ["Styling"]
       81 GETTABLEKS                       R16 R16 K23 ["registerPluginStyles"]
       83 GETTABLEKS                       R17 R8 K24 ["Util"]
       85 GETTABLEKS                       R17 R17 K25 ["CrossPluginCommunication"]
       87 GETTABLEKS                       R18 R9 K26 ["Context"]
       89 GETTABLEKS                       R18 R18 K27 ["StudioServices"]
       91 GETIMPORT                        R19 K4 [require]
       93 GETTABLEKS                       R20 R0 K28 ["Src"]
       95 GETTABLEKS                       R20 R20 K29 ["Resources"]
       97 GETTABLEKS                       R20 R20 K30 ["MakeTheme"]
       99 CALL                             R19 1 1
      100 GETTABLEKS                       R20 R0 K28 ["Src"]
      102 GETTABLEKS                       R20 R20 K29 ["Resources"]
      104 GETTABLEKS                       R20 R20 K31 ["Localization"]
      106 GETTABLEKS                       R20 R20 K32 ["SourceStrings"]
      108 GETTABLEKS                       R21 R0 K28 ["Src"]
      110 GETTABLEKS                       R21 R21 K29 ["Resources"]
      112 GETTABLEKS                       R21 R21 K31 ["Localization"]
      114 GETTABLEKS                       R21 R21 K33 ["LocalizedStrings"]
      116 GETTABLEKS                       R22 R0 K28 ["Src"]
      118 GETTABLEKS                       R22 R22 K12 ["Components"]
      120 GETIMPORT                        R23 K4 [require]
      122 GETTABLEKS                       R24 R22 K34 ["App"]
      124 CALL                             R23 1 1
      125 GETIMPORT                        R24 K4 [require]
      127 GETTABLEKS                       R25 R22 K35 ["ExpandedTerrainRestartDialog"]
      129 CALL                             R24 1 1
      130 GETTABLEKS                       R25 R0 K28 ["Src"]
      132 GETTABLEKS                       R25 R25 K36 ["Controllers"]
      134 GETIMPORT                        R26 K4 [require]
      136 GETTABLEKS                       R27 R25 K37 ["ShortcutController"]
      138 CALL                             R26 1 1
      139 GETIMPORT                        R27 K4 [require]
      141 GETTABLEKS                       R28 R25 K38 ["PluginController"]
      143 CALL                             R27 1 1
      144 GETIMPORT                        R28 K4 [require]
      146 GETTABLEKS                       R29 R25 K39 ["ToolController"]
      148 CALL                             R28 1 1
      149 GETIMPORT                        R29 K4 [require]
      151 GETTABLEKS                       R30 R0 K28 ["Src"]
      153 GETTABLEKS                       R30 R30 K29 ["Resources"]
      155 GETTABLEKS                       R30 R30 K40 ["AnalyticsHandlers"]
      157 CALL                             R29 1 1
      158 GETIMPORT                        R30 K4 [require]
      160 GETTABLEKS                       R31 R0 K28 ["Src"]
      162 GETTABLEKS                       R31 R31 K24 ["Util"]
      164 GETTABLEKS                       R31 R31 K41 ["TerrainMaterialTelemetry"]
      166 CALL                             R30 1 1
      167 GETIMPORT                        R31 K4 [require]
      169 GETTABLEKS                       R32 R0 K28 ["Src"]
      171 GETTABLEKS                       R32 R32 K42 ["Types"]
      173 CALL                             R31 1 1
      174 GETTABLEKS                       R32 R31 K43 ["Category"]
      176 GETTABLEKS                       R33 R31 K44 ["MaterialSettings"]
      178 GETTABLEKS                       R34 R31 K45 ["Storage"]
      180 GETTABLEKS                       R35 R31 K46 ["Tool"]
      182 GETTABLEKS                       R36 R4 K47 ["TERRAIN"]
      184 GETTABLEKS                       R37 R6 K48 ["TerrainMaterialPickerProtocol"]
      186 GETIMPORT                        R38 K4 [require]
      188 GETTABLEKS                       R39 R0 K28 ["Src"]
      190 GETTABLEKS                       R39 R39 K49 ["Flags"]
      192 GETTABLEKS                       R39 R39 K50 ["getFFlagEnableTerrainPalette"]
      194 CALL                             R38 1 1
      195 GETIMPORT                        R39 K4 [require]
      197 GETTABLEKS                       R40 R0 K28 ["Src"]
      199 GETTABLEKS                       R40 R40 K49 ["Flags"]
      201 GETTABLEKS                       R40 R40 K51 ["getFFlagTerrainEditorMigrateFoundationFonts"]
      203 CALL                             R39 1 1
      204 GETTABLEKS                       R40 R2 K52 ["PureComponent"]
      206 LOADK                            R42 K53 ["MainPlugin"]
      207 NAMECALL                         R40 R40 K54 ["extend"]
      209 CALL                             R40 2 1
      210 GETTABLEKS                       R41 R5 K24 ["Util"]
      212 GETTABLEKS                       R41 R41 K55 ["StudioUri"]
      214 GETTABLEKS                       R41 R41 K56 ["fromAction"]
      216 LOADK                            R42 K57 ["PlaceManagement"]
      217 LOADK                            R43 K58 ["Close"]
      218 CALL                             R41 2 1
      219 DUPCLOSURE                       R42 K59 [PROTO_23]
      220 CAPTURE                          VAL R41
      221 CAPTURE                          VAL R35
      222 CAPTURE                          VAL R12
      223 CAPTURE                          VAL R9
      224 CAPTURE                          VAL R8
      225 CAPTURE                          VAL R20
      226 CAPTURE                          VAL R21
      227 CAPTURE                          VAL R30
      228 CAPTURE                          VAL R1
      229 CAPTURE                          VAL R29
      230 CAPTURE                          VAL R26
      231 CAPTURE                          VAL R27
      232 CAPTURE                          VAL R18
      233 CAPTURE                          VAL R19
      234 CAPTURE                          VAL R28
      235 CAPTURE                          VAL R38
      236 CAPTURE                          VAL R17
      237 CAPTURE                          VAL R36
      238 CAPTURE                          VAL R32
      239 CAPTURE                          VAL R33
      240 CAPTURE                          VAL R34
      241 CAPTURE                          VAL R37
      242 CAPTURE                          VAL R5
      243 CAPTURE                          VAL R16
      244 SETTABLEKS                       R42 R40 K60 ["init"]
      246 DUPCLOSURE                       R42 K61 [PROTO_25]
      247 SETTABLEKS                       R42 R40 K62 ["didMount"]
      249 DUPCLOSURE                       R42 K63 [PROTO_26]
      250 SETTABLEKS                       R42 R40 K64 ["didUpdate"]
      252 DUPCLOSURE                       R42 K65 [PROTO_27]
      253 SETTABLEKS                       R42 R40 K66 ["willUnmount"]
      255 DUPCLOSURE                       R42 K67 [PROTO_28]
      256 CAPTURE                          VAL R13
      257 CAPTURE                          VAL R14
      258 CAPTURE                          VAL R15
      259 CAPTURE                          VAL R12
      260 CAPTURE                          VAL R2
      261 CAPTURE                          VAL R7
      262 CAPTURE                          VAL R24
      263 CAPTURE                          VAL R11
      264 CAPTURE                          VAL R3
      265 CAPTURE                          VAL R38
      266 CAPTURE                          VAL R39
      267 CAPTURE                          VAL R23
      268 SETTABLEKS                       R42 R40 K68 ["render"]
      270 RETURN                           R40 1
