PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["ToolMode"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["TOOL_MODE"]
        8 GETTABLEKS                       R2 R2 K3 ["Point"]
       10 JUMPIFEQ                         R1 R2 ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
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
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K13 ["isCageEditingActive"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["state"]
        6 GETTABLEKS                       R4 R2 K2 ["Stylizer"]
        8 GETTABLEKS                       R5 R3 K3 ["icons"]
       10 GETUPVAL                         R6 0
       11 DUPTABLE                         R8 K5 [{"isCageSlider"}]
       12 GETTABLE                         R10 R5 R1
       13 JUMPIFNOT                        R10 ; [+10]
       14 GETTABLE                         R10 R5 R1
       15 GETTABLEKS                       R10 R10 K6 ["icon"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
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
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R1 R0 K4 ["isCageEditingActive"]
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K5 ["getMenuIcons"]
       12 NEWCLOSURE                       R1 P2
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K6 ["onMenuOptionClicked"]
       16 NEWCLOSURE                       R1 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U1
       19 SETTABLEKS                       R1 R0 K7 ["onFocusMannequinClicked"]
       21 RETURN                           R0 0

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
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["ToolMode"]
        6 JUMPIFEQ                         R2 R3 ; [+22]
        8 DUPTABLE                         R4 K4 [{"icons", "isCageSlider"}]
        9 NAMECALL                         R5 R0 K5 ["getMenuIcons"]
       11 CALL                             R5 1 1
       12 SETTABLEKS                       R5 R4 K2 ["icons"]
       14 GETTABLEKS                       R6 R0 K6 ["isCageEditingActive"]
       16 CALL                             R6 0 1
       17 JUMPIFNOT                        R6 ; [+5]
       18 GETTABLEKS                       R5 R0 K7 ["state"]
       20 GETTABLEKS                       R5 R5 K3 ["isCageSlider"]
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
       33 GETUPVAL                         R18 0
       34 GETTABLEKS                       R18 R18 K15 ["TOOL_MODE"]
       36 GETTABLEKS                       R18 R18 K16 ["Point"]
       38 JUMPIFEQ                         R4 R18 ; [+2]
       40 LOADB                            R17 0 +1
       41 LOADB                            R17 1
       42 GETUPVAL                         R18 1
       43 GETTABLEKS                       R18 R18 K17 ["new"]
       45 CALL                             R18 0 1
       46 GETUPVAL                         R19 2
       47 GETTABLEKS                       R19 R19 K18 ["createElement"]
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
       92 GETUPVAL                         R23 2
       93 GETTABLEKS                       R23 R23 K18 ["createElement"]
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
      116 JUMPIFNOT                        R23 ; [+79]
      117 GETUPVAL                         R23 2
      118 GETTABLEKS                       R23 R23 K18 ["createElement"]
      120 GETUPVAL                         R24 3
      121 DUPTABLE                         R25 K48 [{["Layout"], ["Spacing"], ["HorizontalAlignment"], ["Size"], ["AutomaticSize"], ["Style"] = "RoundBox", ["LayoutOrder"]}]
      122 GETIMPORT                        R26 K33 [Enum.FillDirection.Horizontal]
      124 SETTABLEKS                       R26 R25 K22 ["Layout"]
      126 SETTABLEKS                       R13 R25 K24 ["Spacing"]
      128 GETIMPORT                        R26 K50 [Enum.HorizontalAlignment.Center]
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
      145 NAMECALL                         R26 R18 K45 ["getNextOrder"]
      147 CALL                             R26 1 1
      148 SETTABLEKS                       R26 R25 K4 ["LayoutOrder"]
      150 DUPTABLE                         R26 K53 [{"TransparencyDropdownButton", "EditTransparencyView"}]
      151 GETUPVAL                         R27 2
      152 GETTABLEKS                       R27 R27 K18 ["createElement"]
      154 GETUPVAL                         R28 4
      155 DUPTABLE                         R29 K56 [{["ButtonSize"], ["Items"], ["IsIconList"] = True, ["OnItemActivated"], ["LayoutOrder"]}]
      156 SETTABLEKS                       R14 R29 K13 ["ButtonSize"]
      158 SETTABLEKS                       R15 R29 K41 ["Items"]
      160 GETTABLEKS                       R30 R0 K57 ["onMenuOptionClicked"]
      162 SETTABLEKS                       R30 R29 K42 ["OnItemActivated"]
      164 NAMECALL                         R30 R18 K45 ["getNextOrder"]
      166 CALL                             R30 1 1
      167 SETTABLEKS                       R30 R29 K4 ["LayoutOrder"]
      169 CALL                             R27 2 1
      170 SETTABLEKS                       R27 R26 K51 ["TransparencyDropdownButton"]
      172 GETUPVAL                         R27 2
      173 GETTABLEKS                       R27 R27 K18 ["createElement"]
      175 GETUPVAL                         R28 5
      176 DUPTABLE                         R29 K59 [{"IsCageSlider", "LayoutOrder"}]
      177 GETTABLEKS                       R30 R0 K60 ["isCageEditingActive"]
      179 CALL                             R30 0 1
      180 JUMPIFNOT                        R30 ; [+4]
      181 GETTABLEKS                       R30 R0 K1 ["state"]
      183 GETTABLEKS                       R30 R30 K61 ["isCageSlider"]
      185 SETTABLEKS                       R30 R29 K58 ["IsCageSlider"]
      187 NAMECALL                         R30 R18 K45 ["getNextOrder"]
      189 CALL                             R30 1 1
      190 SETTABLEKS                       R30 R29 K4 ["LayoutOrder"]
      192 CALL                             R27 2 1
      193 SETTABLEKS                       R27 R26 K52 ["EditTransparencyView"]
      195 CALL                             R23 3 1
      196 SETTABLEKS                       R23 R22 K37 ["TransparencySettingsContainer"]
      198 GETUPVAL                         R23 2
      199 GETTABLEKS                       R23 R23 K18 ["createElement"]
      201 GETUPVAL                         R24 6
      202 DUPTABLE                         R25 K65 [{["Style"] = "Round", ["Size"], ["LayoutOrder"], ["OnClick"], ["Tooltip"]}]
      203 GETIMPORT                        R26 K67 [UDim2.fromOffset]
      205 MOVE                             R27 R14
      206 MOVE                             R28 R14
      207 CALL                             R26 2 1
      208 SETTABLEKS                       R26 R25 K20 ["Size"]
      210 NAMECALL                         R26 R18 K45 ["getNextOrder"]
      212 CALL                             R26 1 1
      213 SETTABLEKS                       R26 R25 K4 ["LayoutOrder"]
      215 GETTABLEKS                       R26 R0 K68 ["onFocusMannequinClicked"]
      217 SETTABLEKS                       R26 R25 K63 ["OnClick"]
      219 LOADK                            R28 K69 ["Preview"]
      220 LOADK                            R29 K70 ["FocusCamera"]
      221 NAMECALL                         R26 R6 K71 ["getText"]
      223 CALL                             R26 3 1
      224 SETTABLEKS                       R26 R25 K64 ["Tooltip"]
      226 DUPTABLE                         R26 K73 [{"Settings"}]
      227 GETUPVAL                         R27 2
      228 GETTABLEKS                       R27 R27 K18 ["createElement"]
      230 GETUPVAL                         R28 7
      231 DUPTABLE                         R29 K75 [{"Image"}]
      232 GETTABLEKS                       R30 R8 K76 ["FocusMannequinIcon"]
      234 SETTABLEKS                       R30 R29 K74 ["Image"]
      236 CALL                             R27 2 1
      237 SETTABLEKS                       R27 R26 K72 ["Settings"]
      239 CALL                             R23 3 1
      240 SETTABLEKS                       R23 R22 K38 ["FocusMannequinButton"]
      242 CALL                             R19 3 -1
      243 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["AvatarToolsShared"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["Contexts"]
       27 GETTABLEKS                       R3 R3 K9 ["EditingItemContext"]
       29 GETTABLEKS                       R4 R2 K10 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["AccessoryAndBodyToolShared"]
       33 GETTABLEKS                       R4 R4 K12 ["AvatarUtil"]
       35 GETTABLEKS                       R5 R2 K13 ["Components"]
       37 GETTABLEKS                       R5 R5 K14 ["DropdownMenuButton"]
       39 GETIMPORT                        R6 K4 [require]
       41 GETTABLEKS                       R7 R0 K15 ["Src"]
       43 GETTABLEKS                       R7 R7 K13 ["Components"]
       45 GETTABLEKS                       R7 R7 K16 ["Editor"]
       47 GETTABLEKS                       R7 R7 K17 ["EditTransparencyView"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K4 [require]
       52 GETTABLEKS                       R8 R0 K5 ["Packages"]
       54 GETTABLEKS                       R8 R8 K18 ["Framework"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R7 K19 ["ContextServices"]
       59 GETTABLEKS                       R9 R8 K20 ["withContext"]
       61 GETTABLEKS                       R10 R7 K10 ["Util"]
       63 GETTABLEKS                       R10 R10 K21 ["StyleModifier"]
       65 GETTABLEKS                       R11 R7 K22 ["UI"]
       67 GETTABLEKS                       R12 R11 K23 ["Pane"]
       69 GETTABLEKS                       R13 R11 K24 ["Button"]
       71 GETTABLEKS                       R14 R11 K25 ["IconButton"]
       73 GETTABLEKS                       R15 R11 K26 ["Image"]
       75 GETIMPORT                        R16 K4 [require]
       77 GETTABLEKS                       R17 R0 K15 ["Src"]
       79 GETTABLEKS                       R17 R17 K10 ["Util"]
       81 GETTABLEKS                       R17 R17 K27 ["Constants"]
       83 CALL                             R16 1 1
       84 GETTABLEKS                       R17 R1 K28 ["PureComponent"]
       86 LOADK                            R19 K29 ["VisibilityControls"]
       87 NAMECALL                         R17 R17 K30 ["extend"]
       89 CALL                             R17 2 1
       90 GETTABLEKS                       R18 R7 K10 ["Util"]
       92 GETTABLEKS                       R19 R18 K31 ["LayoutOrderIterator"]
       94 DUPTABLE                         R20 K34 [{["Offset"] = 0}]
       95 SETTABLEKS                       R20 R17 K35 ["defaultProps"]
       97 DUPCLOSURE                       R20 K36 [PROTO_4]
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R4
      100 SETTABLEKS                       R20 R17 K37 ["init"]
      102 DUPCLOSURE                       R20 K38 [PROTO_5]
      103 SETTABLEKS                       R20 R17 K39 ["didMount"]
      105 DUPCLOSURE                       R20 K40 [PROTO_6]
      106 SETTABLEKS                       R20 R17 K41 ["didUpdate"]
      108 DUPCLOSURE                       R20 K42 [PROTO_7]
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R19
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R15
      117 SETTABLEKS                       R20 R17 K43 ["render"]
      119 MOVE                             R20 R9
      120 DUPTABLE                         R21 K47 [{"Analytics", "EditingItemContext", "Localization", "Stylizer"}]
      121 GETTABLEKS                       R22 R8 K44 ["Analytics"]
      123 SETTABLEKS                       R22 R21 K44 ["Analytics"]
      125 SETTABLEKS                       R3 R21 K9 ["EditingItemContext"]
      127 GETTABLEKS                       R22 R8 K45 ["Localization"]
      129 SETTABLEKS                       R22 R21 K45 ["Localization"]
      131 GETTABLEKS                       R22 R8 K46 ["Stylizer"]
      133 SETTABLEKS                       R22 R21 K46 ["Stylizer"]
      135 CALL                             R20 1 1
      136 MOVE                             R21 R17
      137 CALL                             R20 1 1
      138 MOVE                             R17 R20
      139 RETURN                           R17 1
