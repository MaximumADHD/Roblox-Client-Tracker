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
       26 DUPTABLE                         R6 K12 [{"isAutoSkinBehaviorOverride"}]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K11 ["isAutoSkinBehaviorOverride"]
       30 MOVE                             R8 R3
       31 CALL                             R7 1 1
       32 SETTABLEKS                       R7 R6 K11 ["isAutoSkinBehaviorOverride"]
       34 NAMECALL                         R4 R4 K13 ["setState"]
       36 CALL                             R4 2 0
       37 GETTABLEKS                       R4 R0 K14 ["Analytics"]
       39 LOADK                            R6 K15 ["AutoSkinningToggled"]
       40 NAMECALL                         R4 R4 K16 ["getHandler"]
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
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R1 R0 K4 ["autoSkinButtonClicked"]
        8 DUPCLOSURE                       R1 K5 [PROTO_1]
        9 SETTABLEKS                       R1 R0 K0 ["isAutoSkinBehaviorOverride"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 SETTABLEKS                       R1 R0 K6 ["cageEditingButtonClicked"]
       16 NEWCLOSURE                       R1 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U1
       19 SETTABLEKS                       R1 R0 K7 ["outerCageButtonClicked"]
       21 NEWCLOSURE                       R1 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U1
       24 SETTABLEKS                       R1 R0 K8 ["innerCageButtonClicked"]
       26 NEWCLOSURE                       R1 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U1
       29 SETTABLEKS                       R1 R0 K9 ["isCageEditingActive"]
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
       14 GETIMPORT                        R4 K7 [Enum.WrapLayerAutoSkin.Disabled]
       16 JUMPIFNOTEQ                      R3 R4 ; [+3]
       18 GETIMPORT                        R3 K9 [Enum.WrapLayerAutoSkin.EnabledOverride]
       20 GETUPVAL                         R4 0
       21 MOVE                             R6 R2
       22 MOVE                             R7 R3
       23 NAMECALL                         R4 R4 K10 ["setAutoSkinningBehavior"]
       25 CALL                             R4 3 0
       26 DUPTABLE                         R6 K12 [{"isAutoSkinBehaviorOverride"}]
       27 GETTABLEKS                       R7 R0 K11 ["isAutoSkinBehaviorOverride"]
       29 MOVE                             R8 R3
       30 CALL                             R7 1 1
       31 SETTABLEKS                       R7 R6 K11 ["isAutoSkinBehaviorOverride"]
       33 NAMECALL                         R4 R0 K13 ["setState"]
       35 CALL                             R4 2 0
       36 RETURN                           R0 0

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
       32 GETUPVAL                         R16 0
       33 GETTABLEKS                       R16 R16 K14 ["new"]
       35 CALL                             R16 0 1
       36 GETUPVAL                         R17 1
       37 GETTABLEKS                       R17 R17 K15 ["createElement"]
       39 GETUPVAL                         R18 2
       40 DUPTABLE                         R19 K21 [{"Size", "AutomaticSize", "Layout", "LayoutOrder", "HorizontalAlignment", "Spacing", "Padding"}]
       41 GETIMPORT                        R20 K23 [UDim2.new]
       43 LOADN                            R21 0
       44 LOADN                            R22 0
       45 LOADN                            R23 0
       46 MOVE                             R24 R13
       47 CALL                             R20 4 1
       48 SETTABLEKS                       R20 R19 K16 ["Size"]
       50 GETIMPORT                        R20 K26 [Enum.AutomaticSize.X]
       52 SETTABLEKS                       R20 R19 K17 ["AutomaticSize"]
       54 GETIMPORT                        R20 K29 [Enum.FillDirection.Horizontal]
       56 SETTABLEKS                       R20 R19 K18 ["Layout"]
       58 SETTABLEKS                       R3 R19 K2 ["LayoutOrder"]
       60 GETIMPORT                        R20 K31 [Enum.HorizontalAlignment.Left]
       62 SETTABLEKS                       R20 R19 K19 ["HorizontalAlignment"]
       64 SETTABLEKS                       R11 R19 K20 ["Spacing"]
       66 SETTABLEKS                       R11 R19 K10 ["Padding"]
       68 DUPTABLE                         R20 K37 [{"CageEditingButton", "CageTypeToggle", "FalloffSlider", "AutoSkinButton", "OptionsDropdownButton"}]
       69 JUMPIFNOT                        R14 ; [+4]
       70 GETUPVAL                         R23 3
       71 GETTABLEKS                       R23 R23 K38 ["Pressed"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R23
       75 NAMECALL                         R24 R16 K39 ["getNextOrder"]
       77 CALL                             R24 1 1
       78 GETTABLEKS                       R25 R10 K40 ["CageModeIcon"]
       80 GETTABLEKS                       R26 R0 K41 ["cageEditingButtonClicked"]
       82 LOADK                            R29 K42 ["EditingMode"]
       83 LOADK                            R30 K43 ["Text"]
       84 NAMECALL                         R27 R4 K44 ["getText"]
       86 CALL                             R27 3 -1
       87 NAMECALL                         R21 R0 K45 ["renderButton"]
       89 CALL                             R21 -1 1
       90 SETTABLEKS                       R21 R20 K32 ["CageEditingButton"]
       92 MOVE                             R21 R14
       93 JUMPIFNOT                        R21 ; [+53]
       94 GETUPVAL                         R21 1
       95 GETTABLEKS                       R21 R21 K15 ["createElement"]
       97 GETUPVAL                         R22 4
       98 DUPTABLE                         R23 K53 [{"ButtonSize", "LayoutOrder", "LeftIcon", "RightIcon", "LeftTooltipText", "RightTooltipText", "OnLeftSideClick", "OnRightSideClick", "IsOn"}]
       99 GETTABLEKS                       R24 R10 K11 ["ButtonSize"]
      101 SETTABLEKS                       R24 R23 K11 ["ButtonSize"]
      103 NAMECALL                         R24 R16 K39 ["getNextOrder"]
      105 CALL                             R24 1 1
      106 SETTABLEKS                       R24 R23 K2 ["LayoutOrder"]
      108 GETTABLEKS                       R24 R10 K54 ["OuterCageIcon"]
      110 SETTABLEKS                       R24 R23 K46 ["LeftIcon"]
      112 GETTABLEKS                       R24 R10 K55 ["InnerCageIcon"]
      114 SETTABLEKS                       R24 R23 K47 ["RightIcon"]
      116 LOADK                            R26 K42 ["EditingMode"]
      117 LOADK                            R27 K56 ["OuterCage"]
      118 NAMECALL                         R24 R4 K44 ["getText"]
      120 CALL                             R24 3 1
      121 SETTABLEKS                       R24 R23 K48 ["LeftTooltipText"]
      123 LOADK                            R26 K42 ["EditingMode"]
      124 LOADK                            R27 K57 ["InnerCage"]
      125 NAMECALL                         R24 R4 K44 ["getText"]
      127 CALL                             R24 3 1
      128 SETTABLEKS                       R24 R23 K49 ["RightTooltipText"]
      130 GETTABLEKS                       R24 R0 K58 ["outerCageButtonClicked"]
      132 SETTABLEKS                       R24 R23 K50 ["OnLeftSideClick"]
      134 GETTABLEKS                       R24 R0 K59 ["innerCageButtonClicked"]
      136 SETTABLEKS                       R24 R23 K51 ["OnRightSideClick"]
      138 GETIMPORT                        R25 K62 [Enum.CageType.Inner]
      140 JUMPIFEQ                         R5 R25 ; [+2]
      142 LOADB                            R24 0 +1
      143 LOADB                            R24 1
      144 SETTABLEKS                       R24 R23 K52 ["IsOn"]
      146 CALL                             R21 2 1
      147 SETTABLEKS                       R21 R20 K33 ["CageTypeToggle"]
      149 MOVE                             R21 R14
      150 JUMPIFNOT                        R21 ; [+13]
      151 GETUPVAL                         R21 1
      152 GETTABLEKS                       R21 R21 K15 ["createElement"]
      154 GETUPVAL                         R22 5
      155 DUPTABLE                         R23 K63 [{"LayoutOrder", "ShowMinimal"}]
      156 NAMECALL                         R24 R16 K39 ["getNextOrder"]
      158 CALL                             R24 1 1
      159 SETTABLEKS                       R24 R23 K2 ["LayoutOrder"]
      161 SETTABLEKS                       R6 R23 K5 ["ShowMinimal"]
      163 CALL                             R21 2 1
      164 SETTABLEKS                       R21 R20 K34 ["FalloffSlider"]
      166 JUMPIFNOT                        R15 ; [+4]
      167 GETUPVAL                         R23 3
      168 GETTABLEKS                       R23 R23 K38 ["Pressed"]
      170 JUMP                             ; [+1]
      171 LOADNIL                          R23
      172 NAMECALL                         R24 R16 K39 ["getNextOrder"]
      174 CALL                             R24 1 1
      175 GETTABLEKS                       R25 R10 K64 ["AutoWeightIcon"]
      177 GETTABLEKS                       R26 R0 K65 ["autoSkinButtonClicked"]
      179 JUMPIFNOT                        R15 ; [+6]
      180 LOADK                            R29 K42 ["EditingMode"]
      181 LOADK                            R30 K66 ["AutoWeightOverride"]
      182 NAMECALL                         R27 R4 K44 ["getText"]
      184 CALL                             R27 3 1
      185 JUMP                             ; [+5]
      186 LOADK                            R29 K42 ["EditingMode"]
      187 LOADK                            R30 K67 ["AutoWeightPreserve"]
      188 NAMECALL                         R27 R4 K44 ["getText"]
      190 CALL                             R27 3 1
      191 NAMECALL                         R21 R0 K45 ["renderButton"]
      193 CALL                             R21 6 1
      194 SETTABLEKS                       R21 R20 K35 ["AutoSkinButton"]
      196 MOVE                             R21 R9
      197 JUMPIFNOT                        R21 ; [+21]
      198 GETUPVAL                         R21 1
      199 GETTABLEKS                       R21 R21 K15 ["createElement"]
      201 GETUPVAL                         R22 6
      202 DUPTABLE                         R23 K71 [{"ButtonSize", "Icon", "Items", "OnItemActivated", "LayoutOrder"}]
      203 SETTABLEKS                       R12 R23 K11 ["ButtonSize"]
      205 GETTABLEKS                       R24 R10 K72 ["OptionsIcon"]
      207 SETTABLEKS                       R24 R23 K68 ["Icon"]
      209 SETTABLEKS                       R7 R23 K69 ["Items"]
      211 SETTABLEKS                       R8 R23 K70 ["OnItemActivated"]
      213 NAMECALL                         R24 R16 K39 ["getNextOrder"]
      215 CALL                             R24 1 1
      216 SETTABLEKS                       R24 R23 K2 ["LayoutOrder"]
      218 CALL                             R21 2 1
      219 SETTABLEKS                       R21 R20 K36 ["OptionsDropdownButton"]
      221 CALL                             R17 3 -1
      222 RETURN                           R17 -1

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
      123 GETTABLEKS                       R23 R1 K36 ["PureComponent"]
      125 LOADK                            R25 K37 ["CageControls"]
      126 NAMECALL                         R23 R23 K38 ["extend"]
      128 CALL                             R23 2 1
      129 GETTABLEKS                       R24 R13 K15 ["Util"]
      131 GETTABLEKS                       R25 R24 K39 ["LayoutOrderIterator"]
      133 DUPCLOSURE                       R26 K40 [PROTO_6]
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R22
      136 SETTABLEKS                       R26 R23 K41 ["init"]
      138 DUPCLOSURE                       R26 K42 [PROTO_7]
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R19
      141 CAPTURE                          VAL R21
      142 SETTABLEKS                       R26 R23 K43 ["renderButton"]
      144 DUPCLOSURE                       R26 K44 [PROTO_8]
      145 CAPTURE                          VAL R9
      146 SETTABLEKS                       R26 R23 K45 ["didMount"]
      148 DUPCLOSURE                       R26 K46 [PROTO_9]
      149 CAPTURE                          VAL R25
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R6
      156 SETTABLEKS                       R26 R23 K47 ["render"]
      158 DUPCLOSURE                       R26 K48 [PROTO_12]
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R11
      161 MOVE                             R27 R15
      162 DUPTABLE                         R28 K52 [{"Analytics", "Signals", "Localization", "EditingItemContext", "Stylizer"}]
      163 GETTABLEKS                       R29 R14 K49 ["Analytics"]
      165 SETTABLEKS                       R29 R28 K49 ["Analytics"]
      167 SETTABLEKS                       R4 R28 K10 ["Signals"]
      169 GETTABLEKS                       R29 R14 K50 ["Localization"]
      171 SETTABLEKS                       R29 R28 K50 ["Localization"]
      173 SETTABLEKS                       R5 R28 K11 ["EditingItemContext"]
      175 GETTABLEKS                       R29 R14 K51 ["Stylizer"]
      177 SETTABLEKS                       R29 R28 K51 ["Stylizer"]
      179 CALL                             R27 1 1
      180 MOVE                             R28 R23
      181 CALL                             R27 1 1
      182 MOVE                             R23 R27
      183 GETTABLEKS                       R27 R2 K53 ["connect"]
      185 LOADNIL                          R28
      186 MOVE                             R29 R26
      187 CALL                             R27 2 1
      188 MOVE                             R28 R23
      189 CALL                             R27 1 -1
      190 RETURN                           R27 -1
