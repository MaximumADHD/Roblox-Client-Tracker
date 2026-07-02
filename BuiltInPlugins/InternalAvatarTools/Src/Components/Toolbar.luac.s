PROTO_0:
        0 DUPTABLE                         R2 K1 [{"Export"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K2 ["createElement"]
        4 GETUPVAL                         R4 1
        5 DUPTABLE                         R5 K11 [{["Active"] = False, ["Toolbar"], ["Title"], ["Tooltip"], ["OnClick"], ["ClickableWhenViewportHidden"] = True}]
        6 SETTABLEKS                       R1 R5 K5 ["Toolbar"]
        8 GETTABLEKS                       R6 R0 K12 ["props"]
       10 GETTABLEKS                       R6 R6 K13 ["Localization"]
       12 LOADK                            R8 K14 ["Plugin"]
       13 LOADK                            R9 K0 ["Export"]
       14 NAMECALL                         R6 R6 K15 ["getText"]
       16 CALL                             R6 3 1
       17 SETTABLEKS                       R6 R5 K6 ["Title"]
       19 GETTABLEKS                       R6 R0 K12 ["props"]
       21 GETTABLEKS                       R6 R6 K13 ["Localization"]
       23 LOADK                            R8 K14 ["Plugin"]
       24 LOADK                            R9 K16 ["ExportTip"]
       25 NAMECALL                         R6 R6 K15 ["getText"]
       27 CALL                             R6 3 1
       28 SETTABLEKS                       R6 R5 K7 ["Tooltip"]
       30 GETTABLEKS                       R6 R0 K12 ["props"]
       32 GETTABLEKS                       R6 R6 K17 ["onExportClicked"]
       34 SETTABLEKS                       R6 R5 K8 ["OnClick"]
       36 CALL                             R3 2 1
       37 SETTABLEKS                       R3 R2 K0 ["Export"]
       39 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Title", "RenderButtons"}]
        5 GETTABLEKS                       R4 R0 K4 ["props"]
        7 GETTABLEKS                       R4 R4 K5 ["Localization"]
        9 LOADK                            R6 K6 ["Plugin"]
       10 LOADK                            R7 K7 ["Name"]
       11 NAMECALL                         R4 R4 K8 ["getText"]
       13 CALL                             R4 3 1
       14 SETTABLEKS                       R4 R3 K1 ["Title"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R4 R3 K2 ["RenderButtons"]
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R4 R3 K9 ["PluginButton"]
       27 GETTABLEKS                       R5 R3 K10 ["PluginToolbar"]
       29 GETTABLEKS                       R6 R2 K11 ["ContextServices"]
       31 GETTABLEKS                       R7 R6 K12 ["withContext"]
       33 GETTABLEKS                       R8 R6 K13 ["Plugin"]
       35 GETTABLEKS                       R9 R6 K14 ["Localization"]
       37 GETTABLEKS                       R10 R1 K15 ["PureComponent"]
       39 LOADK                            R12 K16 ["Toolbar"]
       40 NAMECALL                         R10 R10 K17 ["extend"]
       42 CALL                             R10 2 1
       43 DUPCLOSURE                       R11 K18 [PROTO_0]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R4
       46 SETTABLEKS                       R11 R10 K19 ["renderButtons"]
       48 DUPCLOSURE                       R11 K20 [PROTO_2]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R5
       51 SETTABLEKS                       R11 R10 K21 ["render"]
       53 MOVE                             R11 R7
       54 DUPTABLE                         R12 K22 [{"Plugin", "Localization"}]
       55 SETTABLEKS                       R8 R12 K13 ["Plugin"]
       57 SETTABLEKS                       R9 R12 K14 ["Localization"]
       59 CALL                             R11 1 1
       60 MOVE                             R12 R10
       61 CALL                             R11 1 1
       62 MOVE                             R10 R11
       63 RETURN                           R10 1
