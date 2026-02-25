PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["ToolMode"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["TOOL_MODE"]
        8 GETTABLEKS                       R2 R3 K3 ["Point"]
       10 JUMPIFEQ                         R1 R2 ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Stylizer"]
        5 GETTABLEKS                       R2 R0 K2 ["Localization"]
        7 NEWTABLE                         R3 0 0
        9 DUPTABLE                         R6 K5 [{"icon", "tooltip"}]
       10 GETTABLEKS                       R7 R1 K6 ["MeshPartVisibilityIcon"]
       12 SETTABLEKS                       R7 R6 K3 ["icon"]
       14 LOADK                            R9 K7 ["Opacity"]
       15 LOADK                            R10 K8 ["Mesh"]
       16 NAMECALL                         R7 R2 K9 ["getText"]
       18 CALL                             R7 3 1
       19 SETTABLEKS                       R7 R6 K4 ["tooltip"]
       21 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       23 MOVE                             R5 R3
       24 GETIMPORT                        R4 K12 [table.insert]
       26 CALL                             R4 2 0
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K13 ["isCageEditingActive"]
       30 CALL                             R4 0 1
       31 JUMPIFNOT                        R4 ; [+18]
       32 DUPTABLE                         R6 K5 [{"icon", "tooltip"}]
       33 GETTABLEKS                       R7 R1 K14 ["CageVisibilityIcon"]
       35 SETTABLEKS                       R7 R6 K3 ["icon"]
       37 LOADK                            R9 K7 ["Opacity"]
       38 LOADK                            R10 K15 ["Cage"]
       39 NAMECALL                         R7 R2 K9 ["getText"]
       41 CALL                             R7 3 1
       42 SETTABLEKS                       R7 R6 K4 ["tooltip"]
       44 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       46 MOVE                             R5 R3
       47 GETIMPORT                        R4 K12 [table.insert]
       49 CALL                             R4 2 0
       50 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["state"]
        6 GETTABLEKS                       R4 R2 K2 ["Stylizer"]
        8 GETTABLEKS                       R5 R3 K3 ["icons"]
       10 GETUPVAL                         R6 0
       11 DUPTABLE                         R8 K5 [{"isCageSlider"}]
       12 GETTABLE                         R10 R5 R1
       13 JUMPIFNOT                        R10 ; [+10]
       14 GETTABLE                         R11 R5 R1
       15 GETTABLEKS                       R10 R11 K6 ["icon"]
       17 GETTABLEKS                       R11 R4 K7 ["CageVisibilityIcon"]
       19 JUMPIFEQ                         R10 R11 ; [+2]
       21 LOADB                            R9 0 +1
       22 LOADB                            R9 1
       23 JUMP                             ; [+1]
       24 LOADB                            R9 0
       25 SETTABLEKS                       R9 R8 K4 ["isCageSlider"]
       27 NAMECALL                         R6 R6 K8 ["setState"]
       29 CALL                             R6 2 0
       30 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["EditingItemContext"]
        5 NAMECALL                         R1 R1 K2 ["getItem"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+16]
        9 GETTABLEKS                       R2 R1 K3 ["Parent"]
       11 JUMPIFNOT                        R2 ; [+13]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R4 R1 K3 ["Parent"]
       15 NAMECALL                         R2 R2 K4 ["focusCameraOnAvatar"]
       17 CALL                             R2 2 0
       18 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       20 LOADK                            R4 K6 ["ZoomToAvatar"]
       21 NAMECALL                         R2 R2 K7 ["getHandler"]
       23 CALL                             R2 2 1
       24 CALL                             R2 0 0
       25 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"isCageSlider"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isCageSlider"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R1 R0 K3 ["isCageEditingActive"]
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K4 ["getMenuIcons"]
       15 NEWCLOSURE                       R1 P2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K5 ["onMenuOptionClicked"]
       19 NEWCLOSURE                       R1 P3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U1
       22 SETTABLEKS                       R1 R0 K6 ["onFocusMannequinClicked"]
       24 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R4 K1 [{"icons"}]
        1 NAMECALL                         R5 R0 K2 ["getMenuIcons"]
        3 CALL                             R5 1 1
        4 SETTABLEKS                       R5 R4 K0 ["icons"]
        6 NAMECALL                         R2 R0 K3 ["setState"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["ToolMode"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R4 K0 ["ToolMode"]
        6 JUMPIFEQ                         R2 R3 ; [+22]
        8 DUPTABLE                         R4 K4 [{"icons", "isCageSlider"}]
        9 NAMECALL                         R5 R0 K5 ["getMenuIcons"]
       11 CALL                             R5 1 1
       12 SETTABLEKS                       R5 R4 K2 ["icons"]
       14 GETTABLEKS                       R6 R0 K6 ["isCageEditingActive"]
       16 CALL                             R6 0 1
       17 JUMPIFNOT                        R6 ; [+5]
       18 GETTABLEKS                       R6 R0 K7 ["state"]
       20 GETTABLEKS                       R5 R6 K3 ["isCageSlider"]
       22 JUMP                             ; [+1]
       23 LOADB                            R5 0
       24 SETTABLEKS                       R5 R4 K3 ["isCageSlider"]
       26 NAMECALL                         R2 R0 K8 ["setState"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["AnchorPoint"]
        6 GETTABLEKS                       R4 R1 K3 ["ToolMode"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["Localization"]
       12 GETTABLEKS                       R7 R1 K6 ["Offset"]
       14 GETTABLEKS                       R8 R1 K7 ["Stylizer"]
       16 GETTABLEKS                       R9 R1 K8 ["MenuOptions"]
       18 GETTABLEKS                       R10 R1 K9 ["OnMenuOptionClicked"]
       20 GETTABLEKS                       R11 R1 K10 ["ShowOptionsButton"]
       22 GETTABLEKS                       R12 R8 K11 ["Padding"]
       24 GETTABLEKS                       R13 R8 K12 ["PaddingSmall"]
       26 GETTABLEKS                       R14 R8 K13 ["ButtonSize"]
       28 GETTABLEKS                       R15 R2 K14 ["icons"]
       30 LOADN                            R18 2
       31 MUL                              R17 R18 R12
       32 ADD                              R16 R17 R14
       33 GETUPVAL                         R20 0
       34 GETTABLEKS                       R19 R20 K15 ["TOOL_MODE"]
       36 GETTABLEKS                       R18 R19 K16 ["Point"]
       38 JUMPIFEQ                         R4 R18 ; [+2]
       40 LOADB                            R17 0 +1
       41 LOADB                            R17 1
       42 GETUPVAL                         R19 1
       43 GETTABLEKS                       R18 R19 K17 ["new"]
       45 CALL                             R18 0 1
       46 GETUPVAL                         R20 2
       47 GETTABLEKS                       R19 R20 K18 ["createElement"]
       49 GETUPVAL                         R20 3
       50 DUPTABLE                         R21 K25 [{"AnchorPoint", "Position", "Size", "AutomaticSize", "Layout", "LayoutOrder", "HorizontalAlignment", "Spacing", "Padding"}]
       51 SETTABLEKS                       R3 R21 K2 ["AnchorPoint"]
       53 GETIMPORT                        R22 K27 [UDim2.new]
       55 LOADN                            R23 1
       56 MINUS                            R24 R7
       57 LOADN                            R25 0
       58 LOADN                            R26 0
       59 CALL                             R22 4 1
       60 SETTABLEKS                       R22 R21 K19 ["Position"]
       62 GETIMPORT                        R22 K27 [UDim2.new]
       64 LOADN                            R23 0
       65 LOADN                            R24 0
       66 LOADN                            R25 0
       67 MOVE                             R26 R16
       68 CALL                             R22 4 1
       69 SETTABLEKS                       R22 R21 K20 ["Size"]
       71 GETIMPORT                        R22 K30 [Enum.AutomaticSize.X]
       73 SETTABLEKS                       R22 R21 K21 ["AutomaticSize"]
       75 GETIMPORT                        R22 K33 [Enum.FillDirection.Horizontal]
       77 SETTABLEKS                       R22 R21 K22 ["Layout"]
       79 SETTABLEKS                       R5 R21 K4 ["LayoutOrder"]
       81 GETIMPORT                        R22 K35 [Enum.HorizontalAlignment.Right]
       83 SETTABLEKS                       R22 R21 K23 ["HorizontalAlignment"]
       85 SETTABLEKS                       R12 R21 K24 ["Spacing"]
       87 SETTABLEKS                       R12 R21 K11 ["Padding"]
       89 DUPTABLE                         R22 K39 [{"OptionsDropdownButton", "TransparencySettingsContainer", "FocusMannequinButton"}]
       90 MOVE                             R23 R11
       91 JUMPIFNOT                        R23 ; [+21]
       92 GETUPVAL                         R24 2
       93 GETTABLEKS                       R23 R24 K18 ["createElement"]
       95 GETUPVAL                         R24 4
       96 DUPTABLE                         R25 K43 [{"ButtonSize", "Icon", "Items", "OnItemActivated", "LayoutOrder"}]
       97 SETTABLEKS                       R14 R25 K13 ["ButtonSize"]
       99 GETTABLEKS                       R26 R8 K44 ["OptionsIcon"]
      101 SETTABLEKS                       R26 R25 K40 ["Icon"]
      103 SETTABLEKS                       R9 R25 K41 ["Items"]
      105 SETTABLEKS                       R10 R25 K42 ["OnItemActivated"]
      107 NAMECALL                         R26 R18 K45 ["getNextOrder"]
      109 CALL                             R26 1 1
      110 SETTABLEKS                       R26 R25 K4 ["LayoutOrder"]
      112 CALL                             R23 2 1
      113 SETTABLEKS                       R23 R22 K36 ["OptionsDropdownButton"]
      115 MOVE                             R23 R17
      116 JUMPIFNOT                        R23 ; [+85]
      117 GETUPVAL                         R24 2
      118 GETTABLEKS                       R23 R24 K18 ["createElement"]
      120 GETUPVAL                         R24 3
      121 DUPTABLE                         R25 K47 [{"Layout", "Spacing", "HorizontalAlignment", "Size", "AutomaticSize", "Style", "LayoutOrder"}]
      122 GETIMPORT                        R26 K33 [Enum.FillDirection.Horizontal]
      124 SETTABLEKS                       R26 R25 K22 ["Layout"]
      126 SETTABLEKS                       R13 R25 K24 ["Spacing"]
      128 GETIMPORT                        R26 K49 [Enum.HorizontalAlignment.Center]
      130 SETTABLEKS                       R26 R25 K23 ["HorizontalAlignment"]
      132 GETIMPORT                        R26 K27 [UDim2.new]
      134 LOADN                            R27 0
      135 LOADN                            R28 0
      136 LOADN                            R29 1
      137 LOADN                            R30 0
      138 CALL                             R26 4 1
      139 SETTABLEKS                       R26 R25 K20 ["Size"]
      141 GETIMPORT                        R26 K30 [Enum.AutomaticSize.X]
      143 SETTABLEKS                       R26 R25 K21 ["AutomaticSize"]
      145 LOADK                            R26 K50 ["RoundBox"]
      146 SETTABLEKS                       R26 R25 K46 ["Style"]
      148 NAMECALL                         R26 R18 K45 ["getNextOrder"]
      150 CALL                             R26 1 1
      151 SETTABLEKS                       R26 R25 K4 ["LayoutOrder"]
      153 DUPTABLE                         R26 K53 [{"TransparencyDropdownButton", "EditTransparencyView"}]
      154 GETUPVAL                         R28 2
      155 GETTABLEKS                       R27 R28 K18 ["createElement"]
      157 GETUPVAL                         R28 4
      158 DUPTABLE                         R29 K55 [{"ButtonSize", "Items", "IsIconList", "OnItemActivated", "LayoutOrder"}]
      159 SETTABLEKS                       R14 R29 K13 ["ButtonSize"]
      161 SETTABLEKS                       R15 R29 K41 ["Items"]
      163 LOADB                            R30 1
      164 SETTABLEKS                       R30 R29 K54 ["IsIconList"]
      166 GETTABLEKS                       R30 R0 K56 ["onMenuOptionClicked"]
      168 SETTABLEKS                       R30 R29 K42 ["OnItemActivated"]
      170 NAMECALL                         R30 R18 K45 ["getNextOrder"]
      172 CALL                             R30 1 1
      173 SETTABLEKS                       R30 R29 K4 ["LayoutOrder"]
      175 CALL                             R27 2 1
      176 SETTABLEKS                       R27 R26 K51 ["TransparencyDropdownButton"]
      178 GETUPVAL                         R28 2
      179 GETTABLEKS                       R27 R28 K18 ["createElement"]
      181 GETUPVAL                         R28 5
      182 DUPTABLE                         R29 K58 [{"IsCageSlider", "LayoutOrder"}]
      183 GETTABLEKS                       R30 R0 K59 ["isCageEditingActive"]
      185 CALL                             R30 0 1
      186 JUMPIFNOT                        R30 ; [+4]
      187 GETTABLEKS                       R31 R0 K1 ["state"]
      189 GETTABLEKS                       R30 R31 K60 ["isCageSlider"]
      191 SETTABLEKS                       R30 R29 K57 ["IsCageSlider"]
      193 NAMECALL                         R30 R18 K45 ["getNextOrder"]
      195 CALL                             R30 1 1
      196 SETTABLEKS                       R30 R29 K4 ["LayoutOrder"]
      198 CALL                             R27 2 1
      199 SETTABLEKS                       R27 R26 K52 ["EditTransparencyView"]
      201 CALL                             R23 3 1
      202 SETTABLEKS                       R23 R22 K37 ["TransparencySettingsContainer"]
      204 GETUPVAL                         R24 2
      205 GETTABLEKS                       R23 R24 K18 ["createElement"]
      207 GETUPVAL                         R24 6
      208 DUPTABLE                         R25 K63 [{"Style", "Size", "LayoutOrder", "OnClick", "Tooltip"}]
      209 LOADK                            R26 K64 ["Round"]
      210 SETTABLEKS                       R26 R25 K46 ["Style"]
      212 GETIMPORT                        R26 K66 [UDim2.fromOffset]
      214 MOVE                             R27 R14
      215 MOVE                             R28 R14
      216 CALL                             R26 2 1
      217 SETTABLEKS                       R26 R25 K20 ["Size"]
      219 NAMECALL                         R26 R18 K45 ["getNextOrder"]
      221 CALL                             R26 1 1
      222 SETTABLEKS                       R26 R25 K4 ["LayoutOrder"]
      224 GETTABLEKS                       R26 R0 K67 ["onFocusMannequinClicked"]
      226 SETTABLEKS                       R26 R25 K61 ["OnClick"]
      228 LOADK                            R28 K68 ["Preview"]
      229 LOADK                            R29 K69 ["FocusCamera"]
      230 NAMECALL                         R26 R6 K70 ["getText"]
      232 CALL                             R26 3 1
      233 SETTABLEKS                       R26 R25 K62 ["Tooltip"]
      235 DUPTABLE                         R26 K72 [{"Settings"}]
      236 GETUPVAL                         R28 2
      237 GETTABLEKS                       R27 R28 K18 ["createElement"]
      239 GETUPVAL                         R28 7
      240 DUPTABLE                         R29 K74 [{"Image"}]
      241 GETTABLEKS                       R30 R8 K75 ["FocusMannequinIcon"]
      243 SETTABLEKS                       R30 R29 K73 ["Image"]
      245 CALL                             R27 2 1
      246 SETTABLEKS                       R27 R26 K71 ["Settings"]
      248 CALL                             R23 3 1
      249 SETTABLEKS                       R23 R22 K38 ["FocusMannequinButton"]
      251 CALL                             R19 3 -1
      252 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["AvatarToolsShared"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R4 R2 K8 ["Contexts"]
       27 GETTABLEKS                       R3 R4 K9 ["EditingItemContext"]
       29 GETTABLEKS                       R6 R2 K10 ["Util"]
       31 GETTABLEKS                       R5 R6 K11 ["AccessoryAndBodyToolShared"]
       33 GETTABLEKS                       R4 R5 K12 ["AvatarUtil"]
       35 GETTABLEKS                       R6 R2 K13 ["Components"]
       37 GETTABLEKS                       R5 R6 K14 ["DropdownMenuButton"]
       39 GETIMPORT                        R6 K4 [require]
       41 GETTABLEKS                       R10 R0 K15 ["Src"]
       43 GETTABLEKS                       R9 R10 K13 ["Components"]
       45 GETTABLEKS                       R8 R9 K16 ["Editor"]
       47 GETTABLEKS                       R7 R8 K17 ["EditTransparencyView"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K4 [require]
       52 GETTABLEKS                       R9 R0 K5 ["Packages"]
       54 GETTABLEKS                       R8 R9 K18 ["Framework"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R7 K19 ["ContextServices"]
       59 GETTABLEKS                       R9 R8 K20 ["withContext"]
       61 GETTABLEKS                       R11 R7 K10 ["Util"]
       63 GETTABLEKS                       R10 R11 K21 ["StyleModifier"]
       65 GETTABLEKS                       R11 R7 K22 ["UI"]
       67 GETTABLEKS                       R12 R11 K23 ["Pane"]
       69 GETTABLEKS                       R13 R11 K24 ["Button"]
       71 GETTABLEKS                       R14 R11 K25 ["IconButton"]
       73 GETTABLEKS                       R15 R11 K26 ["Image"]
       75 GETIMPORT                        R16 K4 [require]
       77 GETTABLEKS                       R19 R0 K15 ["Src"]
       79 GETTABLEKS                       R18 R19 K10 ["Util"]
       81 GETTABLEKS                       R17 R18 K27 ["Constants"]
       83 CALL                             R16 1 1
       84 GETTABLEKS                       R17 R1 K28 ["PureComponent"]
       86 LOADK                            R19 K29 ["VisibilityControls"]
       87 NAMECALL                         R17 R17 K30 ["extend"]
       89 CALL                             R17 2 1
       90 GETTABLEKS                       R18 R7 K10 ["Util"]
       92 GETTABLEKS                       R19 R18 K31 ["LayoutOrderIterator"]
       94 DUPTABLE                         R20 K33 [{"Offset"}]
       95 LOADN                            R21 0
       96 SETTABLEKS                       R21 R20 K32 ["Offset"]
       98 SETTABLEKS                       R20 R17 K34 ["defaultProps"]
      100 DUPCLOSURE                       R20 K35 [PROTO_4]
      101 CAPTURE                          VAL R16
      102 CAPTURE                          VAL R4
      103 SETTABLEKS                       R20 R17 K36 ["init"]
      105 DUPCLOSURE                       R20 K37 [PROTO_5]
      106 SETTABLEKS                       R20 R17 K38 ["didMount"]
      108 DUPCLOSURE                       R20 K39 [PROTO_6]
      109 SETTABLEKS                       R20 R17 K40 ["didUpdate"]
      111 DUPCLOSURE                       R20 K41 [PROTO_7]
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R19
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R15
      120 SETTABLEKS                       R20 R17 K42 ["render"]
      122 MOVE                             R20 R9
      123 DUPTABLE                         R21 K46 [{"Analytics", "EditingItemContext", "Localization", "Stylizer"}]
      124 GETTABLEKS                       R22 R8 K43 ["Analytics"]
      126 SETTABLEKS                       R22 R21 K43 ["Analytics"]
      128 SETTABLEKS                       R3 R21 K9 ["EditingItemContext"]
      130 GETTABLEKS                       R22 R8 K44 ["Localization"]
      132 SETTABLEKS                       R22 R21 K44 ["Localization"]
      134 GETTABLEKS                       R22 R8 K45 ["Stylizer"]
      136 SETTABLEKS                       R22 R21 K45 ["Stylizer"]
      138 CALL                             R20 1 1
      139 MOVE                             R21 R17
      140 CALL                             R20 1 1
      141 MOVE                             R17 R20
      142 RETURN                           R17 1
