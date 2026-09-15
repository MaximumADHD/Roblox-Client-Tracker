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
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["editTerrainSlotRequestId"]
        4 JUMPIFEQ                         R0 R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K1 ["terrainPaletteReadyConnection"]
       10 JUMPIFNOT                        R0 ; [+10]
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K1 ["terrainPaletteReadyConnection"]
       14 NAMECALL                         R0 R0 K2 ["Disconnect"]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 1
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K1 ["terrainPaletteReadyConnection"]
       21 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["terrainPaletteCommunication"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["CPC_CALLBACKS"]
        6 GETTABLEKS                       R2 R2 K2 ["SELECT_SLOT"]
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R0 R0 K3 ["Invoke"]
       11 CALL                             R0 3 -1
       12 RETURN                           R0 -1

PROTO_16:
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
       30 GETUPVAL                         R2 2
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K0 ["editTerrainSlotRequestId"]
       34 JUMPIFEQ                         R2 R3 ; [+2]
       36 JUMP                             ; [+14]
       37 GETUPVAL                         R2 3
       38 GETTABLEKS                       R2 R2 K3 ["terrainPaletteReadyConnection"]
       40 JUMPIFNOT                        R2 ; [+10]
       41 GETUPVAL                         R2 3
       42 GETTABLEKS                       R2 R2 K3 ["terrainPaletteReadyConnection"]
       44 NAMECALL                         R2 R2 K4 ["Disconnect"]
       46 CALL                             R2 1 0
       47 GETUPVAL                         R2 3
       48 LOADNIL                          R3
       49 SETTABLEKS                       R3 R2 K3 ["terrainPaletteReadyConnection"]
       51 LOADB                            R2 1
       52 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["GetAsync"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_19:
        0 LOADB                            R0 0
        1 LOADB                            R1 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K0 ["editTerrainSlotRequestId"]
        9 JUMPIFEQ                         R3 R4 ; [+3]
       11 CLOSEUPVALS                      R0
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 0
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K0 ["editTerrainSlotRequestId"]
       17 JUMPIFEQ                         R3 R4 ; [+2]
       19 JUMP                             ; [+14]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K1 ["terrainPaletteReadyConnection"]
       23 JUMPIFNOT                        R3 ; [+10]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K1 ["terrainPaletteReadyConnection"]
       27 NAMECALL                         R3 R3 K2 ["Disconnect"]
       29 CALL                             R3 1 0
       30 GETUPVAL                         R3 1
       31 LOADNIL                          R4
       32 SETTABLEKS                       R4 R3 K1 ["terrainPaletteReadyConnection"]
       34 NEWCLOSURE                       R3 P1
       35 CAPTURE                          REF R0
       36 CAPTURE                          REF R1
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U3
       41 GETUPVAL                         R4 1
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K3 ["terrainPaletteCommunication"]
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K4 ["CPC_EVENTS"]
       48 GETTABLEKS                       R7 R7 K5 ["TERRAIN_PALETTE_EDITOR_READY"]
       50 MOVE                             R8 R3
       51 NAMECALL                         R5 R5 K6 ["Connect"]
       53 CALL                             R5 3 1
       54 SETTABLEKS                       R5 R4 K1 ["terrainPaletteReadyConnection"]
       56 GETUPVAL                         R4 4
       57 GETTABLEKS                       R4 R4 K7 ["Plugin"]
       59 LOADK                            R6 K8 ["Actions"]
       60 NAMECALL                         R4 R4 K9 ["GetPluginComponent"]
       62 CALL                             R4 2 1
       63 GETIMPORT                        R5 K11 [pcall]
       65 NEWCLOSURE                       R6 P2
       66 CAPTURE                          VAL R4
       67 CAPTURE                          UPVAL U5
       68 CALL                             R5 1 2
       69 JUMPIF                           R5 ; [+23]
       70 GETUPVAL                         R7 0
       71 GETUPVAL                         R8 1
       72 GETTABLEKS                       R8 R8 K0 ["editTerrainSlotRequestId"]
       74 JUMPIFEQ                         R7 R8 ; [+2]
       76 JUMP                             ; [+14]
       77 GETUPVAL                         R7 1
       78 GETTABLEKS                       R7 R7 K1 ["terrainPaletteReadyConnection"]
       80 JUMPIFNOT                        R7 ; [+10]
       81 GETUPVAL                         R7 1
       82 GETTABLEKS                       R7 R7 K1 ["terrainPaletteReadyConnection"]
       84 NAMECALL                         R7 R7 K2 ["Disconnect"]
       86 CALL                             R7 1 0
       87 GETUPVAL                         R7 1
       88 LOADNIL                          R8
       89 SETTABLEKS                       R8 R7 K1 ["terrainPaletteReadyConnection"]
       91 CLOSEUPVALS                      R0
       92 RETURN                           R0 0
       93 GETUPVAL                         R7 0
       94 GETUPVAL                         R8 1
       95 GETTABLEKS                       R8 R8 K0 ["editTerrainSlotRequestId"]
       97 JUMPIFEQ                         R7 R8 ; [+3]
       99 CLOSEUPVALS                      R0
      100 RETURN                           R0 0
      101 GETTABLEN                        R7 R6 1
      102 JUMPIFNOTEQKNIL                  R7 ; [+24]
      104 GETUPVAL                         R8 0
      105 GETUPVAL                         R9 1
      106 GETTABLEKS                       R9 R9 K0 ["editTerrainSlotRequestId"]
      108 JUMPIFEQ                         R8 R9 ; [+2]
      110 JUMP                             ; [+14]
      111 GETUPVAL                         R8 1
      112 GETTABLEKS                       R8 R8 K1 ["terrainPaletteReadyConnection"]
      114 JUMPIFNOT                        R8 ; [+10]
      115 GETUPVAL                         R8 1
      116 GETTABLEKS                       R8 R8 K1 ["terrainPaletteReadyConnection"]
      118 NAMECALL                         R8 R8 K2 ["Disconnect"]
      120 CALL                             R8 1 0
      121 GETUPVAL                         R8 1
      122 LOADNIL                          R9
      123 SETTABLEKS                       R9 R8 K1 ["terrainPaletteReadyConnection"]
      125 CLOSEUPVALS                      R0
      126 RETURN                           R0 0
      127 GETTABLEKS                       R8 R7 K12 ["Checked"]
      129 JUMPIF                           R8 ; [+38]
      130 GETIMPORT                        R9 K11 [pcall]
      132 NEWCLOSURE                       R10 P3
      133 CAPTURE                          VAL R4
      134 CAPTURE                          UPVAL U5
      135 CALL                             R9 1 1
      136 JUMPIF                           R9 ; [+23]
      137 GETUPVAL                         R10 0
      138 GETUPVAL                         R11 1
      139 GETTABLEKS                       R11 R11 K0 ["editTerrainSlotRequestId"]
      141 JUMPIFEQ                         R10 R11 ; [+2]
      143 JUMP                             ; [+14]
      144 GETUPVAL                         R10 1
      145 GETTABLEKS                       R10 R10 K1 ["terrainPaletteReadyConnection"]
      147 JUMPIFNOT                        R10 ; [+10]
      148 GETUPVAL                         R10 1
      149 GETTABLEKS                       R10 R10 K1 ["terrainPaletteReadyConnection"]
      151 NAMECALL                         R10 R10 K2 ["Disconnect"]
      153 CALL                             R10 1 0
      154 GETUPVAL                         R10 1
      155 LOADNIL                          R11
      156 SETTABLEKS                       R11 R10 K1 ["terrainPaletteReadyConnection"]
      158 CLOSEUPVALS                      R0
      159 RETURN                           R0 0
      160 GETUPVAL                         R10 0
      161 GETUPVAL                         R11 1
      162 GETTABLEKS                       R11 R11 K0 ["editTerrainSlotRequestId"]
      164 JUMPIFEQ                         R10 R11 ; [+3]
      166 CLOSEUPVALS                      R0
      167 RETURN                           R0 0
      168 MOVE                             R9 R3
      169 CALL                             R9 0 0
      170 CLOSEUPVALS                      R0
      171 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"viewType"}]
        2 SETTABLEKS                       R0 R3 K0 ["viewType"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["savedFilterChips"]
        3 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"isMaterialFillToolEnabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["isMaterialFillToolEnabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleEnabled"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
        0 GETTABLEKS                       R2 R1 K0 ["Telemetry"]
        2 JUMPIF                           R2 ; [+3]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["TelemetryServiceInterface"]
        6 SETTABLEKS                       R2 R0 K2 ["telemetry"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["createRef"]
       11 CALL                             R2 0 1
       12 SETTABLEKS                       R2 R0 K4 ["pluginButtonRef"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K3 ["createRef"]
       17 CALL                             R2 0 1
       18 SETTABLEKS                       R2 R0 K5 ["terrainMaterialPickerControllerRef"]
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K6 ["new"]
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K7 ["EDITOR_CPC_ID"]
       26 CALL                             R2 1 1
       27 SETTABLEKS                       R2 R0 K8 ["terrainPaletteCommunication"]
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R0 K9 ["terrainPaletteReadyConnection"]
       32 LOADN                            R2 0
       33 SETTABLEKS                       R2 R0 K10 ["editTerrainSlotRequestId"]
       35 DUPTABLE                         R2 K15 [{["recents"] = False, ["appliedInPlace"] = False, ["customMaterials"] = False}]
       36 SETTABLEKS                       R2 R0 K16 ["savedFilterChips"]
       38 GETIMPORT                        R2 K18 [Vector2.new]
       40 LOADN                            R3 0
       41 LOADN                            R4 0
       42 CALL                             R2 2 1
       43 SETTABLEKS                       R2 R0 K19 ["savedListCanvasPosition"]
       45 GETIMPORT                        R2 K18 [Vector2.new]
       47 LOADN                            R3 0
       48 LOADN                            R4 0
       49 CALL                             R2 2 1
       50 SETTABLEKS                       R2 R0 K20 ["savedGridCanvasPosition"]
       52 LOADNIL                          R2
       53 SETTABLEKS                       R2 R0 K21 ["selectedMaterialConnection"]
       55 DUPTABLE                         R4 K25 [{["enabled"] = False, ["viewType"], ["isMaterialFillToolEnabled"] = False}]
       56 GETUPVAL                         R5 4
       57 GETTABLEKS                       R5 R5 K26 ["Grid"]
       59 SETTABLEKS                       R5 R4 K23 ["viewType"]
       61 NAMECALL                         R2 R0 K27 ["setState"]
       63 CALL                             R2 2 0
       64 GETTABLEKS                       R2 R1 K28 ["Plugin"]
       66 NAMECALL                         R2 R2 K29 ["GetUri"]
       68 CALL                             R2 1 1
       69 SETTABLEKS                       R2 R0 K30 ["pluginUri"]
       71 GETUPVAL                         R2 5
       72 CALL                             R2 0 1
       73 JUMPIFNOT                        R2 ; [+3]
       74 LOADN                            R2 0
       75 SETTABLEKS                       R2 R0 K31 ["lastClosedTime"]
       77 NEWCLOSURE                       R2 P0
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R1
       80 SETTABLEKS                       R2 R0 K32 ["attachWidget"]
       82 NEWCLOSURE                       R2 P1
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          UPVAL U6
       86 SETTABLEKS                       R2 R0 K33 ["toggleEnabled"]
       88 NEWCLOSURE                       R2 P2
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R2 R0 K34 ["openPopup"]
       92 NEWCLOSURE                       R2 P3
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R2 R0 K35 ["setButtonIcon"]
       96 NEWCLOSURE                       R2 P4
       97 CAPTURE                          UPVAL U7
       98 CAPTURE                          UPVAL U8
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U9
      101 SETTABLEKS                       R2 R0 K36 ["setSelectedMaterial"]
      103 NEWCLOSURE                       R2 P5
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U10
      106 CAPTURE                          UPVAL U11
      107 SETTABLEKS                       R2 R0 K37 ["clearSelectedMaterial"]
      109 NEWCLOSURE                       R2 P6
      110 CAPTURE                          UPVAL U5
      111 CAPTURE                          VAL R0
      112 SETTABLEKS                       R2 R0 K38 ["onClose"]
      114 NEWCLOSURE                       R2 P7
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R2 R0 K39 ["onWidgetFocused"]
      118 NEWCLOSURE                       R2 P8
      119 CAPTURE                          VAL R0
      120 SETTABLEKS                       R2 R0 K40 ["onTerrainRequestOpened"]
      122 NEWCLOSURE                       R2 P9
      123 CAPTURE                          VAL R0
      124 SETTABLEKS                       R2 R0 K41 ["onTerrainRequestCompleted"]
      126 NEWCLOSURE                       R2 P10
      127 CAPTURE                          VAL R0
      128 CAPTURE                          UPVAL U3
      129 CAPTURE                          VAL R1
      130 CAPTURE                          UPVAL U12
      131 SETTABLEKS                       R2 R0 K42 ["editTerrainSlot"]
      133 NEWCLOSURE                       R2 P11
      134 CAPTURE                          VAL R0
      135 SETTABLEKS                       R2 R0 K43 ["onWidgetEnabledChanged"]
      137 NEWCLOSURE                       R2 P12
      138 CAPTURE                          VAL R0
      139 SETTABLEKS                       R2 R0 K44 ["setViewType"]
      141 NEWCLOSURE                       R2 P13
      142 CAPTURE                          VAL R0
      143 SETTABLEKS                       R2 R0 K45 ["onFilterChipsUpdate"]
      145 NEWCLOSURE                       R2 P14
      146 CAPTURE                          UPVAL U4
      147 CAPTURE                          VAL R0
      148 SETTABLEKS                       R2 R0 K46 ["createOnScrollUpdate"]
      150 GETUPVAL                         R2 13
      151 GETTABLEKS                       R2 R2 K47 ["Store"]
      153 GETTABLEKS                       R2 R2 K6 ["new"]
      155 GETUPVAL                         R3 14
      156 LOADNIL                          R4
      157 NEWTABLE                         R5 0 1
      159 GETUPVAL                         R6 13
      160 GETTABLEKS                       R6 R6 K48 ["thunkMiddleware"]
      162 SETLIST                          R5 R6 1 [1]
      164 LOADNIL                          R6
      165 CALL                             R2 4 1
      166 SETTABLEKS                       R2 R0 K49 ["store"]
      168 GETUPVAL                         R2 15
      169 GETTABLEKS                       R2 R2 K50 ["Localization"]
      171 GETTABLEKS                       R2 R2 K6 ["new"]
      173 DUPTABLE                         R3 K56 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "MaterialPicker", ["libraries"]}]
      174 GETUPVAL                         R4 16
      175 SETTABLEKS                       R4 R3 K51 ["stringResourceTable"]
      177 GETUPVAL                         R4 17
      178 SETTABLEKS                       R4 R3 K52 ["translationResourceTable"]
      180 NEWTABLE                         R4 1 0
      182 GETUPVAL                         R5 18
      183 GETTABLEKS                       R5 R5 K57 ["Resources"]
      185 GETTABLEKS                       R5 R5 K58 ["LOCALIZATION_PROJECT_NAME"]
      187 DUPTABLE                         R6 K59 [{"stringResourceTable", "translationResourceTable"}]
      188 GETUPVAL                         R7 18
      189 GETTABLEKS                       R7 R7 K57 ["Resources"]
      191 GETTABLEKS                       R7 R7 K60 ["SourceStrings"]
      193 SETTABLEKS                       R7 R6 K51 ["stringResourceTable"]
      195 GETUPVAL                         R7 18
      196 GETTABLEKS                       R7 R7 K57 ["Resources"]
      198 GETTABLEKS                       R7 R7 K61 ["LocalizedStrings"]
      200 SETTABLEKS                       R7 R6 K52 ["translationResourceTable"]
      202 SETTABLE                         R6 R4 R5
      203 SETTABLEKS                       R4 R3 K55 ["libraries"]
      205 CALL                             R2 1 1
      206 SETTABLEKS                       R2 R0 K62 ["localization"]
      208 GETUPVAL                         R2 19
      209 CALL                             R2 0 1
      210 JUMPIFNOT                        R2 ; [+61]
      211 GETUPVAL                         R2 20
      212 GETTABLEKS                       R2 R2 K50 ["Localization"]
      214 GETTABLEKS                       R2 R2 K6 ["new"]
      216 DUPTABLE                         R3 K56 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "MaterialPicker", ["libraries"]}]
      217 GETUPVAL                         R4 16
      218 SETTABLEKS                       R4 R3 K51 ["stringResourceTable"]
      220 GETUPVAL                         R4 17
      221 SETTABLEKS                       R4 R3 K52 ["translationResourceTable"]
      223 NEWTABLE                         R4 1 0
      225 GETUPVAL                         R5 18
      226 GETTABLEKS                       R5 R5 K57 ["Resources"]
      228 GETTABLEKS                       R5 R5 K58 ["LOCALIZATION_PROJECT_NAME"]
      230 DUPTABLE                         R6 K59 [{"stringResourceTable", "translationResourceTable"}]
      231 GETUPVAL                         R7 18
      232 GETTABLEKS                       R7 R7 K57 ["Resources"]
      234 GETTABLEKS                       R7 R7 K60 ["SourceStrings"]
      236 SETTABLEKS                       R7 R6 K51 ["stringResourceTable"]
      238 GETUPVAL                         R7 18
      239 GETTABLEKS                       R7 R7 K57 ["Resources"]
      241 GETTABLEKS                       R7 R7 K61 ["LocalizedStrings"]
      243 SETTABLEKS                       R7 R6 K52 ["translationResourceTable"]
      245 SETTABLE                         R6 R4 R5
      246 SETTABLEKS                       R4 R3 K55 ["libraries"]
      248 CALL                             R2 1 1
      249 SETTABLEKS                       R2 R0 K63 ["foundationLocalization"]
      251 GETUPVAL                         R2 21
      252 GETTABLEKS                       R2 R2 K64 ["Util"]
      254 GETTABLEKS                       R2 R2 K65 ["createFoundationDesignBinding"]
      256 CALL                             R2 0 2
      257 SETTABLEKS                       R3 R0 K66 ["onFoundationStyleSheetChange"]
      259 GETUPVAL                         R4 22
      260 GETTABLEKS                       R5 R1 K28 ["Plugin"]
      262 LOADNIL                          R6
      263 LOADNIL                          R7
      264 NEWTABLE                         R8 0 1
      266 MOVE                             R9 R2
      267 SETLIST                          R8 R9 1 [1]
      269 CALL                             R4 4 1
      270 SETTABLEKS                       R4 R0 K67 ["design"]
      272 GETUPVAL                         R2 15
      273 GETTABLEKS                       R2 R2 K68 ["Analytics"]
      275 GETTABLEKS                       R2 R2 K6 ["new"]
      277 GETUPVAL                         R3 23
      278 CALL                             R2 1 1
      279 SETTABLEKS                       R2 R0 K69 ["analytics"]
      281 GETUPVAL                         R2 24
      282 GETTABLEKS                       R2 R2 K6 ["new"]
      284 CALL                             R2 0 1
      285 SETTABLEKS                       R2 R0 K70 ["studioServices"]
      287 GETIMPORT                        R2 K72 [settings]
      289 CALL                             R2 0 1
      290 GETTABLEKS                       R2 R2 K73 ["Studio"]
      292 GETTABLEKS                       R2 R2 K74 ["ThemeChanged"]
      294 NEWCLOSURE                       R4 P15
      295 CAPTURE                          VAL R0
      296 CAPTURE                          UPVAL U10
      297 CAPTURE                          UPVAL U11
      298 NAMECALL                         R2 R2 K75 ["Connect"]
      300 CALL                             R2 2 1
      301 SETTABLEKS                       R2 R0 K76 ["themeChangedConnection"]
      303 GETTABLEKS                       R2 R0 K70 ["studioServices"]
      305 LOADK                            R4 K77 ["MaterialService"]
      306 NAMECALL                         R2 R2 K78 ["getService"]
      308 CALL                             R2 2 1
      309 GETTABLEKS                       R2 R2 K79 ["MaterialFillToolEnabledChanged"]
      311 NEWCLOSURE                       R4 P16
      312 CAPTURE                          VAL R0
      313 NAMECALL                         R2 R2 K75 ["Connect"]
      315 CALL                             R2 2 1
      316 SETTABLEKS                       R2 R0 K80 ["materialActionAsToolConnection"]
      318 GETUPVAL                         R2 25
      319 CALL                             R2 0 1
      320 SETTABLEKS                       R2 R0 K81 ["themeTable"]
      322 GETUPVAL                         R2 26
      323 GETTABLEKS                       R2 R2 K82 ["Parent"]
      325 LOADK                            R4 K83 ["Actions"]
      326 NAMECALL                         R2 R2 K84 ["GetPluginComponent"]
      328 CALL                             R2 2 1
      329 GETIMPORT                        R3 K87 [task.spawn]
      331 NEWCLOSURE                       R4 P17
      332 CAPTURE                          VAL R2
      333 CAPTURE                          VAL R0
      334 CALL                             R3 1 0
      335 RETURN                           R0 0

