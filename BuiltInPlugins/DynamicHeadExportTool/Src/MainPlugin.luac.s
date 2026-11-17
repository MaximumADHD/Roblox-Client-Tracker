PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["setEnabled"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onClose"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["setEnabled"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["props"]
       10 GETTABLEKS                       R0 R0 K2 ["setMode"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K3 ["Modes"]
       15 GETTABLEKS                       R1 R1 K4 ["Head"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K0 ["props"]
       21 GETTABLEKS                       R0 R0 K5 ["setScreen"]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K6 ["Screens"]
       26 GETTABLEKS                       R1 R1 K7 ["SelectRig"]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["setEnabled"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["props"]
       10 GETTABLEKS                       R0 R0 K2 ["setMode"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K3 ["Modes"]
       15 GETTABLEKS                       R1 R1 K4 ["Accessory"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K0 ["props"]
       21 GETTABLEKS                       R0 R0 K5 ["setScreen"]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K6 ["Screens"]
       26 GETTABLEKS                       R1 R1 K7 ["SelectRig"]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["setEnabled"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["props"]
       10 GETTABLEKS                       R0 R0 K2 ["setMode"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K3 ["Modes"]
       15 GETTABLEKS                       R1 R1 K4 ["Mood"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K0 ["props"]
       21 GETTABLEKS                       R0 R0 K5 ["setScreen"]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K6 ["Screens"]
       26 GETTABLEKS                       R1 R1 K7 ["InputAnimationId"]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["export"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Plugin"]
       10 NAMECALL                         R1 R1 K3 ["get"]
       12 CALL                             R1 1 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["setEnabled"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["props"]
       12 GETTABLEKS                       R1 R1 K2 ["setOwnershipTransferText"]
       14 GETIMPORT                        R2 K5 [table.concat]
       16 MOVE                             R3 R0
       17 LOADK                            R4 K6 ["\n"]
       18 CALL                             R2 2 -1
       19 CALL                             R1 -1 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K0 ["props"]
       23 GETTABLEKS                       R1 R1 K7 ["setScreen"]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R2 R2 K8 ["Screens"]
       28 GETTABLEKS                       R2 R2 K9 ["OwnershipTransfer"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Localization"]
        4 NEWTABLE                         R3 0 5
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K14 [{["Toolbar"], ["Active"] = False, ["Id"] = "head_button", ["Title"], ["Icon"] = "rbxasset://textures/GameSettings/ToolbarIcon.png", ["ClickableWhenViewportHidden"] = True, ["OnClick"]}]
       11 SETTABLEKS                       R1 R6 K3 ["Toolbar"]
       13 LOADK                            R9 K15 ["Plugin"]
       14 LOADK                            R10 K16 ["HeadButton"]
       15 NAMECALL                         R7 R2 K17 ["getText"]
       17 CALL                             R7 3 1
       18 SETTABLEKS                       R7 R6 K8 ["Title"]
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U2
       23 SETTABLEKS                       R7 R6 K13 ["OnClick"]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K2 ["createElement"]
       29 GETUPVAL                         R6 1
       30 DUPTABLE                         R7 K19 [{["Toolbar"], ["Active"] = False, ["Id"] = "accessory_button", ["Title"], ["Icon"] = "rbxasset://textures/GameSettings/ToolbarIcon.png", ["ClickableWhenViewportHidden"] = True, ["OnClick"]}]
       31 SETTABLEKS                       R1 R7 K3 ["Toolbar"]
       33 LOADK                            R10 K15 ["Plugin"]
       34 LOADK                            R11 K20 ["AccessoryButton"]
       35 NAMECALL                         R8 R2 K17 ["getText"]
       37 CALL                             R8 3 1
       38 SETTABLEKS                       R8 R7 K8 ["Title"]
       40 NEWCLOSURE                       R8 P1
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U2
       43 SETTABLEKS                       R8 R7 K13 ["OnClick"]
       45 CALL                             R5 2 1
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K2 ["createElement"]
       49 GETUPVAL                         R7 1
       50 DUPTABLE                         R8 K22 [{["Toolbar"], ["Active"] = False, ["Id"] = "mood_button", ["Title"], ["Icon"] = "rbxasset://textures/GameSettings/ToolbarIcon.png", ["ClickableWhenViewportHidden"] = True, ["OnClick"]}]
       51 SETTABLEKS                       R1 R8 K3 ["Toolbar"]
       53 LOADK                            R11 K15 ["Plugin"]
       54 LOADK                            R12 K23 ["MoodButton"]
       55 NAMECALL                         R9 R2 K17 ["getText"]
       57 CALL                             R9 3 1
       58 SETTABLEKS                       R9 R8 K8 ["Title"]
       60 NEWCLOSURE                       R9 P2
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U2
       63 SETTABLEKS                       R9 R8 K13 ["OnClick"]
       65 CALL                             R6 2 1
       66 GETUPVAL                         R7 0
       67 GETTABLEKS                       R7 R7 K2 ["createElement"]
       69 GETUPVAL                         R8 1
       70 DUPTABLE                         R9 K25 [{["Toolbar"], ["Active"] = False, ["Id"] = "export_button", ["Title"], ["Icon"] = "rbxasset://textures/GameSettings/ToolbarIcon.png", ["ClickableWhenViewportHidden"] = True, ["OnClick"]}]
       71 SETTABLEKS                       R1 R9 K3 ["Toolbar"]
       73 LOADK                            R12 K15 ["Plugin"]
       74 LOADK                            R13 K26 ["ExportButton"]
       75 NAMECALL                         R10 R2 K17 ["getText"]
       77 CALL                             R10 3 1
       78 SETTABLEKS                       R10 R9 K8 ["Title"]
       80 NEWCLOSURE                       R10 P3
       81 CAPTURE                          VAL R0
       82 SETTABLEKS                       R10 R9 K13 ["OnClick"]
       84 CALL                             R7 2 1
       85 GETUPVAL                         R8 0
       86 GETTABLEKS                       R8 R8 K2 ["createElement"]
       88 GETUPVAL                         R9 1
       89 DUPTABLE                         R10 K28 [{["Toolbar"], ["Active"] = False, ["Id"] = "ownership_button", ["Title"], ["Icon"] = "rbxasset://textures/GameSettings/ToolbarIcon.png", ["ClickableWhenViewportHidden"] = True, ["OnClick"]}]
       90 SETTABLEKS                       R1 R10 K3 ["Toolbar"]
       92 LOADK                            R13 K15 ["Plugin"]
       93 LOADK                            R14 K29 ["OwnershipButton"]
       94 NAMECALL                         R11 R2 K17 ["getText"]
       96 CALL                             R11 3 1
       97 SETTABLEKS                       R11 R10 K8 ["Title"]
       99 NEWCLOSURE                       R11 P4
      100 CAPTURE                          VAL R0
      101 CAPTURE                          UPVAL U3
      102 CAPTURE                          UPVAL U2
      103 SETTABLEKS                       R11 R10 K13 ["OnClick"]
      105 CALL                             R8 2 -1
      106 SETLIST                          R3 R4 -1 [1]
      108 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 LOADK                            R4 K3 ["Frame"]
        8 DUPTABLE                         R5 K7 [{["Size"], ["BackgroundTransparency"] = 1}]
        9 GETIMPORT                        R6 K10 [UDim2.new]
       11 LOADN                            R7 1
       12 LOADN                            R8 0
       13 LOADN                            R9 1
       14 LOADN                            R10 0
       15 CALL                             R6 4 1
       16 SETTABLEKS                       R6 R5 K4 ["Size"]
       18 DUPTABLE                         R6 K13 [{"Toolbar", "MainWidget"}]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K2 ["createElement"]
       22 GETUPVAL                         R8 1
       23 DUPTABLE                         R9 K16 [{"Title", "RenderButtons"}]
       24 LOADK                            R12 K17 ["Plugin"]
       25 LOADK                            R13 K11 ["Toolbar"]
       26 NAMECALL                         R10 R2 K18 ["getText"]
       28 CALL                             R10 3 1
       29 SETTABLEKS                       R10 R9 K14 ["Title"]
       31 NEWCLOSURE                       R10 P0
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R10 R9 K15 ["RenderButtons"]
       35 CALL                             R7 2 1
       36 SETTABLEKS                       R7 R6 K11 ["Toolbar"]
       38 GETTABLEKS                       R8 R1 K19 ["enabled"]
       40 JUMPIFNOT                        R8 ; [+155]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K2 ["createElement"]
       44 GETUPVAL                         R8 2
       45 NEWTABLE                         R9 8 0
       47 GETTABLEKS                       R10 R1 K19 ["enabled"]
       49 SETTABLEKS                       R10 R9 K20 ["Enabled"]
       51 LOADB                            R10 1
       52 SETTABLEKS                       R10 R9 K21 ["Modal"]
       54 LOADK                            R12 K17 ["Plugin"]
       55 LOADK                            R13 K22 ["Name"]
       56 NAMECALL                         R10 R2 K18 ["getText"]
       58 CALL                             R10 3 1
       59 SETTABLEKS                       R10 R9 K14 ["Title"]
       61 LOADB                            R10 0
       62 SETTABLEKS                       R10 R9 K23 ["Resizable"]
       64 GETIMPORT                        R10 K27 [Enum.ZIndexBehavior.Sibling]
       66 SETTABLEKS                       R10 R9 K25 ["ZIndexBehavior"]
       68 GETUPVAL                         R10 3
       69 GETTABLEKS                       R10 R10 K28 ["WindowSize"]
       71 SETTABLEKS                       R10 R9 K4 ["Size"]
       73 GETTABLEKS                       R10 R0 K29 ["onClose"]
       75 SETTABLEKS                       R10 R9 K30 ["OnClose"]
       77 GETUPVAL                         R10 0
       78 GETTABLEKS                       R10 R10 K31 ["Change"]
       80 GETTABLEKS                       R10 R10 K20 ["Enabled"]
       82 GETTABLEKS                       R11 R0 K29 ["onClose"]
       84 SETTABLE                         R11 R9 R10
       85 DUPTABLE                         R10 K38 [{"SelectRigScreen", "InputSurfaceAppearanceIdsScreen", "InputAccessoryTypeScreen", "InputAnimationIdScreen", "ErrorScreen", "OwnershipTransferScreen"}]
       86 GETTABLEKS                       R12 R1 K39 ["screen"]
       88 GETUPVAL                         R13 3
       89 GETTABLEKS                       R13 R13 K40 ["Screens"]
       91 GETTABLEKS                       R13 R13 K41 ["SelectRig"]
       93 JUMPIFNOTEQ                      R12 R13 ; [+7]
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R11 R11 K2 ["createElement"]
       98 GETUPVAL                         R12 4
       99 CALL                             R11 1 1
      100 JUMP                             ; [+1]
      101 LOADNIL                          R11
      102 SETTABLEKS                       R11 R10 K32 ["SelectRigScreen"]
      104 GETTABLEKS                       R12 R1 K39 ["screen"]
      106 GETUPVAL                         R13 3
      107 GETTABLEKS                       R13 R13 K40 ["Screens"]
      109 GETTABLEKS                       R13 R13 K42 ["InputSurfaceAppearanceIds"]
      111 JUMPIFNOTEQ                      R12 R13 ; [+7]
      113 GETUPVAL                         R11 0
      114 GETTABLEKS                       R11 R11 K2 ["createElement"]
      116 GETUPVAL                         R12 5
      117 CALL                             R11 1 1
      118 JUMP                             ; [+1]
      119 LOADNIL                          R11
      120 SETTABLEKS                       R11 R10 K33 ["InputSurfaceAppearanceIdsScreen"]
      122 GETTABLEKS                       R12 R1 K39 ["screen"]
      124 GETUPVAL                         R13 3
      125 GETTABLEKS                       R13 R13 K40 ["Screens"]
      127 GETTABLEKS                       R13 R13 K43 ["InputAccessoryType"]
      129 JUMPIFNOTEQ                      R12 R13 ; [+7]
      131 GETUPVAL                         R11 0
      132 GETTABLEKS                       R11 R11 K2 ["createElement"]
      134 GETUPVAL                         R12 6
      135 CALL                             R11 1 1
      136 JUMP                             ; [+1]
      137 LOADNIL                          R11
      138 SETTABLEKS                       R11 R10 K34 ["InputAccessoryTypeScreen"]
      140 GETTABLEKS                       R12 R1 K39 ["screen"]
      142 GETUPVAL                         R13 3
      143 GETTABLEKS                       R13 R13 K40 ["Screens"]
      145 GETTABLEKS                       R13 R13 K44 ["InputAnimationId"]
      147 JUMPIFNOTEQ                      R12 R13 ; [+7]
      149 GETUPVAL                         R11 0
      150 GETTABLEKS                       R11 R11 K2 ["createElement"]
      152 GETUPVAL                         R12 7
      153 CALL                             R11 1 1
      154 JUMP                             ; [+1]
      155 LOADNIL                          R11
      156 SETTABLEKS                       R11 R10 K35 ["InputAnimationIdScreen"]
      158 GETTABLEKS                       R12 R1 K39 ["screen"]
      160 GETUPVAL                         R13 3
      161 GETTABLEKS                       R13 R13 K40 ["Screens"]
      163 GETTABLEKS                       R13 R13 K45 ["Error"]
      165 JUMPIFNOTEQ                      R12 R13 ; [+7]
      167 GETUPVAL                         R11 0
      168 GETTABLEKS                       R11 R11 K2 ["createElement"]
      170 GETUPVAL                         R12 8
      171 CALL                             R11 1 1
      172 JUMP                             ; [+1]
      173 LOADNIL                          R11
      174 SETTABLEKS                       R11 R10 K36 ["ErrorScreen"]
      176 GETTABLEKS                       R12 R1 K39 ["screen"]
      178 GETUPVAL                         R13 3
      179 GETTABLEKS                       R13 R13 K40 ["Screens"]
      181 GETTABLEKS                       R13 R13 K46 ["OwnershipTransfer"]
      183 JUMPIFNOTEQ                      R12 R13 ; [+7]
      185 GETUPVAL                         R11 0
      186 GETTABLEKS                       R11 R11 K2 ["createElement"]
      188 GETUPVAL                         R12 9
      189 CALL                             R11 1 1
      190 JUMP                             ; [+1]
      191 LOADNIL                          R11
      192 SETTABLEKS                       R11 R10 K37 ["OwnershipTransferScreen"]
      194 CALL                             R7 3 1
      195 JUMPIF                           R7 ; [+1]
      196 LOADNIL                          R7
      197 SETTABLEKS                       R7 R6 K12 ["MainWidget"]
      199 CALL                             R3 3 -1
      200 RETURN                           R3 -1

PROTO_10:
        0 DUPTABLE                         R2 K2 [{"enabled", "screen"}]
        1 GETTABLEKS                       R3 R0 K3 ["PluginReducer"]
        3 GETTABLEKS                       R3 R3 K0 ["enabled"]
        5 SETTABLEKS                       R3 R2 K0 ["enabled"]
        7 GETTABLEKS                       R3 R0 K3 ["PluginReducer"]
        9 GETTABLEKS                       R3 R3 K1 ["screen"]
       11 SETTABLEKS                       R3 R2 K1 ["screen"]
       13 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R1 K5 [{"setEnabled", "setMode", "setOwnershipTransferText", "setScreen", "export"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["setEnabled"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["setMode"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["setOwnershipTransferText"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["setScreen"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["export"]
       26 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DynamicHeadExportTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R4 K12 ["Localization"]
       34 GETTABLEKS                       R7 R4 K13 ["Plugin"]
       36 GETTABLEKS                       R8 R3 K14 ["UI"]
       38 GETTABLEKS                       R9 R8 K15 ["Dialog"]
       40 GETTABLEKS                       R10 R8 K16 ["PluginButton"]
       42 GETTABLEKS                       R11 R8 K17 ["PluginToolbar"]
       44 GETIMPORT                        R12 K5 [require]
       46 GETTABLEKS                       R13 R0 K18 ["Src"]
       48 GETTABLEKS                       R13 R13 K19 ["Constants"]
       50 CALL                             R12 1 1
       51 GETIMPORT                        R13 K5 [require]
       53 GETTABLEKS                       R14 R0 K18 ["Src"]
       55 GETTABLEKS                       R14 R14 K20 ["Actions"]
       57 GETTABLEKS                       R14 R14 K21 ["SetEnabled"]
       59 CALL                             R13 1 1
       60 GETIMPORT                        R14 K5 [require]
       62 GETTABLEKS                       R15 R0 K18 ["Src"]
       64 GETTABLEKS                       R15 R15 K20 ["Actions"]
       66 GETTABLEKS                       R15 R15 K22 ["SetMode"]
       68 CALL                             R14 1 1
       69 GETIMPORT                        R15 K5 [require]
       71 GETTABLEKS                       R16 R0 K18 ["Src"]
       73 GETTABLEKS                       R16 R16 K20 ["Actions"]
       75 GETTABLEKS                       R16 R16 K23 ["SetScreen"]
       77 CALL                             R15 1 1
       78 GETIMPORT                        R16 K5 [require]
       80 GETTABLEKS                       R17 R0 K18 ["Src"]
       82 GETTABLEKS                       R17 R17 K20 ["Actions"]
       84 GETTABLEKS                       R17 R17 K24 ["SetOwnershipTransferText"]
       86 CALL                             R16 1 1
       87 GETIMPORT                        R17 K5 [require]
       89 GETTABLEKS                       R18 R0 K18 ["Src"]
       91 GETTABLEKS                       R18 R18 K25 ["Thunks"]
       93 GETTABLEKS                       R18 R18 K26 ["Export"]
       95 CALL                             R17 1 1
       96 GETIMPORT                        R18 K5 [require]
       98 GETTABLEKS                       R19 R0 K18 ["Src"]
      100 GETTABLEKS                       R19 R19 K27 ["Components"]
      102 GETTABLEKS                       R19 R19 K28 ["Screens"]
      104 GETTABLEKS                       R19 R19 K29 ["SelectRigScreen"]
      106 CALL                             R18 1 1
      107 GETIMPORT                        R19 K5 [require]
      109 GETTABLEKS                       R20 R0 K18 ["Src"]
      111 GETTABLEKS                       R20 R20 K27 ["Components"]
      113 GETTABLEKS                       R20 R20 K28 ["Screens"]
      115 GETTABLEKS                       R20 R20 K30 ["InputSurfaceAppearanceIdsScreen"]
      117 CALL                             R19 1 1
      118 GETIMPORT                        R20 K5 [require]
      120 GETTABLEKS                       R21 R0 K18 ["Src"]
      122 GETTABLEKS                       R21 R21 K27 ["Components"]
      124 GETTABLEKS                       R21 R21 K28 ["Screens"]
      126 GETTABLEKS                       R21 R21 K31 ["InputAccessoryTypeScreen"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K5 [require]
      131 GETTABLEKS                       R22 R0 K18 ["Src"]
      133 GETTABLEKS                       R22 R22 K27 ["Components"]
      135 GETTABLEKS                       R22 R22 K28 ["Screens"]
      137 GETTABLEKS                       R22 R22 K32 ["InputAnimationIdScreen"]
      139 CALL                             R21 1 1
      140 GETIMPORT                        R22 K5 [require]
      142 GETTABLEKS                       R23 R0 K18 ["Src"]
      144 GETTABLEKS                       R23 R23 K27 ["Components"]
      146 GETTABLEKS                       R23 R23 K28 ["Screens"]
      148 GETTABLEKS                       R23 R23 K33 ["ErrorScreen"]
      150 CALL                             R22 1 1
      151 GETIMPORT                        R23 K5 [require]
      153 GETTABLEKS                       R24 R0 K18 ["Src"]
      155 GETTABLEKS                       R24 R24 K27 ["Components"]
      157 GETTABLEKS                       R24 R24 K28 ["Screens"]
      159 GETTABLEKS                       R24 R24 K34 ["OwnershipTransferScreen"]
      161 CALL                             R23 1 1
      162 GETIMPORT                        R24 K5 [require]
      164 GETTABLEKS                       R25 R0 K18 ["Src"]
      166 GETTABLEKS                       R25 R25 K35 ["Util"]
      168 GETTABLEKS                       R25 R25 K36 ["getOwnershipTransferAssetIds"]
      170 CALL                             R24 1 1
      171 GETTABLEKS                       R25 R1 K37 ["PureComponent"]
      173 LOADK                            R27 K38 ["MainPlugin"]
      174 NAMECALL                         R25 R25 K39 ["extend"]
      176 CALL                             R25 2 1
      177 DUPCLOSURE                       R26 K40 [PROTO_1]
      178 SETTABLEKS                       R26 R25 K41 ["init"]
      180 DUPCLOSURE                       R26 K42 [PROTO_7]
      181 CAPTURE                          VAL R1
      182 CAPTURE                          VAL R10
      183 CAPTURE                          VAL R12
      184 CAPTURE                          VAL R24
      185 SETTABLEKS                       R26 R25 K43 ["renderButtons"]
      187 DUPCLOSURE                       R26 K44 [PROTO_9]
      188 CAPTURE                          VAL R1
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R9
      191 CAPTURE                          VAL R12
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R19
      194 CAPTURE                          VAL R20
      195 CAPTURE                          VAL R21
      196 CAPTURE                          VAL R22
      197 CAPTURE                          VAL R23
      198 SETTABLEKS                       R26 R25 K45 ["render"]
      200 MOVE                             R26 R5
      201 DUPTABLE                         R27 K46 [{"Localization", "Plugin"}]
      202 SETTABLEKS                       R6 R27 K12 ["Localization"]
      204 SETTABLEKS                       R7 R27 K13 ["Plugin"]
      206 CALL                             R26 1 1
      207 MOVE                             R27 R25
      208 CALL                             R26 1 1
      209 MOVE                             R25 R26
      210 DUPCLOSURE                       R26 K47 [PROTO_10]
      211 DUPCLOSURE                       R27 K48 [PROTO_16]
      212 CAPTURE                          VAL R13
      213 CAPTURE                          VAL R14
      214 CAPTURE                          VAL R16
      215 CAPTURE                          VAL R15
      216 CAPTURE                          VAL R17
      217 GETTABLEKS                       R28 R2 K49 ["connect"]
      219 MOVE                             R29 R26
      220 MOVE                             R30 R27
      221 CALL                             R28 2 1
      222 MOVE                             R29 R25
      223 CALL                             R28 1 -1
      224 RETURN                           R28 -1
