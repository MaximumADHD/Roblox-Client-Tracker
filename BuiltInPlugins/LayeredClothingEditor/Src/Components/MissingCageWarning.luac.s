PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 SETTABLEKS                       R1 R0 K1 ["onLearnMoreClicked"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K10 [{["AutomaticSize"], ["Size"], ["LayoutOrder"], ["Layout"], ["HorizontalAlignment"], ["Spacing"] = 4}]
        9 GETIMPORT                        R6 K13 [Enum.AutomaticSize.Y]
       11 SETTABLEKS                       R6 R5 K3 ["AutomaticSize"]
       13 GETIMPORT                        R6 K16 [UDim2.fromScale]
       15 LOADN                            R7 1
       16 LOADN                            R8 0
       17 CALL                             R6 2 1
       18 SETTABLEKS                       R6 R5 K4 ["Size"]
       20 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       22 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       24 GETIMPORT                        R6 K19 [Enum.FillDirection.Vertical]
       26 SETTABLEKS                       R6 R5 K6 ["Layout"]
       28 GETIMPORT                        R6 K21 [Enum.HorizontalAlignment.Left]
       30 SETTABLEKS                       R6 R5 K7 ["HorizontalAlignment"]
       32 DUPTABLE                         R6 K24 [{"Message", "LearnMore"}]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K2 ["createElement"]
       36 GETUPVAL                         R8 2
       37 DUPTABLE                         R9 K32 [{["AutomaticSize"], ["Size"], ["LayoutOrder"] = 1, ["Style"] = "Warning", ["Text"], ["TextWrapped"] = True, ["TextXAlignment"]}]
       38 GETIMPORT                        R10 K13 [Enum.AutomaticSize.Y]
       40 SETTABLEKS                       R10 R9 K3 ["AutomaticSize"]
       42 GETIMPORT                        R10 K16 [UDim2.fromScale]
       44 LOADN                            R11 1
       45 LOADN                            R12 0
       46 CALL                             R10 2 1
       47 SETTABLEKS                       R10 R9 K4 ["Size"]
       49 LOADK                            R12 K33 ["AssetType"]
       50 LOADK                            R13 K34 ["MissingCageWarning"]
       51 NAMECALL                         R10 R2 K35 ["getText"]
       53 CALL                             R10 3 1
       54 SETTABLEKS                       R10 R9 K28 ["Text"]
       56 GETIMPORT                        R10 K36 [Enum.TextXAlignment.Left]
       58 SETTABLEKS                       R10 R9 K31 ["TextXAlignment"]
       60 CALL                             R7 2 1
       61 SETTABLEKS                       R7 R6 K22 ["Message"]
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K2 ["createElement"]
       66 GETUPVAL                         R8 3
       67 DUPTABLE                         R9 K39 [{["LayoutOrder"] = 2, ["Text"], ["OnClick"]}]
       68 LOADK                            R12 K33 ["AssetType"]
       69 LOADK                            R13 K40 ["MissingCageLearnMore"]
       70 NAMECALL                         R10 R2 K35 ["getText"]
       72 CALL                             R10 3 1
       73 SETTABLEKS                       R10 R9 K28 ["Text"]
       75 GETTABLEKS                       R10 R0 K41 ["onLearnMoreClicked"]
       77 SETTABLEKS                       R10 R9 K38 ["OnClick"]
       79 CALL                             R7 2 1
       80 SETTABLEKS                       R7 R6 K23 ["LearnMore"]
       82 CALL                             R3 3 -1
       83 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["BrowserService"]
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
       33 GETTABLEKS                       R6 R3 K14 ["UI"]
       35 GETTABLEKS                       R7 R6 K15 ["Pane"]
       37 GETTABLEKS                       R8 R6 K16 ["LinkText"]
       39 GETTABLEKS                       R9 R6 K17 ["TextLabel"]
       41 GETTABLEKS                       R10 R3 K18 ["Util"]
       43 GETTABLEKS                       R11 R10 K19 ["Typecheck"]
       45 GETIMPORT                        R12 K1 [game]
       47 LOADK                            R14 K20 ["LayeredClothingEditorCagingHelpLink"]
       48 LOADK                            R15 K21 ["https://create.roblox.com/docs/avatar/layered-accessories/specifications"]
       49 NAMECALL                         R12 R12 K22 ["DefineFastString"]
       51 CALL                             R12 3 1
       52 GETTABLEKS                       R13 R2 K23 ["PureComponent"]
       54 LOADK                            R15 K24 ["MissingCageWarning"]
       55 NAMECALL                         R13 R13 K25 ["extend"]
       57 CALL                             R13 2 1
       58 GETTABLEKS                       R14 R11 K26 ["wrap"]
       60 MOVE                             R15 R13
       61 GETIMPORT                        R16 K5 [script]
       63 CALL                             R14 2 0
       64 DUPCLOSURE                       R14 K27 [PROTO_1]
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R12
       67 SETTABLEKS                       R14 R13 K28 ["init"]
       69 DUPCLOSURE                       R14 K29 [PROTO_2]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R8
       74 SETTABLEKS                       R14 R13 K30 ["render"]
       76 MOVE                             R14 R5
       77 DUPTABLE                         R15 K32 [{"Localization"}]
       78 GETTABLEKS                       R16 R4 K31 ["Localization"]
       80 SETTABLEKS                       R16 R15 K31 ["Localization"]
       82 CALL                             R14 1 1
       83 MOVE                             R15 R13
       84 CALL                             R14 1 1
       85 MOVE                             R13 R14
       86 RETURN                           R13 1
