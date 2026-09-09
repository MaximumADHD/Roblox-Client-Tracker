PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 GETTABLEKS                       R0 R0 K4 ["Name"]
        9 JUMPIFNOTEQKS                    R0 K5 ["Light"] ; [+3]
       11 GETUPVAL                         R0 0
       12 RETURN                           R0 1
       13 GETUPVAL                         R0 1
       14 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K5 [{[1], ["PluginType"], ["PluginId"], ["ItemId"] = "MaterialPicker"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K6 ["pluginUri"]
        4 GETTABLEKS                       R1 R1 K0 ["DataModel"]
        6 SETTABLEKS                       R1 R0 K0 ["DataModel"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K6 ["pluginUri"]
       11 GETTABLEKS                       R1 R1 K1 ["PluginType"]
       13 SETTABLEKS                       R1 R0 K1 ["PluginType"]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["pluginUri"]
       18 GETTABLEKS                       R1 R1 K2 ["PluginId"]
       20 SETTABLEKS                       R1 R0 K2 ["PluginId"]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K7 ["Plugin"]
       25 LOADK                            R3 K8 ["Panels"]
       26 NAMECALL                         R1 R1 K9 ["GetPluginComponent"]
       28 CALL                             R1 2 1
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K7 ["Plugin"]
       32 LOADK                            R4 K10 ["Widgets"]
       33 NAMECALL                         R2 R2 K9 ["GetPluginComponent"]
       35 CALL                             R2 2 1
       36 DUPTABLE                         R3 K15 [{[1] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/*/Material"}]
       37 MOVE                             R6 R3
       38 NAMECALL                         R4 R2 K16 ["GetMatchedWidgetsAsync"]
       40 CALL                             R4 2 1
       41 MOVE                             R5 R4
       42 LOADNIL                          R6
       43 LOADNIL                          R7
       44 FORGPREP                         R5
       45 GETTABLEKS                       R10 R9 K17 ["Exists"]
       47 JUMPIFNOT                        R10 ; [+27]
       48 GETTABLEKS                       R10 R9 K18 ["Visible"]
       50 JUMPIFNOT                        R10 ; [+24]
       51 MOVE                             R12 R0
       52 DUPTABLE                         R13 K22 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint"}]
       53 GETTABLEKS                       R14 R9 K23 ["Uri"]
       55 SETTABLEKS                       R14 R13 K19 ["TargetWidgetUri"]
       57 GETIMPORT                        R14 K26 [Vector2.new]
       59 LOADN                            R15 0
       60 LOADN                            R16 1
       61 CALL                             R14 2 1
       62 SETTABLEKS                       R14 R13 K20 ["TargetAnchorPoint"]
       64 GETIMPORT                        R14 K26 [Vector2.new]
       66 LOADN                            R15 0
       67 LOADN                            R16 0
       68 CALL                             R14 2 1
       69 SETTABLEKS                       R14 R13 K21 ["SubjectAnchorPoint"]
       71 NAMECALL                         R10 R1 K27 ["SetAttachmentAsync"]
       73 CALL                             R10 3 0
       74 RETURN                           R0 0
       75 FORGLOOP                         R5 2 ; [-31]
       77 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["terrainMaterialPickerControllerRef"]
        3 NAMECALL                         R0 R0 K1 ["getValue"]
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+8]
        7 NAMECALL                         R1 R0 K2 ["hasActiveRequest"]
        9 CALL                             R1 1 1
       10 JUMPIFNOT                        R1 ; [+4]
       11 NAMECALL                         R1 R0 K3 ["cancel"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K4 ["state"]
       18 GETTABLEKS                       R1 R1 K5 ["enabled"]
       20 JUMPIF                           R1 ; [+31]
       21 GETUPVAL                         R1 1
       22 CALL                             R1 0 1
       23 JUMPIFNOT                        R1 ; [+17]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K6 ["lastClosedTime"]
       27 LOADN                            R2 0
       28 JUMPIFNOTLT                      R2 R1 ; [+12]
       30 GETIMPORT                        R1 K8 [tick]
       32 CALL                             R1 0 1
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K6 ["lastClosedTime"]
       36 GETUPVAL                         R4 2
       37 ADD                              R2 R3 R4
       38 JUMPIFNOTLT                      R1 R2 ; [+2]
       40 RETURN                           R0 0
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R1 R1 K9 ["analytics"]
       44 LOADK                            R3 K10 ["PopupOpened"]
       45 NAMECALL                         R1 R1 K11 ["report"]
       47 CALL                             R1 2 0
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R1 R1 K12 ["attachWidget"]
       51 CALL                             R1 0 0
       52 GETUPVAL                         R1 0
       53 DUPCLOSURE                       R3 K13 [PROTO_2]
       54 NAMECALL                         R1 R1 K14 ["setState"]
       56 CALL                             R1 2 0
       57 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["analytics"]
       10 LOADK                            R3 K4 ["PopupOpened"]
       11 NAMECALL                         R1 R1 K5 ["report"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["pluginButtonRef"]
        3 NAMECALL                         R1 R1 K1 ["getValue"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R1 R1 K2 ["button"]
        8 SETTABLEKS                       R0 R1 K3 ["Icon"]
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R5 2
        3 FASTCALL1                        TOSTRING R5 ; [+2]
        4 GETIMPORT                        R4 K1 [tostring]
        6 CALL                             R4 1 1
        7 NAMECALL                         R1 R1 K2 ["getMaterialVariant"]
        9 CALL                             R1 3 1
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETUPVAL                         R3 3
       12 GETTABLE                         R2 R3 R0
       13 JUMPIFNOT                        R2 ; [+4]
       14 GETUPVAL                         R2 4
       15 GETTABLEKS                       R2 R2 K3 ["clearSelectedMaterial"]
       17 CALL                             R2 0 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearSelectedMaterial"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K0 ["studioServices"]
        9 LOADK                            R6 K1 ["MaterialService"]
       10 NAMECALL                         R4 R4 K2 ["getService"]
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 2
       14 DUPTABLE                         R7 K4 [{"selectedMaterialIdentifier"}]
       15 SETTABLEKS                       R3 R7 K3 ["selectedMaterialIdentifier"]
       17 NAMECALL                         R5 R5 K5 ["setState"]
       19 CALL                             R5 2 0
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K6 ["selectedMaterialConnection"]
       23 JUMPIFNOT                        R5 ; [+6]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K6 ["selectedMaterialConnection"]
       27 NAMECALL                         R5 R5 K7 ["Disconnect"]
       29 CALL                             R5 1 0
       30 JUMPIFNOT                        R2 ; [+15]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R6 R0 K8 ["Changed"]
       34 NEWCLOSURE                       R8 P0
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U2
       40 NAMECALL                         R6 R6 K9 ["Connect"]
       42 CALL                             R6 2 1
       43 SETTABLEKS                       R6 R5 K6 ["selectedMaterialConnection"]
       45 RETURN                           R0 0
       46 GETUPVAL                         R5 2
       47 MOVE                             R8 R0
       48 NAMECALL                         R6 R4 K10 ["GetMaterialOverrideChanged"]
       50 CALL                             R6 2 1
       51 NEWCLOSURE                       R8 P1
       52 CAPTURE                          UPVAL U2
       53 NAMECALL                         R6 R6 K9 ["Connect"]
       55 CALL                             R6 2 1
       56 SETTABLEKS                       R6 R5 K6 ["selectedMaterialConnection"]
       58 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectedMaterialConnection"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["selectedMaterialConnection"]
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["selectedMaterialConnection"]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K2 ["state"]
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K3 ["selectedMaterialIdentifier"]
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K4 ["setButtonIcon"]
       23 GETIMPORT                        R2 K6 [settings]
       25 CALL                             R2 0 1
       26 GETTABLEKS                       R2 R2 K7 ["Studio"]
       28 GETTABLEKS                       R2 R2 K8 ["Theme"]
       30 GETTABLEKS                       R2 R2 K9 ["Name"]
       32 JUMPIFNOTEQKS                    R2 K10 ["Light"] ; [+3]
       34 GETUPVAL                         R1 1
       35 JUMP                             ; [+1]
       36 GETUPVAL                         R1 2
       37 CALL                             R0 1 0
       38 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETIMPORT                        R1 K1 [tick]
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K2 ["lastClosedTime"]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K3 ["terrainMaterialPickerControllerRef"]
       12 NAMECALL                         R0 R0 K4 ["getValue"]
       14 CALL                             R0 1 1
       15 JUMPIFNOT                        R0 ; [+8]
       16 NAMECALL                         R1 R0 K5 ["hasActiveRequest"]
       18 CALL                             R1 1 1
       19 JUMPIFNOT                        R1 ; [+4]
       20 NAMECALL                         R1 R0 K6 ["cancel"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R1 1
       25 DUPTABLE                         R3 K9 [{["enabled"] = False}]
       26 NAMECALL                         R1 R1 K10 ["setState"]
       28 CALL                             R1 2 0
       29 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["terrainMaterialPickerControllerRef"]
        3 NAMECALL                         R0 R0 K1 ["getValue"]
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+3]
        7 NAMECALL                         R1 R0 K2 ["refresh"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["terrainPaletteCommunication"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["CPC_CALLBACKS"]
        6 GETTABLEKS                       R2 R2 K2 ["SELECT_SLOT"]
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R0 R0 K3 ["Invoke"]
       11 CALL                             R0 3 -1
       12 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+6]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 GETTABLEKS                       R1 R1 K0 ["editTerrainSlotRequestId"]
        8 JUMPIFEQ                         R0 R1 ; [+3]
       10 LOADB                            R0 0
       11 RETURN                           R0 1
       12 LOADB                            R0 1
       13 SETUPVAL                         R0 1
       14 GETIMPORT                        R0 K2 [pcall]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CALL                             R0 1 2
       21 LOADB                            R2 0
       22 SETUPVAL                         R2 1
       23 JUMPIFNOT                        R0 ; [+2]
       24 JUMPIFEQKB                       R1 TRUE ; [+3]
       26 LOADB                            R2 0
       27 RETURN                           R2 1
       28 LOADB                            R2 1
       29 SETUPVAL                         R2 0
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R2 R2 K3 ["terrainPaletteReadyConnection"]
       33 JUMPIFNOT                        R2 ; [+10]
       34 GETUPVAL                         R2 3
       35 GETTABLEKS                       R2 R2 K3 ["terrainPaletteReadyConnection"]
       37 NAMECALL                         R2 R2 K4 ["Disconnect"]
       39 CALL                             R2 1 0
       40 GETUPVAL                         R2 3
       41 LOADNIL                          R3
       42 SETTABLEKS                       R3 R2 K3 ["terrainPaletteReadyConnection"]
       44 LOADB                            R2 1
       45 RETURN                           R2 1

PROTO_16:
        0 LOADB                            R0 0
        1 LOADB                            R1 0
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["editTerrainSlotRequestId"]
        6 JUMPIFEQ                         R2 R3 ; [+3]
        8 CLOSEUPVALS                      R0
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K1 ["terrainPaletteReadyConnection"]
       13 JUMPIFNOT                        R2 ; [+10]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K1 ["terrainPaletteReadyConnection"]
       17 NAMECALL                         R2 R2 K2 ["Disconnect"]
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 1
       21 LOADNIL                          R3
       22 SETTABLEKS                       R3 R2 K1 ["terrainPaletteReadyConnection"]
       24 NEWCLOSURE                       R2 P0
       25 CAPTURE                          REF R0
       26 CAPTURE                          REF R1
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U3
       31 GETUPVAL                         R3 1
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K3 ["terrainPaletteCommunication"]
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R6 R6 K4 ["CPC_EVENTS"]
       38 GETTABLEKS                       R6 R6 K5 ["TERRAIN_PALETTE_EDITOR_READY"]
       40 MOVE                             R7 R2
       41 NAMECALL                         R4 R4 K6 ["Connect"]
       43 CALL                             R4 3 1
       44 SETTABLEKS                       R4 R3 K1 ["terrainPaletteReadyConnection"]
       46 GETUPVAL                         R3 4
       47 GETTABLEKS                       R3 R3 K7 ["Plugin"]
       49 LOADK                            R5 K8 ["Actions"]
       50 NAMECALL                         R3 R3 K9 ["GetPluginComponent"]
       52 CALL                             R3 2 1
       53 NEWTABLE                         R6 0 1
       55 GETUPVAL                         R7 5
       56 SETLIST                          R6 R7 1 [1]
       58 NAMECALL                         R4 R3 K10 ["GetAsync"]
       60 CALL                             R4 2 1
       61 GETUPVAL                         R5 0
       62 GETUPVAL                         R6 1
       63 GETTABLEKS                       R6 R6 K0 ["editTerrainSlotRequestId"]
       65 JUMPIFEQ                         R5 R6 ; [+3]
       67 CLOSEUPVALS                      R0
       68 RETURN                           R0 0
       69 GETTABLEN                        R5 R4 1
       70 JUMPIFEQKNIL                     R5 ; [+16]
       72 GETTABLEKS                       R6 R5 K11 ["Checked"]
       74 JUMPIF                           R6 ; [+12]
       75 GETUPVAL                         R8 5
       76 NAMECALL                         R6 R3 K12 ["ActivateAsync"]
       78 CALL                             R6 2 0
       79 GETUPVAL                         R6 0
       80 GETUPVAL                         R7 1
       81 GETTABLEKS                       R7 R7 K0 ["editTerrainSlotRequestId"]
       83 JUMPIFEQ                         R6 R7 ; [+3]
       85 CLOSEUPVALS                      R0
       86 RETURN                           R0 0
       87 MOVE                             R6 R2
       88 CALL                             R6 0 0
       89 CLOSEUPVALS                      R0
       90 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K0 ["editTerrainSlotRequestId"]
        3 ADDK                             R2 R2 K1 [1]
        4 SETTABLEKS                       R2 R1 K0 ["editTerrainSlotRequestId"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["editTerrainSlotRequestId"]
        9 GETIMPORT                        R2 K4 [task.spawn]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"viewType"}]
        2 SETTABLEKS                       R0 R3 K0 ["viewType"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["savedFilterChips"]
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["List"]
        4 JUMPIFNOTEQ                      R1 R2 ; [+5]
        6 GETUPVAL                         R1 2
        7 SETTABLEKS                       R0 R1 K1 ["savedListCanvasPosition"]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["Grid"]
       14 JUMPIFNOTEQ                      R1 R2 ; [+4]
       16 GETUPVAL                         R1 2
       17 SETTABLEKS                       R0 R1 K3 ["savedGridCanvasPosition"]
       19 RETURN                           R0 0

PROTO_22:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["selectedMaterialIdentifier"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+19]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K2 ["setButtonIcon"]
       10 GETIMPORT                        R2 K4 [settings]
       12 CALL                             R2 0 1
       13 GETTABLEKS                       R2 R2 K5 ["Studio"]
       15 GETTABLEKS                       R2 R2 K6 ["Theme"]
       17 GETTABLEKS                       R2 R2 K7 ["Name"]
       19 JUMPIFNOTEQKS                    R2 K8 ["Light"] ; [+3]
       21 GETUPVAL                         R1 1
       22 JUMP                             ; [+1]
       23 GETUPVAL                         R1 2
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"isMaterialFillToolEnabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["isMaterialFillToolEnabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleEnabled"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K8 [{[1], ["Enabled"] = True, ["Text"], ["Tooltip"], ["Checkable"] = True, ["Checked"] = False}]
        2 DUPTABLE                         R3 K17 [{["DataModel"] = "Standalone", ["PluginId"] = "MaterialPicker", ["Category"] = "Actions", ["ItemId"] = "MaterialPickerDropdown"}]
        3 SETTABLEKS                       R3 R2 K0 ["Uri"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K18 ["localization"]
        8 LOADK                            R5 K19 ["Plugin"]
        9 LOADK                            R6 K20 ["Button"]
       10 NAMECALL                         R3 R3 K21 ["getText"]
       12 CALL                             R3 3 1
       13 SETTABLEKS                       R3 R2 K3 ["Text"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K18 ["localization"]
       18 LOADK                            R5 K19 ["Plugin"]
       19 LOADK                            R6 K22 ["Description"]
       20 NAMECALL                         R3 R3 K21 ["getText"]
       22 CALL                             R3 3 1
       23 SETTABLEKS                       R3 R2 K4 ["Tooltip"]
       25 LOADB                            R3 1
       26 NAMECALL                         R0 R0 K23 ["CreateAsync"]
       28 CALL                             R0 3 1
       29 GETUPVAL                         R1 1
       30 GETTABLEN                        R2 R0 1
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          UPVAL U1
       33 NAMECALL                         R2 R2 K24 ["Connect"]
       35 CALL                             R2 2 1
       36 SETTABLEKS                       R2 R1 K25 ["activatedConnection"]
       38 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R0 K1 ["pluginButtonRef"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["createRef"]
        9 CALL                             R2 0 1
       10 SETTABLEKS                       R2 R0 K2 ["terrainMaterialPickerControllerRef"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K3 ["new"]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K4 ["EDITOR_CPC_ID"]
       18 CALL                             R2 1 1
       19 SETTABLEKS                       R2 R0 K5 ["terrainPaletteCommunication"]
       21 LOADNIL                          R2
       22 SETTABLEKS                       R2 R0 K6 ["terrainPaletteReadyConnection"]
       24 LOADN                            R2 0
       25 SETTABLEKS                       R2 R0 K7 ["editTerrainSlotRequestId"]
       27 DUPTABLE                         R2 K12 [{["recents"] = False, ["appliedInPlace"] = False, ["customMaterials"] = False}]
       28 SETTABLEKS                       R2 R0 K13 ["savedFilterChips"]
       30 GETIMPORT                        R2 K15 [Vector2.new]
       32 LOADN                            R3 0
       33 LOADN                            R4 0
       34 CALL                             R2 2 1
       35 SETTABLEKS                       R2 R0 K16 ["savedListCanvasPosition"]
       37 GETIMPORT                        R2 K15 [Vector2.new]
       39 LOADN                            R3 0
       40 LOADN                            R4 0
       41 CALL                             R2 2 1
       42 SETTABLEKS                       R2 R0 K17 ["savedGridCanvasPosition"]
       44 LOADNIL                          R2
       45 SETTABLEKS                       R2 R0 K18 ["selectedMaterialConnection"]
       47 DUPTABLE                         R4 K22 [{["enabled"] = False, ["viewType"], ["isMaterialFillToolEnabled"] = False}]
       48 GETUPVAL                         R5 3
       49 GETTABLEKS                       R5 R5 K23 ["Grid"]
       51 SETTABLEKS                       R5 R4 K20 ["viewType"]
       53 NAMECALL                         R2 R0 K24 ["setState"]
       55 CALL                             R2 2 0
       56 GETTABLEKS                       R2 R1 K25 ["Plugin"]
       58 NAMECALL                         R2 R2 K26 ["GetUri"]
       60 CALL                             R2 1 1
       61 SETTABLEKS                       R2 R0 K27 ["pluginUri"]
       63 GETUPVAL                         R2 4
       64 CALL                             R2 0 1
       65 JUMPIFNOT                        R2 ; [+3]
       66 LOADN                            R2 0
       67 SETTABLEKS                       R2 R0 K28 ["lastClosedTime"]
       69 NEWCLOSURE                       R2 P0
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R2 R0 K29 ["attachWidget"]
       74 NEWCLOSURE                       R2 P1
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U4
       77 CAPTURE                          UPVAL U5
       78 SETTABLEKS                       R2 R0 K30 ["toggleEnabled"]
       80 NEWCLOSURE                       R2 P2
       81 CAPTURE                          VAL R0
       82 SETTABLEKS                       R2 R0 K31 ["openPopup"]
       84 NEWCLOSURE                       R2 P3
       85 CAPTURE                          VAL R0
       86 SETTABLEKS                       R2 R0 K32 ["setButtonIcon"]
       88 NEWCLOSURE                       R2 P4
       89 CAPTURE                          UPVAL U6
       90 CAPTURE                          UPVAL U7
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U8
       93 SETTABLEKS                       R2 R0 K33 ["setSelectedMaterial"]
       95 NEWCLOSURE                       R2 P5
       96 CAPTURE                          VAL R0
       97 CAPTURE                          UPVAL U9
       98 CAPTURE                          UPVAL U10
       99 SETTABLEKS                       R2 R0 K34 ["clearSelectedMaterial"]
      101 NEWCLOSURE                       R2 P6
      102 CAPTURE                          UPVAL U4
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R2 R0 K35 ["onClose"]
      106 NEWCLOSURE                       R2 P7
      107 CAPTURE                          VAL R0
      108 SETTABLEKS                       R2 R0 K36 ["onWidgetFocused"]
      110 NEWCLOSURE                       R2 P8
      111 CAPTURE                          VAL R0
      112 SETTABLEKS                       R2 R0 K37 ["onTerrainRequestOpened"]
      114 NEWCLOSURE                       R2 P9
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R2 R0 K38 ["onTerrainRequestCompleted"]
      118 NEWCLOSURE                       R2 P10
      119 CAPTURE                          VAL R0
      120 CAPTURE                          UPVAL U2
      121 CAPTURE                          VAL R1
      122 CAPTURE                          UPVAL U11
      123 SETTABLEKS                       R2 R0 K39 ["editTerrainSlot"]
      125 NEWCLOSURE                       R2 P11
      126 CAPTURE                          VAL R0
      127 SETTABLEKS                       R2 R0 K40 ["onWidgetEnabledChanged"]
      129 NEWCLOSURE                       R2 P12
      130 CAPTURE                          VAL R0
      131 SETTABLEKS                       R2 R0 K41 ["setViewType"]
      133 NEWCLOSURE                       R2 P13
      134 CAPTURE                          VAL R0
      135 SETTABLEKS                       R2 R0 K42 ["onFilterChipsUpdate"]
      137 NEWCLOSURE                       R2 P14
      138 CAPTURE                          UPVAL U3
      139 CAPTURE                          VAL R0
      140 SETTABLEKS                       R2 R0 K43 ["createOnScrollUpdate"]
      142 GETUPVAL                         R2 12
      143 GETTABLEKS                       R2 R2 K44 ["Store"]
      145 GETTABLEKS                       R2 R2 K3 ["new"]
      147 GETUPVAL                         R3 13
      148 LOADNIL                          R4
      149 NEWTABLE                         R5 0 1
      151 GETUPVAL                         R6 12
      152 GETTABLEKS                       R6 R6 K45 ["thunkMiddleware"]
      154 SETLIST                          R5 R6 1 [1]
      156 LOADNIL                          R6
      157 CALL                             R2 4 1
      158 SETTABLEKS                       R2 R0 K46 ["store"]
      160 GETUPVAL                         R2 14
      161 GETTABLEKS                       R2 R2 K47 ["Localization"]
      163 GETTABLEKS                       R2 R2 K3 ["new"]
      165 DUPTABLE                         R3 K53 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "MaterialPicker", ["libraries"]}]
      166 GETUPVAL                         R4 15
      167 SETTABLEKS                       R4 R3 K48 ["stringResourceTable"]
      169 GETUPVAL                         R4 16
      170 SETTABLEKS                       R4 R3 K49 ["translationResourceTable"]
      172 NEWTABLE                         R4 1 0
      174 GETUPVAL                         R5 17
      175 GETTABLEKS                       R5 R5 K54 ["Resources"]
      177 GETTABLEKS                       R5 R5 K55 ["LOCALIZATION_PROJECT_NAME"]
      179 DUPTABLE                         R6 K56 [{"stringResourceTable", "translationResourceTable"}]
      180 GETUPVAL                         R7 17
      181 GETTABLEKS                       R7 R7 K54 ["Resources"]
      183 GETTABLEKS                       R7 R7 K57 ["SourceStrings"]
      185 SETTABLEKS                       R7 R6 K48 ["stringResourceTable"]
      187 GETUPVAL                         R7 17
      188 GETTABLEKS                       R7 R7 K54 ["Resources"]
      190 GETTABLEKS                       R7 R7 K58 ["LocalizedStrings"]
      192 SETTABLEKS                       R7 R6 K49 ["translationResourceTable"]
      194 SETTABLE                         R6 R4 R5
      195 SETTABLEKS                       R4 R3 K52 ["libraries"]
      197 CALL                             R2 1 1
      198 SETTABLEKS                       R2 R0 K59 ["localization"]
      200 GETUPVAL                         R2 18
      201 CALL                             R2 0 1
      202 JUMPIFNOT                        R2 ; [+61]
      203 GETUPVAL                         R2 19
      204 GETTABLEKS                       R2 R2 K47 ["Localization"]
      206 GETTABLEKS                       R2 R2 K3 ["new"]
      208 DUPTABLE                         R3 K53 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "MaterialPicker", ["libraries"]}]
      209 GETUPVAL                         R4 15
      210 SETTABLEKS                       R4 R3 K48 ["stringResourceTable"]
      212 GETUPVAL                         R4 16
      213 SETTABLEKS                       R4 R3 K49 ["translationResourceTable"]
      215 NEWTABLE                         R4 1 0
      217 GETUPVAL                         R5 17
      218 GETTABLEKS                       R5 R5 K54 ["Resources"]
      220 GETTABLEKS                       R5 R5 K55 ["LOCALIZATION_PROJECT_NAME"]
      222 DUPTABLE                         R6 K56 [{"stringResourceTable", "translationResourceTable"}]
      223 GETUPVAL                         R7 17
      224 GETTABLEKS                       R7 R7 K54 ["Resources"]
      226 GETTABLEKS                       R7 R7 K57 ["SourceStrings"]
      228 SETTABLEKS                       R7 R6 K48 ["stringResourceTable"]
      230 GETUPVAL                         R7 17
      231 GETTABLEKS                       R7 R7 K54 ["Resources"]
      233 GETTABLEKS                       R7 R7 K58 ["LocalizedStrings"]
      235 SETTABLEKS                       R7 R6 K49 ["translationResourceTable"]
      237 SETTABLE                         R6 R4 R5
      238 SETTABLEKS                       R4 R3 K52 ["libraries"]
      240 CALL                             R2 1 1
      241 SETTABLEKS                       R2 R0 K60 ["foundationLocalization"]
      243 GETUPVAL                         R2 20
      244 GETTABLEKS                       R2 R2 K61 ["Util"]
      246 GETTABLEKS                       R2 R2 K62 ["createFoundationDesignBinding"]
      248 CALL                             R2 0 2
      249 SETTABLEKS                       R3 R0 K63 ["onFoundationStyleSheetChange"]
      251 GETUPVAL                         R4 21
      252 GETTABLEKS                       R5 R1 K25 ["Plugin"]
      254 LOADNIL                          R6
      255 LOADNIL                          R7
      256 NEWTABLE                         R8 0 1
      258 MOVE                             R9 R2
      259 SETLIST                          R8 R9 1 [1]
      261 CALL                             R4 4 1
      262 SETTABLEKS                       R4 R0 K64 ["design"]
      264 GETUPVAL                         R2 14
      265 GETTABLEKS                       R2 R2 K65 ["Analytics"]
      267 GETTABLEKS                       R2 R2 K3 ["new"]
      269 GETUPVAL                         R3 22
      270 CALL                             R2 1 1
      271 SETTABLEKS                       R2 R0 K66 ["analytics"]
      273 GETUPVAL                         R2 23
      274 GETTABLEKS                       R2 R2 K3 ["new"]
      276 CALL                             R2 0 1
      277 SETTABLEKS                       R2 R0 K67 ["studioServices"]
      279 GETIMPORT                        R2 K69 [settings]
      281 CALL                             R2 0 1
      282 GETTABLEKS                       R2 R2 K70 ["Studio"]
      284 GETTABLEKS                       R2 R2 K71 ["ThemeChanged"]
      286 NEWCLOSURE                       R4 P15
      287 CAPTURE                          VAL R0
      288 CAPTURE                          UPVAL U9
      289 CAPTURE                          UPVAL U10
      290 NAMECALL                         R2 R2 K72 ["Connect"]
      292 CALL                             R2 2 1
      293 SETTABLEKS                       R2 R0 K73 ["themeChangedConnection"]
      295 GETTABLEKS                       R2 R0 K67 ["studioServices"]
      297 LOADK                            R4 K74 ["MaterialService"]
      298 NAMECALL                         R2 R2 K75 ["getService"]
      300 CALL                             R2 2 1
      301 GETTABLEKS                       R2 R2 K76 ["MaterialFillToolEnabledChanged"]
      303 NEWCLOSURE                       R4 P16
      304 CAPTURE                          VAL R0
      305 NAMECALL                         R2 R2 K72 ["Connect"]
      307 CALL                             R2 2 1
      308 SETTABLEKS                       R2 R0 K77 ["materialActionAsToolConnection"]
      310 GETUPVAL                         R2 24
      311 CALL                             R2 0 1
      312 SETTABLEKS                       R2 R0 K78 ["themeTable"]
      314 GETUPVAL                         R2 25
      315 GETTABLEKS                       R2 R2 K79 ["Parent"]
      317 LOADK                            R4 K80 ["Actions"]
      318 NAMECALL                         R2 R2 K81 ["GetPluginComponent"]
      320 CALL                             R2 2 1
      321 GETIMPORT                        R3 K84 [task.spawn]
      323 NEWCLOSURE                       R4 P17
      324 CAPTURE                          VAL R2
      325 CAPTURE                          VAL R0
      326 CALL                             R3 1 0
      327 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["editTerrainSlotRequestId"]
        2 ADDK                             R1 R1 K1 [1]
        3 SETTABLEKS                       R1 R0 K0 ["editTerrainSlotRequestId"]
        5 GETTABLEKS                       R1 R0 K2 ["themeChangedConnection"]
        7 NAMECALL                         R1 R1 K3 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K4 ["terrainPaletteReadyConnection"]
       12 JUMPIFNOT                        R1 ; [+8]
       13 GETTABLEKS                       R1 R0 K4 ["terrainPaletteReadyConnection"]
       15 NAMECALL                         R1 R1 K3 ["Disconnect"]
       17 CALL                             R1 1 0
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K4 ["terrainPaletteReadyConnection"]
       21 GETTABLEKS                       R1 R0 K5 ["foundationLocalization"]
       23 JUMPIFNOT                        R1 ; [+5]
       24 GETTABLEKS                       R1 R0 K5 ["foundationLocalization"]
       26 NAMECALL                         R1 R1 K6 ["destroy"]
       28 CALL                             R1 1 0
       29 GETTABLEKS                       R1 R0 K7 ["selectedMaterialConnection"]
       31 JUMPIFNOT                        R1 ; [+8]
       32 GETTABLEKS                       R1 R0 K7 ["selectedMaterialConnection"]
       34 NAMECALL                         R1 R1 K3 ["Disconnect"]
       36 CALL                             R1 1 0
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K7 ["selectedMaterialConnection"]
       40 GETTABLEKS                       R1 R0 K8 ["materialActionAsToolConnection"]
       42 NAMECALL                         R1 R1 K3 ["Disconnect"]
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["selectedMaterialIdentifier"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+6]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K2 ["toggleEnabled"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K3 ["pluginButtonRef"]
       15 NAMECALL                         R0 R0 K4 ["getValue"]
       17 CALL                             R0 1 1
       18 GETTABLEKS                       R0 R0 K5 ["button"]
       20 LOADB                            R2 1
       21 NAMECALL                         R0 R0 K6 ["SetActive"]
       23 CALL                             R0 2 0
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K0 ["state"]
       27 GETTABLEKS                       R0 R0 K1 ["selectedMaterialIdentifier"]
       29 GETUPVAL                         R1 1
       30 MOVE                             R2 R0
       31 GETUPVAL                         R3 2
       32 CALL                             R1 2 0
       33 GETUPVAL                         R1 3
       34 LOADK                            R4 K7 ["Applied %* Material to Selection"]
       35 MOVE                             R6 R0
       36 NAMECALL                         R4 R4 K8 ["format"]
       38 CALL                             R4 2 1
       39 MOVE                             R3 R4
       40 NAMECALL                         R1 R1 K9 ["SetWaypoint"]
       42 CALL                             R1 2 0
       43 GETUPVAL                         R2 2
       44 NAMECALL                         R2 R2 K10 ["Get"]
       46 CALL                             R2 1 1
       47 LENGTH                           R1 R2
       48 LOADN                            R2 0
       49 JUMPIFNOTLT                      R2 R1 ; [+19]
       51 GETUPVAL                         R3 4
       52 MOVE                             R4 R0
       53 CALL                             R3 1 1
       54 JUMPIFNOT                        R3 ; [+2]
       55 LOADK                            R2 K11 ["MaterialVariant"]
       56 JUMP                             ; [+1]
       57 LOADK                            R2 K12 ["BaseMaterial"]
       58 GETUPVAL                         R3 0
       59 GETTABLEKS                       R3 R3 K13 ["analytics"]
       61 LOADK                            R5 K14 ["MaterialApplied"]
       62 LOADK                            R6 K15 ["IconButton"]
       63 MOVE                             R7 R1
       64 MOVE                             R8 R0
       65 MOVE                             R9 R2
       66 NAMECALL                         R3 R3 K16 ["report"]
       68 CALL                             R3 6 0
       69 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 GETTABLEKS                       R3 R0 K2 ["studioServices"]
        6 LOADK                            R5 K3 ["Selection"]
        7 NAMECALL                         R3 R3 K4 ["getService"]
        9 CALL                             R3 2 1
       10 GETTABLEKS                       R4 R0 K2 ["studioServices"]
       12 LOADK                            R6 K5 ["ChangeHistoryService"]
       13 NAMECALL                         R4 R4 K4 ["getService"]
       15 CALL                             R4 2 1
       16 DUPTABLE                         R5 K7 [{"Toggle"}]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K8 ["createElement"]
       20 GETUPVAL                         R7 1
       21 DUPTABLE                         R8 K23 [{["Toolbar"], ["Active"], ["DropdownActive"], ["Id"] = "MaterialPicker", ["Title"], ["Tooltip"], ["OnClick"], ["OnDropdownClick"], ["ButtonType"] = "Dropdown", ["ClickableWhenViewportHidden"] = False, ["ref"]}]
       22 SETTABLEKS                       R1 R8 K9 ["Toolbar"]
       24 MOVE                             R9 R2
       25 JUMPIF                           R9 ; [+4]
       26 GETTABLEKS                       R9 R0 K0 ["state"]
       28 GETTABLEKS                       R9 R9 K24 ["isMaterialFillToolEnabled"]
       30 SETTABLEKS                       R9 R8 K10 ["Active"]
       32 SETTABLEKS                       R2 R8 K11 ["DropdownActive"]
       34 GETTABLEKS                       R9 R0 K25 ["localization"]
       36 LOADK                            R11 K26 ["Plugin"]
       37 LOADK                            R12 K27 ["Button"]
       38 NAMECALL                         R9 R9 K28 ["getText"]
       40 CALL                             R9 3 1
       41 SETTABLEKS                       R9 R8 K14 ["Title"]
       43 GETTABLEKS                       R9 R0 K25 ["localization"]
       45 LOADK                            R11 K26 ["Plugin"]
       46 LOADK                            R12 K29 ["Description"]
       47 NAMECALL                         R9 R9 K28 ["getText"]
       49 CALL                             R9 3 1
       50 SETTABLEKS                       R9 R8 K15 ["Tooltip"]
       52 NEWCLOSURE                       R9 P0
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 CAPTURE                          UPVAL U3
       58 SETTABLEKS                       R9 R8 K16 ["OnClick"]
       60 GETTABLEKS                       R9 R0 K30 ["toggleEnabled"]
       62 SETTABLEKS                       R9 R8 K17 ["OnDropdownClick"]
       64 GETTABLEKS                       R9 R0 K31 ["pluginButtonRef"]
       66 SETTABLEKS                       R9 R8 K22 ["ref"]
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K6 ["Toggle"]
       71 RETURN                           R5 1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setButtonIcon"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["onClose"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K13 [{"plugin", "onClose", "onFilterChipsUpdate", "onMaterialSelected", "onScrollUpdate", "onSnapshotTaken", "savedFilterChips", "savedListCanvasPosition", "savedGridCanvasPosition", "setViewType", "selectedMaterialIdentifier", "viewType"}]
        5 SETTABLEKS                       R1 R4 K1 ["plugin"]
        7 GETTABLEKS                       R5 R0 K2 ["onClose"]
        9 SETTABLEKS                       R5 R4 K2 ["onClose"]
       11 GETTABLEKS                       R5 R0 K3 ["onFilterChipsUpdate"]
       13 SETTABLEKS                       R5 R4 K3 ["onFilterChipsUpdate"]
       15 GETTABLEKS                       R5 R0 K14 ["setSelectedMaterial"]
       17 SETTABLEKS                       R5 R4 K4 ["onMaterialSelected"]
       19 GETTABLEKS                       R5 R0 K15 ["createOnScrollUpdate"]
       21 GETTABLEKS                       R6 R0 K16 ["state"]
       23 GETTABLEKS                       R6 R6 K12 ["viewType"]
       25 CALL                             R5 1 1
       26 SETTABLEKS                       R5 R4 K5 ["onScrollUpdate"]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R5 R4 K6 ["onSnapshotTaken"]
       32 GETTABLEKS                       R5 R0 K7 ["savedFilterChips"]
       34 SETTABLEKS                       R5 R4 K7 ["savedFilterChips"]
       36 GETTABLEKS                       R5 R0 K8 ["savedListCanvasPosition"]
       38 SETTABLEKS                       R5 R4 K8 ["savedListCanvasPosition"]
       40 GETTABLEKS                       R5 R0 K9 ["savedGridCanvasPosition"]
       42 SETTABLEKS                       R5 R4 K9 ["savedGridCanvasPosition"]
       44 GETTABLEKS                       R5 R0 K10 ["setViewType"]
       46 SETTABLEKS                       R5 R4 K10 ["setViewType"]
       48 GETTABLEKS                       R5 R0 K16 ["state"]
       50 GETTABLEKS                       R5 R5 K11 ["selectedMaterialIdentifier"]
       52 SETTABLEKS                       R5 R4 K11 ["selectedMaterialIdentifier"]
       54 GETTABLEKS                       R5 R0 K16 ["state"]
       56 GETTABLEKS                       R5 R5 K12 ["viewType"]
       58 SETTABLEKS                       R5 R4 K12 ["viewType"]
       60 CALL                             R2 2 1
       61 GETUPVAL                         R3 2
       62 CALL                             R3 0 1
       63 JUMPIFNOT                        R3 ; [+26]
       64 GETUPVAL                         R3 0
       65 GETTABLEKS                       R3 R3 K0 ["createElement"]
       67 GETUPVAL                         R4 3
       68 DUPTABLE                         R5 K21 [{"onEditSlot", "onRequestCompleted", "onRequestOpened", "ref"}]
       69 GETTABLEKS                       R6 R0 K22 ["editTerrainSlot"]
       71 SETTABLEKS                       R6 R5 K17 ["onEditSlot"]
       73 GETTABLEKS                       R6 R0 K23 ["onTerrainRequestCompleted"]
       75 SETTABLEKS                       R6 R5 K18 ["onRequestCompleted"]
       77 GETTABLEKS                       R6 R0 K24 ["onTerrainRequestOpened"]
       79 SETTABLEKS                       R6 R5 K19 ["onRequestOpened"]
       81 GETTABLEKS                       R6 R0 K25 ["terrainMaterialPickerControllerRef"]
       83 SETTABLEKS                       R6 R5 K20 ["ref"]
       85 DUPTABLE                         R6 K27 [{"MainView"}]
       86 SETTABLEKS                       R2 R6 K26 ["MainView"]
       88 CALL                             R3 3 1
       89 MOVE                             R2 R3
       90 GETUPVAL                         R3 0
       91 GETTABLEKS                       R3 R3 K0 ["createElement"]
       93 GETUPVAL                         R4 4
       94 DUPTABLE                         R5 K31 [{"enabled", "localization", "onStyleSheetChange", "plugin"}]
       95 GETUPVAL                         R6 2
       96 CALL                             R6 0 1
       97 SETTABLEKS                       R6 R5 K28 ["enabled"]
       99 GETTABLEKS                       R6 R0 K32 ["foundationLocalization"]
      101 SETTABLEKS                       R6 R5 K29 ["localization"]
      103 GETTABLEKS                       R6 R0 K33 ["onFoundationStyleSheetChange"]
      105 SETTABLEKS                       R6 R5 K30 ["onStyleSheetChange"]
      107 SETTABLEKS                       R1 R5 K1 ["plugin"]
      109 DUPTABLE                         R6 K27 [{"MainView"}]
      110 SETTABLEKS                       R2 R6 K26 ["MainView"]
      112 CALL                             R3 3 1
      113 MOVE                             R2 R3
      114 GETUPVAL                         R3 0
      115 GETTABLEKS                       R3 R3 K0 ["createElement"]
      117 GETUPVAL                         R4 5
      118 DUPTABLE                         R5 K45 [{["CreateWidgetImmediately"] = False, ["Enabled"], ["Modal"] = False, ["Title"] = "MaterialPicker", ["Size"], ["OnClose"], ["OnWidgetFocused"], ["PassesThroughMouseEvents"] = True}]
      119 GETTABLEKS                       R6 R0 K16 ["state"]
      121 GETTABLEKS                       R6 R6 K28 ["enabled"]
      123 SETTABLEKS                       R6 R5 K36 ["Enabled"]
      125 GETTABLEKS                       R6 R0 K46 ["themeTable"]
      127 GETTABLEKS                       R6 R6 K47 ["Popup"]
      129 GETTABLEKS                       R6 R6 K40 ["Size"]
      131 SETTABLEKS                       R6 R5 K40 ["Size"]
      133 GETTABLEKS                       R6 R0 K2 ["onClose"]
      135 SETTABLEKS                       R6 R5 K41 ["OnClose"]
      137 GETTABLEKS                       R6 R0 K48 ["onWidgetFocused"]
      139 SETTABLEKS                       R6 R5 K42 ["OnWidgetFocused"]
      141 DUPTABLE                         R6 K50 [{"Content"}]
      142 SETTABLEKS                       R2 R6 K49 ["Content"]
      144 CALL                             R3 3 -1
      145 RETURN                           R3 -1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 NEWTABLE                         R3 0 7
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["Plugin"]
        9 GETTABLEKS                       R4 R4 K2 ["new"]
       11 MOVE                             R5 R2
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K2 ["new"]
       16 GETTABLEKS                       R6 R0 K3 ["store"]
       18 CALL                             R5 1 1
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K2 ["new"]
       22 NAMECALL                         R7 R2 K4 ["getMouse"]
       24 CALL                             R7 1 -1
       25 CALL                             R6 -1 1
       26 GETTABLEKS                       R7 R0 K5 ["themeTable"]
       28 GETTABLEKS                       R7 R7 K6 ["createTheme"]
       30 CALL                             R7 0 1
       31 GETTABLEKS                       R8 R0 K7 ["localization"]
       33 GETTABLEKS                       R9 R0 K8 ["analytics"]
       35 GETTABLEKS                       R10 R0 K9 ["studioServices"]
       37 SETLIST                          R3 R4 7 [1]
       39 GETUPVAL                         R4 3
       40 CALL                             R4 0 1
       41 JUMPIFNOT                        R4 ; [+11]
       42 MOVE                             R5 R3
       43 GETUPVAL                         R6 4
       44 GETTABLEKS                       R6 R6 K2 ["new"]
       46 GETTABLEKS                       R7 R0 K10 ["design"]
       48 CALL                             R6 1 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R4 K13 [table.insert]
       52 CALL                             R4 -1 0
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R4 R4 K14 ["provide"]
       56 MOVE                             R5 R3
       57 DUPTABLE                         R6 K17 [{"Toolbar", "Popup"}]
       58 GETUPVAL                         R7 5
       59 GETTABLEKS                       R7 R7 K18 ["createElement"]
       61 GETUPVAL                         R8 6
       62 DUPTABLE                         R9 K22 [{["Title"] = "Edit", ["RenderButtons"]}]
       63 NEWCLOSURE                       R10 P0
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R10 R9 K21 ["RenderButtons"]
       67 CALL                             R7 2 1
       68 SETTABLEKS                       R7 R6 K15 ["Toolbar"]
       70 MOVE                             R9 R2
       71 NAMECALL                         R7 R0 K23 ["renderPopup"]
       73 CALL                             R7 2 1
       74 SETTABLEKS                       R7 R6 K16 ["Popup"]
       76 CALL                             R4 2 -1
       77 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["applyToSelectionByIdentifier"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["isMaterialVariantByIdentifier"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Constants"]
       31 GETTABLEKS                       R4 R4 K11 ["MATERIAL_VARIANT_APPEARANCE_PROPERTIES"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K12 ["Packages"]
       38 GETTABLEKS                       R5 R5 K13 ["Framework"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K12 ["Packages"]
       45 GETTABLEKS                       R6 R6 K14 ["MaterialFramework"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K12 ["Packages"]
       52 GETTABLEKS                       R7 R7 K15 ["React"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K12 ["Packages"]
       59 GETTABLEKS                       R8 R8 K16 ["Rodux"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K12 ["Packages"]
       66 GETTABLEKS                       R9 R9 K17 ["StudioFoundation"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R9 R4 K18 ["UI"]
       71 GETTABLEKS                       R10 R9 K19 ["PluginButton"]
       73 GETTABLEKS                       R11 R9 K20 ["PluginToolbar"]
       75 GETTABLEKS                       R12 R9 K21 ["Popup"]
       77 GETTABLEKS                       R13 R4 K22 ["ContextServices"]
       79 GETTABLEKS                       R14 R4 K7 ["Util"]
       81 GETTABLEKS                       R14 R14 K23 ["CrossPluginCommunication"]
       83 GETTABLEKS                       R15 R13 K24 ["Design"]
       85 GETTABLEKS                       R16 R13 K25 ["Mouse"]
       87 GETTABLEKS                       R17 R13 K26 ["Store"]
       89 GETTABLEKS                       R18 R4 K27 ["Styling"]
       91 GETTABLEKS                       R18 R18 K28 ["registerPluginStyles"]
       93 GETTABLEKS                       R19 R8 K29 ["Contexts"]
       95 GETTABLEKS                       R19 R19 K30 ["Localization"]
       97 GETTABLEKS                       R20 R8 K7 ["Util"]
       99 GETTABLEKS                       R20 R20 K31 ["StudioUri"]
      101 GETTABLEKS                       R21 R5 K32 ["Context"]
      103 GETTABLEKS                       R21 R21 K33 ["StudioServices"]
      105 GETTABLEKS                       R22 R5 K34 ["Enums"]
      107 GETTABLEKS                       R22 R22 K35 ["ViewType"]
      109 GETTABLEKS                       R23 R5 K7 ["Util"]
      111 GETTABLEKS                       R23 R23 K36 ["parseMaterial"]
      113 GETTABLEKS                       R24 R5 K7 ["Util"]
      115 GETTABLEKS                       R24 R24 K37 ["getSerializedMaterialIdentifier"]
      117 GETIMPORT                        R25 K5 [require]
      119 GETTABLEKS                       R26 R0 K6 ["Src"]
      121 GETTABLEKS                       R26 R26 K38 ["Reducers"]
      123 GETTABLEKS                       R26 R26 K39 ["MainReducer"]
      125 CALL                             R25 1 1
      126 GETIMPORT                        R26 K5 [require]
      128 GETTABLEKS                       R27 R0 K6 ["Src"]
      130 GETTABLEKS                       R27 R27 K40 ["Resources"]
      132 GETTABLEKS                       R27 R27 K41 ["createAnalyticsHandlers"]
      134 CALL                             R26 1 1
      135 GETIMPORT                        R27 K5 [require]
      137 GETTABLEKS                       R28 R0 K6 ["Src"]
      139 GETTABLEKS                       R28 R28 K40 ["Resources"]
      141 GETTABLEKS                       R28 R28 K42 ["createThemeTable"]
      143 CALL                             R27 1 1
      144 GETTABLEKS                       R28 R0 K6 ["Src"]
      146 GETTABLEKS                       R28 R28 K40 ["Resources"]
      148 GETTABLEKS                       R28 R28 K30 ["Localization"]
      150 GETTABLEKS                       R28 R28 K43 ["SourceStrings"]
      152 GETTABLEKS                       R29 R0 K6 ["Src"]
      154 GETTABLEKS                       R29 R29 K40 ["Resources"]
      156 GETTABLEKS                       R29 R29 K30 ["Localization"]
      158 GETTABLEKS                       R29 R29 K44 ["LocalizedStrings"]
      160 GETIMPORT                        R30 K5 [require]
      162 GETTABLEKS                       R31 R0 K6 ["Src"]
      164 GETTABLEKS                       R31 R31 K45 ["Flags"]
      166 GETTABLEKS                       R31 R31 K46 ["getFFlagEnableTerrainPalette"]
      168 CALL                             R30 1 1
      169 GETIMPORT                        R31 K5 [require]
      171 GETTABLEKS                       R32 R0 K6 ["Src"]
      173 GETTABLEKS                       R32 R32 K45 ["Flags"]
      175 GETTABLEKS                       R32 R32 K47 ["getFFlagMaterialPickerOpenCooldown"]
      177 CALL                             R31 1 1
      178 GETTABLEKS                       R32 R0 K6 ["Src"]
      180 GETTABLEKS                       R32 R32 K48 ["Components"]
      182 GETIMPORT                        R33 K5 [require]
      184 GETTABLEKS                       R34 R32 K49 ["MainView"]
      186 CALL                             R33 1 1
      187 GETIMPORT                        R34 K5 [require]
      189 GETTABLEKS                       R35 R32 K50 ["MaterialPickerProviders"]
      191 CALL                             R34 1 1
      192 GETIMPORT                        R35 K5 [require]
      194 GETTABLEKS                       R36 R32 K51 ["TerrainMaterialPickerController"]
      196 CALL                             R35 1 1
      197 GETIMPORT                        R36 K5 [require]
      199 GETTABLEKS                       R37 R0 K12 ["Packages"]
      201 GETTABLEKS                       R37 R37 K52 ["SharedPluginConstants"]
      203 CALL                             R36 1 1
      204 GETTABLEKS                       R36 R36 K53 ["TERRAIN"]
      206 GETTABLEKS                       R37 R6 K54 ["PureComponent"]
      208 LOADK                            R39 K55 ["MainPlugin"]
      209 NAMECALL                         R37 R37 K56 ["extend"]
      211 CALL                             R37 2 1
      212 GETTABLEKS                       R38 R20 K57 ["fromAction"]
      214 LOADK                            R39 K58 ["TerrainPaletteEditor"]
      215 LOADK                            R40 K59 ["Toggle"]
      216 CALL                             R38 2 1
      217 GETIMPORT                        R39 K62 [string.format]
      219 LOADK                            R40 K63 ["rbxasset://textures/MaterialFramework/%s/Material.png"]
      220 LOADK                            R41 K64 ["Light"]
      221 CALL                             R39 2 1
      222 GETIMPORT                        R40 K62 [string.format]
      224 LOADK                            R41 K63 ["rbxasset://textures/MaterialFramework/%s/Material.png"]
      225 LOADK                            R42 K65 ["Dark"]
      226 CALL                             R40 2 1
      227 DUPCLOSURE                       R41 K66 [PROTO_0]
      228 CAPTURE                          VAL R39
      229 CAPTURE                          VAL R40
      230 GETIMPORT                        R42 K68 [game]
      232 LOADK                            R44 K69 ["MaterialPickerOpenCooldownMillis"]
      233 LOADN                            R45 750
      234 NAMECALL                         R42 R42 K70 ["DefineFastInt"]
      236 CALL                             R42 3 1
      237 DIVK                             R43 R42 K71 [1000]
      238 DUPCLOSURE                       R44 K72 [PROTO_27]
      239 CAPTURE                          VAL R6
      240 CAPTURE                          VAL R14
      241 CAPTURE                          VAL R36
      242 CAPTURE                          VAL R22
      243 CAPTURE                          VAL R31
      244 CAPTURE                          VAL R43
      245 CAPTURE                          VAL R23
      246 CAPTURE                          VAL R24
      247 CAPTURE                          VAL R3
      248 CAPTURE                          VAL R39
      249 CAPTURE                          VAL R40
      250 CAPTURE                          VAL R38
      251 CAPTURE                          VAL R7
      252 CAPTURE                          VAL R25
      253 CAPTURE                          VAL R13
      254 CAPTURE                          VAL R28
      255 CAPTURE                          VAL R29
      256 CAPTURE                          VAL R5
      257 CAPTURE                          VAL R30
      258 CAPTURE                          VAL R19
      259 CAPTURE                          VAL R8
      260 CAPTURE                          VAL R18
      261 CAPTURE                          VAL R26
      262 CAPTURE                          VAL R21
      263 CAPTURE                          VAL R27
      264 CAPTURE                          VAL R0
      265 SETTABLEKS                       R44 R37 K73 ["init"]
      267 DUPCLOSURE                       R44 K74 [PROTO_28]
      268 SETTABLEKS                       R44 R37 K75 ["willUnmount"]
      270 DUPCLOSURE                       R44 K76 [PROTO_30]
      271 CAPTURE                          VAL R6
      272 CAPTURE                          VAL R10
      273 CAPTURE                          VAL R1
      274 CAPTURE                          VAL R2
      275 SETTABLEKS                       R44 R37 K77 ["renderButtons"]
      277 DUPCLOSURE                       R44 K78 [PROTO_32]
      278 CAPTURE                          VAL R6
      279 CAPTURE                          VAL R33
      280 CAPTURE                          VAL R30
      281 CAPTURE                          VAL R35
      282 CAPTURE                          VAL R34
      283 CAPTURE                          VAL R12
      284 SETTABLEKS                       R44 R37 K79 ["renderPopup"]
      286 DUPCLOSURE                       R44 K80 [PROTO_34]
      287 CAPTURE                          VAL R13
      288 CAPTURE                          VAL R17
      289 CAPTURE                          VAL R16
      290 CAPTURE                          VAL R30
      291 CAPTURE                          VAL R15
      292 CAPTURE                          VAL R6
      293 CAPTURE                          VAL R11
      294 SETTABLEKS                       R44 R37 K81 ["render"]
      296 RETURN                           R37 1
