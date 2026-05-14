PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["multiTouchEmulationOn"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 SETTABLEKS                       R0 R1 K2 ["IsMultiTouchEmulationOn"]
        9 GETUPVAL                         R1 0
       10 DUPTABLE                         R3 K3 [{"multiTouchEmulationOn"}]
       11 SETTABLEKS                       R0 R3 K1 ["multiTouchEmulationOn"]
       13 NAMECALL                         R1 R1 K4 ["setState"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"multiTouchEmulationOn"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K2 ["IsMultiTouchEmulationOn"]
        4 SETTABLEKS                       R3 R2 K0 ["multiTouchEmulationOn"]
        6 SETTABLEKS                       R2 R0 K3 ["state"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 SETTABLEKS                       R2 R0 K4 ["toggleMultiTouchEmulationOn"]
       13 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K9 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Spacing"}]
       11 GETIMPORT                        R7 K12 [Enum.AutomaticSize.Y]
       13 SETTABLEKS                       R7 R6 K4 ["AutomaticSize"]
       15 GETIMPORT                        R7 K14 [Enum.HorizontalAlignment.Left]
       17 SETTABLEKS                       R7 R6 K5 ["HorizontalAlignment"]
       19 GETIMPORT                        R7 K17 [Enum.FillDirection.Vertical]
       21 SETTABLEKS                       R7 R6 K6 ["Layout"]
       23 LOADN                            R7 10
       24 SETTABLEKS                       R7 R6 K7 ["Padding"]
       26 LOADN                            R7 10
       27 SETTABLEKS                       R7 R6 K8 ["Spacing"]
       29 DUPTABLE                         R7 K19 [{"MultiTouchPane"}]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K3 ["createElement"]
       33 GETUPVAL                         R9 2
       34 DUPTABLE                         R10 K24 [{"AutomaticSize", "HorizontalAlignment", "Layout", "AlwaysExpanded", "LayoutOrder", "Style", "Text"}]
       35 GETIMPORT                        R11 K12 [Enum.AutomaticSize.Y]
       37 SETTABLEKS                       R11 R10 K4 ["AutomaticSize"]
       39 GETIMPORT                        R11 K14 [Enum.HorizontalAlignment.Left]
       41 SETTABLEKS                       R11 R10 K5 ["HorizontalAlignment"]
       43 GETIMPORT                        R11 K17 [Enum.FillDirection.Vertical]
       45 SETTABLEKS                       R11 R10 K6 ["Layout"]
       47 LOADB                            R11 1
       48 SETTABLEKS                       R11 R10 K20 ["AlwaysExpanded"]
       50 LOADN                            R11 3
       51 SETTABLEKS                       R11 R10 K21 ["LayoutOrder"]
       53 LOADK                            R11 K25 ["Box"]
       54 SETTABLEKS                       R11 R10 K22 ["Style"]
       56 LOADK                            R13 K18 ["MultiTouchPane"]
       57 LOADK                            R14 K26 ["MultiTouchPaneLabel"]
       58 NAMECALL                         R11 R3 K27 ["getText"]
       60 CALL                             R11 3 1
       61 SETTABLEKS                       R11 R10 K23 ["Text"]
       63 NEWTABLE                         R11 0 1
       65 GETUPVAL                         R12 0
       66 GETTABLEKS                       R12 R12 K3 ["createElement"]
       68 GETUPVAL                         R13 3
       69 DUPTABLE                         R14 K31 [{"Checked", "Key", "OnClick", "Text"}]
       70 GETTABLEKS                       R15 R2 K32 ["multiTouchEmulationOn"]
       72 SETTABLEKS                       R15 R14 K28 ["Checked"]
       74 LOADK                            R15 K32 ["multiTouchEmulationOn"]
       75 SETTABLEKS                       R15 R14 K29 ["Key"]
       77 GETTABLEKS                       R15 R0 K33 ["toggleMultiTouchEmulationOn"]
       79 SETTABLEKS                       R15 R14 K30 ["OnClick"]
       81 LOADK                            R17 K18 ["MultiTouchPane"]
       82 LOADK                            R18 K34 ["MultiTouchPaneCheckboxLabel"]
       83 NAMECALL                         R15 R3 K27 ["getText"]
       85 CALL                             R15 3 1
       86 SETTABLEKS                       R15 R14 K23 ["Text"]
       88 CALL                             R12 2 -1
       89 SETLIST                          R11 R12 -1 [1]
       91 CALL                             R8 3 1
       92 SETTABLEKS                       R8 R7 K18 ["MultiTouchPane"]
       94 CALL                             R4 3 -1
       95 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioDeviceEmulatorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["Framework"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       31 GETTABLEKS                       R5 R4 K13 ["withContext"]
       33 GETTABLEKS                       R6 R4 K14 ["Localization"]
       35 GETTABLEKS                       R7 R3 K15 ["UI"]
       37 GETTABLEKS                       R8 R7 K16 ["Pane"]
       39 GETTABLEKS                       R9 R7 K17 ["SimpleExpandablePane"]
       41 GETTABLEKS                       R10 R7 K18 ["Checkbox"]
       43 GETTABLEKS                       R11 R2 K19 ["PureComponent"]
       45 LOADK                            R13 K20 ["MultiTouchPane"]
       46 NAMECALL                         R11 R11 K21 ["extend"]
       48 CALL                             R11 2 1
       49 DUPCLOSURE                       R12 K22 [PROTO_1]
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R12 R11 K23 ["init"]
       53 DUPCLOSURE                       R12 K24 [PROTO_2]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R10
       58 SETTABLEKS                       R12 R11 K25 ["render"]
       60 MOVE                             R12 R5
       61 DUPTABLE                         R13 K27 [{"Localization", "Stylizer"}]
       62 SETTABLEKS                       R6 R13 K14 ["Localization"]
       64 GETTABLEKS                       R14 R4 K26 ["Stylizer"]
       66 SETTABLEKS                       R14 R13 K26 ["Stylizer"]
       68 CALL                             R12 1 1
       69 MOVE                             R13 R11
       70 CALL                             R12 1 1
       71 MOVE                             R11 R12
       72 RETURN                           R11 1
