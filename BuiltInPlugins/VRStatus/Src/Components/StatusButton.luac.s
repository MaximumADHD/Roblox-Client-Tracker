PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 LOADK                            R3 K2 ["rbxasset://textures/VRStatus/error.png"]
        5 GETTABLEKS                       R5 R0 K0 ["props"]
        7 GETTABLEKS                       R4 R5 K3 ["deviceName"]
        9 JUMPIFEQKS                       R4 K4 [""] ; [+9]
       11 GETTABLEKS                       R5 R0 K0 ["props"]
       13 GETTABLEKS                       R4 R5 K5 ["vrEnabled"]
       15 JUMPIFNOT                        R4 ; [+2]
       16 LOADK                            R3 K6 ["rbxasset://textures/VRStatus/ok.png"]
       17 JUMP                             ; [+1]
       18 LOADK                            R3 K7 ["rbxasset://textures/VRStatus/warning.png"]
       19 DUPTABLE                         R4 K9 [{"Toggle"}]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K10 ["createElement"]
       23 GETUPVAL                         R6 1
       24 DUPTABLE                         R7 K19 [{"Toolbar", "Active", "Id", "Title", "Tooltip", "Icon", "OnClick", "ClickableWhenViewportHidden"}]
       25 GETTABLEKS                       R8 R1 K20 ["toolbar"]
       27 SETTABLEKS                       R8 R7 K11 ["Toolbar"]
       29 GETTABLEKS                       R8 R1 K21 ["enabled"]
       31 SETTABLEKS                       R8 R7 K12 ["Active"]
       33 LOADK                            R8 K22 ["status_button"]
       34 SETTABLEKS                       R8 R7 K13 ["Id"]
       36 LOADK                            R10 K23 ["StatusButton"]
       37 LOADK                            R11 K14 ["Title"]
       38 NAMECALL                         R8 R2 K24 ["getText"]
       40 CALL                             R8 3 1
       41 SETTABLEKS                       R8 R7 K14 ["Title"]
       43 LOADK                            R10 K23 ["StatusButton"]
       44 LOADK                            R11 K15 ["Tooltip"]
       45 NAMECALL                         R8 R2 K24 ["getText"]
       47 CALL                             R8 3 1
       48 SETTABLEKS                       R8 R7 K15 ["Tooltip"]
       50 SETTABLEKS                       R3 R7 K16 ["Icon"]
       52 GETTABLEKS                       R9 R0 K0 ["props"]
       54 GETTABLEKS                       R8 R9 K25 ["showAlert"]
       56 SETTABLEKS                       R8 R7 K17 ["OnClick"]
       58 LOADB                            R8 1
       59 SETTABLEKS                       R8 R7 K18 ["ClickableWhenViewportHidden"]
       61 CALL                             R5 2 1
       62 SETTABLEKS                       R5 R4 K8 ["Toggle"]
       64 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R3 K10 ["Localization"]
       29 GETIMPORT                        R6 K4 [require]
       31 GETTABLEKS                       R9 R0 K11 ["Src"]
       33 GETTABLEKS                       R8 R9 K12 ["Controllers"]
       35 GETTABLEKS                       R7 R8 K13 ["ServiceController"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R8 R2 K14 ["UI"]
       40 GETTABLEKS                       R7 R8 K15 ["PluginButton"]
       42 GETTABLEKS                       R8 R1 K16 ["PureComponent"]
       44 LOADK                            R10 K17 ["StatusButton"]
       45 NAMECALL                         R8 R8 K18 ["extend"]
       47 CALL                             R8 2 1
       48 DUPCLOSURE                       R9 K19 [PROTO_0]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R7
       51 SETTABLEKS                       R9 R8 K20 ["render"]
       53 MOVE                             R9 R4
       54 DUPTABLE                         R10 K22 [{"Localization", "Stylizer", "ServiceController"}]
       55 SETTABLEKS                       R5 R10 K10 ["Localization"]
       57 GETTABLEKS                       R11 R3 K21 ["Stylizer"]
       59 SETTABLEKS                       R11 R10 K21 ["Stylizer"]
       61 SETTABLEKS                       R6 R10 K13 ["ServiceController"]
       63 CALL                             R9 1 1
       64 MOVE                             R10 R8
       65 CALL                             R9 1 1
       66 MOVE                             R8 R9
       67 RETURN                           R8 1
