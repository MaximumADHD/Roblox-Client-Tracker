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
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"viewType"}]
        2 SETTABLEKS                       R0 R3 K0 ["viewType"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["savedFilterChips"]
        3 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"isMaterialFillToolEnabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["isMaterialFillToolEnabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleEnabled"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R0 K1 ["pluginButtonRef"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["createRef"]
        9 CALL                             R2 0 1
       10 SETTABLEKS                       R2 R0 K2 ["terrainMaterialPickerControllerRef"]
       12 DUPTABLE                         R2 K7 [{["recents"] = False, ["appliedInPlace"] = False, ["customMaterials"] = False}]
       13 SETTABLEKS                       R2 R0 K8 ["savedFilterChips"]
       15 GETIMPORT                        R2 K11 [Vector2.new]
       17 LOADN                            R3 0
       18 LOADN                            R4 0
       19 CALL                             R2 2 1
       20 SETTABLEKS                       R2 R0 K12 ["savedListCanvasPosition"]
       22 GETIMPORT                        R2 K11 [Vector2.new]
       24 LOADN                            R3 0
       25 LOADN                            R4 0
       26 CALL                             R2 2 1
       27 SETTABLEKS                       R2 R0 K13 ["savedGridCanvasPosition"]
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R0 K14 ["selectedMaterialConnection"]
       32 DUPTABLE                         R4 K18 [{["enabled"] = False, ["viewType"], ["isMaterialFillToolEnabled"] = False}]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K19 ["Grid"]
       36 SETTABLEKS                       R5 R4 K16 ["viewType"]
       38 NAMECALL                         R2 R0 K20 ["setState"]
       40 CALL                             R2 2 0
       41 GETTABLEKS                       R2 R1 K21 ["Plugin"]
       43 NAMECALL                         R2 R2 K22 ["GetUri"]
       45 CALL                             R2 1 1
       46 SETTABLEKS                       R2 R0 K23 ["pluginUri"]
       48 GETUPVAL                         R2 2
       49 CALL                             R2 0 1
       50 JUMPIFNOT                        R2 ; [+3]
       51 LOADN                            R2 0
       52 SETTABLEKS                       R2 R0 K24 ["lastClosedTime"]
       54 NEWCLOSURE                       R2 P0
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R1
       57 SETTABLEKS                       R2 R0 K25 ["attachWidget"]
       59 NEWCLOSURE                       R2 P1
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          UPVAL U3
       63 SETTABLEKS                       R2 R0 K26 ["toggleEnabled"]
       65 NEWCLOSURE                       R2 P2
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R2 R0 K27 ["openPopup"]
       69 NEWCLOSURE                       R2 P3
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R2 R0 K28 ["setButtonIcon"]
       73 NEWCLOSURE                       R2 P4
       74 CAPTURE                          UPVAL U4
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U6
       78 SETTABLEKS                       R2 R0 K29 ["setSelectedMaterial"]
       80 NEWCLOSURE                       R2 P5
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U7
       83 CAPTURE                          UPVAL U8
       84 SETTABLEKS                       R2 R0 K30 ["clearSelectedMaterial"]
       86 NEWCLOSURE                       R2 P6
       87 CAPTURE                          UPVAL U2
       88 CAPTURE                          VAL R0
       89 SETTABLEKS                       R2 R0 K31 ["onClose"]
       91 NEWCLOSURE                       R2 P7
       92 CAPTURE                          VAL R0
       93 SETTABLEKS                       R2 R0 K32 ["onWidgetFocused"]
       95 NEWCLOSURE                       R2 P8
       96 CAPTURE                          VAL R0
       97 SETTABLEKS                       R2 R0 K33 ["onTerrainRequestOpened"]
       99 NEWCLOSURE                       R2 P9
      100 CAPTURE                          VAL R0
      101 SETTABLEKS                       R2 R0 K34 ["onTerrainRequestCompleted"]
      103 NEWCLOSURE                       R2 P10
      104 CAPTURE                          VAL R0
      105 SETTABLEKS                       R2 R0 K35 ["onWidgetEnabledChanged"]
      107 NEWCLOSURE                       R2 P11
      108 CAPTURE                          VAL R0
      109 SETTABLEKS                       R2 R0 K36 ["setViewType"]
      111 NEWCLOSURE                       R2 P12
      112 CAPTURE                          VAL R0
      113 SETTABLEKS                       R2 R0 K37 ["onFilterChipsUpdate"]
      115 NEWCLOSURE                       R2 P13
      116 CAPTURE                          UPVAL U1
      117 CAPTURE                          VAL R0
      118 SETTABLEKS                       R2 R0 K38 ["createOnScrollUpdate"]
      120 GETUPVAL                         R2 9
      121 GETTABLEKS                       R2 R2 K39 ["Store"]
      123 GETTABLEKS                       R2 R2 K10 ["new"]
      125 GETUPVAL                         R3 10
      126 LOADNIL                          R4
      127 NEWTABLE                         R5 0 1
      129 GETUPVAL                         R6 9
      130 GETTABLEKS                       R6 R6 K40 ["thunkMiddleware"]
      132 SETLIST                          R5 R6 1 [1]
      134 LOADNIL                          R6
      135 CALL                             R2 4 1
      136 SETTABLEKS                       R2 R0 K41 ["store"]
      138 GETUPVAL                         R2 11
      139 GETTABLEKS                       R2 R2 K42 ["Localization"]
      141 GETTABLEKS                       R2 R2 K10 ["new"]
      143 DUPTABLE                         R3 K48 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "MaterialPicker", ["libraries"]}]
      144 GETUPVAL                         R4 12
      145 SETTABLEKS                       R4 R3 K43 ["stringResourceTable"]
      147 GETUPVAL                         R4 13
      148 SETTABLEKS                       R4 R3 K44 ["translationResourceTable"]
      150 NEWTABLE                         R4 1 0
      152 GETUPVAL                         R5 14
      153 GETTABLEKS                       R5 R5 K49 ["Resources"]
      155 GETTABLEKS                       R5 R5 K50 ["LOCALIZATION_PROJECT_NAME"]
      157 DUPTABLE                         R6 K51 [{"stringResourceTable", "translationResourceTable"}]
      158 GETUPVAL                         R7 14
      159 GETTABLEKS                       R7 R7 K49 ["Resources"]
      161 GETTABLEKS                       R7 R7 K52 ["SourceStrings"]
      163 SETTABLEKS                       R7 R6 K43 ["stringResourceTable"]
      165 GETUPVAL                         R7 14
      166 GETTABLEKS                       R7 R7 K49 ["Resources"]
      168 GETTABLEKS                       R7 R7 K53 ["LocalizedStrings"]
      170 SETTABLEKS                       R7 R6 K44 ["translationResourceTable"]
      172 SETTABLE                         R6 R4 R5
      173 SETTABLEKS                       R4 R3 K47 ["libraries"]
      175 CALL                             R2 1 1
      176 SETTABLEKS                       R2 R0 K54 ["localization"]
      178 GETUPVAL                         R2 15
      179 CALL                             R2 0 1
      180 JUMPIFNOT                        R2 ; [+61]
      181 GETUPVAL                         R2 16
      182 GETTABLEKS                       R2 R2 K42 ["Localization"]
      184 GETTABLEKS                       R2 R2 K10 ["new"]
      186 DUPTABLE                         R3 K48 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "MaterialPicker", ["libraries"]}]
      187 GETUPVAL                         R4 12
      188 SETTABLEKS                       R4 R3 K43 ["stringResourceTable"]
      190 GETUPVAL                         R4 13
      191 SETTABLEKS                       R4 R3 K44 ["translationResourceTable"]
      193 NEWTABLE                         R4 1 0
      195 GETUPVAL                         R5 14
      196 GETTABLEKS                       R5 R5 K49 ["Resources"]
      198 GETTABLEKS                       R5 R5 K50 ["LOCALIZATION_PROJECT_NAME"]
      200 DUPTABLE                         R6 K51 [{"stringResourceTable", "translationResourceTable"}]
      201 GETUPVAL                         R7 14
      202 GETTABLEKS                       R7 R7 K49 ["Resources"]
      204 GETTABLEKS                       R7 R7 K52 ["SourceStrings"]
      206 SETTABLEKS                       R7 R6 K43 ["stringResourceTable"]
      208 GETUPVAL                         R7 14
      209 GETTABLEKS                       R7 R7 K49 ["Resources"]
      211 GETTABLEKS                       R7 R7 K53 ["LocalizedStrings"]
      213 SETTABLEKS                       R7 R6 K44 ["translationResourceTable"]
      215 SETTABLE                         R6 R4 R5
      216 SETTABLEKS                       R4 R3 K47 ["libraries"]
      218 CALL                             R2 1 1
      219 SETTABLEKS                       R2 R0 K55 ["foundationLocalization"]
      221 GETUPVAL                         R2 17
      222 GETTABLEKS                       R2 R2 K56 ["Util"]
      224 GETTABLEKS                       R2 R2 K57 ["createFoundationDesignBinding"]
      226 CALL                             R2 0 2
      227 SETTABLEKS                       R3 R0 K58 ["onFoundationStyleSheetChange"]
      229 GETUPVAL                         R4 18
      230 GETTABLEKS                       R5 R1 K21 ["Plugin"]
      232 LOADNIL                          R6
      233 LOADNIL                          R7
      234 NEWTABLE                         R8 0 1
      236 MOVE                             R9 R2
      237 SETLIST                          R8 R9 1 [1]
      239 CALL                             R4 4 1
      240 SETTABLEKS                       R4 R0 K59 ["design"]
      242 GETUPVAL                         R2 11
      243 GETTABLEKS                       R2 R2 K60 ["Analytics"]
      245 GETTABLEKS                       R2 R2 K10 ["new"]
      247 GETUPVAL                         R3 19
      248 CALL                             R2 1 1
      249 SETTABLEKS                       R2 R0 K61 ["analytics"]
      251 GETUPVAL                         R2 20
      252 GETTABLEKS                       R2 R2 K10 ["new"]
      254 CALL                             R2 0 1
      255 SETTABLEKS                       R2 R0 K62 ["studioServices"]
      257 GETIMPORT                        R2 K64 [settings]
      259 CALL                             R2 0 1
      260 GETTABLEKS                       R2 R2 K65 ["Studio"]
      262 GETTABLEKS                       R2 R2 K66 ["ThemeChanged"]
      264 NEWCLOSURE                       R4 P14
      265 CAPTURE                          VAL R0
      266 CAPTURE                          UPVAL U7
      267 CAPTURE                          UPVAL U8
      268 NAMECALL                         R2 R2 K67 ["Connect"]
      270 CALL                             R2 2 1
      271 SETTABLEKS                       R2 R0 K68 ["themeChangedConnection"]
      273 GETTABLEKS                       R2 R0 K62 ["studioServices"]
      275 LOADK                            R4 K69 ["MaterialService"]
      276 NAMECALL                         R2 R2 K70 ["getService"]
      278 CALL                             R2 2 1
      279 GETTABLEKS                       R2 R2 K71 ["MaterialFillToolEnabledChanged"]
      281 NEWCLOSURE                       R4 P15
      282 CAPTURE                          VAL R0
      283 NAMECALL                         R2 R2 K67 ["Connect"]
      285 CALL                             R2 2 1
      286 SETTABLEKS                       R2 R0 K72 ["materialActionAsToolConnection"]
      288 GETUPVAL                         R2 21
      289 CALL                             R2 0 1
      290 SETTABLEKS                       R2 R0 K73 ["themeTable"]
      292 GETUPVAL                         R2 22
      293 GETTABLEKS                       R2 R2 K74 ["Parent"]
      295 LOADK                            R4 K75 ["Actions"]
      296 NAMECALL                         R2 R2 K76 ["GetPluginComponent"]
      298 CALL                             R2 2 1
      299 GETIMPORT                        R3 K79 [task.spawn]
      301 NEWCLOSURE                       R4 P16
      302 CAPTURE                          VAL R2
      303 CAPTURE                          VAL R0
      304 CALL                             R3 1 0
      305 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["themeChangedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["foundationLocalization"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R1 R0 K2 ["foundationLocalization"]
       10 NAMECALL                         R1 R1 K3 ["destroy"]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R1 R0 K4 ["selectedMaterialConnection"]
       15 JUMPIFNOT                        R1 ; [+8]
       16 GETTABLEKS                       R1 R0 K4 ["selectedMaterialConnection"]
       18 NAMECALL                         R1 R1 K1 ["Disconnect"]
       20 CALL                             R1 1 0
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K4 ["selectedMaterialConnection"]
       24 GETTABLEKS                       R1 R0 K5 ["materialActionAsToolConnection"]
       26 NAMECALL                         R1 R1 K1 ["Disconnect"]
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setButtonIcon"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["onClose"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_28:
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
       63 JUMPIFNOT                        R3 ; [+22]
       64 GETUPVAL                         R3 0
       65 GETTABLEKS                       R3 R3 K0 ["createElement"]
       67 GETUPVAL                         R4 3
       68 DUPTABLE                         R5 K20 [{"onRequestCompleted", "onRequestOpened", "ref"}]
       69 GETTABLEKS                       R6 R0 K21 ["onTerrainRequestCompleted"]
       71 SETTABLEKS                       R6 R5 K17 ["onRequestCompleted"]
       73 GETTABLEKS                       R6 R0 K22 ["onTerrainRequestOpened"]
       75 SETTABLEKS                       R6 R5 K18 ["onRequestOpened"]
       77 GETTABLEKS                       R6 R0 K23 ["terrainMaterialPickerControllerRef"]
       79 SETTABLEKS                       R6 R5 K19 ["ref"]
       81 DUPTABLE                         R6 K25 [{"MainView"}]
       82 SETTABLEKS                       R2 R6 K24 ["MainView"]
       84 CALL                             R3 3 1
       85 MOVE                             R2 R3
       86 GETUPVAL                         R3 0
       87 GETTABLEKS                       R3 R3 K0 ["createElement"]
       89 GETUPVAL                         R4 4
       90 DUPTABLE                         R5 K29 [{"enabled", "localization", "onStyleSheetChange", "plugin"}]
       91 GETUPVAL                         R6 2
       92 CALL                             R6 0 1
       93 SETTABLEKS                       R6 R5 K26 ["enabled"]
       95 GETTABLEKS                       R6 R0 K30 ["foundationLocalization"]
       97 SETTABLEKS                       R6 R5 K27 ["localization"]
       99 GETTABLEKS                       R6 R0 K31 ["onFoundationStyleSheetChange"]
      101 SETTABLEKS                       R6 R5 K28 ["onStyleSheetChange"]
      103 SETTABLEKS                       R1 R5 K1 ["plugin"]
      105 DUPTABLE                         R6 K25 [{"MainView"}]
      106 SETTABLEKS                       R2 R6 K24 ["MainView"]
      108 CALL                             R3 3 1
      109 MOVE                             R2 R3
      110 GETUPVAL                         R3 0
      111 GETTABLEKS                       R3 R3 K0 ["createElement"]
      113 GETUPVAL                         R4 5
      114 DUPTABLE                         R5 K43 [{["CreateWidgetImmediately"] = False, ["Enabled"], ["Modal"] = False, ["Title"] = "MaterialPicker", ["Size"], ["OnClose"], ["OnWidgetFocused"], ["PassesThroughMouseEvents"] = True}]
      115 GETTABLEKS                       R6 R0 K16 ["state"]
      117 GETTABLEKS                       R6 R6 K26 ["enabled"]
      119 SETTABLEKS                       R6 R5 K34 ["Enabled"]
      121 GETTABLEKS                       R6 R0 K44 ["themeTable"]
      123 GETTABLEKS                       R6 R6 K45 ["Popup"]
      125 GETTABLEKS                       R6 R6 K38 ["Size"]
      127 SETTABLEKS                       R6 R5 K38 ["Size"]
      129 GETTABLEKS                       R6 R0 K2 ["onClose"]
      131 SETTABLEKS                       R6 R5 K39 ["OnClose"]
      133 GETTABLEKS                       R6 R0 K46 ["onWidgetFocused"]
      135 SETTABLEKS                       R6 R5 K40 ["OnWidgetFocused"]
      137 DUPTABLE                         R6 K48 [{"Content"}]
      138 SETTABLEKS                       R2 R6 K47 ["Content"]
      140 CALL                             R3 3 -1
      141 RETURN                           R3 -1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_30:
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
       79 GETTABLEKS                       R14 R13 K23 ["Design"]
       81 GETTABLEKS                       R15 R13 K24 ["Mouse"]
       83 GETTABLEKS                       R16 R13 K25 ["Store"]
       85 GETTABLEKS                       R17 R4 K26 ["Styling"]
       87 GETTABLEKS                       R17 R17 K27 ["registerPluginStyles"]
       89 GETTABLEKS                       R18 R8 K28 ["Contexts"]
       91 GETTABLEKS                       R18 R18 K29 ["Localization"]
       93 GETTABLEKS                       R19 R5 K30 ["Context"]
       95 GETTABLEKS                       R19 R19 K31 ["StudioServices"]
       97 GETTABLEKS                       R20 R5 K32 ["Enums"]
       99 GETTABLEKS                       R20 R20 K33 ["ViewType"]
      101 GETTABLEKS                       R21 R5 K7 ["Util"]
      103 GETTABLEKS                       R21 R21 K34 ["parseMaterial"]
      105 GETTABLEKS                       R22 R5 K7 ["Util"]
      107 GETTABLEKS                       R22 R22 K35 ["getSerializedMaterialIdentifier"]
      109 GETIMPORT                        R23 K5 [require]
      111 GETTABLEKS                       R24 R0 K6 ["Src"]
      113 GETTABLEKS                       R24 R24 K36 ["Reducers"]
      115 GETTABLEKS                       R24 R24 K37 ["MainReducer"]
      117 CALL                             R23 1 1
      118 GETIMPORT                        R24 K5 [require]
      120 GETTABLEKS                       R25 R0 K6 ["Src"]
      122 GETTABLEKS                       R25 R25 K38 ["Resources"]
      124 GETTABLEKS                       R25 R25 K39 ["createAnalyticsHandlers"]
      126 CALL                             R24 1 1
      127 GETIMPORT                        R25 K5 [require]
      129 GETTABLEKS                       R26 R0 K6 ["Src"]
      131 GETTABLEKS                       R26 R26 K38 ["Resources"]
      133 GETTABLEKS                       R26 R26 K40 ["createThemeTable"]
      135 CALL                             R25 1 1
      136 GETTABLEKS                       R26 R0 K6 ["Src"]
      138 GETTABLEKS                       R26 R26 K38 ["Resources"]
      140 GETTABLEKS                       R26 R26 K29 ["Localization"]
      142 GETTABLEKS                       R26 R26 K41 ["SourceStrings"]
      144 GETTABLEKS                       R27 R0 K6 ["Src"]
      146 GETTABLEKS                       R27 R27 K38 ["Resources"]
      148 GETTABLEKS                       R27 R27 K29 ["Localization"]
      150 GETTABLEKS                       R27 R27 K42 ["LocalizedStrings"]
      152 GETIMPORT                        R28 K5 [require]
      154 GETTABLEKS                       R29 R0 K6 ["Src"]
      156 GETTABLEKS                       R29 R29 K43 ["Flags"]
      158 GETTABLEKS                       R29 R29 K44 ["getFFlagEnableTerrainPalette"]
      160 CALL                             R28 1 1
      161 GETIMPORT                        R29 K5 [require]
      163 GETTABLEKS                       R30 R0 K6 ["Src"]
      165 GETTABLEKS                       R30 R30 K43 ["Flags"]
      167 GETTABLEKS                       R30 R30 K45 ["getFFlagMaterialPickerOpenCooldown"]
      169 CALL                             R29 1 1
      170 GETTABLEKS                       R30 R0 K6 ["Src"]
      172 GETTABLEKS                       R30 R30 K46 ["Components"]
      174 GETIMPORT                        R31 K5 [require]
      176 GETTABLEKS                       R32 R30 K47 ["MainView"]
      178 CALL                             R31 1 1
      179 GETIMPORT                        R32 K5 [require]
      181 GETTABLEKS                       R33 R30 K48 ["MaterialPickerProviders"]
      183 CALL                             R32 1 1
      184 GETIMPORT                        R33 K5 [require]
      186 GETTABLEKS                       R34 R30 K49 ["TerrainMaterialPickerController"]
      188 CALL                             R33 1 1
      189 GETTABLEKS                       R34 R6 K50 ["PureComponent"]
      191 LOADK                            R36 K51 ["MainPlugin"]
      192 NAMECALL                         R34 R34 K52 ["extend"]
      194 CALL                             R34 2 1
      195 GETIMPORT                        R35 K55 [string.format]
      197 LOADK                            R36 K56 ["rbxasset://textures/MaterialFramework/%s/Material.png"]
      198 LOADK                            R37 K57 ["Light"]
      199 CALL                             R35 2 1
      200 GETIMPORT                        R36 K55 [string.format]
      202 LOADK                            R37 K56 ["rbxasset://textures/MaterialFramework/%s/Material.png"]
      203 LOADK                            R38 K58 ["Dark"]
      204 CALL                             R36 2 1
      205 DUPCLOSURE                       R37 K59 [PROTO_0]
      206 CAPTURE                          VAL R35
      207 CAPTURE                          VAL R36
      208 GETIMPORT                        R38 K61 [game]
      210 LOADK                            R40 K62 ["MaterialPickerOpenCooldownMillis"]
      211 LOADN                            R41 750
      212 NAMECALL                         R38 R38 K63 ["DefineFastInt"]
      214 CALL                             R38 3 1
      215 DIVK                             R39 R38 K64 [1000]
      216 DUPCLOSURE                       R40 K65 [PROTO_23]
      217 CAPTURE                          VAL R6
      218 CAPTURE                          VAL R20
      219 CAPTURE                          VAL R29
      220 CAPTURE                          VAL R39
      221 CAPTURE                          VAL R21
      222 CAPTURE                          VAL R22
      223 CAPTURE                          VAL R3
      224 CAPTURE                          VAL R35
      225 CAPTURE                          VAL R36
      226 CAPTURE                          VAL R7
      227 CAPTURE                          VAL R23
      228 CAPTURE                          VAL R13
      229 CAPTURE                          VAL R26
      230 CAPTURE                          VAL R27
      231 CAPTURE                          VAL R5
      232 CAPTURE                          VAL R28
      233 CAPTURE                          VAL R18
      234 CAPTURE                          VAL R8
      235 CAPTURE                          VAL R17
      236 CAPTURE                          VAL R24
      237 CAPTURE                          VAL R19
      238 CAPTURE                          VAL R25
      239 CAPTURE                          VAL R0
      240 SETTABLEKS                       R40 R34 K66 ["init"]
      242 DUPCLOSURE                       R40 K67 [PROTO_24]
      243 SETTABLEKS                       R40 R34 K68 ["willUnmount"]
      245 DUPCLOSURE                       R40 K69 [PROTO_26]
      246 CAPTURE                          VAL R6
      247 CAPTURE                          VAL R10
      248 CAPTURE                          VAL R1
      249 CAPTURE                          VAL R2
      250 SETTABLEKS                       R40 R34 K70 ["renderButtons"]
      252 DUPCLOSURE                       R40 K71 [PROTO_28]
      253 CAPTURE                          VAL R6
      254 CAPTURE                          VAL R31
      255 CAPTURE                          VAL R28
      256 CAPTURE                          VAL R33
      257 CAPTURE                          VAL R32
      258 CAPTURE                          VAL R12
      259 SETTABLEKS                       R40 R34 K72 ["renderPopup"]
      261 DUPCLOSURE                       R40 K73 [PROTO_30]
      262 CAPTURE                          VAL R13
      263 CAPTURE                          VAL R16
      264 CAPTURE                          VAL R15
      265 CAPTURE                          VAL R28
      266 CAPTURE                          VAL R14
      267 CAPTURE                          VAL R6
      268 CAPTURE                          VAL R11
      269 SETTABLEKS                       R40 R34 K74 ["render"]
      271 RETURN                           R34 1
