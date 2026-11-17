PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["EditingItemContext"]
        5 NAMECALL                         R1 R1 K2 ["getItem"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K3 ["getAutoSkinningBehavior"]
       12 CALL                             R2 2 1
       13 GETIMPORT                        R3 K7 [Enum.WrapLayerAutoSkin.EnabledOverride]
       15 JUMPIFNOTEQ                      R2 R3 ; [+3]
       17 GETIMPORT                        R3 K9 [Enum.WrapLayerAutoSkin.EnabledPreserve]
       19 GETUPVAL                         R4 1
       20 MOVE                             R6 R1
       21 MOVE                             R7 R3
       22 NAMECALL                         R4 R4 K10 ["setAutoSkinningBehavior"]
       24 CALL                             R4 3 0
       25 GETUPVAL                         R4 0
       26 DUPTABLE                         R6 K14 [{["isAutoSkinBehaviorOverride"], ["isAutoSkinBehaviorDisabled"] = False}]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K11 ["isAutoSkinBehaviorOverride"]
       30 MOVE                             R8 R3
       31 CALL                             R7 1 1
       32 SETTABLEKS                       R7 R6 K11 ["isAutoSkinBehaviorOverride"]
       34 NAMECALL                         R4 R4 K15 ["setState"]
       36 CALL                             R4 2 0
       37 GETTABLEKS                       R4 R0 K16 ["Analytics"]
       39 LOADK                            R6 K17 ["AutoSkinningToggled"]
       40 NAMECALL                         R4 R4 K18 ["getHandler"]
       42 CALL                             R4 2 1
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K11 ["isAutoSkinBehaviorOverride"]
       46 MOVE                             R6 R3
       47 CALL                             R5 1 -1
       48 CALL                             R4 -1 0
       49 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K3 [Enum.WrapLayerAutoSkin.EnabledOverride]
        2 JUMPIFEQ                         R0 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["ToolMode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["TOOL_MODE"]
        8 GETTABLEKS                       R1 R1 K3 ["Point"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+13]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["props"]
       15 GETTABLEKS                       R0 R0 K4 ["SetToolMode"]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K2 ["TOOL_MODE"]
       20 GETTABLEKS                       R1 R1 K5 ["None"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K0 ["props"]
       27 GETTABLEKS                       R0 R0 K4 ["SetToolMode"]
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R1 R1 K2 ["TOOL_MODE"]
       32 GETTABLEKS                       R1 R1 K3 ["Point"]
       34 CALL                             R0 1 0
       35 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["EditingCage"]
        5 GETIMPORT                        R1 K5 [Enum.CageType.Outer]
        7 JUMPIFEQ                         R0 R1 ; [+25]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["props"]
       12 GETTABLEKS                       R0 R0 K6 ["SelectEditingCage"]
       14 GETIMPORT                        R1 K5 [Enum.CageType.Outer]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K0 ["props"]
       20 GETTABLEKS                       R0 R0 K7 ["Signals"]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K8 ["SIGNAL_KEYS"]
       25 GETTABLEKS                       R2 R2 K9 ["SelectionChanged"]
       27 NAMECALL                         R0 R0 K10 ["get"]
       29 CALL                             R0 2 1
       30 NAMECALL                         R0 R0 K11 ["Fire"]
       32 CALL                             R0 1 0
       33 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["EditingCage"]
        5 GETIMPORT                        R1 K5 [Enum.CageType.Inner]
        7 JUMPIFEQ                         R0 R1 ; [+25]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["props"]
       12 GETTABLEKS                       R0 R0 K6 ["SelectEditingCage"]
       14 GETIMPORT                        R1 K5 [Enum.CageType.Inner]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K0 ["props"]
       20 GETTABLEKS                       R0 R0 K7 ["Signals"]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K8 ["SIGNAL_KEYS"]
       25 GETTABLEKS                       R2 R2 K9 ["SelectionChanged"]
       27 NAMECALL                         R0 R0 K10 ["get"]
       29 CALL                             R0 2 1
       30 NAMECALL                         R0 R0 K11 ["Fire"]
       32 CALL                             R0 1 0
       33 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["isAutoSkinBehaviorDisabled"] = False}]
        1 SETTABLEKS                       R1 R0 K4 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R1 R0 K5 ["autoSkinButtonClicked"]
        8 DUPCLOSURE                       R1 K6 [PROTO_1]
        9 SETTABLEKS                       R1 R0 K0 ["isAutoSkinBehaviorOverride"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 SETTABLEKS                       R1 R0 K7 ["cageEditingButtonClicked"]
       16 NEWCLOSURE                       R1 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U1
       19 SETTABLEKS                       R1 R0 K8 ["outerCageButtonClicked"]
       21 NEWCLOSURE                       R1 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U1
       24 SETTABLEKS                       R1 R0 K9 ["innerCageButtonClicked"]
       26 NEWCLOSURE                       R1 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U1
       29 SETTABLEKS                       R1 R0 K10 ["isCageEditingActive"]
       31 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R6 R0 K0 ["props"]
        2 GETTABLEKS                       R7 R6 K1 ["Stylizer"]
        4 GETTABLEKS                       R8 R7 K2 ["ButtonSize"]
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R9 R9 K3 ["createElement"]
        9 GETUPVAL                         R10 1
       10 DUPTABLE                         R11 K10 [{"Style", "StyleModifier", "Size", "LayoutOrder", "OnClick", "Tooltip"}]
       11 GETTABLEKS                       R12 R7 K11 ["ButtonStyle"]
       13 SETTABLEKS                       R12 R11 K4 ["Style"]
       15 SETTABLEKS                       R1 R11 K5 ["StyleModifier"]
       17 GETIMPORT                        R12 K14 [UDim2.fromOffset]
       19 MOVE                             R13 R8
       20 MOVE                             R14 R8
       21 CALL                             R12 2 1
       22 SETTABLEKS                       R12 R11 K6 ["Size"]
       24 SETTABLEKS                       R2 R11 K7 ["LayoutOrder"]
       26 SETTABLEKS                       R4 R11 K8 ["OnClick"]
       28 SETTABLEKS                       R5 R11 K9 ["Tooltip"]
       30 DUPTABLE                         R12 K16 [{"Settings"}]
       31 GETUPVAL                         R13 0
       32 GETTABLEKS                       R13 R13 K3 ["createElement"]
       34 GETUPVAL                         R14 2
       35 DUPTABLE                         R15 K18 [{"Image"}]
       36 SETTABLEKS                       R3 R15 K17 ["Image"]
       38 CALL                             R13 2 1
       39 SETTABLEKS                       R13 R12 K15 ["Settings"]
       41 CALL                             R9 3 -1
       42 RETURN                           R9 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["EditingItemContext"]
        4 NAMECALL                         R2 R2 K2 ["getItem"]
        6 CALL                             R2 1 1
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 0
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R3 K3 ["getAutoSkinningBehavior"]
       13 CALL                             R3 2 1
       14 GETUPVAL                         R4 1
       15 CALL                             R4 0 1
       16 JUMPIFNOT                        R4 ; [+19]
       17 DUPTABLE                         R6 K6 [{"isAutoSkinBehaviorOverride", "isAutoSkinBehaviorDisabled"}]
       18 GETTABLEKS                       R7 R0 K4 ["isAutoSkinBehaviorOverride"]
       20 MOVE                             R8 R3
       21 CALL                             R7 1 1
       22 SETTABLEKS                       R7 R6 K4 ["isAutoSkinBehaviorOverride"]
       24 GETIMPORT                        R8 K10 [Enum.WrapLayerAutoSkin.Disabled]
       26 JUMPIFEQ                         R3 R8 ; [+2]
       28 LOADB                            R7 0 +1
       29 LOADB                            R7 1
       30 SETTABLEKS                       R7 R6 K5 ["isAutoSkinBehaviorDisabled"]
       32 NAMECALL                         R4 R0 K11 ["setState"]
       34 CALL                             R4 2 0
       35 RETURN                           R0 0
       36 GETIMPORT                        R4 K10 [Enum.WrapLayerAutoSkin.Disabled]
       38 JUMPIFNOTEQ                      R3 R4 ; [+3]
       40 GETIMPORT                        R3 K13 [Enum.WrapLayerAutoSkin.EnabledOverride]
       42 GETUPVAL                         R4 0
       43 MOVE                             R6 R2
       44 MOVE                             R7 R3
       45 NAMECALL                         R4 R4 K14 ["setAutoSkinningBehavior"]
       47 CALL                             R4 3 0
       48 DUPTABLE                         R6 K15 [{"isAutoSkinBehaviorOverride"}]
       49 GETTABLEKS                       R7 R0 K4 ["isAutoSkinBehaviorOverride"]
       51 MOVE                             R8 R3
       52 CALL                             R7 1 1
       53 SETTABLEKS                       R7 R6 K4 ["isAutoSkinBehaviorOverride"]
       55 NAMECALL                         R4 R0 K11 ["setState"]
       57 CALL                             R4 2 0
       58 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 GETTABLEKS                       R5 R1 K4 ["EditingCage"]
       10 GETTABLEKS                       R6 R1 K5 ["ShowMinimal"]
       12 GETTABLEKS                       R7 R1 K6 ["MenuOptions"]
       14 GETTABLEKS                       R8 R1 K7 ["OnMenuOptionClicked"]
       16 GETTABLEKS                       R9 R1 K8 ["ShowOptionsButton"]
       18 GETTABLEKS                       R10 R1 K9 ["Stylizer"]
       20 GETTABLEKS                       R11 R10 K10 ["Padding"]
       22 GETTABLEKS                       R12 R10 K11 ["ButtonSize"]
       24 LOADN                            R15 2
       25 MUL                              R14 R15 R11
       26 ADD                              R13 R14 R12
       27 GETTABLEKS                       R14 R0 K12 ["isCageEditingActive"]
       29 CALL                             R14 0 1
       30 GETTABLEKS                       R15 R2 K13 ["isAutoSkinBehaviorOverride"]
       32 JUMPIFNOT                        R15 ; [+2]
       33 LOADK                            R16 K14 ["AutoWeightOverride"]
       34 JUMP                             ; [+6]
       35 GETTABLEKS                       R17 R2 K15 ["isAutoSkinBehaviorDisabled"]
       37 JUMPIFNOT                        R17 ; [+2]
       38 LOADK                            R16 K16 ["AutoWeightDisabled"]
       39 JUMP                             ; [+1]
       40 LOADK                            R16 K17 ["AutoWeightPreserve"]
       41 GETUPVAL                         R17 0
       42 GETTABLEKS                       R17 R17 K18 ["new"]
       44 CALL                             R17 0 1
       45 GETUPVAL                         R18 1
       46 GETTABLEKS                       R18 R18 K19 ["createElement"]
       48 GETUPVAL                         R19 2
       49 DUPTABLE                         R20 K25 [{"Size", "AutomaticSize", "Layout", "LayoutOrder", "HorizontalAlignment", "Spacing", "Padding"}]
       50 GETIMPORT                        R21 K27 [UDim2.new]
       52 LOADN                            R22 0
       53 LOADN                            R23 0
       54 LOADN                            R24 0
       55 MOVE                             R25 R13
       56 CALL                             R21 4 1
       57 SETTABLEKS                       R21 R20 K20 ["Size"]
       59 GETIMPORT                        R21 K30 [Enum.AutomaticSize.X]
       61 SETTABLEKS                       R21 R20 K21 ["AutomaticSize"]
       63 GETIMPORT                        R21 K33 [Enum.FillDirection.Horizontal]
       65 SETTABLEKS                       R21 R20 K22 ["Layout"]
       67 SETTABLEKS                       R3 R20 K2 ["LayoutOrder"]
       69 GETIMPORT                        R21 K35 [Enum.HorizontalAlignment.Left]
       71 SETTABLEKS                       R21 R20 K23 ["HorizontalAlignment"]
       73 SETTABLEKS                       R11 R20 K24 ["Spacing"]
       75 SETTABLEKS                       R11 R20 K10 ["Padding"]
       77 DUPTABLE                         R21 K41 [{"CageEditingButton", "CageTypeToggle", "FalloffSlider", "AutoSkinButton", "OptionsDropdownButton"}]
       78 JUMPIFNOT                        R14 ; [+4]
       79 GETUPVAL                         R24 3
       80 GETTABLEKS                       R24 R24 K42 ["Pressed"]
       82 JUMP                             ; [+1]
       83 LOADNIL                          R24
       84 NAMECALL                         R25 R17 K43 ["getNextOrder"]
       86 CALL                             R25 1 1
       87 GETTABLEKS                       R26 R10 K44 ["CageModeIcon"]
       89 GETTABLEKS                       R27 R0 K45 ["cageEditingButtonClicked"]
       91 LOADK                            R30 K46 ["EditingMode"]
       92 LOADK                            R31 K47 ["Text"]
       93 NAMECALL                         R28 R4 K48 ["getText"]
       95 CALL                             R28 3 -1
       96 NAMECALL                         R22 R0 K49 ["renderButton"]
       98 CALL                             R22 -1 1
       99 SETTABLEKS                       R22 R21 K36 ["CageEditingButton"]
      101 MOVE                             R22 R14
      102 JUMPIFNOT                        R22 ; [+53]
      103 GETUPVAL                         R22 1
      104 GETTABLEKS                       R22 R22 K19 ["createElement"]
      106 GETUPVAL                         R23 4
      107 DUPTABLE                         R24 K57 [{"ButtonSize", "LayoutOrder", "LeftIcon", "RightIcon", "LeftTooltipText", "RightTooltipText", "OnLeftSideClick", "OnRightSideClick", "IsOn"}]
      108 GETTABLEKS                       R25 R10 K11 ["ButtonSize"]
      110 SETTABLEKS                       R25 R24 K11 ["ButtonSize"]
      112 NAMECALL                         R25 R17 K43 ["getNextOrder"]
      114 CALL                             R25 1 1
      115 SETTABLEKS                       R25 R24 K2 ["LayoutOrder"]
      117 GETTABLEKS                       R25 R10 K58 ["OuterCageIcon"]
      119 SETTABLEKS                       R25 R24 K50 ["LeftIcon"]
      121 GETTABLEKS                       R25 R10 K59 ["InnerCageIcon"]
      123 SETTABLEKS                       R25 R24 K51 ["RightIcon"]
      125 LOADK                            R27 K46 ["EditingMode"]
      126 LOADK                            R28 K60 ["OuterCage"]
      127 NAMECALL                         R25 R4 K48 ["getText"]
      129 CALL                             R25 3 1
      130 SETTABLEKS                       R25 R24 K52 ["LeftTooltipText"]
      132 LOADK                            R27 K46 ["EditingMode"]
      133 LOADK                            R28 K61 ["InnerCage"]
      134 NAMECALL                         R25 R4 K48 ["getText"]
      136 CALL                             R25 3 1
      137 SETTABLEKS                       R25 R24 K53 ["RightTooltipText"]
      139 GETTABLEKS                       R25 R0 K62 ["outerCageButtonClicked"]
      141 SETTABLEKS                       R25 R24 K54 ["OnLeftSideClick"]
      143 GETTABLEKS                       R25 R0 K63 ["innerCageButtonClicked"]
      145 SETTABLEKS                       R25 R24 K55 ["OnRightSideClick"]
      147 GETIMPORT                        R26 K66 [Enum.CageType.Inner]
      149 JUMPIFEQ                         R5 R26 ; [+2]
      151 LOADB                            R25 0 +1
      152 LOADB                            R25 1
      153 SETTABLEKS                       R25 R24 K56 ["IsOn"]
      155 CALL                             R22 2 1
      156 SETTABLEKS                       R22 R21 K37 ["CageTypeToggle"]
      158 MOVE                             R22 R14
      159 JUMPIFNOT                        R22 ; [+13]
      160 GETUPVAL                         R22 1
      161 GETTABLEKS                       R22 R22 K19 ["createElement"]
      163 GETUPVAL                         R23 5
      164 DUPTABLE                         R24 K67 [{"LayoutOrder", "ShowMinimal"}]
      165 NAMECALL                         R25 R17 K43 ["getNextOrder"]
      167 CALL                             R25 1 1
      168 SETTABLEKS                       R25 R24 K2 ["LayoutOrder"]
      170 SETTABLEKS                       R6 R24 K5 ["ShowMinimal"]
      172 CALL                             R22 2 1
      173 SETTABLEKS                       R22 R21 K38 ["FalloffSlider"]
      175 JUMPIFNOT                        R15 ; [+4]
      176 GETUPVAL                         R24 3
      177 GETTABLEKS                       R24 R24 K42 ["Pressed"]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R24
      181 NAMECALL                         R25 R17 K43 ["getNextOrder"]
      183 CALL                             R25 1 1
      184 GETTABLEKS                       R26 R10 K68 ["AutoWeightIcon"]
      186 GETTABLEKS                       R27 R0 K69 ["autoSkinButtonClicked"]
      188 GETUPVAL                         R29 6
      189 CALL                             R29 0 1
      190 JUMPIFNOT                        R29 ; [+6]
      191 LOADK                            R30 K46 ["EditingMode"]
      192 MOVE                             R31 R16
      193 NAMECALL                         R28 R4 K48 ["getText"]
      195 CALL                             R28 3 1
      196 JUMP                             ; [+12]
      197 JUMPIFNOT                        R15 ; [+6]
      198 LOADK                            R30 K46 ["EditingMode"]
      199 LOADK                            R31 K14 ["AutoWeightOverride"]
      200 NAMECALL                         R28 R4 K48 ["getText"]
      202 CALL                             R28 3 1
      203 JUMP                             ; [+5]
      204 LOADK                            R30 K46 ["EditingMode"]
      205 LOADK                            R31 K17 ["AutoWeightPreserve"]
      206 NAMECALL                         R28 R4 K48 ["getText"]
      208 CALL                             R28 3 1
      209 NAMECALL                         R22 R0 K49 ["renderButton"]
      211 CALL                             R22 6 1
      212 SETTABLEKS                       R22 R21 K39 ["AutoSkinButton"]
      214 MOVE                             R22 R9
      215 JUMPIFNOT                        R22 ; [+21]
      216 GETUPVAL                         R22 1
      217 GETTABLEKS                       R22 R22 K19 ["createElement"]
      219 GETUPVAL                         R23 7
      220 DUPTABLE                         R24 K73 [{"ButtonSize", "Icon", "Items", "OnItemActivated", "LayoutOrder"}]
      221 SETTABLEKS                       R12 R24 K11 ["ButtonSize"]
      223 GETTABLEKS                       R25 R10 K74 ["OptionsIcon"]
      225 SETTABLEKS                       R25 R24 K70 ["Icon"]
      227 SETTABLEKS                       R7 R24 K71 ["Items"]
      229 SETTABLEKS                       R8 R24 K72 ["OnItemActivated"]
      231 NAMECALL                         R25 R17 K43 ["getNextOrder"]
      233 CALL                             R25 1 1
      234 SETTABLEKS                       R25 R24 K2 ["LayoutOrder"]
      236 CALL                             R22 2 1
      237 SETTABLEKS                       R22 R21 K40 ["OptionsDropdownButton"]
      239 CALL                             R18 3 -1
      240 RETURN                           R18 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K2 [{"SelectEditingCage", "SetToolMode"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SelectEditingCage"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetToolMode"]
       11 RETURN                           R1 1

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
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["AvatarToolsShared"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["Contexts"]
       34 GETTABLEKS                       R4 R4 K10 ["Signals"]
       36 GETTABLEKS                       R5 R3 K9 ["Contexts"]
       38 GETTABLEKS                       R5 R5 K11 ["EditingItemContext"]
       40 GETTABLEKS                       R6 R3 K12 ["Components"]
       42 GETTABLEKS                       R6 R6 K13 ["DropdownMenuButton"]
       44 GETTABLEKS                       R7 R3 K12 ["Components"]
       46 GETTABLEKS                       R7 R7 K14 ["SplitToggleButton"]
       48 GETTABLEKS                       R8 R3 K15 ["Util"]
       50 GETTABLEKS                       R8 R8 K16 ["AccessoryAndBodyToolShared"]
       52 GETTABLEKS                       R8 R8 K17 ["AvatarUtil"]
       54 GETTABLEKS                       R9 R3 K15 ["Util"]
       56 GETTABLEKS                       R9 R9 K16 ["AccessoryAndBodyToolShared"]
       58 GETTABLEKS                       R9 R9 K18 ["WrapUtil"]
       60 GETIMPORT                        R10 K4 [require]
       62 GETTABLEKS                       R11 R0 K19 ["Src"]
       64 GETTABLEKS                       R11 R11 K20 ["Thunks"]
       66 GETTABLEKS                       R11 R11 K21 ["SelectEditingCage"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K4 [require]
       71 GETTABLEKS                       R12 R0 K19 ["Src"]
       73 GETTABLEKS                       R12 R12 K22 ["Actions"]
       75 GETTABLEKS                       R12 R12 K23 ["SetToolMode"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K4 [require]
       80 GETTABLEKS                       R13 R0 K19 ["Src"]
       82 GETTABLEKS                       R13 R13 K12 ["Components"]
       84 GETTABLEKS                       R13 R13 K24 ["Editor"]
       86 GETTABLEKS                       R13 R13 K25 ["FalloffSlider"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K4 [require]
       91 GETTABLEKS                       R14 R0 K5 ["Packages"]
       93 GETTABLEKS                       R14 R14 K26 ["Framework"]
       95 CALL                             R13 1 1
       96 GETTABLEKS                       R14 R13 K27 ["ContextServices"]
       98 GETTABLEKS                       R15 R14 K28 ["withContext"]
      100 GETTABLEKS                       R16 R13 K15 ["Util"]
      102 GETTABLEKS                       R16 R16 K29 ["StyleModifier"]
      104 GETTABLEKS                       R17 R13 K30 ["UI"]
      106 GETTABLEKS                       R18 R17 K31 ["Pane"]
      108 GETTABLEKS                       R19 R17 K32 ["Button"]
      110 GETTABLEKS                       R20 R17 K33 ["IconButton"]
      112 GETTABLEKS                       R21 R17 K34 ["Image"]
      114 GETIMPORT                        R22 K4 [require]
      116 GETTABLEKS                       R23 R0 K19 ["Src"]
      118 GETTABLEKS                       R23 R23 K15 ["Util"]
      120 GETTABLEKS                       R23 R23 K35 ["Constants"]
      122 CALL                             R22 1 1
      123 GETIMPORT                        R23 K4 [require]
      125 GETTABLEKS                       R24 R0 K19 ["Src"]
      127 GETTABLEKS                       R24 R24 K36 ["Flags"]
      129 GETTABLEKS                       R24 R24 K37 ["getFFlagLayeredClothingEditorRespectAutoSkin"]
      131 CALL                             R23 1 1
      132 GETTABLEKS                       R24 R1 K38 ["PureComponent"]
      134 LOADK                            R26 K39 ["CageControls"]
      135 NAMECALL                         R24 R24 K40 ["extend"]
      137 CALL                             R24 2 1
      138 GETTABLEKS                       R25 R13 K15 ["Util"]
      140 GETTABLEKS                       R26 R25 K41 ["LayoutOrderIterator"]
      142 DUPCLOSURE                       R27 K42 [PROTO_6]
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R22
      145 SETTABLEKS                       R27 R24 K43 ["init"]
      147 DUPCLOSURE                       R27 K44 [PROTO_7]
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R21
      151 SETTABLEKS                       R27 R24 K45 ["renderButton"]
      153 DUPCLOSURE                       R27 K46 [PROTO_8]
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R23
      156 SETTABLEKS                       R27 R24 K47 ["didMount"]
      158 DUPCLOSURE                       R27 K48 [PROTO_9]
      159 CAPTURE                          VAL R26
      160 CAPTURE                          VAL R1
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R23
      166 CAPTURE                          VAL R6
      167 SETTABLEKS                       R27 R24 K49 ["render"]
      169 DUPCLOSURE                       R27 K50 [PROTO_12]
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R11
      172 MOVE                             R28 R15
      173 DUPTABLE                         R29 K54 [{"Analytics", "Signals", "Localization", "EditingItemContext", "Stylizer"}]
      174 GETTABLEKS                       R30 R14 K51 ["Analytics"]
      176 SETTABLEKS                       R30 R29 K51 ["Analytics"]
      178 SETTABLEKS                       R4 R29 K10 ["Signals"]
      180 GETTABLEKS                       R30 R14 K52 ["Localization"]
      182 SETTABLEKS                       R30 R29 K52 ["Localization"]
      184 SETTABLEKS                       R5 R29 K11 ["EditingItemContext"]
      186 GETTABLEKS                       R30 R14 K53 ["Stylizer"]
      188 SETTABLEKS                       R30 R29 K53 ["Stylizer"]
      190 CALL                             R28 1 1
      191 MOVE                             R29 R24
      192 CALL                             R28 1 1
      193 MOVE                             R24 R28
      194 GETTABLEKS                       R28 R2 K55 ["connect"]
      196 LOADNIL                          R29
      197 MOVE                             R30 R27
      198 CALL                             R28 2 1
      199 MOVE                             R29 R24
      200 CALL                             R28 1 -1
      201 RETURN                           R28 -1
