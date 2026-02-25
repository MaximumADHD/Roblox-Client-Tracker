PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["setEnabled"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onClose"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["setEnabled"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["props"]
       10 GETTABLEKS                       R0 R1 K2 ["setMode"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K3 ["Modes"]
       15 GETTABLEKS                       R1 R2 K4 ["Head"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K0 ["props"]
       21 GETTABLEKS                       R0 R1 K5 ["setScreen"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K6 ["Screens"]
       26 GETTABLEKS                       R1 R2 K7 ["SelectRig"]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["setEnabled"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["props"]
       10 GETTABLEKS                       R0 R1 K2 ["setMode"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K3 ["Modes"]
       15 GETTABLEKS                       R1 R2 K4 ["Accessory"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K0 ["props"]
       21 GETTABLEKS                       R0 R1 K5 ["setScreen"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K6 ["Screens"]
       26 GETTABLEKS                       R1 R2 K7 ["SelectRig"]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["setEnabled"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["props"]
       10 GETTABLEKS                       R0 R1 K2 ["setMode"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K3 ["Modes"]
       15 GETTABLEKS                       R1 R2 K4 ["Mood"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K0 ["props"]
       21 GETTABLEKS                       R0 R1 K5 ["setScreen"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K6 ["Screens"]
       26 GETTABLEKS                       R1 R2 K7 ["InputAnimationId"]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["export"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["Plugin"]
       10 NAMECALL                         R1 R1 K3 ["get"]
       12 CALL                             R1 1 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["setEnabled"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["props"]
       12 GETTABLEKS                       R1 R2 K2 ["setOwnershipTransferText"]
       14 GETIMPORT                        R2 K5 [table.concat]
       16 MOVE                             R3 R0
       17 LOADK                            R4 K6 ["\n"]
       18 CALL                             R2 2 -1
       19 CALL                             R1 -1 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K0 ["props"]
       23 GETTABLEKS                       R1 R2 K7 ["setScreen"]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R3 R4 K8 ["Screens"]
       28 GETTABLEKS                       R2 R3 K9 ["OwnershipTransfer"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Localization"]
        4 NEWTABLE                         R3 0 5
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K10 [{"Toolbar", "Active", "Id", "Title", "Icon", "ClickableWhenViewportHidden", "OnClick"}]
       11 SETTABLEKS                       R1 R6 K3 ["Toolbar"]
       13 LOADB                            R7 0
       14 SETTABLEKS                       R7 R6 K4 ["Active"]
       16 LOADK                            R7 K11 ["head_button"]
       17 SETTABLEKS                       R7 R6 K5 ["Id"]
       19 LOADK                            R9 K12 ["Plugin"]
       20 LOADK                            R10 K13 ["HeadButton"]
       21 NAMECALL                         R7 R2 K14 ["getText"]
       23 CALL                             R7 3 1
       24 SETTABLEKS                       R7 R6 K6 ["Title"]
       26 LOADK                            R7 K15 ["rbxasset://textures/GameSettings/ToolbarIcon.png"]
       27 SETTABLEKS                       R7 R6 K7 ["Icon"]
       29 LOADB                            R7 1
       30 SETTABLEKS                       R7 R6 K8 ["ClickableWhenViewportHidden"]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U2
       35 SETTABLEKS                       R7 R6 K9 ["OnClick"]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K2 ["createElement"]
       41 GETUPVAL                         R6 1
       42 DUPTABLE                         R7 K10 [{"Toolbar", "Active", "Id", "Title", "Icon", "ClickableWhenViewportHidden", "OnClick"}]
       43 SETTABLEKS                       R1 R7 K3 ["Toolbar"]
       45 LOADB                            R8 0
       46 SETTABLEKS                       R8 R7 K4 ["Active"]
       48 LOADK                            R8 K16 ["accessory_button"]
       49 SETTABLEKS                       R8 R7 K5 ["Id"]
       51 LOADK                            R10 K12 ["Plugin"]
       52 LOADK                            R11 K17 ["AccessoryButton"]
       53 NAMECALL                         R8 R2 K14 ["getText"]
       55 CALL                             R8 3 1
       56 SETTABLEKS                       R8 R7 K6 ["Title"]
       58 LOADK                            R8 K15 ["rbxasset://textures/GameSettings/ToolbarIcon.png"]
       59 SETTABLEKS                       R8 R7 K7 ["Icon"]
       61 LOADB                            R8 1
       62 SETTABLEKS                       R8 R7 K8 ["ClickableWhenViewportHidden"]
       64 NEWCLOSURE                       R8 P1
       65 CAPTURE                          VAL R0
       66 CAPTURE                          UPVAL U2
       67 SETTABLEKS                       R8 R7 K9 ["OnClick"]
       69 CALL                             R5 2 1
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R6 R7 K2 ["createElement"]
       73 GETUPVAL                         R7 1
       74 DUPTABLE                         R8 K10 [{"Toolbar", "Active", "Id", "Title", "Icon", "ClickableWhenViewportHidden", "OnClick"}]
       75 SETTABLEKS                       R1 R8 K3 ["Toolbar"]
       77 LOADB                            R9 0
       78 SETTABLEKS                       R9 R8 K4 ["Active"]
       80 LOADK                            R9 K18 ["mood_button"]
       81 SETTABLEKS                       R9 R8 K5 ["Id"]
       83 LOADK                            R11 K12 ["Plugin"]
       84 LOADK                            R12 K19 ["MoodButton"]
       85 NAMECALL                         R9 R2 K14 ["getText"]
       87 CALL                             R9 3 1
       88 SETTABLEKS                       R9 R8 K6 ["Title"]
       90 LOADK                            R9 K15 ["rbxasset://textures/GameSettings/ToolbarIcon.png"]
       91 SETTABLEKS                       R9 R8 K7 ["Icon"]
       93 LOADB                            R9 1
       94 SETTABLEKS                       R9 R8 K8 ["ClickableWhenViewportHidden"]
       96 NEWCLOSURE                       R9 P2
       97 CAPTURE                          VAL R0
       98 CAPTURE                          UPVAL U2
       99 SETTABLEKS                       R9 R8 K9 ["OnClick"]
      101 CALL                             R6 2 1
      102 GETUPVAL                         R8 0
      103 GETTABLEKS                       R7 R8 K2 ["createElement"]
      105 GETUPVAL                         R8 1
      106 DUPTABLE                         R9 K10 [{"Toolbar", "Active", "Id", "Title", "Icon", "ClickableWhenViewportHidden", "OnClick"}]
      107 SETTABLEKS                       R1 R9 K3 ["Toolbar"]
      109 LOADB                            R10 0
      110 SETTABLEKS                       R10 R9 K4 ["Active"]
      112 LOADK                            R10 K20 ["export_button"]
      113 SETTABLEKS                       R10 R9 K5 ["Id"]
      115 LOADK                            R12 K12 ["Plugin"]
      116 LOADK                            R13 K21 ["ExportButton"]
      117 NAMECALL                         R10 R2 K14 ["getText"]
      119 CALL                             R10 3 1
      120 SETTABLEKS                       R10 R9 K6 ["Title"]
      122 LOADK                            R10 K15 ["rbxasset://textures/GameSettings/ToolbarIcon.png"]
      123 SETTABLEKS                       R10 R9 K7 ["Icon"]
      125 LOADB                            R10 1
      126 SETTABLEKS                       R10 R9 K8 ["ClickableWhenViewportHidden"]
      128 NEWCLOSURE                       R10 P3
      129 CAPTURE                          VAL R0
      130 SETTABLEKS                       R10 R9 K9 ["OnClick"]
      132 CALL                             R7 2 1
      133 GETUPVAL                         R9 0
      134 GETTABLEKS                       R8 R9 K2 ["createElement"]
      136 GETUPVAL                         R9 1
      137 DUPTABLE                         R10 K10 [{"Toolbar", "Active", "Id", "Title", "Icon", "ClickableWhenViewportHidden", "OnClick"}]
      138 SETTABLEKS                       R1 R10 K3 ["Toolbar"]
      140 LOADB                            R11 0
      141 SETTABLEKS                       R11 R10 K4 ["Active"]
      143 LOADK                            R11 K22 ["ownership_button"]
      144 SETTABLEKS                       R11 R10 K5 ["Id"]
      146 LOADK                            R13 K12 ["Plugin"]
      147 LOADK                            R14 K23 ["OwnershipButton"]
      148 NAMECALL                         R11 R2 K14 ["getText"]
      150 CALL                             R11 3 1
      151 SETTABLEKS                       R11 R10 K6 ["Title"]
      153 LOADK                            R11 K15 ["rbxasset://textures/GameSettings/ToolbarIcon.png"]
      154 SETTABLEKS                       R11 R10 K7 ["Icon"]
      156 LOADB                            R11 1
      157 SETTABLEKS                       R11 R10 K8 ["ClickableWhenViewportHidden"]
      159 NEWCLOSURE                       R11 P4
      160 CAPTURE                          VAL R0
      161 CAPTURE                          UPVAL U3
      162 CAPTURE                          UPVAL U2
      163 SETTABLEKS                       R11 R10 K9 ["OnClick"]
      165 CALL                             R8 2 -1
      166 SETLIST                          R3 R4 -1 [1]
      168 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 LOADK                            R4 K3 ["Frame"]
        8 DUPTABLE                         R5 K6 [{"Size", "BackgroundTransparency"}]
        9 GETIMPORT                        R6 K9 [UDim2.new]
       11 LOADN                            R7 1
       12 LOADN                            R8 0
       13 LOADN                            R9 1
       14 LOADN                            R10 0
       15 CALL                             R6 4 1
       16 SETTABLEKS                       R6 R5 K4 ["Size"]
       18 LOADN                            R6 1
       19 SETTABLEKS                       R6 R5 K5 ["BackgroundTransparency"]
       21 DUPTABLE                         R6 K12 [{"Toolbar", "MainWidget"}]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K2 ["createElement"]
       25 GETUPVAL                         R8 1
       26 DUPTABLE                         R9 K15 [{"Title", "RenderButtons"}]
       27 LOADK                            R12 K16 ["Plugin"]
       28 LOADK                            R13 K10 ["Toolbar"]
       29 NAMECALL                         R10 R2 K17 ["getText"]
       31 CALL                             R10 3 1
       32 SETTABLEKS                       R10 R9 K13 ["Title"]
       34 NEWCLOSURE                       R10 P0
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R10 R9 K14 ["RenderButtons"]
       38 CALL                             R7 2 1
       39 SETTABLEKS                       R7 R6 K10 ["Toolbar"]
       41 GETTABLEKS                       R8 R1 K18 ["enabled"]
       43 JUMPIFNOT                        R8 ; [+155]
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R7 R8 K2 ["createElement"]
       47 GETUPVAL                         R8 2
       48 NEWTABLE                         R9 8 0
       50 GETTABLEKS                       R10 R1 K18 ["enabled"]
       52 SETTABLEKS                       R10 R9 K19 ["Enabled"]
       54 LOADB                            R10 1
       55 SETTABLEKS                       R10 R9 K20 ["Modal"]
       57 LOADK                            R12 K16 ["Plugin"]
       58 LOADK                            R13 K21 ["Name"]
       59 NAMECALL                         R10 R2 K17 ["getText"]
       61 CALL                             R10 3 1
       62 SETTABLEKS                       R10 R9 K13 ["Title"]
       64 LOADB                            R10 0
       65 SETTABLEKS                       R10 R9 K22 ["Resizable"]
       67 GETIMPORT                        R10 K26 [Enum.ZIndexBehavior.Sibling]
       69 SETTABLEKS                       R10 R9 K24 ["ZIndexBehavior"]
       71 GETUPVAL                         R11 3
       72 GETTABLEKS                       R10 R11 K27 ["WindowSize"]
       74 SETTABLEKS                       R10 R9 K4 ["Size"]
       76 GETTABLEKS                       R10 R0 K28 ["onClose"]
       78 SETTABLEKS                       R10 R9 K29 ["OnClose"]
       80 GETUPVAL                         R12 0
       81 GETTABLEKS                       R11 R12 K30 ["Change"]
       83 GETTABLEKS                       R10 R11 K19 ["Enabled"]
       85 GETTABLEKS                       R11 R0 K28 ["onClose"]
       87 SETTABLE                         R11 R9 R10
       88 DUPTABLE                         R10 K37 [{"SelectRigScreen", "InputSurfaceAppearanceIdsScreen", "InputAccessoryTypeScreen", "InputAnimationIdScreen", "ErrorScreen", "OwnershipTransferScreen"}]
       89 GETTABLEKS                       R12 R1 K38 ["screen"]
       91 GETUPVAL                         R15 3
       92 GETTABLEKS                       R14 R15 K39 ["Screens"]
       94 GETTABLEKS                       R13 R14 K40 ["SelectRig"]
       96 JUMPIFNOTEQ                      R12 R13 ; [+7]
       98 GETUPVAL                         R12 0
       99 GETTABLEKS                       R11 R12 K2 ["createElement"]
      101 GETUPVAL                         R12 4
      102 CALL                             R11 1 1
      103 JUMP                             ; [+1]
      104 LOADNIL                          R11
      105 SETTABLEKS                       R11 R10 K31 ["SelectRigScreen"]
      107 GETTABLEKS                       R12 R1 K38 ["screen"]
      109 GETUPVAL                         R15 3
      110 GETTABLEKS                       R14 R15 K39 ["Screens"]
      112 GETTABLEKS                       R13 R14 K41 ["InputSurfaceAppearanceIds"]
      114 JUMPIFNOTEQ                      R12 R13 ; [+7]
      116 GETUPVAL                         R12 0
      117 GETTABLEKS                       R11 R12 K2 ["createElement"]
      119 GETUPVAL                         R12 5
      120 CALL                             R11 1 1
      121 JUMP                             ; [+1]
      122 LOADNIL                          R11
      123 SETTABLEKS                       R11 R10 K32 ["InputSurfaceAppearanceIdsScreen"]
      125 GETTABLEKS                       R12 R1 K38 ["screen"]
      127 GETUPVAL                         R15 3
      128 GETTABLEKS                       R14 R15 K39 ["Screens"]
      130 GETTABLEKS                       R13 R14 K42 ["InputAccessoryType"]
      132 JUMPIFNOTEQ                      R12 R13 ; [+7]
      134 GETUPVAL                         R12 0
      135 GETTABLEKS                       R11 R12 K2 ["createElement"]
      137 GETUPVAL                         R12 6
      138 CALL                             R11 1 1
      139 JUMP                             ; [+1]
      140 LOADNIL                          R11
      141 SETTABLEKS                       R11 R10 K33 ["InputAccessoryTypeScreen"]
      143 GETTABLEKS                       R12 R1 K38 ["screen"]
      145 GETUPVAL                         R15 3
      146 GETTABLEKS                       R14 R15 K39 ["Screens"]
      148 GETTABLEKS                       R13 R14 K43 ["InputAnimationId"]
      150 JUMPIFNOTEQ                      R12 R13 ; [+7]
      152 GETUPVAL                         R12 0
      153 GETTABLEKS                       R11 R12 K2 ["createElement"]
      155 GETUPVAL                         R12 7
      156 CALL                             R11 1 1
      157 JUMP                             ; [+1]
      158 LOADNIL                          R11
      159 SETTABLEKS                       R11 R10 K34 ["InputAnimationIdScreen"]
      161 GETTABLEKS                       R12 R1 K38 ["screen"]
      163 GETUPVAL                         R15 3
      164 GETTABLEKS                       R14 R15 K39 ["Screens"]
      166 GETTABLEKS                       R13 R14 K44 ["Error"]
      168 JUMPIFNOTEQ                      R12 R13 ; [+7]
      170 GETUPVAL                         R12 0
      171 GETTABLEKS                       R11 R12 K2 ["createElement"]
      173 GETUPVAL                         R12 8
      174 CALL                             R11 1 1
      175 JUMP                             ; [+1]
      176 LOADNIL                          R11
      177 SETTABLEKS                       R11 R10 K35 ["ErrorScreen"]
      179 GETTABLEKS                       R12 R1 K38 ["screen"]
      181 GETUPVAL                         R15 3
      182 GETTABLEKS                       R14 R15 K39 ["Screens"]
      184 GETTABLEKS                       R13 R14 K45 ["OwnershipTransfer"]
      186 JUMPIFNOTEQ                      R12 R13 ; [+7]
      188 GETUPVAL                         R12 0
      189 GETTABLEKS                       R11 R12 K2 ["createElement"]
      191 GETUPVAL                         R12 9
      192 CALL                             R11 1 1
      193 JUMP                             ; [+1]
      194 LOADNIL                          R11
      195 SETTABLEKS                       R11 R10 K36 ["OwnershipTransferScreen"]
      197 CALL                             R7 3 1
      198 JUMPIF                           R7 ; [+1]
      199 LOADNIL                          R7
      200 SETTABLEKS                       R7 R6 K11 ["MainWidget"]
      202 CALL                             R3 3 -1
      203 RETURN                           R3 -1

PROTO_10:
        0 DUPTABLE                         R2 K2 [{"enabled", "screen"}]
        1 GETTABLEKS                       R4 R0 K3 ["PluginReducer"]
        3 GETTABLEKS                       R3 R4 K0 ["enabled"]
        5 SETTABLEKS                       R3 R2 K0 ["enabled"]
        7 GETTABLEKS                       R4 R0 K3 ["PluginReducer"]
        9 GETTABLEKS                       R3 R4 K1 ["screen"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
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
       46 GETTABLEKS                       R14 R0 K18 ["Src"]
       48 GETTABLEKS                       R13 R14 K19 ["Constants"]
       50 CALL                             R12 1 1
       51 GETIMPORT                        R13 K5 [require]
       53 GETTABLEKS                       R16 R0 K18 ["Src"]
       55 GETTABLEKS                       R15 R16 K20 ["Actions"]
       57 GETTABLEKS                       R14 R15 K21 ["SetEnabled"]
       59 CALL                             R13 1 1
       60 GETIMPORT                        R14 K5 [require]
       62 GETTABLEKS                       R17 R0 K18 ["Src"]
       64 GETTABLEKS                       R16 R17 K20 ["Actions"]
       66 GETTABLEKS                       R15 R16 K22 ["SetMode"]
       68 CALL                             R14 1 1
       69 GETIMPORT                        R15 K5 [require]
       71 GETTABLEKS                       R18 R0 K18 ["Src"]
       73 GETTABLEKS                       R17 R18 K20 ["Actions"]
       75 GETTABLEKS                       R16 R17 K23 ["SetScreen"]
       77 CALL                             R15 1 1
       78 GETIMPORT                        R16 K5 [require]
       80 GETTABLEKS                       R19 R0 K18 ["Src"]
       82 GETTABLEKS                       R18 R19 K20 ["Actions"]
       84 GETTABLEKS                       R17 R18 K24 ["SetOwnershipTransferText"]
       86 CALL                             R16 1 1
       87 GETIMPORT                        R17 K5 [require]
       89 GETTABLEKS                       R20 R0 K18 ["Src"]
       91 GETTABLEKS                       R19 R20 K25 ["Thunks"]
       93 GETTABLEKS                       R18 R19 K26 ["Export"]
       95 CALL                             R17 1 1
       96 GETIMPORT                        R18 K5 [require]
       98 GETTABLEKS                       R22 R0 K18 ["Src"]
      100 GETTABLEKS                       R21 R22 K27 ["Components"]
      102 GETTABLEKS                       R20 R21 K28 ["Screens"]
      104 GETTABLEKS                       R19 R20 K29 ["SelectRigScreen"]
      106 CALL                             R18 1 1
      107 GETIMPORT                        R19 K5 [require]
      109 GETTABLEKS                       R23 R0 K18 ["Src"]
      111 GETTABLEKS                       R22 R23 K27 ["Components"]
      113 GETTABLEKS                       R21 R22 K28 ["Screens"]
      115 GETTABLEKS                       R20 R21 K30 ["InputSurfaceAppearanceIdsScreen"]
      117 CALL                             R19 1 1
      118 GETIMPORT                        R20 K5 [require]
      120 GETTABLEKS                       R24 R0 K18 ["Src"]
      122 GETTABLEKS                       R23 R24 K27 ["Components"]
      124 GETTABLEKS                       R22 R23 K28 ["Screens"]
      126 GETTABLEKS                       R21 R22 K31 ["InputAccessoryTypeScreen"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K5 [require]
      131 GETTABLEKS                       R25 R0 K18 ["Src"]
      133 GETTABLEKS                       R24 R25 K27 ["Components"]
      135 GETTABLEKS                       R23 R24 K28 ["Screens"]
      137 GETTABLEKS                       R22 R23 K32 ["InputAnimationIdScreen"]
      139 CALL                             R21 1 1
      140 GETIMPORT                        R22 K5 [require]
      142 GETTABLEKS                       R26 R0 K18 ["Src"]
      144 GETTABLEKS                       R25 R26 K27 ["Components"]
      146 GETTABLEKS                       R24 R25 K28 ["Screens"]
      148 GETTABLEKS                       R23 R24 K33 ["ErrorScreen"]
      150 CALL                             R22 1 1
      151 GETIMPORT                        R23 K5 [require]
      153 GETTABLEKS                       R27 R0 K18 ["Src"]
      155 GETTABLEKS                       R26 R27 K27 ["Components"]
      157 GETTABLEKS                       R25 R26 K28 ["Screens"]
      159 GETTABLEKS                       R24 R25 K34 ["OwnershipTransferScreen"]
      161 CALL                             R23 1 1
      162 GETIMPORT                        R24 K5 [require]
      164 GETTABLEKS                       R27 R0 K18 ["Src"]
      166 GETTABLEKS                       R26 R27 K35 ["Util"]
      168 GETTABLEKS                       R25 R26 K36 ["getOwnershipTransferAssetIds"]
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