PROTO_31:
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

PROTO_32:
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
       34 LOADK                            R3 K7 ["Applied %* Material to Selection"]
       35 MOVE                             R5 R0
       36 NAMECALL                         R3 R3 K8 ["format"]
       38 CALL                             R3 2 1
       39 NAMECALL                         R1 R1 K9 ["SetWaypoint"]
       41 CALL                             R1 2 0
       42 GETUPVAL                         R2 2
       43 NAMECALL                         R2 R2 K10 ["Get"]
       45 CALL                             R2 1 1
       46 LENGTH                           R1 R2
       47 LOADN                            R2 0
       48 JUMPIFNOTLT                      R2 R1 ; [+19]
       50 GETUPVAL                         R3 4
       51 MOVE                             R4 R0
       52 CALL                             R3 1 1
       53 JUMPIFNOT                        R3 ; [+2]
       54 LOADK                            R2 K11 ["MaterialVariant"]
       55 JUMP                             ; [+1]
       56 LOADK                            R2 K12 ["BaseMaterial"]
       57 GETUPVAL                         R3 0
       58 GETTABLEKS                       R3 R3 K13 ["analytics"]
       60 LOADK                            R5 K14 ["MaterialApplied"]
       61 LOADK                            R6 K15 ["IconButton"]
       62 MOVE                             R7 R1
       63 MOVE                             R8 R0
       64 MOVE                             R9 R2
       65 NAMECALL                         R3 R3 K16 ["report"]
       67 CALL                             R3 6 0
       68 RETURN                           R0 0

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setButtonIcon"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["onClose"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_35:
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
       63 JUMPIFNOT                        R3 ; [+30]
       64 GETUPVAL                         R3 0
       65 GETTABLEKS                       R3 R3 K0 ["createElement"]
       67 GETUPVAL                         R4 3
       68 DUPTABLE                         R5 K22 [{"telemetry", "onEditSlot", "onRequestCompleted", "onRequestOpened", "ref"}]
       69 GETTABLEKS                       R6 R0 K17 ["telemetry"]
       71 SETTABLEKS                       R6 R5 K17 ["telemetry"]
       73 GETTABLEKS                       R6 R0 K23 ["editTerrainSlot"]
       75 SETTABLEKS                       R6 R5 K18 ["onEditSlot"]
       77 GETTABLEKS                       R6 R0 K24 ["onTerrainRequestCompleted"]
       79 SETTABLEKS                       R6 R5 K19 ["onRequestCompleted"]
       81 GETTABLEKS                       R6 R0 K25 ["onTerrainRequestOpened"]
       83 SETTABLEKS                       R6 R5 K20 ["onRequestOpened"]
       85 GETTABLEKS                       R6 R0 K26 ["terrainMaterialPickerControllerRef"]
       87 SETTABLEKS                       R6 R5 K21 ["ref"]
       89 DUPTABLE                         R6 K28 [{"MainView"}]
       90 SETTABLEKS                       R2 R6 K27 ["MainView"]
       92 CALL                             R3 3 1
       93 MOVE                             R2 R3
       94 GETUPVAL                         R3 0
       95 GETTABLEKS                       R3 R3 K0 ["createElement"]
       97 GETUPVAL                         R4 4
       98 DUPTABLE                         R5 K32 [{"enabled", "localization", "onStyleSheetChange", "plugin"}]
       99 GETUPVAL                         R6 2
      100 CALL                             R6 0 1
      101 SETTABLEKS                       R6 R5 K29 ["enabled"]
      103 GETTABLEKS                       R6 R0 K33 ["foundationLocalization"]
      105 SETTABLEKS                       R6 R5 K30 ["localization"]
      107 GETTABLEKS                       R6 R0 K34 ["onFoundationStyleSheetChange"]
      109 SETTABLEKS                       R6 R5 K31 ["onStyleSheetChange"]
      111 SETTABLEKS                       R1 R5 K1 ["plugin"]
      113 DUPTABLE                         R6 K28 [{"MainView"}]
      114 SETTABLEKS                       R2 R6 K27 ["MainView"]
      116 CALL                             R3 3 1
      117 MOVE                             R2 R3
      118 GETUPVAL                         R3 0
      119 GETTABLEKS                       R3 R3 K0 ["createElement"]
      121 GETUPVAL                         R4 5
      122 DUPTABLE                         R5 K46 [{["CreateWidgetImmediately"] = False, ["Enabled"], ["Modal"] = False, ["Title"] = "MaterialPicker", ["Size"], ["OnClose"], ["OnWidgetFocused"], ["PassesThroughMouseEvents"] = True}]
      123 GETTABLEKS                       R6 R0 K16 ["state"]
      125 GETTABLEKS                       R6 R6 K29 ["enabled"]
      127 SETTABLEKS                       R6 R5 K37 ["Enabled"]
      129 GETTABLEKS                       R6 R0 K47 ["themeTable"]
      131 GETTABLEKS                       R6 R6 K48 ["Popup"]
      133 GETTABLEKS                       R6 R6 K41 ["Size"]
      135 SETTABLEKS                       R6 R5 K41 ["Size"]
      137 GETTABLEKS                       R6 R0 K2 ["onClose"]
      139 SETTABLEKS                       R6 R5 K42 ["OnClose"]
      141 GETTABLEKS                       R6 R0 K49 ["onWidgetFocused"]
      143 SETTABLEKS                       R6 R5 K43 ["OnWidgetFocused"]
      145 DUPTABLE                         R6 K51 [{"Content"}]
      146 SETTABLEKS                       R2 R6 K50 ["Content"]
      148 CALL                             R3 3 -1
      149 RETURN                           R3 -1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_37:
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
       38 GETTABLEKS                       R5 R5 K13 ["Analytics"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K12 ["Packages"]
       45 GETTABLEKS                       R6 R6 K14 ["Framework"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K12 ["Packages"]
       52 GETTABLEKS                       R7 R7 K15 ["MaterialFramework"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K12 ["Packages"]
       59 GETTABLEKS                       R8 R8 K16 ["React"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K12 ["Packages"]
       66 GETTABLEKS                       R9 R9 K17 ["Rodux"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K12 ["Packages"]
       73 GETTABLEKS                       R10 R10 K18 ["StudioFoundation"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R5 K19 ["UI"]
       78 GETTABLEKS                       R11 R10 K20 ["PluginButton"]
       80 GETTABLEKS                       R12 R10 K21 ["PluginToolbar"]
       82 GETTABLEKS                       R13 R10 K22 ["Popup"]
       84 GETTABLEKS                       R14 R5 K23 ["ContextServices"]
       86 GETTABLEKS                       R15 R5 K7 ["Util"]
       88 GETTABLEKS                       R15 R15 K24 ["CrossPluginCommunication"]
       90 GETTABLEKS                       R16 R14 K25 ["Design"]
       92 GETTABLEKS                       R17 R14 K26 ["Mouse"]
       94 GETTABLEKS                       R18 R14 K27 ["Store"]
       96 GETTABLEKS                       R19 R5 K28 ["Styling"]
       98 GETTABLEKS                       R19 R19 K29 ["registerPluginStyles"]
      100 GETTABLEKS                       R20 R9 K30 ["Contexts"]
      102 GETTABLEKS                       R20 R20 K31 ["Localization"]
      104 GETTABLEKS                       R21 R9 K7 ["Util"]
      106 GETTABLEKS                       R21 R21 K32 ["StudioUri"]
      108 GETTABLEKS                       R22 R6 K33 ["Context"]
      110 GETTABLEKS                       R22 R22 K34 ["StudioServices"]
      112 GETTABLEKS                       R23 R6 K35 ["Enums"]
      114 GETTABLEKS                       R23 R23 K36 ["ViewType"]
      116 GETTABLEKS                       R24 R6 K7 ["Util"]
      118 GETTABLEKS                       R24 R24 K37 ["parseMaterial"]
      120 GETTABLEKS                       R25 R6 K7 ["Util"]
      122 GETTABLEKS                       R25 R25 K38 ["getSerializedMaterialIdentifier"]
      124 GETIMPORT                        R26 K5 [require]
      126 GETTABLEKS                       R27 R0 K6 ["Src"]
      128 GETTABLEKS                       R27 R27 K39 ["Reducers"]
      130 GETTABLEKS                       R27 R27 K40 ["MainReducer"]
      132 CALL                             R26 1 1
      133 GETIMPORT                        R27 K5 [require]
      135 GETTABLEKS                       R28 R0 K6 ["Src"]
      137 GETTABLEKS                       R28 R28 K41 ["Resources"]
      139 GETTABLEKS                       R28 R28 K42 ["createAnalyticsHandlers"]
      141 CALL                             R27 1 1
      142 GETIMPORT                        R28 K5 [require]
      144 GETTABLEKS                       R29 R0 K6 ["Src"]
      146 GETTABLEKS                       R29 R29 K41 ["Resources"]
      148 GETTABLEKS                       R29 R29 K43 ["createThemeTable"]
      150 CALL                             R28 1 1
      151 GETTABLEKS                       R29 R0 K6 ["Src"]
      153 GETTABLEKS                       R29 R29 K41 ["Resources"]
      155 GETTABLEKS                       R29 R29 K31 ["Localization"]
      157 GETTABLEKS                       R29 R29 K44 ["SourceStrings"]
      159 GETTABLEKS                       R30 R0 K6 ["Src"]
      161 GETTABLEKS                       R30 R30 K41 ["Resources"]
      163 GETTABLEKS                       R30 R30 K31 ["Localization"]
      165 GETTABLEKS                       R30 R30 K45 ["LocalizedStrings"]
      167 GETIMPORT                        R31 K5 [require]
      169 GETTABLEKS                       R32 R0 K6 ["Src"]
      171 GETTABLEKS                       R32 R32 K46 ["Flags"]
      173 GETTABLEKS                       R32 R32 K47 ["getFFlagEnableTerrainPalette"]
      175 CALL                             R31 1 1
      176 GETIMPORT                        R32 K5 [require]
      178 GETTABLEKS                       R33 R0 K6 ["Src"]
      180 GETTABLEKS                       R33 R33 K46 ["Flags"]
      182 GETTABLEKS                       R33 R33 K48 ["getFFlagMaterialPickerOpenCooldown"]
      184 CALL                             R32 1 1
      185 GETTABLEKS                       R33 R0 K6 ["Src"]
      187 GETTABLEKS                       R33 R33 K49 ["Components"]
      189 GETIMPORT                        R34 K5 [require]
      191 GETTABLEKS                       R35 R33 K50 ["MainView"]
      193 CALL                             R34 1 1
      194 GETIMPORT                        R35 K5 [require]
      196 GETTABLEKS                       R36 R33 K51 ["MaterialPickerProviders"]
      198 CALL                             R35 1 1
      199 GETIMPORT                        R36 K5 [require]
      201 GETTABLEKS                       R37 R33 K52 ["TerrainMaterialPickerController"]
      203 CALL                             R36 1 1
      204 GETIMPORT                        R37 K5 [require]
      206 GETTABLEKS                       R38 R0 K12 ["Packages"]
      208 GETTABLEKS                       R38 R38 K53 ["SharedPluginConstants"]
      210 CALL                             R37 1 1
      211 GETTABLEKS                       R37 R37 K54 ["TERRAIN"]
      213 GETTABLEKS                       R38 R7 K55 ["PureComponent"]
      215 LOADK                            R40 K56 ["MainPlugin"]
      216 NAMECALL                         R38 R38 K57 ["extend"]
      218 CALL                             R38 2 1
      219 GETTABLEKS                       R39 R21 K58 ["fromAction"]
      221 LOADK                            R40 K59 ["TerrainPaletteEditor"]
      222 LOADK                            R41 K60 ["Toggle"]
      223 CALL                             R39 2 1
      224 GETIMPORT                        R40 K63 [string.format]
      226 LOADK                            R41 K64 ["rbxasset://textures/MaterialFramework/%s/Material.png"]
      227 LOADK                            R42 K65 ["Light"]
      228 CALL                             R40 2 1
      229 GETIMPORT                        R41 K63 [string.format]
      231 LOADK                            R42 K64 ["rbxasset://textures/MaterialFramework/%s/Material.png"]
      232 LOADK                            R43 K66 ["Dark"]
      233 CALL                             R41 2 1
      234 DUPCLOSURE                       R42 K67 [PROTO_0]
      235 CAPTURE                          VAL R40
      236 CAPTURE                          VAL R41
      237 GETIMPORT                        R43 K69 [game]
      239 LOADK                            R45 K70 ["MaterialPickerOpenCooldownMillis"]
      240 LOADN                            R46 750
      241 NAMECALL                         R43 R43 K71 ["DefineFastInt"]
      243 CALL                             R43 3 1
      244 DIVK                             R44 R43 K72 [1000]
      245 DUPCLOSURE                       R45 K73 [PROTO_30]
      246 CAPTURE                          VAL R4
      247 CAPTURE                          VAL R7
      248 CAPTURE                          VAL R15
      249 CAPTURE                          VAL R37
      250 CAPTURE                          VAL R23
      251 CAPTURE                          VAL R32
      252 CAPTURE                          VAL R44
      253 CAPTURE                          VAL R24
      254 CAPTURE                          VAL R25
      255 CAPTURE                          VAL R3
      256 CAPTURE                          VAL R40
      257 CAPTURE                          VAL R41
      258 CAPTURE                          VAL R39
      259 CAPTURE                          VAL R8
      260 CAPTURE                          VAL R26
      261 CAPTURE                          VAL R14
      262 CAPTURE                          VAL R29
      263 CAPTURE                          VAL R30
      264 CAPTURE                          VAL R6
      265 CAPTURE                          VAL R31
      266 CAPTURE                          VAL R20
      267 CAPTURE                          VAL R9
      268 CAPTURE                          VAL R19
      269 CAPTURE                          VAL R27
      270 CAPTURE                          VAL R22
      271 CAPTURE                          VAL R28
      272 CAPTURE                          VAL R0
      273 SETTABLEKS                       R45 R38 K74 ["init"]
      275 DUPCLOSURE                       R45 K75 [PROTO_31]
      276 SETTABLEKS                       R45 R38 K76 ["willUnmount"]
      278 DUPCLOSURE                       R45 K77 [PROTO_33]
      279 CAPTURE                          VAL R7
      280 CAPTURE                          VAL R11
      281 CAPTURE                          VAL R1
      282 CAPTURE                          VAL R2
      283 SETTABLEKS                       R45 R38 K78 ["renderButtons"]
      285 DUPCLOSURE                       R45 K79 [PROTO_35]
      286 CAPTURE                          VAL R7
      287 CAPTURE                          VAL R34
      288 CAPTURE                          VAL R31
      289 CAPTURE                          VAL R36
      290 CAPTURE                          VAL R35
      291 CAPTURE                          VAL R13
      292 SETTABLEKS                       R45 R38 K80 ["renderPopup"]
      294 DUPCLOSURE                       R45 K81 [PROTO_37]
      295 CAPTURE                          VAL R14
      296 CAPTURE                          VAL R18
      297 CAPTURE                          VAL R17
      298 CAPTURE                          VAL R31
      299 CAPTURE                          VAL R16
      300 CAPTURE                          VAL R7
      301 CAPTURE                          VAL R12
      302 SETTABLEKS                       R45 R38 K82 ["render"]
      304 RETURN                           R38 1
