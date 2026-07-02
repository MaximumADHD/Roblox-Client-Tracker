PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Analytics"]
        5 LOADK                            R2 K2 ["FalloffSliderAdjusted"]
        6 NAMECALL                         R0 R0 K3 ["getHandler"]
        8 CALL                             R0 2 1
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["LuaMeshEditingModuleContext"]
        5 NAMECALL                         R2 R1 K2 ["getCurrentTool"]
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 MOVE                             R5 R0
       11 NAMECALL                         R3 R2 K3 ["setFalloff"]
       13 CALL                             R3 2 0
       14 GETUPVAL                         R3 0
       15 DUPTABLE                         R5 K5 [{"falloff"}]
       16 SETTABLEKS                       R0 R5 K4 ["falloff"]
       18 NAMECALL                         R3 R3 K6 ["setState"]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"falloff"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["DEFAULT_FALLOFF"]
        4 SETTABLEKS                       R2 R1 K0 ["falloff"]
        6 SETTABLEKS                       R1 R0 K3 ["state"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K4 ["reportFalloffChangeEvent"]
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K5 ["setFalloff"]
       16 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["LuaMeshEditingModuleContext"]
        4 NAMECALL                         R2 R1 K2 ["getCurrentTool"]
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+9]
        8 DUPTABLE                         R5 K4 [{"falloff"}]
        9 NAMECALL                         R6 R2 K5 ["getFalloff"]
       11 CALL                             R6 1 1
       12 SETTABLEKS                       R6 R5 K3 ["falloff"]
       14 NAMECALL                         R3 R0 K6 ["setState"]
       16 CALL                             R3 2 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["falloff"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["ShowMinimal"]
       12 GETTABLEKS                       R7 R1 K6 ["Localization"]
       14 GETTABLEKS                       R8 R1 K7 ["Stylizer"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K8 ["createElement"]
       19 GETUPVAL                         R10 1
       20 DUPTABLE                         R11 K24 [{["Title"], ["Value"], ["MaxValue"], ["SnapIncrement"] = 0.1, ["Height"], ["UsePercentage"] = False, ["LayoutOrder"], ["SetValue"], ["ShowInputField"], ["ShowBackground"] = True, ["IsDisabled"] = False, ["OnChangeBegan"], ["OnTextBoxValueChanged"]}]
       21 JUMPIF                           R6 ; [+6]
       22 LOADK                            R14 K25 ["ToolSettings"]
       23 LOADK                            R15 K26 ["FalloffDistance"]
       24 NAMECALL                         R12 R7 K27 ["getText"]
       26 CALL                             R12 3 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R12
       29 SETTABLEKS                       R12 R11 K9 ["Title"]
       31 SETTABLEKS                       R3 R11 K10 ["Value"]
       33 GETUPVAL                         R12 2
       34 GETTABLEKS                       R12 R12 K28 ["MAX_FALLOFF"]
       36 SETTABLEKS                       R12 R11 K11 ["MaxValue"]
       38 GETTABLEKS                       R12 R8 K29 ["SliderHeight"]
       40 SETTABLEKS                       R12 R11 K14 ["Height"]
       42 SETTABLEKS                       R5 R11 K4 ["LayoutOrder"]
       44 GETTABLEKS                       R12 R0 K30 ["setFalloff"]
       46 SETTABLEKS                       R12 R11 K17 ["SetValue"]
       48 NOT                              R12 R6
       49 SETTABLEKS                       R12 R11 K18 ["ShowInputField"]
       51 GETTABLEKS                       R12 R0 K31 ["reportFalloffChangeEvent"]
       53 SETTABLEKS                       R12 R11 K22 ["OnChangeBegan"]
       55 GETTABLEKS                       R12 R0 K31 ["reportFalloffChangeEvent"]
       57 SETTABLEKS                       R12 R11 K23 ["OnTextBoxValueChanged"]
       59 CALL                             R9 2 -1
       60 RETURN                           R9 -1

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
       27 GETTABLEKS                       R3 R3 K9 ["LuaMeshEditingModuleContext"]
       29 GETTABLEKS                       R4 R2 K10 ["Components"]
       31 GETTABLEKS                       R5 R4 K11 ["SliderSetting"]
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Src"]
       37 GETTABLEKS                       R7 R7 K13 ["Util"]
       39 GETTABLEKS                       R7 R7 K14 ["Constants"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K4 [require]
       44 GETTABLEKS                       R8 R0 K5 ["Packages"]
       46 GETTABLEKS                       R8 R8 K15 ["Framework"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R7 K16 ["ContextServices"]
       51 GETTABLEKS                       R9 R8 K17 ["withContext"]
       53 GETTABLEKS                       R10 R7 K18 ["UI"]
       55 GETTABLEKS                       R11 R10 K19 ["Pane"]
       57 GETTABLEKS                       R12 R1 K20 ["PureComponent"]
       59 LOADK                            R14 K21 ["FalloffSlider"]
       60 NAMECALL                         R12 R12 K22 ["extend"]
       62 CALL                             R12 2 1
       63 DUPCLOSURE                       R13 K23 [PROTO_2]
       64 CAPTURE                          VAL R6
       65 SETTABLEKS                       R13 R12 K24 ["init"]
       67 DUPCLOSURE                       R13 K25 [PROTO_3]
       68 SETTABLEKS                       R13 R12 K26 ["didMount"]
       70 DUPCLOSURE                       R13 K27 [PROTO_4]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 SETTABLEKS                       R13 R12 K28 ["render"]
       76 MOVE                             R13 R9
       77 DUPTABLE                         R14 K32 [{"Analytics", "Localization", "LuaMeshEditingModuleContext", "Stylizer"}]
       78 GETTABLEKS                       R15 R8 K29 ["Analytics"]
       80 SETTABLEKS                       R15 R14 K29 ["Analytics"]
       82 GETTABLEKS                       R15 R8 K30 ["Localization"]
       84 SETTABLEKS                       R15 R14 K30 ["Localization"]
       86 SETTABLEKS                       R3 R14 K9 ["LuaMeshEditingModuleContext"]
       88 GETTABLEKS                       R15 R8 K31 ["Stylizer"]
       90 SETTABLEKS                       R15 R14 K31 ["Stylizer"]
       92 CALL                             R13 1 1
       93 MOVE                             R14 R12
       94 CALL                             R13 1 1
       95 MOVE                             R12 R13
       96 RETURN                           R12 1
