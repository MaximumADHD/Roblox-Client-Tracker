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
        0 DUPTABLE                         R0 K4 [{"DataModel", "PluginType", "PluginId", "ItemId"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K5 ["pluginUri"]
        4 GETTABLEKS                       R1 R1 K0 ["DataModel"]
        6 SETTABLEKS                       R1 R0 K0 ["DataModel"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K5 ["pluginUri"]
       11 GETTABLEKS                       R1 R1 K1 ["PluginType"]
       13 SETTABLEKS                       R1 R0 K1 ["PluginType"]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K5 ["pluginUri"]
       18 GETTABLEKS                       R1 R1 K2 ["PluginId"]
       20 SETTABLEKS                       R1 R0 K2 ["PluginId"]
       22 LOADK                            R1 K6 ["MaterialPicker"]
       23 SETTABLEKS                       R1 R0 K3 ["ItemId"]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K7 ["Plugin"]
       28 LOADK                            R3 K8 ["Panels"]
       29 NAMECALL                         R1 R1 K9 ["GetPluginComponent"]
       31 CALL                             R1 2 1
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K7 ["Plugin"]
       35 LOADK                            R4 K10 ["Widgets"]
       36 NAMECALL                         R2 R2 K9 ["GetPluginComponent"]
       38 CALL                             R2 2 1
       39 DUPTABLE                         R3 K12 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       40 LOADK                            R4 K13 ["Standalone"]
       41 SETTABLEKS                       R4 R3 K0 ["DataModel"]
       43 LOADK                            R4 K13 ["Standalone"]
       44 SETTABLEKS                       R4 R3 K1 ["PluginType"]
       46 LOADK                            R4 K14 ["Ribbon"]
       47 SETTABLEKS                       R4 R3 K2 ["PluginId"]
       49 LOADK                            R4 K10 ["Widgets"]
       50 SETTABLEKS                       R4 R3 K11 ["Category"]
       52 LOADK                            R4 K15 ["Tabs/*/Material"]
       53 SETTABLEKS                       R4 R3 K3 ["ItemId"]
       55 MOVE                             R6 R3
       56 NAMECALL                         R4 R2 K16 ["GetMatchedWidgetsAsync"]
       58 CALL                             R4 2 1
       59 MOVE                             R5 R4
       60 LOADNIL                          R6
       61 LOADNIL                          R7
       62 FORGPREP                         R5
       63 GETTABLEKS                       R10 R9 K17 ["Exists"]
       65 JUMPIFNOT                        R10 ; [+27]
       66 GETTABLEKS                       R10 R9 K18 ["Visible"]
       68 JUMPIFNOT                        R10 ; [+24]
       69 MOVE                             R12 R0
       70 DUPTABLE                         R13 K22 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint"}]
       71 GETTABLEKS                       R14 R9 K23 ["Uri"]
       73 SETTABLEKS                       R14 R13 K19 ["TargetWidgetUri"]
       75 GETIMPORT                        R14 K26 [Vector2.new]
       77 LOADN                            R15 0
       78 LOADN                            R16 1
       79 CALL                             R14 2 1
       80 SETTABLEKS                       R14 R13 K20 ["TargetAnchorPoint"]
       82 GETIMPORT                        R14 K26 [Vector2.new]
       84 LOADN                            R15 0
       85 LOADN                            R16 0
       86 CALL                             R14 2 1
       87 SETTABLEKS                       R14 R13 K21 ["SubjectAnchorPoint"]
       89 NAMECALL                         R10 R1 K27 ["SetAttachmentAsync"]
       91 CALL                             R10 3 0
       92 RETURN                           R0 0
       93 FORGLOOP                         R5 2 ; [-31]
       95 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIF                           R0 ; [+31]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+17]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K2 ["lastClosedTime"]
       12 LOADN                            R1 0
       13 JUMPIFNOTLT                      R1 R0 ; [+12]
       15 GETIMPORT                        R0 K4 [tick]
       17 CALL                             R0 0 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K2 ["lastClosedTime"]
       21 GETUPVAL                         R3 2
       22 ADD                              R1 R2 R3
       23 JUMPIFNOTLT                      R0 R1 ; [+2]
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 0
       27 GETTABLEKS                       R0 R0 K5 ["analytics"]
       29 LOADK                            R2 K6 ["PopupOpened"]
       30 NAMECALL                         R0 R0 K7 ["report"]
       32 CALL                             R0 2 0
       33 GETUPVAL                         R0 0
       34 GETTABLEKS                       R0 R0 K8 ["attachWidget"]
       36 CALL                             R0 0 0
       37 GETUPVAL                         R0 0
       38 DUPCLOSURE                       R2 K9 [PROTO_2]
       39 NAMECALL                         R0 R0 K10 ["setState"]
       41 CALL                             R0 2 0
       42 RETURN                           R0 0

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
       10 DUPTABLE                         R2 K4 [{"enabled"}]
       11 LOADB                            R3 0
       12 SETTABLEKS                       R3 R2 K3 ["enabled"]
       14 NAMECALL                         R0 R0 K5 ["setState"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"viewType"}]
        2 SETTABLEKS                       R0 R3 K0 ["viewType"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["savedFilterChips"]
        3 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"isMaterialFillToolEnabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["isMaterialFillToolEnabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleEnabled"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K6 [{"Uri", "Enabled", "Text", "Tooltip", "Checkable", "Checked"}]
        2 DUPTABLE                         R3 K11 [{"DataModel", "PluginId", "Category", "ItemId"}]
        3 LOADK                            R4 K12 ["Standalone"]
        4 SETTABLEKS                       R4 R3 K7 ["DataModel"]
        6 LOADK                            R4 K13 ["MaterialPicker"]
        7 SETTABLEKS                       R4 R3 K8 ["PluginId"]
        9 LOADK                            R4 K14 ["Actions"]
       10 SETTABLEKS                       R4 R3 K9 ["Category"]
       12 LOADK                            R4 K15 ["MaterialPickerDropdown"]
       13 SETTABLEKS                       R4 R3 K10 ["ItemId"]
       15 SETTABLEKS                       R3 R2 K0 ["Uri"]
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K1 ["Enabled"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K16 ["localization"]
       23 LOADK                            R5 K17 ["Plugin"]
       24 LOADK                            R6 K18 ["Button"]
       25 NAMECALL                         R3 R3 K19 ["getText"]
       27 CALL                             R3 3 1
       28 SETTABLEKS                       R3 R2 K2 ["Text"]
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R3 R3 K16 ["localization"]
       33 LOADK                            R5 K17 ["Plugin"]
       34 LOADK                            R6 K20 ["Description"]
       35 NAMECALL                         R3 R3 K19 ["getText"]
       37 CALL                             R3 3 1
       38 SETTABLEKS                       R3 R2 K3 ["Tooltip"]
       40 LOADB                            R3 1
       41 SETTABLEKS                       R3 R2 K4 ["Checkable"]
       43 LOADB                            R3 0
       44 SETTABLEKS                       R3 R2 K5 ["Checked"]
       46 LOADB                            R3 1
       47 NAMECALL                         R0 R0 K21 ["CreateAsync"]
       49 CALL                             R0 3 1
       50 GETUPVAL                         R1 1
       51 GETTABLEN                        R2 R0 1
       52 NEWCLOSURE                       R4 P0
       53 CAPTURE                          UPVAL U1
       54 NAMECALL                         R2 R2 K22 ["Connect"]
       56 CALL                             R2 2 1
       57 SETTABLEKS                       R2 R1 K23 ["activatedConnection"]
       59 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R0 K1 ["pluginButtonRef"]
        6 DUPTABLE                         R2 K5 [{"recents", "appliedInPlace", "customMaterials"}]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K2 ["recents"]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K3 ["appliedInPlace"]
       13 LOADB                            R3 0
       14 SETTABLEKS                       R3 R2 K4 ["customMaterials"]
       16 SETTABLEKS                       R2 R0 K6 ["savedFilterChips"]
       18 GETIMPORT                        R2 K9 [Vector2.new]
       20 LOADN                            R3 0
       21 LOADN                            R4 0
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R0 K10 ["savedListCanvasPosition"]
       25 GETIMPORT                        R2 K9 [Vector2.new]
       27 LOADN                            R3 0
       28 LOADN                            R4 0
       29 CALL                             R2 2 1
       30 SETTABLEKS                       R2 R0 K11 ["savedGridCanvasPosition"]
       32 LOADNIL                          R2
       33 SETTABLEKS                       R2 R0 K12 ["selectedMaterialConnection"]
       35 DUPTABLE                         R4 K16 [{"enabled", "viewType", "isMaterialFillToolEnabled"}]
       36 LOADB                            R5 0
       37 SETTABLEKS                       R5 R4 K13 ["enabled"]
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K17 ["Grid"]
       42 SETTABLEKS                       R5 R4 K14 ["viewType"]
       44 LOADB                            R5 0
       45 SETTABLEKS                       R5 R4 K15 ["isMaterialFillToolEnabled"]
       47 NAMECALL                         R2 R0 K18 ["setState"]
       49 CALL                             R2 2 0
       50 GETTABLEKS                       R2 R1 K19 ["Plugin"]
       52 NAMECALL                         R2 R2 K20 ["GetUri"]
       54 CALL                             R2 1 1
       55 SETTABLEKS                       R2 R0 K21 ["pluginUri"]
       57 GETUPVAL                         R2 2
       58 CALL                             R2 0 1
       59 JUMPIFNOT                        R2 ; [+3]
       60 LOADN                            R2 0
       61 SETTABLEKS                       R2 R0 K22 ["lastClosedTime"]
       63 NEWCLOSURE                       R2 P0
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R2 R0 K23 ["attachWidget"]
       68 NEWCLOSURE                       R2 P1
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U2
       71 CAPTURE                          UPVAL U3
       72 SETTABLEKS                       R2 R0 K24 ["toggleEnabled"]
       74 NEWCLOSURE                       R2 P2
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R2 R0 K25 ["openPopup"]
       78 NEWCLOSURE                       R2 P3
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R2 R0 K26 ["setButtonIcon"]
       82 NEWCLOSURE                       R2 P4
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          VAL R0
       86 CAPTURE                          UPVAL U6
       87 SETTABLEKS                       R2 R0 K27 ["setSelectedMaterial"]
       89 NEWCLOSURE                       R2 P5
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U7
       92 CAPTURE                          UPVAL U8
       93 SETTABLEKS                       R2 R0 K28 ["clearSelectedMaterial"]
       95 NEWCLOSURE                       R2 P6
       96 CAPTURE                          UPVAL U2
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R2 R0 K29 ["onClose"]
      100 NEWCLOSURE                       R2 P7
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R2 R0 K30 ["onWidgetEnabledChanged"]
      104 NEWCLOSURE                       R2 P8
      105 CAPTURE                          VAL R0
      106 SETTABLEKS                       R2 R0 K31 ["setViewType"]
      108 NEWCLOSURE                       R2 P9
      109 CAPTURE                          VAL R0
      110 SETTABLEKS                       R2 R0 K32 ["onFilterChipsUpdate"]
      112 NEWCLOSURE                       R2 P10
      113 CAPTURE                          UPVAL U1
      114 CAPTURE                          VAL R0
      115 SETTABLEKS                       R2 R0 K33 ["createOnScrollUpdate"]
      117 GETUPVAL                         R2 9
      118 GETTABLEKS                       R2 R2 K34 ["Store"]
      120 GETTABLEKS                       R2 R2 K8 ["new"]
      122 GETUPVAL                         R3 10
      123 LOADNIL                          R4
      124 NEWTABLE                         R5 0 1
      126 GETUPVAL                         R6 9
      127 GETTABLEKS                       R6 R6 K35 ["thunkMiddleware"]
      129 SETLIST                          R5 R6 1 [1]
      131 LOADNIL                          R6
      132 CALL                             R2 4 1
      133 SETTABLEKS                       R2 R0 K36 ["store"]
      135 GETUPVAL                         R2 11
      136 GETTABLEKS                       R2 R2 K37 ["Localization"]
      138 GETTABLEKS                       R2 R2 K8 ["new"]
      140 DUPTABLE                         R3 K42 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
      141 GETUPVAL                         R4 12
      142 SETTABLEKS                       R4 R3 K38 ["stringResourceTable"]
      144 GETUPVAL                         R4 13
      145 SETTABLEKS                       R4 R3 K39 ["translationResourceTable"]
      147 LOADK                            R4 K43 ["MaterialPicker"]
      148 SETTABLEKS                       R4 R3 K40 ["pluginName"]
      150 NEWTABLE                         R4 1 0
      152 GETUPVAL                         R5 14
      153 GETTABLEKS                       R5 R5 K44 ["Resources"]
      155 GETTABLEKS                       R5 R5 K45 ["LOCALIZATION_PROJECT_NAME"]
      157 DUPTABLE                         R6 K46 [{"stringResourceTable", "translationResourceTable"}]
      158 GETUPVAL                         R7 14
      159 GETTABLEKS                       R7 R7 K44 ["Resources"]
      161 GETTABLEKS                       R7 R7 K47 ["SourceStrings"]
      163 SETTABLEKS                       R7 R6 K38 ["stringResourceTable"]
      165 GETUPVAL                         R7 14
      166 GETTABLEKS                       R7 R7 K44 ["Resources"]
      168 GETTABLEKS                       R7 R7 K48 ["LocalizedStrings"]
      170 SETTABLEKS                       R7 R6 K39 ["translationResourceTable"]
      172 SETTABLE                         R6 R4 R5
      173 SETTABLEKS                       R4 R3 K41 ["libraries"]
      175 CALL                             R2 1 1
      176 SETTABLEKS                       R2 R0 K49 ["localization"]
      178 GETUPVAL                         R2 11
      179 GETTABLEKS                       R2 R2 K50 ["Analytics"]
      181 GETTABLEKS                       R2 R2 K8 ["new"]
      183 GETUPVAL                         R3 15
      184 CALL                             R2 1 1
      185 SETTABLEKS                       R2 R0 K51 ["analytics"]
      187 GETUPVAL                         R2 16
      188 GETTABLEKS                       R2 R2 K8 ["new"]
      190 CALL                             R2 0 1
      191 SETTABLEKS                       R2 R0 K52 ["studioServices"]
      193 GETIMPORT                        R2 K54 [settings]
      195 CALL                             R2 0 1
      196 GETTABLEKS                       R2 R2 K55 ["Studio"]
      198 GETTABLEKS                       R2 R2 K56 ["ThemeChanged"]
      200 NEWCLOSURE                       R4 P11
      201 CAPTURE                          VAL R0
      202 CAPTURE                          UPVAL U7
      203 CAPTURE                          UPVAL U8
      204 NAMECALL                         R2 R2 K57 ["Connect"]
      206 CALL                             R2 2 1
      207 SETTABLEKS                       R2 R0 K58 ["themeChangedConnection"]
      209 GETTABLEKS                       R2 R0 K52 ["studioServices"]
      211 LOADK                            R4 K59 ["MaterialService"]
      212 NAMECALL                         R2 R2 K60 ["getService"]
      214 CALL                             R2 2 1
      215 GETTABLEKS                       R2 R2 K61 ["MaterialFillToolEnabledChanged"]
      217 NEWCLOSURE                       R4 P12
      218 CAPTURE                          VAL R0
      219 NAMECALL                         R2 R2 K57 ["Connect"]
      221 CALL                             R2 2 1
      222 SETTABLEKS                       R2 R0 K62 ["materialActionAsToolConnection"]
      224 GETUPVAL                         R2 17
      225 CALL                             R2 0 1
      226 SETTABLEKS                       R2 R0 K63 ["themeTable"]
      228 GETUPVAL                         R2 18
      229 GETTABLEKS                       R2 R2 K64 ["Parent"]
      231 LOADK                            R4 K65 ["Actions"]
      232 NAMECALL                         R2 R2 K66 ["GetPluginComponent"]
      234 CALL                             R2 2 1
      235 GETIMPORT                        R3 K69 [task.spawn]
      237 NEWCLOSURE                       R4 P13
      238 CAPTURE                          VAL R2
      239 CAPTURE                          VAL R0
      240 CALL                             R3 1 0
      241 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["themeChangedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["selectedMaterialConnection"]
        7 JUMPIFNOT                        R1 ; [+8]
        8 GETTABLEKS                       R1 R0 K2 ["selectedMaterialConnection"]
       10 NAMECALL                         R1 R1 K1 ["Disconnect"]
       12 CALL                             R1 1 0
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K2 ["selectedMaterialConnection"]
       16 GETTABLEKS                       R1 R0 K3 ["materialActionAsToolConnection"]
       18 NAMECALL                         R1 R1 K1 ["Disconnect"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
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
       21 DUPTABLE                         R8 K20 [{"Toolbar", "Active", "DropdownActive", "Id", "Title", "Tooltip", "OnClick", "OnDropdownClick", "ButtonType", "ClickableWhenViewportHidden", "ref"}]
       22 SETTABLEKS                       R1 R8 K9 ["Toolbar"]
       24 MOVE                             R9 R2
       25 JUMPIF                           R9 ; [+4]
       26 GETTABLEKS                       R9 R0 K0 ["state"]
       28 GETTABLEKS                       R9 R9 K21 ["isMaterialFillToolEnabled"]
       30 SETTABLEKS                       R9 R8 K10 ["Active"]
       32 SETTABLEKS                       R2 R8 K11 ["DropdownActive"]
       34 LOADK                            R9 K22 ["MaterialPicker"]
       35 SETTABLEKS                       R9 R8 K12 ["Id"]
       37 GETTABLEKS                       R9 R0 K23 ["localization"]
       39 LOADK                            R11 K24 ["Plugin"]
       40 LOADK                            R12 K25 ["Button"]
       41 NAMECALL                         R9 R9 K26 ["getText"]
       43 CALL                             R9 3 1
       44 SETTABLEKS                       R9 R8 K13 ["Title"]
       46 GETTABLEKS                       R9 R0 K23 ["localization"]
       48 LOADK                            R11 K24 ["Plugin"]
       49 LOADK                            R12 K27 ["Description"]
       50 NAMECALL                         R9 R9 K26 ["getText"]
       52 CALL                             R9 3 1
       53 SETTABLEKS                       R9 R8 K14 ["Tooltip"]
       55 NEWCLOSURE                       R9 P0
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          UPVAL U3
       61 SETTABLEKS                       R9 R8 K15 ["OnClick"]
       63 GETTABLEKS                       R9 R0 K28 ["toggleEnabled"]
       65 SETTABLEKS                       R9 R8 K16 ["OnDropdownClick"]
       67 LOADK                            R9 K29 ["Dropdown"]
       68 SETTABLEKS                       R9 R8 K17 ["ButtonType"]
       70 LOADB                            R9 0
       71 SETTABLEKS                       R9 R8 K18 ["ClickableWhenViewportHidden"]
       73 GETTABLEKS                       R9 R0 K30 ["pluginButtonRef"]
       75 SETTABLEKS                       R9 R8 K19 ["ref"]
       77 CALL                             R6 2 1
       78 SETTABLEKS                       R6 R5 K6 ["Toggle"]
       80 RETURN                           R5 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setButtonIcon"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["onClose"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K8 [{"CreateWidgetImmediately", "Enabled", "Modal", "Title", "Size", "OnClose", "PassesThroughMouseEvents"}]
        5 LOADB                            R5 0
        6 SETTABLEKS                       R5 R4 K1 ["CreateWidgetImmediately"]
        8 GETTABLEKS                       R5 R0 K9 ["state"]
       10 GETTABLEKS                       R5 R5 K10 ["enabled"]
       12 SETTABLEKS                       R5 R4 K2 ["Enabled"]
       14 LOADB                            R5 0
       15 SETTABLEKS                       R5 R4 K3 ["Modal"]
       17 LOADK                            R5 K11 ["MaterialPicker"]
       18 SETTABLEKS                       R5 R4 K4 ["Title"]
       20 GETTABLEKS                       R5 R0 K12 ["themeTable"]
       22 GETTABLEKS                       R5 R5 K13 ["Popup"]
       24 GETTABLEKS                       R5 R5 K5 ["Size"]
       26 SETTABLEKS                       R5 R4 K5 ["Size"]
       28 GETTABLEKS                       R5 R0 K14 ["onClose"]
       30 SETTABLEKS                       R5 R4 K6 ["OnClose"]
       32 LOADB                            R5 1
       33 SETTABLEKS                       R5 R4 K7 ["PassesThroughMouseEvents"]
       35 DUPTABLE                         R5 K16 [{"MainView"}]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K0 ["createElement"]
       39 GETUPVAL                         R7 2
       40 DUPTABLE                         R8 K28 [{"plugin", "onClose", "onFilterChipsUpdate", "onMaterialSelected", "onScrollUpdate", "onSnapshotTaken", "savedFilterChips", "savedListCanvasPosition", "savedGridCanvasPosition", "setViewType", "selectedMaterialIdentifier", "viewType"}]
       41 SETTABLEKS                       R1 R8 K17 ["plugin"]
       43 GETTABLEKS                       R9 R0 K14 ["onClose"]
       45 SETTABLEKS                       R9 R8 K14 ["onClose"]
       47 GETTABLEKS                       R9 R0 K18 ["onFilterChipsUpdate"]
       49 SETTABLEKS                       R9 R8 K18 ["onFilterChipsUpdate"]
       51 GETTABLEKS                       R9 R0 K29 ["setSelectedMaterial"]
       53 SETTABLEKS                       R9 R8 K19 ["onMaterialSelected"]
       55 GETTABLEKS                       R9 R0 K30 ["createOnScrollUpdate"]
       57 GETTABLEKS                       R10 R0 K9 ["state"]
       59 GETTABLEKS                       R10 R10 K27 ["viewType"]
       61 CALL                             R9 1 1
       62 SETTABLEKS                       R9 R8 K20 ["onScrollUpdate"]
       64 NEWCLOSURE                       R9 P0
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R9 R8 K21 ["onSnapshotTaken"]
       68 GETTABLEKS                       R9 R0 K22 ["savedFilterChips"]
       70 SETTABLEKS                       R9 R8 K22 ["savedFilterChips"]
       72 GETTABLEKS                       R9 R0 K23 ["savedListCanvasPosition"]
       74 SETTABLEKS                       R9 R8 K23 ["savedListCanvasPosition"]
       76 GETTABLEKS                       R9 R0 K24 ["savedGridCanvasPosition"]
       78 SETTABLEKS                       R9 R8 K24 ["savedGridCanvasPosition"]
       80 GETTABLEKS                       R9 R0 K25 ["setViewType"]
       82 SETTABLEKS                       R9 R8 K25 ["setViewType"]
       84 GETTABLEKS                       R9 R0 K9 ["state"]
       86 GETTABLEKS                       R9 R9 K26 ["selectedMaterialIdentifier"]
       88 SETTABLEKS                       R9 R8 K26 ["selectedMaterialIdentifier"]
       90 GETTABLEKS                       R9 R0 K9 ["state"]
       92 GETTABLEKS                       R9 R9 K27 ["viewType"]
       94 SETTABLEKS                       R9 R8 K27 ["viewType"]
       96 CALL                             R6 2 1
       97 SETTABLEKS                       R6 R5 K15 ["MainView"]
       99 CALL                             R2 3 -1
      100 RETURN                           R2 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["provide"]
        7 NEWTABLE                         R4 0 7
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K1 ["Plugin"]
       12 GETTABLEKS                       R5 R5 K3 ["new"]
       14 MOVE                             R6 R2
       15 CALL                             R5 1 1
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K3 ["new"]
       19 GETTABLEKS                       R7 R0 K4 ["store"]
       21 CALL                             R6 1 1
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K3 ["new"]
       25 NAMECALL                         R8 R2 K5 ["getMouse"]
       27 CALL                             R8 1 -1
       28 CALL                             R7 -1 1
       29 GETTABLEKS                       R8 R0 K6 ["themeTable"]
       31 GETTABLEKS                       R8 R8 K7 ["createTheme"]
       33 CALL                             R8 0 1
       34 GETTABLEKS                       R9 R0 K8 ["localization"]
       36 GETTABLEKS                       R10 R0 K9 ["analytics"]
       38 GETTABLEKS                       R11 R0 K10 ["studioServices"]
       40 SETLIST                          R4 R5 7 [1]
       42 DUPTABLE                         R5 K13 [{"Toolbar", "Popup"}]
       43 GETUPVAL                         R6 3
       44 GETTABLEKS                       R6 R6 K14 ["createElement"]
       46 GETUPVAL                         R7 4
       47 DUPTABLE                         R8 K17 [{"Title", "RenderButtons"}]
       48 LOADK                            R9 K18 ["Edit"]
       49 SETTABLEKS                       R9 R8 K15 ["Title"]
       51 NEWCLOSURE                       R9 P0
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R9 R8 K16 ["RenderButtons"]
       55 CALL                             R6 2 1
       56 SETTABLEKS                       R6 R5 K11 ["Toolbar"]
       58 MOVE                             R8 R2
       59 NAMECALL                         R6 R0 K19 ["renderPopup"]
       61 CALL                             R6 2 1
       62 SETTABLEKS                       R6 R5 K12 ["Popup"]
       64 CALL                             R3 2 -1
       65 RETURN                           R3 -1

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
       62 GETTABLEKS                       R8 R4 K17 ["UI"]
       64 GETTABLEKS                       R9 R8 K18 ["PluginButton"]
       66 GETTABLEKS                       R10 R8 K19 ["PluginToolbar"]
       68 GETTABLEKS                       R11 R8 K20 ["Popup"]
       70 GETTABLEKS                       R12 R4 K21 ["ContextServices"]
       72 GETTABLEKS                       R13 R12 K22 ["Mouse"]
       74 GETTABLEKS                       R14 R12 K23 ["Store"]
       76 GETTABLEKS                       R15 R5 K24 ["Context"]
       78 GETTABLEKS                       R15 R15 K25 ["StudioServices"]
       80 GETTABLEKS                       R16 R5 K26 ["Enums"]
       82 GETTABLEKS                       R16 R16 K27 ["ViewType"]
       84 GETTABLEKS                       R17 R5 K7 ["Util"]
       86 GETTABLEKS                       R17 R17 K28 ["parseMaterial"]
       88 GETTABLEKS                       R18 R5 K7 ["Util"]
       90 GETTABLEKS                       R18 R18 K29 ["getSerializedMaterialIdentifier"]
       92 GETIMPORT                        R19 K5 [require]
       94 GETTABLEKS                       R20 R0 K6 ["Src"]
       96 GETTABLEKS                       R20 R20 K30 ["Reducers"]
       98 GETTABLEKS                       R20 R20 K31 ["MainReducer"]
      100 CALL                             R19 1 1
      101 GETIMPORT                        R20 K5 [require]
      103 GETTABLEKS                       R21 R0 K6 ["Src"]
      105 GETTABLEKS                       R21 R21 K32 ["Resources"]
      107 GETTABLEKS                       R21 R21 K33 ["createAnalyticsHandlers"]
      109 CALL                             R20 1 1
      110 GETIMPORT                        R21 K5 [require]
      112 GETTABLEKS                       R22 R0 K6 ["Src"]
      114 GETTABLEKS                       R22 R22 K32 ["Resources"]
      116 GETTABLEKS                       R22 R22 K34 ["createThemeTable"]
      118 CALL                             R21 1 1
      119 GETTABLEKS                       R22 R0 K6 ["Src"]
      121 GETTABLEKS                       R22 R22 K32 ["Resources"]
      123 GETTABLEKS                       R22 R22 K35 ["Localization"]
      125 GETTABLEKS                       R22 R22 K36 ["SourceStrings"]
      127 GETTABLEKS                       R23 R0 K6 ["Src"]
      129 GETTABLEKS                       R23 R23 K32 ["Resources"]
      131 GETTABLEKS                       R23 R23 K35 ["Localization"]
      133 GETTABLEKS                       R23 R23 K37 ["LocalizedStrings"]
      135 GETIMPORT                        R24 K5 [require]
      137 GETTABLEKS                       R25 R0 K6 ["Src"]
      139 GETTABLEKS                       R25 R25 K38 ["Flags"]
      141 GETTABLEKS                       R25 R25 K39 ["getFFlagMaterialPickerOpenCooldown"]
      143 CALL                             R24 1 1
      144 GETTABLEKS                       R25 R0 K6 ["Src"]
      146 GETTABLEKS                       R25 R25 K40 ["Components"]
      148 GETIMPORT                        R26 K5 [require]
      150 GETTABLEKS                       R27 R25 K41 ["MainView"]
      152 CALL                             R26 1 1
      153 GETTABLEKS                       R27 R6 K42 ["PureComponent"]
      155 LOADK                            R29 K43 ["MainPlugin"]
      156 NAMECALL                         R27 R27 K44 ["extend"]
      158 CALL                             R27 2 1
      159 GETIMPORT                        R28 K47 [string.format]
      161 LOADK                            R29 K48 ["rbxasset://textures/MaterialFramework/%s/Material.png"]
      162 LOADK                            R30 K49 ["Light"]
      163 CALL                             R28 2 1
      164 GETIMPORT                        R29 K47 [string.format]
      166 LOADK                            R30 K48 ["rbxasset://textures/MaterialFramework/%s/Material.png"]
      167 LOADK                            R31 K50 ["Dark"]
      168 CALL                             R29 2 1
      169 DUPCLOSURE                       R30 K51 [PROTO_0]
      170 CAPTURE                          VAL R28
      171 CAPTURE                          VAL R29
      172 GETIMPORT                        R31 K53 [game]
      174 LOADK                            R33 K54 ["MaterialPickerOpenCooldownMillis"]
      175 LOADN                            R34 238
      176 NAMECALL                         R31 R31 K55 ["DefineFastInt"]
      178 CALL                             R31 3 1
      179 DIVK                             R32 R31 K56 [1000]
      180 DUPCLOSURE                       R33 K57 [PROTO_20]
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R24
      184 CAPTURE                          VAL R32
      185 CAPTURE                          VAL R17
      186 CAPTURE                          VAL R18
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R28
      189 CAPTURE                          VAL R29
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R19
      192 CAPTURE                          VAL R12
      193 CAPTURE                          VAL R22
      194 CAPTURE                          VAL R23
      195 CAPTURE                          VAL R5
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R15
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R0
      200 SETTABLEKS                       R33 R27 K58 ["init"]
      202 DUPCLOSURE                       R33 K59 [PROTO_21]
      203 SETTABLEKS                       R33 R27 K60 ["willUnmount"]
      205 DUPCLOSURE                       R33 K61 [PROTO_23]
      206 CAPTURE                          VAL R6
      207 CAPTURE                          VAL R9
      208 CAPTURE                          VAL R1
      209 CAPTURE                          VAL R2
      210 SETTABLEKS                       R33 R27 K62 ["renderButtons"]
      212 DUPCLOSURE                       R33 K63 [PROTO_25]
      213 CAPTURE                          VAL R6
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R26
      216 SETTABLEKS                       R33 R27 K64 ["renderPopup"]
      218 DUPCLOSURE                       R33 K65 [PROTO_27]
      219 CAPTURE                          VAL R12
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R13
      222 CAPTURE                          VAL R6
      223 CAPTURE                          VAL R10
      224 SETTABLEKS                       R33 R27 K66 ["render"]
      226 RETURN                           R27 1
