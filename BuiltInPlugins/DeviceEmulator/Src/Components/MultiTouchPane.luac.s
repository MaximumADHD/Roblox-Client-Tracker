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
       10 DUPTABLE                         R6 K10 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["Padding"] = 10, ["Spacing"] = 10}]
       11 GETIMPORT                        R7 K13 [Enum.AutomaticSize.Y]
       13 SETTABLEKS                       R7 R6 K4 ["AutomaticSize"]
       15 GETIMPORT                        R7 K15 [Enum.HorizontalAlignment.Left]
       17 SETTABLEKS                       R7 R6 K5 ["HorizontalAlignment"]
       19 GETIMPORT                        R7 K18 [Enum.FillDirection.Vertical]
       21 SETTABLEKS                       R7 R6 K6 ["Layout"]
       23 DUPTABLE                         R7 K20 [{"MultiTouchPane"}]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K3 ["createElement"]
       27 GETUPVAL                         R9 2
       28 DUPTABLE                         R10 K28 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["AlwaysExpanded"] = True, ["LayoutOrder"] = 3, ["Style"] = "Box", ["Text"]}]
       29 GETIMPORT                        R11 K13 [Enum.AutomaticSize.Y]
       31 SETTABLEKS                       R11 R10 K4 ["AutomaticSize"]
       33 GETIMPORT                        R11 K15 [Enum.HorizontalAlignment.Left]
       35 SETTABLEKS                       R11 R10 K5 ["HorizontalAlignment"]
       37 GETIMPORT                        R11 K18 [Enum.FillDirection.Vertical]
       39 SETTABLEKS                       R11 R10 K6 ["Layout"]
       41 LOADK                            R13 K19 ["MultiTouchPane"]
       42 LOADK                            R14 K29 ["MultiTouchPaneLabel"]
       43 NAMECALL                         R11 R3 K30 ["getText"]
       45 CALL                             R11 3 1
       46 SETTABLEKS                       R11 R10 K27 ["Text"]
       48 NEWTABLE                         R11 0 1
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R12 R12 K3 ["createElement"]
       53 GETUPVAL                         R13 3
       54 DUPTABLE                         R14 K35 [{["Checked"], ["Key"] = "multiTouchEmulationOn", ["OnClick"], ["Text"]}]
       55 GETTABLEKS                       R15 R2 K33 ["multiTouchEmulationOn"]
       57 SETTABLEKS                       R15 R14 K31 ["Checked"]
       59 GETTABLEKS                       R15 R0 K36 ["toggleMultiTouchEmulationOn"]
       61 SETTABLEKS                       R15 R14 K34 ["OnClick"]
       63 LOADK                            R17 K19 ["MultiTouchPane"]
       64 LOADK                            R18 K37 ["MultiTouchPaneCheckboxLabel"]
       65 NAMECALL                         R15 R3 K30 ["getText"]
       67 CALL                             R15 3 1
       68 SETTABLEKS                       R15 R14 K27 ["Text"]
       70 CALL                             R12 2 -1
       71 SETLIST                          R11 R12 -1 [1]
       73 CALL                             R8 3 1
       74 SETTABLEKS                       R8 R7 K19 ["MultiTouchPane"]
       76 CALL                             R4 3 -1
       77 RETURN                           R4 -1

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
